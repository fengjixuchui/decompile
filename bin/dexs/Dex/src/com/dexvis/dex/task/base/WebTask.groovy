package com.dexvis.dex.task.base

import groovy.text.SimpleTemplateEngine
import javafx.application.Platform
import javafx.beans.value.ChangeListener
import javafx.beans.value.ObservableValue
import javafx.concurrent.Worker
import javafx.concurrent.Worker.State
import javafx.event.ActionEvent
import javafx.scene.Node
import javafx.scene.input.KeyCode
import javafx.scene.input.KeyEvent
import javafx.scene.web.WebEngine
import javafx.scene.web.WebView

import javax.xml.transform.OutputKeys
import javax.xml.transform.Transformer
import javax.xml.transform.TransformerFactory
import javax.xml.transform.dom.DOMSource
import javax.xml.transform.stream.StreamResult

import org.apache.commons.io.FileUtils
import org.simpleframework.xml.Root
import org.tbee.javafx.scene.layout.MigPane
import org.w3c.dom.Document

import com.dexvis.dex.exception.DexException
import com.dexvis.dex.wf.DexTask
import com.dexvis.dex.wf.DexTaskState
import com.dexvis.javafx.scene.control.DexFileChooser
import com.dexvis.javafx.scene.control.JsonGuiEvent
import com.dexvis.javafx.scene.control.JsonGuiPane
import com.dexvis.util.WebViewUtil
import com.thoughtworks.xstream.annotations.XStreamOmitField

/**
 * 
 * This task will add a column to the current table.
 * 
 * @author Patrick Martin
 *
 */
@Root
class WebTask extends DexTask {
  // Used to store our configuration pane.
  @XStreamOmitField
  private MigPane configPane = null
  
  @XStreamOmitField
  protected String templatePath = ""
  @XStreamOmitField
  private String templateCode = "Insert template code here..."
  @XStreamOmitField
  private String output = ""
  
  @XStreamOmitField
  private WebView wv = new WebView()
  @XStreamOmitField
  protected WebEngine we = wv.getEngine()
  @XStreamOmitField
  private boolean saveDynamic = false;
  
  @XStreamOmitField
  private static DexFileChooser htmlChooser = null
  
  private static boolean debug = true;
  private String previousConfig = null;
  
  /**
   * 
   * Override the default constructor to provide this component's name, category and help file.
   * Report that it has been constructed.
   * 
   */
  public WebTask(category, name, helpFile, templatePath)
  {
    super(category, name, helpFile)
    if (htmlChooser == null)
    {
      htmlChooser = new DexFileChooser("output",
          "Load HTML", "Save HTML", "HTML", "html")
    }
    
    wv.minWidth(800);
    wv.prefWidth(800);
    wv.minHeight(600);
    wv.prefHeight(600);
    
    this.templatePath = templatePath
  }
  
  public DexTaskState execute(DexTaskState state) throws DexException
  {
    long start = System.currentTimeMillis()
    println "WebKit USER AGENT: '${we?.getUserAgent()}"
    updateProgress(0, 100);
    
    if (templatePath.startsWith("http://"))
    {
      updateMessage("Loading URL: " + templatePath)
      we?.load(templatePath)
      updateMessage("Loaded URL: " + templatePath)
    }
    else if (templatePath.startsWith("https://"))
    {
      updateMessage("Loading URL: " + templatePath)
      we?.load(templatePath)
      updateMessage("Loaded URL: " + templatePath)
    }
    else
    {
      updateMessage("Parsing Template")
      templateCode = FileUtils.readFileToString(new File(templatePath))
      def binding = getBinding(state)
      
      //println "Template Code: '$templateCode'"
      
      def engine = new SimpleTemplateEngine()
      def template = engine.createTemplate(templateCode).make(binding)
      output = template.toString()
      
      we.getLoadWorker().stateProperty().addListener(
          new ChangeListener<State>() {
            public void changed(ObservableValue ov, State oldState, State newState) {
              if (newState == Worker.State.SUCCEEDED) {
                try
                {
                  String guiDefinition = (String) we
                      .executeScript("getGuiDefinition();");
                  setConfigDefinition(guiDefinition);
                }
                catch (Exception ex)
                {
                  System.err.println("No GUI Definition for: '" + getName() +
                      "': Add getGuiDefinition() function to '" +
                      templatePath + "'");
                }
              }
            }
          });
      
      File outputFile = new File("output.html");
      FileUtils.writeStringToFile(outputFile, output)
      
      updateMessage("Loading Template")
      //println "Loading: '${outputFile.toURI().toURL().toExternalForm()}'"
      //we?.load(outputFile.toURI().toURL().toExternalForm())
      we?.loadContent(output)
      
      if (we.getLoadWorker().getException() != null && newState == State.FAILED){
        println "**** WEBVIEW EXCEPTION ***\n" + we.getLoadWorker().getException().toString()
      }
      if (debug)
      {
        enableFirebug(we);
      }
    }
    
    return state
  }
  
  public Map getBinding(DexTaskState state)
  {
    def curDir = new File(".")
    
    return [
      "state":state,
      "dexData":state.dexData,
      "data":state.dexData.data,
      "header":state.dexData.header,
      "basedir" : curDir.toURI().toURL().toExternalForm(),
      "options":[:]
    ]
  }
  
  /**
   * Enables Firebug Lite for debugging a webEngine.
   * @param engine the webEngine for which debugging is to be enabled.
   */
  private void enableFirebug(final WebEngine we) {
    we.executeScript("if (!document.getElementById('FirebugLite')){E = document['createElement' + 'NS'] && document.documentElement.namespaceURI;E = E ? document['createElement' + 'NS'](E, 'script') : document['createElement']('script');E['setAttribute']('id', 'FirebugLite');E['setAttribute']('src', '../javascript/firebug/latest/firebug-lite.min.js#startOpened');E['setAttribute']('FirebugLite', '4');(document['getElementsByTagName']('head')[0] || document['getElementsByTagName']('body')[0]).appendChild(E);E = new Image;E['setAttribute']('src', '../javascript/firebug/latest/firebug-lite.min.js#startOpened');}");
  }
  
  public JsonGuiPane getConfigurationGui()
  {
    JsonGuiPane configGui = new JsonGuiPane("", "[grow]", "[]");
    configGui.setGuiDefinition(getConfigDefinition());
    Queue<JsonGuiEvent> eventStack = new LinkedList<JsonGuiEvent>();
    
    Timer timer = new Timer();
    def task = {
      Platform.runLater({
        Map<String, Object> eventMap = new HashMap<String, Object>()
        
        if (eventStack.isEmpty())
        {
          return;
        }
        
        while (!eventStack.isEmpty())
        {
          JsonGuiEvent event = eventStack.remove()
          eventMap.put(event.getPayload().getComponent() + "::" +
              event.getPayload().getTarget(), event);
        }
        
        def values = [];
        
        eventMap.each { key, event ->
          
          //println "setValue('${event.getPayload().getComponent()}, '${event.getPayload().getTarget()}', '${event.getPayload().getValue()}')"
          
          Object value = event.getPayload().getValue();
          //println "CLASS TYPE: '${value.getClass().getName()}'"
          println "{ chartName: \"" +
              event.getPayload().getComponent() + "\", key: \"" +
              event.getPayload().getTarget() + "\", value: \"" + value + "\" }";
          
          if (value instanceof java.lang.String)
          {
            values << "{ chartName: \"" +
                event.getPayload().getComponent() + "\", key: \"" +
                event.getPayload().getTarget() + "\", value: \"" + value + "\" }";
          }
          else
          {
            values << "{ chartName: \"" +
                event.getPayload().getComponent() + "\", key: \"" +
                event.getPayload().getTarget() + "\", value: " + value + " }";
          }
        }
        
        if (values.size() > 0)
        {
          println("setValues([" + values.join(",") + "]);")
          we.executeScript("setValues([" + values.join(",") + "]);");
        }
      })
    };
    
    timer.scheduleAtFixedRate(task, 0, 1000)
    
    configGui.addEventHandler(
        JsonGuiEvent.CHANGE_EVENT, { event ->
          eventStack.add(event) });
    
    return configGui;
  }
  
  public Node getConfig()
  {
    if (configPane == null)
    {
      configPane = new MigPane("", "[grow]", "[grow]")
      configPane.add(wv, "grow")
      configPane.setOnKeyPressed({ event -> keyPress(event) })
      WebViewUtil.noData(we)
    }
    
    return configPane
  }
  
  public void keyPress(KeyEvent evt)
  {
    //System.out.println("*** keypress: " + evt);
    
    if (evt.getCode().equals(KeyCode.S) && evt.isControlDown())
    {
      println "saving..."
      save(null);
      evt.consume()
    }
    else if (evt.getCode().equals(KeyCode.C) && evt.isAltDown())
    {
      println "Toggling configuration..."
      we.executeScript("toggleConfig();")
      evt.consume()
    }
    else if (evt.getCode().equals(KeyCode.D) && evt.isControlDown())
    {
      debug = !debug;
      if (debug)
      {
        println "Enabling debug mode..."
        enableFirebug(we);
      }
      else
      {
        println "Disabling debug mode..."
      }
      evt.consume()
    }
    else
    {
      evt.consume()
    }
  }
  
  public static String toString(Document doc) {
    try {
      StringWriter sw = new StringWriter();
      TransformerFactory tf = TransformerFactory.newInstance();
      Transformer transformer = tf.newTransformer();
      transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "no");
      transformer.setOutputProperty(OutputKeys.METHOD, "html");
      transformer.setOutputProperty(OutputKeys.INDENT, "no");
      //transformer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
      
      transformer.transform(new DOMSource(doc), new StreamResult(sw));
      return sw.toString();
    } catch (Exception ex) {
      throw new RuntimeException("Error converting to String", ex);
    }
  }
  
  public save(ActionEvent evt)
  {
    try
    {
      File saveFile = htmlChooser.save(evt)
      
      if (saveFile != null)
      {
        // Replace output config with dexjs-config
        try {
        we.executeScript("save();");
        }
        catch (Exception ex) {
          println "No javascript save function defined"
        }
        String saveOutput = output;
        try {
          String config = we.executeScript(
              "(document.getElementById('dexjs-config')" +
              "=== undefined) ? '' : " +
              "document.getElementById('dexjs-config').outerHTML;");
          saveOutput = output.replace("<body>", "<body>\n" + config);
          println "CONFIG: '${config}'";
        }
        catch (Exception ex) {
          println "CONFIG: empty";
        }
        
        // Write last template output.
        FileUtils.writeStringToFile(saveFile, saveOutput)
      }
    }
    catch(Exception ex)
    {
      ex.printStackTrace()
    }
  }
  
  public setSaveDynamic(boolean saveDynamic)
  {
    this.saveDynamic = saveDynamic;
  }
  
  public getSaveDynamic()
  {
    return saveDynamic
  }
}

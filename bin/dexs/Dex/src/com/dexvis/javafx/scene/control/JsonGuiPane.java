package com.dexvis.javafx.scene.control;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javafx.collections.FXCollections;
import javafx.event.Event;
import javafx.event.EventHandler;
import javafx.scene.control.Accordion;
import javafx.scene.control.CheckBox;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.ColorPicker;
import javafx.scene.control.Label;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.Slider;
import javafx.scene.control.TextField;
import javafx.scene.control.TitledPane;
import javafx.scene.paint.Color;

import org.tbee.javafx.scene.layout.MigPane;

import com.dexvis.util.JsonUtil;

public class JsonGuiPane extends MigPane
{
  private MigPane mainPane;
  
  /**
   * 
   * Create a new JsonGui pane with the supplied layout, column and row
   * constraints.
   * 
   * @param layoutConstraint
   *          These constraints specify how the layout manager instance should
   *          work in general. For instance how all the laid out components
   *          should be aligned as a group, should there be available space in
   *          the container. This constraint is set directly on the layout
   *          manager instance, either in the constructor or using a standard
   *          get/set property. E.g. "align center, fill".
   * @param columnConstraint
   *          Specifies the properties for the grid's columns. Constraints such
   *          as sizes and default alignments can be specified. These
   *          constraints are set directly on the layout manager instance,
   *          either in the constructor or using standard get/set properties.
   *          E.g. "[35px]10px[50:pref]".
   * @param rowConstraint
   *          Specifies the properties for the grid's rows. Constraints such as
   *          sizes and default alignments can be specified. These constraints
   *          are set directly on the layout manager instance, either in the
   *          constructor or using standard get/set properties. E.g.
   *          "[35px]10px[50:pref]".
   * 
   */
  public JsonGuiPane(String layoutConstraint, String columnConstraint,
      String rowConstraint)
  {
    super(layoutConstraint, columnConstraint, rowConstraint);
    ScrollPane scrollPane = new ScrollPane();
    mainPane = new MigPane("", "[grow]", "[grow]");
    scrollPane.setFitToHeight(true);
    scrollPane.setFitToWidth(true);
    scrollPane.setContent(mainPane);
    add(scrollPane, "grow");
  }
  
  /**
   * Given a JSON GUI specification, set the child controls of this pane as per
   * the supplied specification.
   * 
   * @param guiDef
   *          The GUI specification.
   * 
   */
  public void setGuiDefinition(String guiDef)
  {
    System.out.println("SetGuiDef: '" + guiDef + "'");
    // Clear out any old contents.
    mainPane.getChildren().clear();
    
    // Load our configuration into java objects.
    Object jsonSpec = JsonUtil.stringToObject(guiDef);
    
    // Add the controls to the guiPane.
    addChartControls(mainPane, jsonSpec);
  }
  
  private void addChartControls(MigPane pane, Object jsonSpec)
  {
    // We expect a list of controls or groups of controls.
    if (jsonSpec instanceof Map<?, ?>)
    {
      // The spec consists of a list of 0 or more control specs.
      Map<String, Map<String, Object>> specs = (Map<String, Map<String, Object>>) jsonSpec;
      
      for (String chartName : specs.keySet())
      {
        addControl(pane, chartName, specs.get(chartName));
      }
    }
  }
  
  /**
   * 
   * Add the specified controls to the current MigPane.
   * 
   * @param pane
   *          The parent pane to which we will be adding controls.
   * @param jsonSpec
   *          The JSON specification converted to java objects.
   * 
   */
  private void addControls(MigPane pane, String chartName, Object jsonSpec)
  {
    // We expect a list of controls or groups of controls.
    if (jsonSpec instanceof List<?>)
    {
      // The spec consists of a list of 0 or more control specs.
      List<Map<String, Object>> specs = (List<Map<String, Object>>) jsonSpec;
      
      // If we have at least one spec then...
      if (specs != null && specs.size() > 0)
      {
        for (Map<String, Object> spec : specs)
        {
          addControl(pane, chartName, spec);
        }
      }
    }
  }
  
  private void addControl(MigPane pane, String chartName,
      Map<String, Object> spec)
  {
    String type = spec.get("type").toString();
    switch (type)
    {
      case "group":
      {
        addGroupControl(pane, chartName, type, spec);
        break;
      }
      default:
      {
        addSingleControl(pane, chartName, type, spec);
        break;
      }
    }
  }
  
  private void addGroupControl(MigPane pane, String chartName, String type,
      Map<String, Object> spec)
  {
    Accordion accordion = new Accordion();
    TitledPane tp = new TitledPane();
    tp.setText(getValue(spec, "name", "Unnamed"));
    accordion.getPanes().add(tp);
    MigPane contentPane = new MigPane("", "[][grow][]", "[]");
    addControls(contentPane, chartName, spec.get("contents"));
    tp.setContent(contentPane);
    
    // Adding grouped specifications.
    pane.add(accordion, "grow,span");
  }
  
  private void addSingleControl(MigPane pane, String chartName, String type,
      Map<String, Object> spec)
  {
    Label label = new Label(getValue(spec, "name", "Unnamed"));
    pane.add(label);
    
    switch (type)
    {
    // Express ints as a slider.
      case "int":
      {
        addIntControl(pane, chartName, spec);
        break;
      }
      // Express floats as a slider as well.
      case "float":
      {
        addFloatControl(pane, chartName, spec);
        break;
      }
      // Expressed string input in a text field.
      case "string":
      {
        addStringControl(pane, chartName, spec);
        break;
      }
      // Express a choice as a ChoiceBox.
      case "choice":
      {
        addChoiceControl(pane, chartName, spec);
        break;
      }
      // Express booleans as a checkbox.
      case "boolean":
      {
        addBooleanControl(pane, chartName, spec);
        break;
      }
      // Express color as a color-picker.
      case "color":
      {
        addColorControl(pane, chartName, spec);
        break;
      }
    }
  }
  
  private void addIntControl(MigPane pane, String chartName,
      Map<String, Object> spec)
  {
    MigPane sliderPane = new MigPane("", "[grow][]", "[]");
    
    Slider slider = new Slider(getIntValue(spec, "minValue", 0),
        getIntValue(spec, "maxValue", 100), getIntValue(spec,
            "initialValue", 0));
    
    int step = getIntValue(spec, "step", 1);
    
    slider.setMajorTickUnit(step);
    slider.setMinorTickCount(0);
    slider.setBlockIncrement(step);
    slider.setSnapToTicks(true);
    
    TextField textField = new TextField(getValue(spec, "initialValue", ""));
    textField.textProperty().addListener((observable, oldVal, newVal) -> {
      try
      {
        double value = Double.parseDouble(newVal);
        try
        {
          slider.setValue(value);
        }
        catch(Exception ex)
        {
          // May be out of range for slider, text overrides.
      }
      fireEvent(chartName, spec.get("target").toString(), newVal);
    }
    catch(Exception ex)
    {
      // Bad entry.
    }
  } );
  
    slider.valueProperty().addListener((observable, oldVal, newVal) -> {
      int val = newVal.intValue();
      textField.setText("" + val);
      fireEvent(chartName, spec.get("target").toString(), val);
    });
    sliderPane.add(slider, "growx");
    sliderPane.add(textField);
    pane.add(sliderPane, "growx, span");
  }
  
  private void addFloatControl(MigPane pane, String chartName,
      Map<String, Object> spec)
  {
    MigPane sliderPane = new MigPane("", "[grow][]", "[]");
    
    Slider slider = new Slider(getDoubleValue(spec, "minValue", 0.0),
        getDoubleValue(spec, "maxValue", 100.0), getDoubleValue(spec,
            "initialValue", 0.0));
    
    double step = getDoubleValue(spec, "step", .1);
    String stepFormat = String.format("%.1f", step);
    if (stepFormat.startsWith("0"))
    {
      stepFormat = stepFormat.substring(1);
    }
    stepFormat = "%" + stepFormat + "f";
    final String stepFmt = stepFormat;
    
    slider.setMajorTickUnit(step);
    slider.setMinorTickCount(0);
    slider.setBlockIncrement(step);
    slider.setSnapToTicks(true);
    
    TextField textField = new TextField(getValue(spec, "initialValue", ""));
    textField.textProperty().addListener((observable, oldVal, newVal) -> {
      try
      {
        double value = Double.parseDouble(newVal);
        try
        {
          slider.setValue(value);
        }
        catch(Exception ex)
        {
          // May be out of range for slider, text overrides.
      }
      fireEvent(chartName, spec.get("target").toString(), newVal);
    }
    catch(Exception ex)
    {
      // Bad entry.
    }
  } );
    
    slider.valueProperty().addListener((observable, oldVal, newVal) -> {
      double val = newVal.doubleValue();
      textField.setText(String.format(stepFmt, val));
      fireEvent(chartName, spec.get("target").toString(), val);
    });
    sliderPane.add(slider, "growx");
    sliderPane.add(textField);
    pane.add(sliderPane, "growx, span");
  }
  
  private void addStringControl(MigPane pane, String chartName,
      Map<String, Object> spec)
  {
    TextField textField = new TextField(getValue(spec, "initialValue", ""));
    textField.textProperty().addListener((observable, oldVal, newVal) -> {
      fireEvent(chartName, spec.get("target").toString(), newVal);
    });
    pane.add(textField, "grow,span");
  }
  
  private void addChoiceControl(MigPane pane, String chartName,
      Map<String, Object> spec)
  {
    List<Object> choices = (List<Object>) spec.get("choices");
    Map<String, String> choiceMap = new TreeMap<String, String>();
    for (Object choice : choices)
    {
      if (choice instanceof Map)
      {
        Map<String, String> cm = (Map<String, String>) choice;
        choiceMap.put(cm.get("name"), cm.get("value"));
      }
      else
      {
        choiceMap.put((String) choice, (String) choice);
      }
    }
    ChoiceBox cb = new ChoiceBox(
        FXCollections.observableArrayList(new ArrayList(choiceMap.keySet())));
    cb.getSelectionModel().select(getValue(spec, "initialValue", ""));
    pane.add(cb, "grow,span");

    cb.setOnAction(action -> {
      //System.out
      //    .println("Choicebox Fire Event: "
      //        + cb.getSelectionModel().selectedItemProperty().getValue()
      //            .toString());
      fireEvent(
          chartName,
          spec.get("target").toString(),
          choiceMap.get(cb.getSelectionModel().selectedItemProperty()
              .getValue()));
    });
  }
  
  private void addBooleanControl(MigPane pane, String chartName,
      Map<String, Object> spec)
  {
    CheckBox cb = new CheckBox();
    cb.setSelected(getBooleanValue(spec, "initialValue", false));
    
    cb.setOnAction(action -> {
      fireEvent(chartName, spec.get("target").toString(), cb.isSelected());
    });
    pane.add(cb, "grow,span");
  }
  
  private void addColorControl(MigPane pane, String chartName,
      Map<String, Object> spec)
  {
    MigPane colorPane = new MigPane("", "[][]", "[]");
    
    String defaultColors[] = { "black", "white", "red", "green", "blue",
        "orange", "yellow", "pink", "gray", "maroon", "teal", "cyan", "navy",
        "steelblue", "olive", "silver" };
    List<String> defaultList = Arrays.asList(defaultColors);
    
    List<String> colorList = getStringListValue(spec, "colors", defaultList);
    
    ChoiceBox cb = new ChoiceBox(FXCollections.observableArrayList(colorList));
    cb.getSelectionModel().select(getValue(spec, "initialValue", ""));
    
    ColorPicker colorPicker = new ColorPicker();
    colorPane.add(colorPicker);
    
    colorPane.add(cb, "");
    cb.setOnAction(action -> {
      String colorName = (String) cb.getSelectionModel().selectedItemProperty()
          .getValue();
      
      if (colorName.equalsIgnoreCase("none"))
      {
        fireEvent(chartName, spec.get("target").toString(), colorName);
      }
      else
      {
        Color color = Color.web(colorName);
        colorPicker.setValue(color);
        String webColor = String.format("#%02X%02X%02X",
            (int) (color.getRed() * 255), (int) (color.getGreen() * 255),
            (int) (color.getBlue() * 255));
        fireEvent(chartName, spec.get("target").toString(), webColor);
      }
    });
    
    colorPicker.setOnAction(new EventHandler()
    {
      public void handle(Event t)
      {
        Color color = colorPicker.getValue();
        String webColor = String.format("#%02X%02X%02X",
            (int) (color.getRed() * 255), (int) (color.getGreen() * 255),
            (int) (color.getBlue() * 255));
        fireEvent(chartName, spec.get("target").toString(), webColor);
      }
    });
    
    pane.add(colorPane, "grow, span");
  }
  
  // Convenience function to fire a JsonGuiEvent
  private void fireEvent(String chartName, String target, Object value)
  {
    //System.out.println("fireEvent(" + chartName + "," + target + "," + value
    //    + ")");
    fireEvent(new JsonGuiEvent(
        new JsonGuiEventPayload(chartName, target, value), null,
        JsonGuiEvent.CHANGE_EVENT));
  }
  
  /**
   * 
   * Convenience function to retrieve a string value from a map. If not found,
   * provide the default value instead.
   * 
   * @param map
   *          The map to extract the value from.
   * @param key
   *          The key of the value to extract.
   * @param defaultValue
   *          The default value when not found.
   * 
   * @return The string value if found within the map, otherwise the default
   *         value.
   * 
   */
  private String getValue(Map<String, Object> map, String key,
      String defaultValue)
  {
    if (map.containsKey(key))
    {
      try
      {
        return map.get(key).toString();
      }
      catch(Exception ex)
      {
      }
    }
    return defaultValue;
  }
  
  /**
   * 
   * Convenience function to retrieve a boolean value from a map. If not found,
   * provide the default value instead.
   * 
   * @param map
   *          The map to extract the value from.
   * @param key
   *          The key of the value to extract.
   * @param defaultValue
   *          The default value when not found.
   * 
   * @return The boolean value if found within the map, otherwise the default
   *         value.
   * 
   */
  private boolean getBooleanValue(Map<String, Object> map, String key,
      boolean defaultValue)
  {
    if (map.containsKey(key))
    {
      try
      {
        return Boolean.parseBoolean(map.get(key).toString());
      }
      catch(Exception ex)
      {
        
      }
    }
    return defaultValue;
  }
  
  /**
   * 
   * Convenience function to retrieve a int value from a map. If not found,
   * provide the default value instead.
   * 
   * @param map
   *          The map to extract the value from.
   * @param key
   *          The key of the value to extract.
   * @param defaultValue
   *          The default value when not found.
   * 
   * @return The int value if found within the map, otherwise the default value.
   * 
   */
  private int getIntValue(Map<String, Object> map, String key, int defaultValue)
  {
    if (map.containsKey(key))
    {
      try
      {
        return Integer.parseInt(map.get(key).toString());
      }
      catch(Exception ex)
      {
        
      }
    }
    return defaultValue;
  }
  
  /**
   * 
   * Convenience function to retrieve a double value from a map. If not found,
   * provide the default value instead.
   * 
   * @param map
   *          The map to extract the value from.
   * @param key
   *          The key of the value to extract.
   * @param defaultValue
   *          The default value when not found.
   * 
   * @return The double value if found within the map, otherwise the default
   *         value.
   * 
   */
  private double getDoubleValue(Map<String, Object> map, String key,
      double defaultValue)
  {
    if (map.containsKey(key))
    {
      try
      {
        return Double.parseDouble(map.get(key).toString());
      }
      catch(Exception ex)
      {
      }
    }
    return defaultValue;
  }
  
  private List<String> getStringListValue(Map<String, Object> map, String key,
      List<String> defaultValue)
  {
    if (map.containsKey(key))
    {
      try
      {
        return (List<String>) map.get(key);
      }
      catch(Exception ex)
      {
      }
    }
    return defaultValue;
  }
}

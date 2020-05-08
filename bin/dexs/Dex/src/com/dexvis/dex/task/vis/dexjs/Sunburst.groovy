package com.dexvis.dex.task.vis.dexjs

import org.simpleframework.xml.Root

import com.dexvis.dex.task.base.WebTask

@Root
class Sunburst extends WebTask {
  public Sunburst() {
    super("Visualization: Dex JS", "Sunburst",
    "visualization/dexjs/Sunburst.html",
    "web/dexjs/d3/Sunburst.gtmpl")
    
    setSaveDynamic(true)
  }
}

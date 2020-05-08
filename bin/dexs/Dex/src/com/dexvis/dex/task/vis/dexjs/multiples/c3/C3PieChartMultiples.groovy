package com.dexvis.dex.task.vis.dexjs.multiples.c3

import org.simpleframework.xml.Root

import com.dexvis.dex.task.base.WebTask

@Root
class C3PieChartMultiples extends WebTask {
  public C3PieChartMultiples() {
    super("Visualization: Multiples", "C3 Pie Chart Multiples",
      "visualization/dexjs/multiples/c3/PieChartMultiples.html",
      "web/dexjs/multiples/c3/PieChartMultiples.gtmpl")
    
    setSaveDynamic(true)
  }
}

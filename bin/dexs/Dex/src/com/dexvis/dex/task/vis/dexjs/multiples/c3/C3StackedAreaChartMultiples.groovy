package com.dexvis.dex.task.vis.dexjs.multiples.c3

import org.simpleframework.xml.Root

import com.dexvis.dex.task.base.WebTask

@Root
class C3StackedAreaChartMultiples extends WebTask {
  public C3StackedAreaChartMultiples() {
    super("Visualization: Multiples", "C3 Stacked Area Chart Multiples",
      "visualization/dexjs/multiples/c3/StackedAreaChartMultiples.html",
      "web/dexjs/multiples/c3/StackedAreaChartMultiples.gtmpl")
    
    setSaveDynamic(true)
  }
}

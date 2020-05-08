package com.dexvis.dex.task.vis.table

import javafx.scene.Node;

import org.simpleframework.xml.Root

import com.dexvis.dex.task.base.WebTask;

@Root
class JqGrid extends WebTask
{
  public JqGrid()
  {
    super("Visualization: Table", "JQ Grid",
      "visualization/table/JQGrid.html",
      "web/dexjs/grid/JqGrid.gtmpl")
  }
}

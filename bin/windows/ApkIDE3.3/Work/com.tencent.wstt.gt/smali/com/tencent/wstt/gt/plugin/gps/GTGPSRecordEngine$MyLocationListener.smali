.class public Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine$MyLocationListener;
.super Ljava/lang/Object;
.source "GTGPSRecordEngine.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;


# direct methods
.method protected constructor <init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine$MyLocationListener;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine$MyLocationListener;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    # getter for: Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->gpsList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->access$0(Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine$MyLocationListener;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    invoke-virtual {v1, p1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->locToString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v0, "loc"

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine$MyLocationListener;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;

    invoke-virtual {v1, p1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSRecordEngine;->locToString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 214
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 219
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 224
    return-void
.end method

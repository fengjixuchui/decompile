.class Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$3;
.super Ljava/lang/Object;
.source "GTGPSReplayActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 152
    packed-switch p2, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->access$2(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;I)V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->access$2(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;I)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;->access$2(Lcom/tencent/wstt/gt/plugin/gps/GTGPSReplayActivity;I)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x7f080142
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

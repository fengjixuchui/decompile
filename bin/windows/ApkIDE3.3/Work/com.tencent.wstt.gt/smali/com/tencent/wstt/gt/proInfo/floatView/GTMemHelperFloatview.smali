.class public Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;
.super Lcom/tencent/wstt/gt/plugin/BaseService;
.source "GTMemHelperFloatview.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

.field public static memInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static net_switch_view:Landroid/view/View;

.field public static tagTimes:I


# instance fields
.field private final SCREEN_HORIZONTALLY:I

.field private final SCREEN_VERTICAL:I

.field private StartX:F

.field private StartY:F

.field private draw:Landroid/graphics/drawable/Drawable;

.field private drawSelect:Landroid/graphics/drawable/Drawable;

.field public floatview_flag:Z

.field private handler:Landroid/os/Handler;

.field private isDump:Z

.field private isGc:Z

.field private isMem:Z

.field private isMoved:Z

.field private mContext:Landroid/content/Context;

.field private mTouchStartX:F

.field private mTouchStartY:F

.field public net_state_flag:Z

.field private pName:Ljava/lang/String;

.field private showInfo:Landroid/widget/TextView;

.field private tv_dump:Landroid/widget/TextView;

.field private tv_gc:Landroid/widget/TextView;

.field private tv_mem:Landroid/widget/TextView;

.field private wm:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tagTimes:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->memInfoList:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Lcom/tencent/wstt/gt/plugin/BaseService;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wm:Landroid/view/WindowManager;

    .line 59
    iput-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 60
    iput-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->mContext:Landroid/content/Context;

    .line 70
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->floatview_flag:Z

    .line 71
    iput-boolean v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->net_state_flag:Z

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->SCREEN_HORIZONTALLY:I

    .line 74
    iput v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->SCREEN_VERTICAL:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->pName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->pName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->getProInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->y:F

    return-void
.end method

.method static synthetic access$12(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->x:F

    return v0
.end method

.method static synthetic access$13(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->StartX:F

    return-void
.end method

.method static synthetic access$14(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->y:F

    return v0
.end method

.method static synthetic access$15(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->StartY:F

    return-void
.end method

.method static synthetic access$16(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->mTouchStartX:F

    return-void
.end method

.method static synthetic access$17(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->mTouchStartY:F

    return-void
.end method

.method static synthetic access$18(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isMoved:Z

    return-void
.end method

.method static synthetic access$19(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->updateViewPosition()V

    return-void
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_mem:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isMoved:Z

    return v0
.end method

.method static synthetic access$21(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isMem:Z

    return v0
.end method

.method static synthetic access$22(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->drawSelect:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$23(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$24(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isMem:Z

    return-void
.end method

.method static synthetic access$25(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isDump:Z

    return v0
.end method

.method static synthetic access$26(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isDump:Z

    return-void
.end method

.method static synthetic access$27(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isGc:Z

    return v0
.end method

.method static synthetic access$28(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isGc:Z

    return-void
.end method

.method static synthetic access$3(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->draw:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->dumpHeap()V

    return-void
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_dump:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->gc()V

    return-void
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_gc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;F)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->x:F

    return-void
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)I
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->checkScreenOrientation()I

    move-result v0

    return v0
.end method

.method private checkScreenOrientation()I
    .locals 3

    .prologue
    .line 329
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevWidth()I

    move-result v1

    .line 330
    .local v1, "dev_width":I
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevHeight()I

    move-result v0

    .line 331
    .local v0, "dev_height":I
    const/4 v2, 0x1

    .line 332
    .local v2, "orientation":I
    if-le v1, v0, :cond_0

    .line 333
    const/4 v2, 0x0

    .line 335
    :cond_0
    return v2
.end method

.method private createView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 151
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wm:Landroid/view/WindowManager;

    .line 152
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 153
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 154
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 155
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 156
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 157
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 158
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 159
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 160
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wm:Landroid/view/WindowManager;

    sget-object v2, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->net_switch_view:Landroid/view/View;

    iget-object v3, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    sget-object v1, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->net_switch_view:Landroid/view/View;

    new-instance v2, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$1;-><init>(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 229
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->stopSelf()V

    goto :goto_0
.end method

.method private dumpHeap()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 282
    sget-object v10, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->getProcessPID(Ljava/lang/String;)I

    move-result v10

    .line 281
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "pid":Ljava/lang/String;
    const-string v10, "-1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 285
    const/4 v5, 0x1

    .line 286
    .local v5, "isSucess":Z
    const/4 v6, 0x0

    .line 288
    .local v6, "pb":Ljava/lang/ProcessBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_DUMP_FOLDER:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, "sFolder":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 292
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 295
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "am dumpheap "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 296
    sget-object v11, Lcom/tencent/wstt/gt/api/utils/Env;->S_ROOT_DUMP_FOLDER:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 297
    const-string v11, "dump_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/tencent/wstt/gt/utils/GTUtils;->getSaveDate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".hprof"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 295
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "cmd":Ljava/lang/String;
    new-instance v6, Ljava/lang/ProcessBuilder;

    .end local v6    # "pb":Ljava/lang/ProcessBuilder;
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "su"

    aput-object v12, v10, v11

    const-string v11, "-c"

    aput-object v11, v10, v13

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-direct {v6, v10}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 300
    .restart local v6    # "pb":Ljava/lang/ProcessBuilder;
    const/4 v2, 0x0

    .line 302
    .local v2, "exec":Ljava/lang/Process;
    invoke-virtual {v6, v13}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 304
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 307
    .local v4, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedReader;

    .line 308
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 307
    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 310
    .local v8, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    if-nez v10, :cond_2

    .line 318
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v5, :cond_1

    .line 320
    iget-object v10, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->handler:Landroid/os/Handler;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "exec":Ljava/lang/Process;
    .end local v3    # "folder":Ljava/io/File;
    .end local v5    # "isSucess":Z
    .end local v6    # "pb":Ljava/lang/ProcessBuilder;
    .end local v9    # "sFolder":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 311
    .restart local v0    # "cmd":Ljava/lang/String;
    .restart local v2    # "exec":Ljava/lang/Process;
    .restart local v3    # "folder":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "isSucess":Z
    .restart local v6    # "pb":Ljava/lang/ProcessBuilder;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "sFolder":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 313
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    const/4 v5, 0x0

    goto :goto_1

    .line 324
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "exec":Ljava/lang/Process;
    .end local v3    # "folder":Ljava/io/File;
    .end local v5    # "isSucess":Z
    .end local v6    # "pb":Ljava/lang/ProcessBuilder;
    .end local v9    # "sFolder":Ljava/lang/String;
    :cond_3
    const-string v10, "dump error"

    const-string v11, "pid not found!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private gc()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 243
    sget-object v8, Lcom/tencent/wstt/gt/manager/AUTManager;->pkn:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/wstt/gt/api/utils/ProcessUtils;->getProcessPID(Ljava/lang/String;)I

    move-result v8

    .line 242
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, "pid":Ljava/lang/String;
    const-string v8, "-1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 246
    const/4 v4, 0x1

    .line 247
    .local v4, "isSucess":Z
    const/4 v5, 0x0

    .line 249
    .local v5, "pb":Ljava/lang/ProcessBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "kill -10 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "cmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/ProcessBuilder;

    .end local v5    # "pb":Ljava/lang/ProcessBuilder;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "su"

    aput-object v10, v8, v9

    const-string v9, "-c"

    aput-object v9, v8, v11

    const/4 v9, 0x2

    aput-object v0, v8, v9

    invoke-direct {v5, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 252
    .restart local v5    # "pb":Ljava/lang/ProcessBuilder;
    const/4 v2, 0x0

    .line 254
    .local v2, "exec":Ljava/lang/Process;
    invoke-virtual {v5, v11}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 256
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 258
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 259
    .local v3, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    .line 260
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 259
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 262
    .local v7, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-nez v8, :cond_1

    .line 270
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v4, :cond_0

    .line 272
    iget-object v8, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->handler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 278
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "exec":Ljava/lang/Process;
    .end local v4    # "isSucess":Z
    .end local v5    # "pb":Ljava/lang/ProcessBuilder;
    :cond_0
    :goto_2
    return-void

    .line 263
    .restart local v0    # "cmd":Ljava/lang/String;
    .restart local v2    # "exec":Ljava/lang/Process;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "isSucess":Z
    .restart local v5    # "pb":Ljava/lang/ProcessBuilder;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 265
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    const/4 v4, 0x0

    goto :goto_1

    .line 276
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "exec":Ljava/lang/Process;
    .end local v4    # "isSucess":Z
    .end local v5    # "pb":Ljava/lang/ProcessBuilder;
    :cond_2
    const-string v8, "gc error"

    const-string v9, "pid not found!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getInstance()Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->INSTANCE:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    invoke-direct {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;-><init>()V

    sput-object v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->INSTANCE:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    .line 100
    :cond_0
    sget-object v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->INSTANCE:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    return-object v0
.end method

.method private getProInfo(Ljava/lang/String;)V
    .locals 8
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 135
    sget v1, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tagTimes:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tagTimes:I

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 138
    .local v2, "time":J
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-static {p1}, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfoByCMD;->getMemInfo(Ljava/lang/String;)Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;

    move-result-object v0

    .line 140
    .local v0, "mi":Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
    iput-wide v2, v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->time:J

    .line 142
    iget-wide v4, v0, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->dalvikHeapSize:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->showInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    sget-object v1, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->memInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v0    # "mi":Lcom/tencent/wstt/gt/proInfo/floatView/MemInfo;
    :cond_0
    return-void
.end method

.method private netswitch()V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->net_switch_view:Landroid/view/View;

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->showInfo:Landroid/widget/TextView;

    .line 125
    sget-object v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->net_switch_view:Landroid/view/View;

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_mem:Landroid/widget/TextView;

    .line 126
    sget-object v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->net_switch_view:Landroid/view/View;

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_dump:Landroid/widget/TextView;

    .line 127
    sget-object v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->net_switch_view:Landroid/view/View;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_gc:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_mem:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_dump:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_gc:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    return-void
.end method

.method private updateViewPosition()V
    .locals 3

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 233
    iget v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->x:F

    iget v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->StartX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->y:F

    iget v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->StartY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->x:F

    iget v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->mTouchStartX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 235
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->y:F

    iget v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->mTouchStartY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isMoved:Z

    .line 237
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->net_switch_view:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    :cond_1
    return-void
.end method


# virtual methods
.method public onBind()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/plugin/BaseService;->onCreate(Landroid/content/Context;)V

    .line 107
    iput-object p1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 109
    const v1, 0x7f03000a

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->net_switch_view:Landroid/view/View;

    .line 111
    new-instance v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview$DrawHandler;-><init>(Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->handler:Landroid/os/Handler;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->draw:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    const v1, 0x7f020072

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->drawSelect:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-direct {p0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->createView()V

    .line 118
    invoke-direct {p0}, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->netswitch()V

    .line 119
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 346
    invoke-super {p0}, Lcom/tencent/wstt/gt/plugin/BaseService;->onDestroy()V

    .line 348
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->floatview_flag:Z

    .line 349
    iput-boolean v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->net_state_flag:Z

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->net_switch_view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->INSTANCE:Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;

    .line 359
    return-void

    .line 354
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 340
    const-string v0, "pName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->pName:Ljava/lang/String;

    .line 341
    invoke-super {p0, p1}, Lcom/tencent/wstt/gt/plugin/BaseService;->onStart(Landroid/content/Intent;)V

    .line 342
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 393
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_mem:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 397
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isMem:Z

    .line 408
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 399
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_gc:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 401
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isGc:Z

    goto :goto_0

    .line 403
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->tv_dump:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 405
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/proInfo/floatView/GTMemHelperFloatview;->isDump:Z

    goto :goto_0
.end method

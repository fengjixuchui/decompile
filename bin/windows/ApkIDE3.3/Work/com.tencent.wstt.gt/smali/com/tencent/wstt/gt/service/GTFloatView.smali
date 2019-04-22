.class public Lcom/tencent/wstt/gt/service/GTFloatView;
.super Landroid/app/Service;
.source "GTFloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wstt/gt/service/GTFloatView$FloatViewRunnable;,
        Lcom/tencent/wstt/gt/service/GTFloatView$MyRunnable;,
        Lcom/tencent/wstt/gt/service/GTFloatView$ProfilerRunnable;,
        Lcom/tencent/wstt/gt/service/GTFloatView$TimerRunnable;
    }
.end annotation


# static fields
.field private static FVIsClick:Z = false

.field private static final MSG_ANIMATION_DirectToDown:I = 0x2

.field private static final MSG_ANIMATION_DirectToLeft:I = 0x1

.field private static final MSG_ANIMATION_DirectToRight:I = 0x0

.field private static final MSG_ANIMATION_DirectToTop:I = 0x3

.field private static final STATE_FOLD:I = 0x0

.field private static final STATE_TIMER_END:I = 0x2

.field private static final STATE_TIMER_INIT:I = 0x0

.field private static final STATE_TIMER_START:I = 0x1

.field private static final STATE_UNFOLD:I = 0x1

.field public static ac_op:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/OutPara;",
            ">;"
        }
    .end annotation
.end field

.field private static baseTime:J

.field private static cur_logo_pos:I

.field public static floatViewRunned:Z

.field public static floatview:Landroid/widget/LinearLayout;

.field public static floatview_run_flag:Z

.field public static fm_floatview_bottom_layout:Landroid/widget/FrameLayout;

.field public static fm_floatview_top_layout:Landroid/widget/FrameLayout;

.field private static len_ip:I

.field private static old_ip_len:I

.field private static old_op_len:I

.field private static op1_fold:Z

.field private static op2_fold:Z

.field private static op3_fold:Z

.field private static op_len_modify:Z

.field private static op_len_state:I

.field private static profiler_already_run:Z

.field private static redirect_x:I

.field private static redirect_y:I

.field public static refresh_fv_flag:Z

.field public static refresh_profiler_flag:Z

.field public static refresh_timer_flag:Z

.field private static state_fold:I

.field private static state_timer:I

.field public static view_floatview:Landroid/view/View;


# instance fields
.field private final ID_LOGO:I

.field private final LOGO_BOTTOM_LEFT:I

.field private final LOGO_BOTTOM_RIGHT:I

.field private final LOGO_TOP_LEFT:I

.field private final LOGO_TOP_RIGHT:I

.field private ProX:F

.field private ProY:F

.field public StartX:F

.field public StartY:F

.field private ac_ip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wstt/gt/InPara;",
            ">;"
        }
    .end annotation
.end field

.field private alias1:Ljava/lang/String;

.field private alias2:Ljava/lang/String;

.field private alias3:Ljava/lang/String;

.field private alpha_count:I

.field private clickHandler:Landroid/os/Handler;

.field private dev_density:F

.field floatview_handler:Landroid/os/Handler;

.field floatview_redirect_Horizontal_handler:Landroid/os/Handler;

.field floatview_redirect_Vertical_handler:Landroid/os/Handler;

.field private fold:Landroid/view/View$OnClickListener;

.field private fv_delaytime:I

.field private fv_value_delaytime:I

.field private h_last_x:I

.field private h_last_y:I

.field private h_orig_x:I

.field private h_orig_y:I

.field private img_floatview_bottom_arrow:Landroid/widget/ImageView;

.field private img_floatview_profiler_switch:Landroid/widget/ImageView;

.field private img_left_bottom_logo:Landroid/widget/ImageView;

.field private img_left_top_logo:Landroid/widget/ImageView;

.field private img_right_bottom_logo:Landroid/widget/ImageView;

.field private img_right_top_logo:Landroid/widget/ImageView;

.field private ip_len_modify:Z

.field private keyUpDown:Z

.field private last_x:I

.field private last_y:I

.field logo_pos_handler:Landroid/os/Handler;

.field private mAnimDistance:I

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private moveX:F

.field private moveY:F

.field private move_event:Z

.field private move_oldX:F

.field private move_oldY:F

.field private old_list_ip:I

.field private op1:Lcom/tencent/wstt/gt/OutPara;

.field private op2:Lcom/tencent/wstt/gt/OutPara;

.field private op3:Lcom/tencent/wstt/gt/OutPara;

.field private operatTimer:Landroid/view/View$OnClickListener;

.field private orig_x:I

.field private orig_y:I

.field private showTime:D

.field public state:I

.field taskTimer:Ljava/util/TimerTask;

.field private timer:I

.field private timer_delaytime:I

.field private timer_thread:Ljava/lang/Thread;

.field touchTitle:Landroid/view/View$OnTouchListener;

.field private touchX:F

.field private touchY:F

.field private tv_floatview_ip1:Landroid/widget/TextView;

.field private tv_floatview_ip1_down:Z

.field private tv_floatview_ip1_timer:I

.field private tv_floatview_ip1_value:Landroid/widget/TextView;

.field private tv_floatview_ip2:Landroid/widget/TextView;

.field private tv_floatview_ip2_down:Z

.field private tv_floatview_ip2_timer:I

.field private tv_floatview_ip2_value:Landroid/widget/TextView;

.field private tv_floatview_ip3:Landroid/widget/TextView;

.field private tv_floatview_ip3_down:Z

.field private tv_floatview_ip3_timer:I

.field private tv_floatview_ip3_value:Landroid/widget/TextView;

.field private tv_floatview_ip_Handler:Landroid/os/Handler;

.field private tv_floatview_ip_clickHandler:Landroid/os/Handler;

.field private tv_floatview_op1:Landroid/widget/TextView;

.field private tv_floatview_op1_down:Z

.field private tv_floatview_op1_fold_height:I

.field private tv_floatview_op1_timer:I

.field private tv_floatview_op1_unfold_height:I

.field private tv_floatview_op1_value:Landroid/widget/TextView;

.field private tv_floatview_op2:Landroid/widget/TextView;

.field private tv_floatview_op2_down:Z

.field private tv_floatview_op2_fold_height:I

.field private tv_floatview_op2_timer:I

.field private tv_floatview_op2_unfold_height:I

.field private tv_floatview_op2_value:Landroid/widget/TextView;

.field private tv_floatview_op3:Landroid/widget/TextView;

.field private tv_floatview_op3_down:Z

.field private tv_floatview_op3_fold_height:I

.field private tv_floatview_op3_timer:I

.field private tv_floatview_op3_unfold_height:I

.field private tv_floatview_op3_value:Landroid/widget/TextView;

.field private tv_floatview_op_Handler:Landroid/os/Handler;

.field private tv_floatview_op_clickHandler:Landroid/os/Handler;

.field private tv_floatview_title:Landroid/widget/TextView;

.field tv_floatview_title_clickHandler:Landroid/os/Handler;

.field private tv_floatview_title_down:Z

.field private tv_floatview_title_timer:I

.field private tv_timer:Landroid/widget/TextView;

.field private up_event:Z

.field private value1:Ljava/lang/String;

.field private value2:Ljava/lang/String;

.field private value3:Ljava/lang/String;

.field private view_floatview_bottom:Landroid/widget/FrameLayout;

.field private view_floatview_ip:Landroid/widget/FrameLayout;

.field private wm:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, -0x1388

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    sput v3, Lcom/tencent/wstt/gt/service/GTFloatView;->state_timer:I

    .line 88
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/wstt/gt/service/GTFloatView;->baseTime:J

    .line 92
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_timer_flag:Z

    .line 95
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_profiler_flag:Z

    .line 97
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->profiler_already_run:Z

    .line 105
    sput-boolean v3, Lcom/tencent/wstt/gt/service/GTFloatView;->op1_fold:Z

    .line 106
    sput-boolean v3, Lcom/tencent/wstt/gt/service/GTFloatView;->op2_fold:Z

    .line 107
    sput-boolean v3, Lcom/tencent/wstt/gt/service/GTFloatView;->op3_fold:Z

    .line 121
    sput v2, Lcom/tencent/wstt/gt/service/GTFloatView;->op_len_state:I

    .line 122
    sput v2, Lcom/tencent/wstt/gt/service/GTFloatView;->old_op_len:I

    .line 123
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->op_len_modify:Z

    .line 136
    sput v3, Lcom/tencent/wstt/gt/service/GTFloatView;->state_fold:I

    .line 144
    sput v2, Lcom/tencent/wstt/gt/service/GTFloatView;->len_ip:I

    .line 145
    sput v2, Lcom/tencent/wstt/gt/service/GTFloatView;->old_ip_len:I

    .line 182
    sput v2, Lcom/tencent/wstt/gt/service/GTFloatView;->cur_logo_pos:I

    .line 196
    sput v4, Lcom/tencent/wstt/gt/service/GTFloatView;->redirect_x:I

    .line 197
    sput v4, Lcom/tencent/wstt/gt/service/GTFloatView;->redirect_y:I

    .line 205
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->floatViewRunned:Z

    .line 206
    sput-boolean v3, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_run_flag:Z

    .line 1881
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->FVIsClick:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x3b860000    # -1000.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_title_down:Z

    .line 81
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_title_timer:I

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->showTime:D

    .line 90
    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->timer_delaytime:I

    .line 96
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alpha_count:I

    .line 109
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_fold_height:I

    .line 110
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_unfold_height:I

    .line 111
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_fold_height:I

    .line 112
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_unfold_height:I

    .line 113
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_fold_height:I

    .line 114
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_unfold_height:I

    .line 115
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_down:Z

    .line 116
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_down:Z

    .line 117
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_down:Z

    .line 118
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_timer:I

    .line 119
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_timer:I

    .line 120
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_timer:I

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias1:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value1:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias2:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value2:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias3:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value3:Ljava/lang/String;

    .line 130
    iput-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op1:Lcom/tencent/wstt/gt/OutPara;

    .line 131
    iput-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op2:Lcom/tencent/wstt/gt/OutPara;

    .line 132
    iput-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op3:Lcom/tencent/wstt/gt/OutPara;

    .line 146
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_down:Z

    .line 147
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_down:Z

    .line 148
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_down:Z

    .line 149
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_timer:I

    .line 150
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_timer:I

    .line 151
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_timer:I

    .line 157
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->keyUpDown:Z

    .line 158
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->timer:I

    .line 159
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->move_event:Z

    .line 160
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->up_event:Z

    .line 161
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->LOGO_BOTTOM_RIGHT:I

    .line 162
    iput v5, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->LOGO_BOTTOM_LEFT:I

    .line 163
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->LOGO_TOP_RIGHT:I

    .line 164
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->LOGO_TOP_LEFT:I

    .line 166
    iput-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    .line 167
    iput-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 168
    iput v4, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->move_oldX:F

    .line 169
    iput v4, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->move_oldY:F

    .line 188
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->last_x:I

    .line 189
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_x:I

    .line 190
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->last_y:I

    .line 191
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_y:I

    .line 192
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_last_y:I

    .line 193
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_y:I

    .line 194
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_last_x:I

    .line 195
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_x:I

    .line 201
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->fv_delaytime:I

    .line 202
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->fv_value_delaytime:I

    .line 207
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ID_LOGO:I

    .line 209
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    .line 211
    iput v5, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mAnimDistance:I

    .line 275
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$1;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$1;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->touchTitle:Landroid/view/View$OnTouchListener;

    .line 288
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$2;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$2;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_title_clickHandler:Landroid/os/Handler;

    .line 352
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$3;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$3;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    .line 669
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$4;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$4;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Vertical_handler:Landroid/os/Handler;

    .line 767
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$5;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$5;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Horizontal_handler:Landroid/os/Handler;

    .line 891
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$6;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$6;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op_clickHandler:Landroid/os/Handler;

    .line 937
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$7;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$7;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op_Handler:Landroid/os/Handler;

    .line 1207
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$8;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$8;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip_clickHandler:Landroid/os/Handler;

    .line 1307
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$9;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$9;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip_Handler:Landroid/os/Handler;

    .line 1781
    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->old_list_ip:I

    .line 1782
    iput-boolean v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ip_len_modify:Z

    .line 1795
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$10;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$10;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->operatTimer:Landroid/view/View$OnClickListener;

    .line 1819
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$11;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$11;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->fold:Landroid/view/View$OnClickListener;

    .line 1839
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$12;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$12;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->clickHandler:Landroid/os/Handler;

    .line 2133
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$13;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$13;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->taskTimer:Ljava/util/TimerTask;

    .line 2142
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$14;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$14;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_title_down:Z

    return-void
.end method

.method static synthetic access$1(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_title_MoveClickListener()V

    return-void
.end method

.method static synthetic access$10(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->refreshProfilerImg()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_timer:I

    return v0
.end method

.method static synthetic access$101(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_timer:I

    return-void
.end method

.method static synthetic access$102(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 932
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_onClick()V

    return-void
.end method

.method static synthetic access$103(Lcom/tencent/wstt/gt/service/GTFloatView;)Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_down:Z

    return v0
.end method

.method static synthetic access$104(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_timer:I

    return v0
.end method

.method static synthetic access$105(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_timer:I

    return-void
.end method

.method static synthetic access$106(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1116
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_onClick()V

    return-void
.end method

.method static synthetic access$107(Lcom/tencent/wstt/gt/service/GTFloatView;)Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_down:Z

    return v0
.end method

.method static synthetic access$108(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_timer:I

    return v0
.end method

.method static synthetic access$109(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_timer:I

    return-void
.end method

.method static synthetic access$11(Lcom/tencent/wstt/gt/service/GTFloatView;)F
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    return v0
.end method

.method static synthetic access$110(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_onClick()V

    return-void
.end method

.method static synthetic access$111(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op_clickHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$112(Lcom/tencent/wstt/gt/service/GTFloatView;)Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_down:Z

    return v0
.end method

.method static synthetic access$113(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_timer:I

    return v0
.end method

.method static synthetic access$114(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 149
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_timer:I

    return-void
.end method

.method static synthetic access$115(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1248
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_onClick()V

    return-void
.end method

.method static synthetic access$116(Lcom/tencent/wstt/gt/service/GTFloatView;)Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_down:Z

    return v0
.end method

.method static synthetic access$117(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_timer:I

    return v0
.end method

.method static synthetic access$118(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 150
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_timer:I

    return-void
.end method

.method static synthetic access$119(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1275
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_onClick()V

    return-void
.end method

.method static synthetic access$12(Lcom/tencent/wstt/gt/service/GTFloatView;)F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ProX:F

    return v0
.end method

.method static synthetic access$120(Lcom/tencent/wstt/gt/service/GTFloatView;)Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_down:Z

    return v0
.end method

.method static synthetic access$121(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_timer:I

    return v0
.end method

.method static synthetic access$122(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_timer:I

    return-void
.end method

.method static synthetic access$123(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1302
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_onClick()V

    return-void
.end method

.method static synthetic access$124(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip_clickHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$125(Lcom/tencent/wstt/gt/service/GTFloatView;)Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->move_event:Z

    return v0
.end method

.method static synthetic access$126(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1910
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->viewIsOnLongClick()V

    return-void
.end method

.method static synthetic access$127(Lcom/tencent/wstt/gt/service/GTFloatView;F)V
    .locals 0

    .prologue
    .line 180
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->x:F

    return-void
.end method

.method static synthetic access$128(Lcom/tencent/wstt/gt/service/GTFloatView;F)V
    .locals 0

    .prologue
    .line 181
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->y:F

    return-void
.end method

.method static synthetic access$129(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V
    .locals 0

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->move_event:Z

    return-void
.end method

.method static synthetic access$13(Lcom/tencent/wstt/gt/service/GTFloatView;)F
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ProY:F

    return v0
.end method

.method static synthetic access$130(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->up_event:Z

    return-void
.end method

.method static synthetic access$131(Lcom/tencent/wstt/gt/service/GTFloatView;)F
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->x:F

    return v0
.end method

.method static synthetic access$132(Lcom/tencent/wstt/gt/service/GTFloatView;)F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->y:F

    return v0
.end method

.method static synthetic access$133(Lcom/tencent/wstt/gt/service/GTFloatView;F)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mTouchStartX:F

    return-void
.end method

.method static synthetic access$134(Lcom/tencent/wstt/gt/service/GTFloatView;F)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mTouchStartY:F

    return-void
.end method

.method static synthetic access$135(Lcom/tencent/wstt/gt/service/GTFloatView;)F
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mTouchStartX:F

    return v0
.end method

.method static synthetic access$136(Lcom/tencent/wstt/gt/service/GTFloatView;F)V
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->touchX:F

    return-void
.end method

.method static synthetic access$137(Lcom/tencent/wstt/gt/service/GTFloatView;)F
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mTouchStartY:F

    return v0
.end method

.method static synthetic access$138(Lcom/tencent/wstt/gt/service/GTFloatView;F)V
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->touchY:F

    return-void
.end method

.method static synthetic access$139(Lcom/tencent/wstt/gt/service/GTFloatView;F)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ProX:F

    return-void
.end method

.method static synthetic access$14(Z)V
    .locals 0

    .prologue
    .line 97
    sput-boolean p0, Lcom/tencent/wstt/gt/service/GTFloatView;->profiler_already_run:Z

    return-void
.end method

.method static synthetic access$140(Lcom/tencent/wstt/gt/service/GTFloatView;F)V
    .locals 0

    .prologue
    .line 173
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ProY:F

    return-void
.end method

.method static synthetic access$141(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->clickHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$142(Lcom/tencent/wstt/gt/service/GTFloatView;F)V
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->moveX:F

    return-void
.end method

.method static synthetic access$143(Lcom/tencent/wstt/gt/service/GTFloatView;F)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->moveY:F

    return-void
.end method

.method static synthetic access$144(Lcom/tencent/wstt/gt/service/GTFloatView;)F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->move_oldX:F

    return v0
.end method

.method static synthetic access$145(Lcom/tencent/wstt/gt/service/GTFloatView;)F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->move_oldY:F

    return v0
.end method

.method static synthetic access$146(Lcom/tencent/wstt/gt/service/GTFloatView;)F
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->moveX:F

    return v0
.end method

.method static synthetic access$147(Lcom/tencent/wstt/gt/service/GTFloatView;F)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->move_oldX:F

    return-void
.end method

.method static synthetic access$148(Lcom/tencent/wstt/gt/service/GTFloatView;)F
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->moveY:F

    return v0
.end method

.method static synthetic access$149(Lcom/tencent/wstt/gt/service/GTFloatView;F)V
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->move_oldY:F

    return-void
.end method

.method static synthetic access$15(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alpha_count:I

    return-void
.end method

.method static synthetic access$150(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 2073
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->updateViewPosition()V

    return-void
.end method

.method static synthetic access$151(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 2082
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->updateViewPositionEnd()V

    return-void
.end method

.method static synthetic access$16(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_floatview_profiler_switch:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 2104
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->checkIsVisiable()V

    return-void
.end method

.method static synthetic access$18(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToRight()V

    return-void
.end method

.method static synthetic access$19(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToLeft()V

    return-void
.end method

.method static synthetic access$2(Lcom/tencent/wstt/gt/service/GTFloatView;)Z
    .locals 1

    .prologue
    .line 2094
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->checkIsInGT()Z

    move-result v0

    return v0
.end method

.method static synthetic access$20(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToDown()V

    return-void
.end method

.method static synthetic access$21(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToTop()V

    return-void
.end method

.method static synthetic access$22(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToRightHorizontal()V

    return-void
.end method

.method static synthetic access$23(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToLeftHorizontal()V

    return-void
.end method

.method static synthetic access$24(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToDownHorizontal()V

    return-void
.end method

.method static synthetic access$25(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->doAnimationDirectToTopHorizontal()V

    return-void
.end method

.method static synthetic access$26(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_down:Z

    return-void
.end method

.method static synthetic access$27(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 910
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_MoveClickListener()V

    return-void
.end method

.method static synthetic access$28(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_down:Z

    return-void
.end method

.method static synthetic access$29(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_MoveClickListener()V

    return-void
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 196
    sget v0, Lcom/tencent/wstt/gt/service/GTFloatView;->redirect_x:I

    return v0
.end method

.method static synthetic access$30(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_down:Z

    return-void
.end method

.method static synthetic access$31(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_MoveClickListener()V

    return-void
.end method

.method static synthetic access$32()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op1_fold:Z

    return v0
.end method

.method static synthetic access$33(Z)V
    .locals 0

    .prologue
    .line 105
    sput-boolean p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op1_fold:Z

    return-void
.end method

.method static synthetic access$34(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$35(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_fold_height:I

    return-void
.end method

.method static synthetic access$36(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$37(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_unfold_height:I

    return v0
.end method

.method static synthetic access$38(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_fold_height:I

    return v0
.end method

.method static synthetic access$39(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_unfold_height:I

    return-void
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 197
    sget v0, Lcom/tencent/wstt/gt/service/GTFloatView;->redirect_y:I

    return v0
.end method

.method static synthetic access$40(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 1469
    invoke-direct {p0, p1}, Lcom/tencent/wstt/gt/service/GTFloatView;->checkOthersOPState(I)V

    return-void
.end method

.method static synthetic access$41()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op2_fold:Z

    return v0
.end method

.method static synthetic access$42(Z)V
    .locals 0

    .prologue
    .line 106
    sput-boolean p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op2_fold:Z

    return-void
.end method

.method static synthetic access$43(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$44(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_fold_height:I

    return-void
.end method

.method static synthetic access$45(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$46(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_unfold_height:I

    return v0
.end method

.method static synthetic access$47(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_unfold_height:I

    return-void
.end method

.method static synthetic access$48(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_fold_height:I

    return v0
.end method

.method static synthetic access$49()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op3_fold:Z

    return v0
.end method

.method static synthetic access$5(Lcom/tencent/wstt/gt/service/GTFloatView;II)V
    .locals 0

    .prologue
    .line 2246
    invoke-direct {p0, p1, p2}, Lcom/tencent/wstt/gt/service/GTFloatView;->redirectFloatViewPos(II)V

    return-void
.end method

.method static synthetic access$50(Z)V
    .locals 0

    .prologue
    .line 107
    sput-boolean p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op3_fold:Z

    return-void
.end method

.method static synthetic access$51(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$52(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_fold_height:I

    return-void
.end method

.method static synthetic access$53(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$54(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_unfold_height:I

    return v0
.end method

.method static synthetic access$55(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_unfold_height:I

    return-void
.end method

.method static synthetic access$56(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_fold_height:I

    return v0
.end method

.method static synthetic access$57(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_down:Z

    return-void
.end method

.method static synthetic access$58(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_MoveClickListener()V

    return-void
.end method

.method static synthetic access$59(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_down:Z

    return-void
.end method

.method static synthetic access$6(I)V
    .locals 0

    .prologue
    .line 196
    sput p0, Lcom/tencent/wstt/gt/service/GTFloatView;->redirect_x:I

    return-void
.end method

.method static synthetic access$60(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1253
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_MoveClickListener()V

    return-void
.end method

.method static synthetic access$61(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_down:Z

    return-void
.end method

.method static synthetic access$62(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1280
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_MoveClickListener()V

    return-void
.end method

.method static synthetic access$63(Lcom/tencent/wstt/gt/service/GTFloatView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$64()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/tencent/wstt/gt/service/GTFloatView;->state_timer:I

    return v0
.end method

.method static synthetic access$65(I)V
    .locals 0

    .prologue
    .line 87
    sput p0, Lcom/tencent/wstt/gt/service/GTFloatView;->state_timer:I

    return-void
.end method

.method static synthetic access$66(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_timer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$67(Lcom/tencent/wstt/gt/service/GTFloatView;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->timer_thread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$68(Lcom/tencent/wstt/gt/service/GTFloatView;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->timer_thread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$69()I
    .locals 1

    .prologue
    .line 136
    sget v0, Lcom/tencent/wstt/gt/service/GTFloatView;->state_fold:I

    return v0
.end method

.method static synthetic access$7(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->refreshOutputParamsUI()V

    return-void
.end method

.method static synthetic access$70(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview_ip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$71(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_floatview_bottom_arrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$72(I)V
    .locals 0

    .prologue
    .line 136
    sput p0, Lcom/tencent/wstt/gt/service/GTFloatView;->state_fold:I

    return-void
.end method

.method static synthetic access$73(Lcom/tencent/wstt/gt/service/GTFloatView;Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->keyUpDown:Z

    return-void
.end method

.method static synthetic access$74(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 1859
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->keyUpDownListener()I

    move-result v0

    return v0
.end method

.method static synthetic access$75(Lcom/tencent/wstt/gt/service/GTFloatView;)Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->keyUpDown:Z

    return v0
.end method

.method static synthetic access$76(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->timer:I

    return v0
.end method

.method static synthetic access$77(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1883
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->viewIsOnClick()V

    return-void
.end method

.method static synthetic access$78(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->timer:I

    return-void
.end method

.method static synthetic access$79()J
    .locals 2

    .prologue
    .line 88
    sget-wide v0, Lcom/tencent/wstt/gt/service/GTFloatView;->baseTime:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1695
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->refreshInputParamsUI()V

    return-void
.end method

.method static synthetic access$80(Lcom/tencent/wstt/gt/service/GTFloatView;D)V
    .locals 1

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->showTime:D

    return-void
.end method

.method static synthetic access$81(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_top_logo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$82(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_top_logo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$83(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_bottom_logo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$84(Lcom/tencent/wstt/gt/service/GTFloatView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_bottom_logo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$85(I)V
    .locals 0

    .prologue
    .line 182
    sput p0, Lcom/tencent/wstt/gt/service/GTFloatView;->cur_logo_pos:I

    return-void
.end method

.method static synthetic access$86(J)V
    .locals 0

    .prologue
    .line 88
    sput-wide p0, Lcom/tencent/wstt/gt/service/GTFloatView;->baseTime:J

    return-void
.end method

.method static synthetic access$87(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->timer_delaytime:I

    return v0
.end method

.method static synthetic access$88(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->checkFloatViewPosEffective()V

    return-void
.end method

.method static synthetic access$89(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->fv_delaytime:I

    return v0
.end method

.method static synthetic access$9(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->refreshTimer()V

    return-void
.end method

.method static synthetic access$90(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 202
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->fv_value_delaytime:I

    return-void
.end method

.method static synthetic access$91(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->fv_value_delaytime:I

    return v0
.end method

.method static synthetic access$92(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 1575
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->dataRefresh()V

    return-void
.end method

.method static synthetic access$93(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->monitorProfilerStatus()V

    return-void
.end method

.method static synthetic access$94(Lcom/tencent/wstt/gt/service/GTFloatView;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_title_down:Z

    return v0
.end method

.method static synthetic access$95(Lcom/tencent/wstt/gt/service/GTFloatView;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_title_timer:I

    return v0
.end method

.method static synthetic access$96(Lcom/tencent/wstt/gt/service/GTFloatView;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_title_timer:I

    return-void
.end method

.method static synthetic access$97(Lcom/tencent/wstt/gt/service/GTFloatView;)Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->up_event:Z

    return v0
.end method

.method static synthetic access$98(Lcom/tencent/wstt/gt/service/GTFloatView;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_title_onClick()V

    return-void
.end method

.method static synthetic access$99(Lcom/tencent/wstt/gt/service/GTFloatView;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_down:Z

    return v0
.end method

.method private checkFloatViewPosEffective()V
    .locals 8

    .prologue
    .line 639
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 640
    .local v1, "cur_x":I
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 642
    .local v2, "cur_y":I
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 643
    .local v3, "cur_fv_width":I
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 645
    .local v4, "cur_fv_height":I
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevWidth()I

    move-result v5

    .line 646
    .local v5, "dev_width":I
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevHeight()I

    move-result v6

    .line 648
    .local v6, "dev_height":I
    invoke-direct {p0, v5, v6}, Lcom/tencent/wstt/gt/service/GTFloatView;->checkScreenOrientation(II)I

    move-result v7

    .line 649
    .local v7, "orientation":I
    packed-switch v7, :pswitch_data_0

    .line 659
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    .line 651
    invoke-direct/range {v0 .. v6}, Lcom/tencent/wstt/gt/service/GTFloatView;->redirectVerticalPos(IIIIII)V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    .line 655
    invoke-direct/range {v0 .. v6}, Lcom/tencent/wstt/gt/service/GTFloatView;->redirectHorizontalPos(IIIIII)V

    goto :goto_0

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkIsInGT()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2095
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->isInGT()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2096
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2097
    const/4 v0, 0x1

    .line 2100
    :goto_0
    return v0

    .line 2099
    :cond_0
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkIsVisiable()V
    .locals 5

    .prologue
    const v4, 0x7f020048

    const v3, 0x7f02003c

    .line 2105
    sget-object v1, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/service/GTServiceController;->getCurAviableService()I

    move-result v0

    .line 2106
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 2131
    :goto_0
    return-void

    .line 2108
    :pswitch_0
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2111
    :pswitch_1
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2112
    sget-object v1, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    iget-boolean v1, v1, Lcom/tencent/wstt/gt/service/GTServiceController;->show_alert:Z

    if-eqz v1, :cond_0

    .line 2113
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_top_logo:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2114
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_top_logo:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2115
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_bottom_logo:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2116
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_bottom_logo:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 2119
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_top_logo:Landroid/widget/ImageView;

    .line 2120
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2121
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_top_logo:Landroid/widget/ImageView;

    .line 2122
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2123
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_bottom_logo:Landroid/widget/ImageView;

    .line 2124
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2125
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_bottom_logo:Landroid/widget/ImageView;

    .line 2126
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 2106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkOthersOPState(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f020035

    const v4, 0x7f020034

    const/16 v3, 0x53

    const/4 v2, 0x1

    .line 1470
    packed-switch p1, :pswitch_data_0

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1472
    :pswitch_0
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op2_fold:Z

    if-nez v0, :cond_1

    .line 1473
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->op2_fold:Z

    .line 1474
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    .line 1475
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 1474
    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_unfold_height:I

    .line 1477
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    .line 1478
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1479
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_fold_height:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1480
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    .line 1481
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1482
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_fold_height:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1484
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1485
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1488
    :cond_1
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op3_fold:Z

    if-nez v0, :cond_0

    .line 1489
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->op3_fold:Z

    .line 1490
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    .line 1491
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 1490
    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_unfold_height:I

    .line 1493
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    .line 1494
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1495
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_fold_height:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1496
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    .line 1497
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1498
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_fold_height:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1500
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1501
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 1505
    :pswitch_1
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op1_fold:Z

    if-nez v0, :cond_2

    .line 1506
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->op1_fold:Z

    .line 1507
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    .line 1508
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 1507
    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_unfold_height:I

    .line 1510
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    .line 1511
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1512
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_fold_height:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1513
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    .line 1514
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1515
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_fold_height:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1517
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1518
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1520
    :cond_2
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op3_fold:Z

    if-nez v0, :cond_0

    .line 1521
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->op3_fold:Z

    .line 1522
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    .line 1523
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 1522
    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_unfold_height:I

    .line 1525
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    .line 1526
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1527
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_fold_height:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1528
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    .line 1529
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1530
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_fold_height:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1532
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1533
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    .line 1538
    :pswitch_2
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op1_fold:Z

    if-nez v0, :cond_3

    .line 1539
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->op1_fold:Z

    .line 1540
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    .line 1541
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 1540
    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_unfold_height:I

    .line 1543
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    .line 1544
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1545
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_fold_height:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1546
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    .line 1547
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1548
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_fold_height:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1550
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1552
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1555
    :cond_3
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op2_fold:Z

    if-nez v0, :cond_0

    .line 1556
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->op2_fold:Z

    .line 1557
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    .line 1558
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 1557
    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_unfold_height:I

    .line 1560
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    .line 1561
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1562
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_fold_height:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1563
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    .line 1564
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1565
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_fold_height:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1567
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1568
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    .line 1470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkScreenOrientation(II)I
    .locals 1
    .param p1, "dev_width"    # I
    .param p2, "dev_height"    # I

    .prologue
    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "orientation":I
    if-le p1, p2, :cond_0

    .line 664
    const/4 v0, 0x1

    .line 666
    :cond_0
    return v0
.end method

.method private createView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 1928
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1929
    const-string v3, "window"

    .line 1928
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    .line 1930
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 1931
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1932
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1933
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x208

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1934
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1936
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1937
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1939
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1940
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1941
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1945
    :try_start_0
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    sget-object v3, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    iget-object v4, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 1961
    .local v1, "sbar_height":I
    sget-object v2, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    new-instance v3, Lcom/tencent/wstt/gt/service/GTFloatView$32;

    invoke-direct {v3, p0, v1}, Lcom/tencent/wstt/gt/service/GTFloatView$32;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2032
    .end local v1    # "sbar_height":I
    :goto_0
    return-void

    .line 1947
    :catch_0
    move-exception v0

    .line 1954
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->stopSelf()V

    goto :goto_0
.end method

.method private dataRefresh()V
    .locals 0

    .prologue
    .line 1577
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->refreshOutputParams()V

    .line 1578
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->refreshInputParams()V

    .line 1580
    return-void
.end method

.method private determineLogoPosition()V
    .locals 14

    .prologue
    .line 2178
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2179
    .local v8, "top_left_x":I
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2181
    .local v9, "top_left_y":I
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v13, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int v10, v12, v13

    .line 2182
    .local v10, "top_right_x":I
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v11, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2184
    .local v11, "top_right_y":I
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2185
    .local v0, "bottom_left_x":I
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v13, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int v1, v12, v13

    .line 2187
    .local v1, "bottom_left_y":I
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v13, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int v2, v12, v13

    .line 2188
    .local v2, "bottom_right_x":I
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v13, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int v3, v12, v13

    .line 2190
    .local v3, "bottom_right_y":I
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevWidth()I

    move-result v5

    .line 2191
    .local v5, "dev_width":I
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevHeight()I

    move-result v4

    .line 2193
    .local v4, "dev_height":I
    const/high16 v12, 0x41c80000    # 25.0f

    iget v13, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v12, v13

    float-to-int v6, v12

    .line 2195
    .local v6, "logo_height":I
    if-gez v8, :cond_0

    if-gez v9, :cond_0

    .line 2196
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 2197
    .local v7, "msg":Landroid/os/Message;
    const/4 v12, 0x0

    iput v12, v7, Landroid/os/Message;->what:I

    .line 2198
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2235
    :goto_0
    return-void

    .line 2199
    .end local v7    # "msg":Landroid/os/Message;
    :cond_0
    if-le v10, v5, :cond_1

    if-gez v9, :cond_1

    .line 2200
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 2201
    .restart local v7    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v7, Landroid/os/Message;->what:I

    .line 2202
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2203
    .end local v7    # "msg":Landroid/os/Message;
    :cond_1
    if-gez v0, :cond_2

    if-le v1, v4, :cond_2

    .line 2204
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 2205
    .restart local v7    # "msg":Landroid/os/Message;
    const/4 v12, 0x2

    iput v12, v7, Landroid/os/Message;->what:I

    .line 2206
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2207
    .end local v7    # "msg":Landroid/os/Message;
    :cond_2
    if-le v2, v5, :cond_3

    if-le v3, v4, :cond_3

    .line 2208
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 2209
    .restart local v7    # "msg":Landroid/os/Message;
    const/4 v12, 0x3

    iput v12, v7, Landroid/os/Message;->what:I

    .line 2210
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2211
    .end local v7    # "msg":Landroid/os/Message;
    :cond_3
    if-ge v2, v5, :cond_4

    if-ltz v0, :cond_4

    .line 2212
    add-int v12, v1, v6

    if-le v12, v4, :cond_4

    .line 2213
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 2214
    .restart local v7    # "msg":Landroid/os/Message;
    const/4 v12, 0x2

    iput v12, v7, Landroid/os/Message;->what:I

    .line 2215
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2216
    .end local v7    # "msg":Landroid/os/Message;
    :cond_4
    if-le v2, v5, :cond_5

    if-ge v3, v4, :cond_5

    .line 2217
    if-lez v11, :cond_5

    .line 2218
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 2219
    .restart local v7    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v7, Landroid/os/Message;->what:I

    .line 2220
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2221
    .end local v7    # "msg":Landroid/os/Message;
    :cond_5
    if-lez v8, :cond_6

    if-ge v10, v5, :cond_6

    if-gez v11, :cond_6

    .line 2222
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 2223
    .restart local v7    # "msg":Landroid/os/Message;
    const/4 v12, 0x0

    iput v12, v7, Landroid/os/Message;->what:I

    .line 2224
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2225
    .end local v7    # "msg":Landroid/os/Message;
    :cond_6
    if-gez v8, :cond_7

    if-lez v9, :cond_7

    .line 2226
    if-ge v1, v4, :cond_7

    .line 2227
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 2228
    .restart local v7    # "msg":Landroid/os/Message;
    const/4 v12, 0x0

    iput v12, v7, Landroid/os/Message;->what:I

    .line 2229
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2231
    .end local v7    # "msg":Landroid/os/Message;
    :cond_7
    iget-object v12, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 2232
    .restart local v7    # "msg":Landroid/os/Message;
    const/4 v12, 0x0

    iput v12, v7, Landroid/os/Message;->what:I

    .line 2233
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method private doAnimationDirectToDown()V
    .locals 3

    .prologue
    .line 709
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_y:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->last_y:I

    if-ge v0, v1, :cond_0

    .line 710
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_y:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mAnimDistance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_y:I

    .line 711
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 712
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Vertical_handler:Landroid/os/Handler;

    .line 714
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 716
    :cond_0
    return-void
.end method

.method private doAnimationDirectToDownHorizontal()V
    .locals 3

    .prologue
    .line 807
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_y:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_last_y:I

    if-ge v0, v1, :cond_0

    .line 808
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_y:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mAnimDistance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_y:I

    .line 809
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 810
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Horizontal_handler:Landroid/os/Handler;

    .line 812
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 814
    :cond_0
    return-void
.end method

.method private doAnimationDirectToLeft()V
    .locals 3

    .prologue
    .line 699
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_x:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->last_x:I

    if-le v0, v1, :cond_0

    .line 700
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_x:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mAnimDistance:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_x:I

    .line 701
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 702
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Vertical_handler:Landroid/os/Handler;

    .line 704
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 706
    :cond_0
    return-void
.end method

.method private doAnimationDirectToLeftHorizontal()V
    .locals 3

    .prologue
    .line 797
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_x:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_last_x:I

    if-le v0, v1, :cond_0

    .line 798
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_x:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mAnimDistance:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_x:I

    .line 799
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 800
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Horizontal_handler:Landroid/os/Handler;

    .line 802
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 804
    :cond_0
    return-void
.end method

.method private doAnimationDirectToRight()V
    .locals 3

    .prologue
    .line 689
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_x:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->last_x:I

    if-ge v0, v1, :cond_0

    .line 690
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_x:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mAnimDistance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_x:I

    .line 691
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 692
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Vertical_handler:Landroid/os/Handler;

    .line 694
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 696
    :cond_0
    return-void
.end method

.method private doAnimationDirectToRightHorizontal()V
    .locals 3

    .prologue
    .line 787
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_x:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_last_x:I

    if-ge v0, v1, :cond_0

    .line 788
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_x:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mAnimDistance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_x:I

    .line 789
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 790
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Horizontal_handler:Landroid/os/Handler;

    .line 792
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 794
    :cond_0
    return-void
.end method

.method private doAnimationDirectToTop()V
    .locals 3

    .prologue
    .line 719
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_y:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->last_y:I

    if-le v0, v1, :cond_0

    .line 720
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_y:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mAnimDistance:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_y:I

    .line 721
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 722
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Vertical_handler:Landroid/os/Handler;

    .line 724
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 726
    :cond_0
    return-void
.end method

.method private doAnimationDirectToTopHorizontal()V
    .locals 3

    .prologue
    .line 818
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_y:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_last_y:I

    if-le v0, v1, :cond_0

    .line 819
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_y:I

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mAnimDistance:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_y:I

    .line 820
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 821
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Horizontal_handler:Landroid/os/Handler;

    .line 823
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 826
    :cond_0
    return-void
.end method

.method private initFloatViewBorder()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1454
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1455
    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1454
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_top_logo:Landroid/widget/ImageView;

    .line 1456
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_top_logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1457
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1458
    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1457
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_top_logo:Landroid/widget/ImageView;

    .line 1459
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_top_logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1460
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1461
    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1460
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_bottom_logo:Landroid/widget/ImageView;

    .line 1462
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_left_bottom_logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1463
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1464
    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1463
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_bottom_logo:Landroid/widget/ImageView;

    .line 1465
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_right_bottom_logo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1467
    return-void
.end method

.method private initInParamLayout()V
    .locals 2

    .prologue
    .line 1358
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1359
    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1358
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1:Landroid/widget/TextView;

    .line 1360
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1361
    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1360
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_value:Landroid/widget/TextView;

    .line 1363
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1364
    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1363
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2:Landroid/widget/TextView;

    .line 1365
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1366
    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1365
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_value:Landroid/widget/TextView;

    .line 1368
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1369
    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1368
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3:Landroid/widget/TextView;

    .line 1370
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1371
    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1370
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_value:Landroid/widget/TextView;

    .line 1376
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/wstt/gt/service/GTFloatView$25;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$25;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1388
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_value:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/wstt/gt/service/GTFloatView$26;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$26;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1401
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/wstt/gt/service/GTFloatView$27;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$27;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1413
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_value:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/wstt/gt/service/GTFloatView$28;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$28;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1426
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/wstt/gt/service/GTFloatView$29;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$29;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1439
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_value:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/wstt/gt/service/GTFloatView$30;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$30;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1451
    return-void
.end method

.method private initOutParamLayout()V
    .locals 2

    .prologue
    .line 1150
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1151
    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1150
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    .line 1152
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1153
    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1152
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    .line 1155
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1156
    const v1, 0x7f08004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1155
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    .line 1157
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1158
    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1157
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    .line 1160
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1161
    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1160
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    .line 1162
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 1163
    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1162
    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    .line 1166
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/wstt/gt/service/GTFloatView$19;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$19;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1179
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/wstt/gt/service/GTFloatView$20;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$20;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1192
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/wstt/gt/service/GTFloatView$21;

    invoke-direct {v1, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$21;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1205
    return-void
.end method

.method private initParamsView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 266
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    return-void
.end method

.method private isInLogoArea(FF)Z
    .locals 7
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    const/high16 v6, 0x41c80000    # 25.0f

    .line 2036
    const/4 v4, 0x0

    .line 2038
    .local v4, "result":Z
    sget-object v5, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 2039
    .local v1, "cur_logo_float_view_width":I
    sget-object v5, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2041
    .local v0, "cur_logo_float_view_height":I
    iget v5, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 2042
    .local v3, "logo_width":I
    iget v5, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 2044
    .local v2, "logo_height":I
    sget v5, Lcom/tencent/wstt/gt/service/GTFloatView;->cur_logo_pos:I

    packed-switch v5, :pswitch_data_0

    .line 2070
    :cond_0
    :goto_0
    return v4

    .line 2046
    :pswitch_0
    sub-int v5, v1, v3

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    .line 2047
    sub-int v5, v0, v2

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    .line 2048
    const/4 v4, 0x1

    .line 2050
    goto :goto_0

    .line 2052
    :pswitch_1
    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 2053
    sub-int v5, v0, v2

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    .line 2054
    const/4 v4, 0x1

    .line 2056
    goto :goto_0

    .line 2058
    :pswitch_2
    sub-int v5, v1, v3

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    .line 2059
    int-to-float v5, v2

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 2060
    const/4 v4, 0x1

    .line 2062
    goto :goto_0

    .line 2064
    :pswitch_3
    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    int-to-float v5, v2

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 2065
    const/4 v4, 0x1

    goto :goto_0

    .line 2044
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private keyUpDownListener()I
    .locals 1

    .prologue
    .line 1860
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$31;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$31;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 1877
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/service/GTFloatView$31;->start()V

    .line 1878
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->timer:I

    return v0
.end method

.method private monitorProfilerStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 525
    invoke-static {}, Lcom/tencent/wstt/gt/activity/GTACSettingActivity;->getSwitchType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 527
    :pswitch_0
    invoke-static {}, Lcom/tencent/wstt/gt/api/base/GTTime;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    sget-boolean v1, Lcom/tencent/wstt/gt/service/GTFloatView;->profiler_already_run:Z

    if-nez v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 530
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 531
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 534
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->profiler_already_run:Z

    .line 535
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 536
    .restart local v0    # "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 537
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 541
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_1
    sget-boolean v1, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    if-eqz v1, :cond_2

    .line 542
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 543
    .restart local v0    # "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 544
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 546
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    sput-boolean v2, Lcom/tencent/wstt/gt/manager/OpUIManager;->gw_running:Z

    .line 547
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 548
    .restart local v0    # "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 549
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private redirectFloatViewPos(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2247
    invoke-direct {p0, p1, p2}, Lcom/tencent/wstt/gt/service/GTFloatView;->redirectLogoPos(II)V

    .line 2248
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2249
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2250
    return-void
.end method

.method private redirectHorizontalPos(IIIIII)V
    .locals 6
    .param p1, "cur_x"    # I
    .param p2, "cur_y"    # I
    .param p3, "cur_fv_width"    # I
    .param p4, "cur_fv_height"    # I
    .param p5, "dev_width"    # I
    .param p6, "dev_height"    # I

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x41f00000    # 30.0f

    .line 830
    iget v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 831
    .local v0, "logo_height":I
    iget v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 833
    .local v1, "logo_width":I
    add-int v3, p2, v0

    if-lt v3, p6, :cond_0

    .line 834
    sub-int v3, p6, v0

    add-int/lit8 v3, v3, -0x3c

    iput v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_last_y:I

    .line 835
    iput p2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_y:I

    .line 836
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Horizontal_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 837
    .local v2, "msg":Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->what:I

    .line 838
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 842
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    if-gez p1, :cond_1

    add-int v3, p1, p3

    if-gt v3, v1, :cond_1

    .line 843
    sub-int v3, p3, v1

    neg-int v3, v3

    iput v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_last_x:I

    .line 844
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_x:I

    .line 845
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Horizontal_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 846
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 847
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 850
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    if-eqz p5, :cond_2

    sub-int v3, p5, v1

    if-le p1, v3, :cond_2

    .line 851
    sub-int v3, p5, v1

    iput v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_last_x:I

    .line 852
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_x:I

    .line 853
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Horizontal_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 854
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 855
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 858
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    if-gez p2, :cond_3

    add-int v3, p2, p4

    if-ge v3, v0, :cond_3

    .line 859
    sub-int v3, v0, p4

    iput v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_last_y:I

    .line 860
    iput p2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_y:I

    .line 861
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Horizontal_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 862
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 863
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 866
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    if-eqz p6, :cond_4

    sub-int v3, p6, p2

    if-ge v3, v0, :cond_4

    .line 867
    sub-int v3, p6, v0

    add-int/lit8 v3, v3, -0x3c

    iput v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_last_y:I

    .line 868
    iput p2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->h_orig_y:I

    .line 869
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Horizontal_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 870
    .restart local v2    # "msg":Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->what:I

    .line 871
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 873
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    return-void
.end method

.method private redirectLogoPos(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 2253
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevWidth()I

    move-result v0

    .line 2254
    .local v0, "dev_width":I
    const/high16 v3, 0x41c80000    # 25.0f

    iget v4, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 2255
    .local v1, "logo_height":I
    div-int/lit8 v3, v0, 0x2

    if-le p1, v3, :cond_1

    .line 2256
    sget-object v3, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 2257
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v4, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v0, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2258
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v4, p2, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2259
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 2260
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 2261
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2284
    :goto_0
    return-void

    .line 2263
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v4, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v0, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2264
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v4, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, p2, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2265
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 2266
    .restart local v2    # "msg":Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->what:I

    .line 2267
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2270
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    sget-object v3, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 2271
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2272
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v4, p2, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2273
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 2274
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 2275
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2277
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2278
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v4, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, p2, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2279
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->logo_pos_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 2280
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 2281
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private redirectVerticalPos(IIIIII)V
    .locals 5
    .param p1, "cur_x"    # I
    .param p2, "cur_y"    # I
    .param p3, "cur_fv_width"    # I
    .param p4, "cur_fv_height"    # I
    .param p5, "dev_width"    # I
    .param p6, "dev_height"    # I

    .prologue
    const/high16 v4, 0x41f00000    # 30.0f

    .line 730
    iget v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 731
    .local v1, "logo_width":I
    iget v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 733
    .local v0, "logo_height":I
    if-gez p1, :cond_0

    add-int v3, p1, p3

    if-gt v3, v1, :cond_0

    .line 734
    sub-int v3, p3, v1

    neg-int v3, v3

    iput v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->last_x:I

    .line 735
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_x:I

    .line 736
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Vertical_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 737
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 738
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 741
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    if-eqz p5, :cond_1

    sub-int v3, p5, v1

    if-le p1, v3, :cond_1

    .line 742
    sub-int v3, p5, v1

    iput v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->last_x:I

    .line 743
    iput p1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_x:I

    .line 744
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Vertical_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 745
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 746
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 749
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    if-gez p2, :cond_2

    add-int v3, p2, p4

    if-ge v3, v0, :cond_2

    .line 750
    sub-int v3, v0, p4

    iput v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->last_y:I

    .line 751
    iput p2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_y:I

    .line 752
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Vertical_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 753
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 754
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 757
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    if-eqz p6, :cond_3

    sub-int v3, p6, p2

    if-ge v3, v0, :cond_3

    .line 758
    sub-int v3, p6, v0

    add-int/lit8 v3, v3, -0x3c

    iput v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->last_y:I

    .line 759
    iput p2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->orig_y:I

    .line 760
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_redirect_Vertical_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 761
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 762
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 765
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method private refreshInputParams()V
    .locals 2

    .prologue
    .line 1785
    invoke-static {}, Lcom/tencent/wstt/gt/manager/IpUIManager;->getACInputParams()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    .line 1787
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/tencent/wstt/gt/service/GTFloatView;->len_ip:I

    .line 1788
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->old_list_ip:I

    sget v1, Lcom/tencent/wstt/gt/service/GTFloatView;->len_ip:I

    if-ne v0, v1, :cond_0

    .line 1789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ip_len_modify:Z

    .line 1793
    :goto_0
    return-void

    .line 1791
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ip_len_modify:Z

    goto :goto_0
.end method

.method private refreshInputParamsUI()V
    .locals 6

    .prologue
    const/high16 v5, 0x42ac0000    # 86.0f

    const/4 v4, 0x1

    const/high16 v2, 0x42640000    # 57.0f

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 1696
    sget v0, Lcom/tencent/wstt/gt/service/GTFloatView;->len_ip:I

    if-nez v0, :cond_1

    .line 1697
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview_ip:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1698
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_floatview_bottom_arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1699
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview_bottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1700
    sput v3, Lcom/tencent/wstt/gt/service/GTFloatView;->old_ip_len:I

    .line 1710
    :cond_0
    :goto_0
    sget v0, Lcom/tencent/wstt/gt/service/GTFloatView;->len_ip:I

    packed-switch v0, :pswitch_data_0

    .line 1779
    :goto_1
    :pswitch_0
    return-void

    .line 1702
    :cond_1
    sget v0, Lcom/tencent/wstt/gt/service/GTFloatView;->old_ip_len:I

    if-nez v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview_ip:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1704
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_floatview_bottom_arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1705
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview_bottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1706
    sget v0, Lcom/tencent/wstt/gt/service/GTFloatView;->len_ip:I

    sput v0, Lcom/tencent/wstt/gt/service/GTFloatView;->old_ip_len:I

    goto :goto_0

    .line 1714
    :pswitch_1
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ip_len_modify:Z

    if-eqz v0, :cond_2

    .line 1715
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1716
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1717
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1718
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1720
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    const/high16 v2, 0x432d0000    # 173.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 1721
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_value:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    const/high16 v2, 0x432d0000    # 173.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 1723
    iput v4, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->old_list_ip:I

    .line 1726
    :cond_2
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1727
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1730
    :pswitch_2
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ip_len_modify:Z

    if-eqz v0, :cond_3

    .line 1731
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1732
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_value:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1733
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1734
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1736
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 1737
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_value:Landroid/widget/TextView;

    .line 1738
    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 1739
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 1740
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_value:Landroid/widget/TextView;

    .line 1741
    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 1743
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->old_list_ip:I

    .line 1746
    :cond_3
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1747
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1748
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1749
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1752
    :pswitch_3
    iget-boolean v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ip_len_modify:Z

    if-eqz v0, :cond_4

    .line 1753
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1754
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_value:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1755
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1756
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_value:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1758
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 1759
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_value:Landroid/widget/TextView;

    .line 1760
    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 1761
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 1762
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_value:Landroid/widget/TextView;

    .line 1763
    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 1764
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 1765
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_value:Landroid/widget/TextView;

    .line 1766
    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 1768
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->old_list_ip:I

    .line 1771
    :cond_4
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1772
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip1_value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1773
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1774
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip2_value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1775
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1776
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip3_value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_ip:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wstt/gt/InPara;

    invoke-virtual {v0}, Lcom/tencent/wstt/gt/InPara;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1710
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshOutputParams()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1583
    invoke-static {}, Lcom/tencent/wstt/gt/manager/OpUIManager;->getACOutputParams()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    .line 1585
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1586
    .local v0, "cur_size_list_op":I
    sget v1, Lcom/tencent/wstt/gt/service/GTFloatView;->old_op_len:I

    if-ne v0, v1, :cond_0

    .line 1587
    sput-boolean v2, Lcom/tencent/wstt/gt/service/GTFloatView;->op_len_modify:Z

    .line 1592
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1624
    :goto_1
    return-void

    .line 1589
    :cond_0
    sput-boolean v3, Lcom/tencent/wstt/gt/service/GTFloatView;->op_len_modify:Z

    goto :goto_0

    .line 1594
    :pswitch_0
    sput v2, Lcom/tencent/wstt/gt/service/GTFloatView;->op_len_state:I

    goto :goto_1

    .line 1597
    :pswitch_1
    sput v3, Lcom/tencent/wstt/gt/service/GTFloatView;->op_len_state:I

    .line 1598
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op1:Lcom/tencent/wstt/gt/OutPara;

    .line 1599
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias1:Ljava/lang/String;

    .line 1600
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op1:Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value1:Ljava/lang/String;

    goto :goto_1

    .line 1603
    :pswitch_2
    sput v4, Lcom/tencent/wstt/gt/service/GTFloatView;->op_len_state:I

    .line 1604
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op1:Lcom/tencent/wstt/gt/OutPara;

    .line 1605
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias1:Ljava/lang/String;

    .line 1606
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op1:Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value1:Ljava/lang/String;

    .line 1607
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op2:Lcom/tencent/wstt/gt/OutPara;

    .line 1608
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias2:Ljava/lang/String;

    .line 1609
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op2:Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value2:Ljava/lang/String;

    goto :goto_1

    .line 1612
    :pswitch_3
    const/4 v1, 0x3

    sput v1, Lcom/tencent/wstt/gt/service/GTFloatView;->op_len_state:I

    .line 1613
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op1:Lcom/tencent/wstt/gt/OutPara;

    .line 1614
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias1:Ljava/lang/String;

    .line 1615
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op1:Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value1:Ljava/lang/String;

    .line 1616
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op2:Lcom/tencent/wstt/gt/OutPara;

    .line 1617
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias2:Ljava/lang/String;

    .line 1618
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op2:Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value2:Ljava/lang/String;

    .line 1619
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op3:Lcom/tencent/wstt/gt/OutPara;

    .line 1620
    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->ac_op:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias3:Ljava/lang/String;

    .line 1621
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->op3:Lcom/tencent/wstt/gt/OutPara;

    invoke-virtual {v1}, Lcom/tencent/wstt/gt/OutPara;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value3:Ljava/lang/String;

    goto/16 :goto_1

    .line 1592
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshOutputParamsUI()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1628
    sget v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op_len_state:I

    packed-switch v0, :pswitch_data_0

    .line 1693
    :cond_0
    :goto_0
    return-void

    .line 1630
    :pswitch_0
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op_len_modify:Z

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1632
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1633
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1634
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1635
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1636
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1638
    sput v1, Lcom/tencent/wstt/gt/service/GTFloatView;->old_op_len:I

    goto :goto_0

    .line 1642
    :pswitch_1
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op_len_modify:Z

    if-eqz v0, :cond_1

    .line 1643
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1644
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1645
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1646
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1647
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1648
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1650
    const/4 v0, 0x1

    sput v0, Lcom/tencent/wstt/gt/service/GTFloatView;->old_op_len:I

    .line 1653
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1657
    :pswitch_2
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op_len_modify:Z

    if-eqz v0, :cond_2

    .line 1658
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1659
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1660
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1661
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1662
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1663
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1665
    const/4 v0, 0x2

    sput v0, Lcom/tencent/wstt/gt/service/GTFloatView;->old_op_len:I

    .line 1668
    :cond_2
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1670
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1671
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1674
    :pswitch_3
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->op_len_modify:Z

    if-eqz v0, :cond_3

    .line 1675
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1676
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1677
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1678
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1679
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1680
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1682
    const/4 v0, 0x3

    sput v0, Lcom/tencent/wstt/gt/service/GTFloatView;->old_op_len:I

    .line 1685
    :cond_3
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1686
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1687
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1688
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1689
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alias3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1690
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->value3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1628
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshProfilerImg()V
    .locals 3

    .prologue
    const v2, 0x7f02003f

    .line 509
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_profiler_flag:Z

    if-eqz v0, :cond_1

    .line 510
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alpha_count:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alpha_count:I

    .line 511
    iget v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alpha_count:I

    div-int/lit8 v0, v0, 0x14

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 512
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->alpha_count:I

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_floatview_profiler_switch:Landroid/widget/ImageView;

    .line 515
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 521
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_floatview_profiler_switch:Landroid/widget/ImageView;

    .line 519
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private refreshTimer()V
    .locals 10

    .prologue
    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 498
    .local v2, "curTime":J
    sget-wide v6, Lcom/tencent/wstt/gt/service/GTFloatView;->baseTime:J

    sub-long v6, v2, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v4, v6, v8

    .line 499
    .local v4, "tempTime":D
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 500
    .local v0, "b":Ljava/math/BigDecimal;
    const/4 v1, 0x1

    const/4 v6, 0x4

    invoke-virtual {v0, v1, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->showTime:D

    .line 501
    iget-wide v6, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->showTime:D

    const-wide v8, 0x408f3f3333333333L    # 999.9

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_0

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/tencent/wstt/gt/service/GTFloatView;->baseTime:J

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_timer:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->showTime:D

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\'\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_timer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->postInvalidate()V

    .line 506
    return-void
.end method

.method public static setReDirectXY(II)V
    .locals 0
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 2242
    sput p0, Lcom/tencent/wstt/gt/service/GTFloatView;->redirect_x:I

    .line 2243
    sput p1, Lcom/tencent/wstt/gt/service/GTFloatView;->redirect_y:I

    .line 2244
    return-void
.end method

.method private tv_floatview_ip1_MoveClickListener()V
    .locals 1

    .prologue
    .line 1227
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$22;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$22;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 1245
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/service/GTFloatView$22;->start()V

    .line 1246
    return-void
.end method

.method private tv_floatview_ip1_onClick()V
    .locals 2

    .prologue
    .line 1249
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->FVIsClick:Z

    .line 1250
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip_Handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1251
    return-void
.end method

.method private tv_floatview_ip2_MoveClickListener()V
    .locals 1

    .prologue
    .line 1254
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$23;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$23;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 1272
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/service/GTFloatView$23;->start()V

    .line 1273
    return-void
.end method

.method private tv_floatview_ip2_onClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1276
    sput-boolean v1, Lcom/tencent/wstt/gt/service/GTFloatView;->FVIsClick:Z

    .line 1277
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1278
    return-void
.end method

.method private tv_floatview_ip3_MoveClickListener()V
    .locals 1

    .prologue
    .line 1281
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$24;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$24;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 1299
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/service/GTFloatView$24;->start()V

    .line 1300
    return-void
.end method

.method private tv_floatview_ip3_onClick()V
    .locals 2

    .prologue
    .line 1303
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->FVIsClick:Z

    .line 1304
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_ip_Handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1305
    return-void
.end method

.method private tv_floatview_op1_MoveClickListener()V
    .locals 1

    .prologue
    .line 911
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$16;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$16;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 929
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/service/GTFloatView$16;->start()V

    .line 930
    return-void
.end method

.method private tv_floatview_op1_onClick()V
    .locals 2

    .prologue
    .line 933
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->FVIsClick:Z

    .line 934
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op_Handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 935
    return-void
.end method

.method private tv_floatview_op2_MoveClickListener()V
    .locals 1

    .prologue
    .line 1095
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$17;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$17;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 1113
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/service/GTFloatView$17;->start()V

    .line 1114
    return-void
.end method

.method private tv_floatview_op2_onClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1117
    sput-boolean v1, Lcom/tencent/wstt/gt/service/GTFloatView;->FVIsClick:Z

    .line 1118
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1119
    return-void
.end method

.method private tv_floatview_op3_MoveClickListener()V
    .locals 1

    .prologue
    .line 1122
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$18;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$18;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 1140
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/service/GTFloatView$18;->start()V

    .line 1141
    return-void
.end method

.method private tv_floatview_op3_onClick()V
    .locals 2

    .prologue
    .line 1144
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->FVIsClick:Z

    .line 1145
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op_Handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1146
    return-void
.end method

.method private tv_floatview_title_MoveClickListener()V
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lcom/tencent/wstt/gt/service/GTFloatView$15;

    invoke-direct {v0, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$15;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    .line 318
    invoke-virtual {v0}, Lcom/tencent/wstt/gt/service/GTFloatView$15;->start()V

    .line 319
    return-void
.end method

.method private tv_floatview_title_onClick()V
    .locals 5

    .prologue
    .line 322
    sget-boolean v3, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_profiler_flag:Z

    if-eqz v3, :cond_2

    .line 323
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 324
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 325
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 327
    sget-object v3, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->mapPIListener:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 328
    sget-object v3, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->mapPIListener:Ljava/util/HashMap;

    .line 329
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 328
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 349
    :cond_0
    return-void

    .line 329
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 330
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/tencent/wstt/gt/plugin/listener/PluginListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;

    .line 331
    .local v1, "listener":Lcom/tencent/wstt/gt/plugin/listener/PluginListener;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->setFlag(Z)V

    .line 332
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->end()V

    goto :goto_0

    .line 336
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/tencent/wstt/gt/plugin/listener/PluginListener;>;"
    .end local v1    # "listener":Lcom/tencent/wstt/gt/plugin/listener/PluginListener;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 337
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    .line 338
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 340
    sget-object v3, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->mapPIListener:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 341
    sget-object v3, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->mapPIListener:Ljava/util/HashMap;

    .line 342
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 341
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 343
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/tencent/wstt/gt/plugin/listener/PluginListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;

    .line 344
    .restart local v1    # "listener":Lcom/tencent/wstt/gt/plugin/listener/PluginListener;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->setFlag(Z)V

    .line 345
    invoke-virtual {v1}, Lcom/tencent/wstt/gt/plugin/listener/PluginListener;->start()V

    goto :goto_1
.end method

.method private updateViewPosition()V
    .locals 3

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->x:F

    iget v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mTouchStartX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2077
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->y:F

    iget v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mTouchStartY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2079
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2080
    return-void
.end method

.method private updateViewPositionEnd()V
    .locals 3

    .prologue
    .line 2083
    sget-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->FVIsClick:Z

    if-eqz v0, :cond_0

    .line 2084
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->FVIsClick:Z

    .line 2092
    :goto_0
    return-void

    .line 2087
    :cond_0
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->x:F

    iget v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mTouchStartX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2088
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->y:F

    iget v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->mTouchStartY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2090
    iget-object v0, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wm:Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2091
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->determineLogoPosition()V

    goto :goto_0
.end method

.method private viewIsOnClick()V
    .locals 3

    .prologue
    .line 1885
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->timer:I

    .line 1886
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/wstt/gt/service/GTFloatView;->FVIsClick:Z

    .line 1887
    iget v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->touchX:F

    iget v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->touchY:F

    invoke-direct {p0, v1, v2}, Lcom/tencent/wstt/gt/service/GTFloatView;->isInLogoArea(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1889
    sget-boolean v1, Lcom/tencent/wstt/gt/service/GTFloatView;->op1_fold:Z

    if-nez v1, :cond_0

    .line 1890
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op1_onClick()V

    .line 1892
    :cond_0
    sget-boolean v1, Lcom/tencent/wstt/gt/service/GTFloatView;->op2_fold:Z

    if-nez v1, :cond_1

    .line 1893
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op2_onClick()V

    .line 1895
    :cond_1
    sget-boolean v1, Lcom/tencent/wstt/gt/service/GTFloatView;->op3_fold:Z

    if-nez v1, :cond_2

    .line 1896
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_op3_onClick()V

    .line 1898
    :cond_2
    sget-boolean v1, Lcom/tencent/wstt/gt/activity/GTMainActivity;->dlgIsShow:Z

    if-nez v1, :cond_3

    .line 1901
    new-instance v0, Landroid/content/Intent;

    .line 1902
    const-class v1, Lcom/tencent/wstt/gt/activity/SplashActivity;

    .line 1901
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1903
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1904
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1905
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->startActivity(Landroid/content/Intent;)V

    .line 1908
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method private viewIsOnLongClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1911
    iput v4, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->timer:I

    .line 1912
    iget v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->touchX:F

    iget v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->touchY:F

    invoke-direct {p0, v2, v3}, Lcom/tencent/wstt/gt/service/GTFloatView;->isInLogoArea(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1913
    sget-object v2, Lcom/tencent/wstt/gt/service/GTServiceController;->INSTANCE:Lcom/tencent/wstt/gt/service/GTServiceController;

    invoke-virtual {v2, v4}, Lcom/tencent/wstt/gt/service/GTServiceController;->setCurAviableService(I)V

    .line 1914
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1915
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1916
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1918
    sget-boolean v2, Lcom/tencent/wstt/gt/service/GTLogo;->gtLogoRunned:Z

    if-nez v2, :cond_0

    .line 1919
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/wstt/gt/service/GTLogo;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1920
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1921
    invoke-virtual {p0, v0}, Lcom/tencent/wstt/gt/service/GTFloatView;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1924
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 2288
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 607
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 609
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->checkFloatViewPosEffective()V

    .line 610
    iget-object v1, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview_handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 611
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 612
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 613
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 215
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 217
    sput-boolean v5, Lcom/tencent/wstt/gt/service/GTFloatView;->floatViewRunned:Z

    .line 219
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 220
    const v3, 0x7f03000c

    const/4 v4, 0x0

    .line 219
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 221
    sget-object v2, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 222
    const v3, 0x7f080047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 221
    check-cast v2, Landroid/widget/LinearLayout;

    sput-object v2, Lcom/tencent/wstt/gt/service/GTFloatView;->floatview:Landroid/widget/LinearLayout;

    .line 223
    sget-object v2, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 224
    const v3, 0x7f08005c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 223
    iput-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview_bottom:Landroid/widget/FrameLayout;

    .line 225
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview_bottom:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->fold:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    sget-object v2, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 227
    const v3, 0x7f080067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 226
    check-cast v1, Landroid/widget/TextView;

    .line 228
    .local v1, "tv_floatview_bottom_border":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->fold:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    sget-object v2, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 230
    const v3, 0x7f080052

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 229
    iput-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview_ip:Landroid/widget/FrameLayout;

    .line 231
    sget-object v2, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 232
    const v3, 0x7f08005e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 231
    iput-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_floatview_bottom_arrow:Landroid/widget/ImageView;

    .line 234
    sget-object v2, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    const v3, 0x7f08004a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_timer:Landroid/widget/TextView;

    .line 235
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_timer:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 236
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_timer:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->operatTimer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    sget-object v2, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 239
    const v3, 0x7f08004b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 238
    iput-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->img_floatview_profiler_switch:Landroid/widget/ImageView;

    .line 241
    invoke-static {}, Lcom/tencent/wstt/gt/api/utils/DeviceUtils;->getDevDensity()F

    move-result v2

    iput v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->dev_density:F

    .line 243
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->createView()V

    .line 245
    sget-object v2, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->initOutParamLayout()V

    .line 248
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->initInParamLayout()V

    .line 249
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->initFloatViewBorder()V

    .line 251
    sput-boolean v5, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_fv_flag:Z

    .line 252
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/wstt/gt/service/GTFloatView$MyRunnable;

    invoke-direct {v2, p0}, Lcom/tencent/wstt/gt/service/GTFloatView$MyRunnable;-><init>(Lcom/tencent/wstt/gt/service/GTFloatView;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 253
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 255
    invoke-direct {p0}, Lcom/tencent/wstt/gt/service/GTFloatView;->initParamsView()V

    .line 257
    sget-object v2, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    .line 258
    const v3, 0x7f080049

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 257
    iput-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_title:Landroid/widget/TextView;

    .line 259
    iget-object v2, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->tv_floatview_title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/wstt/gt/service/GTFloatView;->touchTitle:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 263
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2292
    sput-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_fv_flag:Z

    .line 2293
    sput-boolean v0, Lcom/tencent/wstt/gt/service/GTFloatView;->refresh_timer_flag:Z

    .line 2294
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2295
    return-void
.end method

.method public showImg()V
    .locals 2

    .prologue
    .line 2238
    sget-object v0, Lcom/tencent/wstt/gt/service/GTFloatView;->view_floatview:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2239
    return-void
.end method

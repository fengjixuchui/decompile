.class public abstract Lcom/tencent/wstt/gt/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShowLongToast(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textid"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/tencent/wstt/gt/utils/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 124
    return-void
.end method

.method public static ShowLongToast(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textid"    # I
    .param p2, "allowToastQueue"    # Z

    .prologue
    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/tencent/wstt/gt/utils/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 180
    return-void
.end method

.method public static ShowLongToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/tencent/wstt/gt/utils/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 128
    return-void
.end method

.method public static ShowLongToast(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "gravity"    # I
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I

    .prologue
    .line 132
    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/tencent/wstt/gt/utils/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZIII)V

    .line 134
    return-void
.end method

.method public static ShowLongToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "gravity"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 138
    const-string v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v4, "center"

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/wstt/gt/utils/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v4, "bottom"

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/wstt/gt/utils/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public static ShowLongToast(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "allowToastQueue"    # Z

    .prologue
    .line 191
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, p2}, Lcom/tencent/wstt/gt/utils/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 192
    return-void
.end method

.method public static ShowShortToast(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textid"    # I

    .prologue
    const/4 v1, 0x0

    .line 114
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 115
    return-void
.end method

.method public static ShowShortToast(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textid"    # I
    .param p2, "allowToastQueue"    # Z

    .prologue
    .line 154
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/tencent/wstt/gt/utils/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 155
    return-void
.end method

.method public static ShowShortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 118
    const/4 v0, -0x1

    invoke-static {p0, v0, p1, v1, v1}, Lcom/tencent/wstt/gt/utils/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 119
    return-void
.end method

.method public static ShowShortToast(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "allowToastQueue"    # Z

    .prologue
    .line 166
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, p2}, Lcom/tencent/wstt/gt/utils/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 167
    return-void
.end method

.method private static _showToast(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textid"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "delay"    # I
    .param p4, "gravity"    # Ljava/lang/String;
    .param p5, "allowToastQueue"    # Z

    .prologue
    .line 70
    new-instance v6, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tencent/wstt/gt/utils/ToastUtil$2;

    move v1, p1

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/wstt/gt/utils/ToastUtil$2;-><init>(ILandroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method private static _showToast(Landroid/content/Context;ILjava/lang/String;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textid"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "delay"    # I
    .param p4, "allowToastQueue"    # Z

    .prologue
    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/wstt/gt/utils/ToastUtil$1;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/tencent/wstt/gt/utils/ToastUtil$1;-><init>(ILandroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method private static _showToast(Landroid/content/Context;ILjava/lang/String;IZIII)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textid"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "delay"    # I
    .param p4, "allowToastQueue"    # Z
    .param p5, "gravity"    # I
    .param p6, "xOffset"    # I
    .param p7, "yOffset"    # I

    .prologue
    .line 95
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tencent/wstt/gt/utils/ToastUtil$3;

    move v1, p1

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/tencent/wstt/gt/utils/ToastUtil$3;-><init>(ILandroid/content/Context;Ljava/lang/String;IIII)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method public static openToastWithColor(Landroid/view/Window;Ljava/lang/String;I)V
    .locals 12
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    const/4 v11, 0x0

    .line 205
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 206
    .local v2, "msg":Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 207
    .local v3, "msg_len":I
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v8, 0x1f

    add-int/lit8 v9, v3, -0x9

    .line 208
    const/16 v10, 0x21

    .line 207
    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 210
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 211
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f03002e

    .line 212
    const v7, 0x7f080118

    invoke-virtual {p0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 211
    invoke-virtual {v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 213
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f080119

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 215
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-static {}, Lcom/tencent/wstt/gt/GTApp;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 219
    .local v5, "toast":Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 220
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 222
    const/16 v7, 0x11

    invoke-virtual {v5, v7, v11, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 223
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 224
    return-void
.end method

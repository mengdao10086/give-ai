.class Landroidx/appcompat/widget/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    #@0
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@5
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@a
    .line 55
    new-instance v1, Landroid/graphics/Rect;

    #@c
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@11
    const/4 v1, 0x2

    #@12
    new-array v2, v1, [I

    #@14
    .line 56
    iput-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    #@16
    new-array v1, v1, [I

    #@18
    .line 57
    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    #@1a
    .line 60
    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    #@1c
    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@1f
    move-result-object v1

    #@20
    sget v2, Landroidx/appcompat/R$layout;->abc_tooltip:I

    #@22
    const/4 v3, 0x0

    #@23
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@26
    move-result-object v1

    #@27
    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    #@29
    .line 63
    sget v2, Landroidx/appcompat/R$id;->message:I

    #@2b
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Landroid/widget/TextView;

    #@31
    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    #@33
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@3e
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@41
    move-result-object p1

    #@42
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@44
    const/16 p1, 0x3ea

    #@46
    .line 67
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@48
    const/4 p1, -0x2

    #@49
    .line 68
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@4b
    .line 69
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@4d
    const/4 p1, -0x3

    #@4e
    .line 70
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@50
    .line 71
    sget p1, Landroidx/appcompat/R$style;->Animation_AppCompat_Tooltip:I

    #@52
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@54
    const/16 p1, 0x18

    #@56
    .line 72
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@58
    return-void
.end method

.method private computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .registers 14

    #@0
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@6
    .line 106
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v0

    #@c
    sget v1, Landroidx/appcompat/R$dimen;->tooltip_precise_anchor_threshold:I

    #@e
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@11
    move-result v0

    #@12
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@15
    move-result v1

    #@16
    if-lt v1, v0, :cond_19

    #@18
    goto :goto_1f

    #@19
    .line 115
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@1c
    move-result p2

    #@1d
    div-int/lit8 p2, p2, 0x2

    #@1f
    .line 120
    :goto_1f
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@22
    move-result v1

    #@23
    const/4 v2, 0x0

    #@24
    if-lt v1, v0, :cond_36

    #@26
    .line 122
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    #@28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2b
    move-result-object v0

    #@2c
    sget v1, Landroidx/appcompat/R$dimen;->tooltip_precise_anchor_extra_offset:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@31
    move-result v0

    #@32
    add-int v1, p3, v0

    #@34
    sub-int/2addr p3, v0

    #@35
    goto :goto_3b

    #@36
    .line 128
    :cond_36
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@39
    move-result v1

    #@3a
    move p3, v2

    #@3b
    :goto_3b
    const/16 v0, 0x31

    #@3d
    .line 132
    iput v0, p5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@3f
    .line 134
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    #@41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@44
    move-result-object v0

    #@45
    if-eqz p4, :cond_4a

    #@47
    .line 135
    sget v3, Landroidx/appcompat/R$dimen;->tooltip_y_offset_touch:I

    #@49
    goto :goto_4c

    #@4a
    :cond_4a
    sget v3, Landroidx/appcompat/R$dimen;->tooltip_y_offset_non_touch:I

    #@4c
    .line 134
    :goto_4c
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@4f
    move-result v0

    #@50
    .line 137
    invoke-static {p1}, Landroidx/appcompat/widget/TooltipPopup;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    #@53
    move-result-object v3

    #@54
    if-nez v3, :cond_5e

    #@56
    const-string p1, "TooltipPopup"

    #@58
    const-string p2, "Cannot find app view"

    #@5a
    .line 139
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    return-void

    #@5e
    .line 142
    :cond_5e
    iget-object v4, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@60
    invoke-virtual {v3, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@63
    .line 143
    iget-object v4, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@65
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@67
    if-gez v4, :cond_94

    #@69
    iget-object v4, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@6b
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@6d
    if-gez v4, :cond_94

    #@6f
    .line 146
    iget-object v4, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    #@71
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@74
    move-result-object v4

    #@75
    const-string v5, "dimen"

    #@77
    const-string v6, "android"

    #@79
    const-string v7, "status_bar_height"

    #@7b
    .line 148
    invoke-virtual {v4, v7, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    move-result v5

    #@7f
    if-eqz v5, :cond_86

    #@81
    .line 150
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@84
    move-result v5

    #@85
    goto :goto_87

    #@86
    :cond_86
    move v5, v2

    #@87
    .line 154
    :goto_87
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@8a
    move-result-object v4

    #@8b
    .line 155
    iget-object v6, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@8d
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    #@8f
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    #@91
    invoke-virtual {v6, v2, v5, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@94
    .line 157
    :cond_94
    iget-object v4, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    #@96
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    #@99
    .line 159
    iget-object v4, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    #@9b
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    #@9e
    .line 160
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    #@a0
    aget v4, p1, v2

    #@a2
    iget-object v5, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    #@a4
    aget v6, v5, v2

    #@a6
    sub-int/2addr v4, v6

    #@a7
    aput v4, p1, v2

    #@a9
    const/4 v6, 0x1

    #@aa
    .line 161
    aget v7, p1, v6

    #@ac
    aget v5, v5, v6

    #@ae
    sub-int/2addr v7, v5

    #@af
    aput v7, p1, v6

    #@b1
    add-int/2addr v4, p2

    #@b2
    .line 164
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    #@b5
    move-result p1

    #@b6
    div-int/lit8 p1, p1, 0x2

    #@b8
    sub-int/2addr v4, p1

    #@b9
    iput v4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    #@bb
    .line 166
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@be
    move-result p1

    #@bf
    .line 167
    iget-object p2, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    #@c1
    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    #@c4
    .line 168
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    #@c6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@c9
    move-result p1

    #@ca
    .line 170
    iget-object p2, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    #@cc
    aget p2, p2, v6

    #@ce
    add-int/2addr p3, p2

    #@cf
    sub-int/2addr p3, v0

    #@d0
    sub-int/2addr p3, p1

    #@d1
    add-int/2addr p2, v1

    #@d2
    add-int/2addr p2, v0

    #@d3
    if-eqz p4, :cond_dd

    #@d5
    if-ltz p3, :cond_da

    #@d7
    .line 174
    iput p3, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    #@d9
    goto :goto_eb

    #@da
    .line 176
    :cond_da
    iput p2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    #@dc
    goto :goto_eb

    #@dd
    :cond_dd
    add-int/2addr p1, p2

    #@de
    .line 179
    iget-object p4, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    #@e0
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    #@e3
    move-result p4

    #@e4
    if-gt p1, p4, :cond_e9

    #@e6
    .line 180
    iput p2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    #@e8
    goto :goto_eb

    #@e9
    .line 182
    :cond_e9
    iput p3, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    #@eb
    :goto_eb
    return-void
.end method

.method private static getAppRootView(Landroid/view/View;)Landroid/view/View;
    .registers 4

    #@0
    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v1

    #@8
    .line 190
    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    #@a
    if-eqz v2, :cond_14

    #@c
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    #@e
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@10
    const/4 v2, 0x2

    #@11
    if-ne v1, v2, :cond_14

    #@13
    return-object v0

    #@14
    .line 198
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@17
    move-result-object p0

    #@18
    .line 199
    :goto_18
    instance-of v1, p0, Landroid/content/ContextWrapper;

    #@1a
    if-eqz v1, :cond_32

    #@1c
    .line 200
    instance-of v1, p0, Landroid/app/Activity;

    #@1e
    if-eqz v1, :cond_2b

    #@20
    .line 201
    check-cast p0, Landroid/app/Activity;

    #@22
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@25
    move-result-object p0

    #@26
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@29
    move-result-object p0

    #@2a
    return-object p0

    #@2b
    .line 203
    :cond_2b
    check-cast p0, Landroid/content/ContextWrapper;

    #@2d
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@30
    move-result-object p0

    #@31
    goto :goto_18

    #@32
    :cond_32
    return-object v0
.end method


# virtual methods
.method hide()V
    .registers 3

    #@0
    .line 91
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 95
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    #@9
    const-string v1, "window"

    #@b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/view/WindowManager;

    #@11
    .line 96
    iget-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    #@13
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@16
    return-void
.end method

.method isShowing()Z
    .registers 2

    #@0
    .line 100
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .registers 13

    #@0
    .line 78
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipPopup;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 79
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipPopup;->hide()V

    #@9
    .line 82
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    #@b
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@e
    .line 84
    iget-object v6, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@10
    move-object v1, p0

    #@11
    move-object v2, p1

    #@12
    move v3, p2

    #@13
    move v4, p3

    #@14
    move v5, p4

    #@15
    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    #@18
    .line 86
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    #@1a
    const-string p2, "window"

    #@1c
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1f
    move-result-object p1

    #@20
    check-cast p1, Landroid/view/WindowManager;

    #@22
    .line 87
    iget-object p2, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    #@24
    iget-object p3, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@26
    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@29
    return-void
.end method

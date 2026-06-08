.class Landroidx/appcompat/widget/TooltipCompatHandler;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static final HOVER_HIDE_TIMEOUT_MS:J = 0x3a98L

.field private static final HOVER_HIDE_TIMEOUT_SHORT_MS:J = 0xbb8L

.field private static final LONG_CLICK_HIDE_TIMEOUT_MS:J = 0x9c4L

.field private static final TAG:Ljava/lang/String; = "TooltipCompatHandler"

.field private static sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

.field private static sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private mAnchorX:I

.field private mAnchorY:I

.field private mForceNextChangeSignificant:Z

.field private mFromTouch:Z

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private final mHoverSlop:I

.field private mPopup:Landroidx/appcompat/widget/TooltipPopup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    #@0
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;

    #@5
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    #@8
    iput-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    #@a
    .line 55
    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;

    #@c
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/TooltipCompatHandler$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    #@f
    iput-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    #@11
    .line 100
    iput-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@13
    .line 101
    iput-object p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    #@15
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@18
    move-result-object p2

    #@19
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1c
    move-result-object p2

    #@1d
    .line 102
    invoke-static {p2}, Landroidx/core/view/ViewConfigurationCompat;->getScaledHoverSlop(Landroid/view/ViewConfiguration;)I

    #@20
    move-result p2

    #@21
    iput p2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    #@23
    .line 104
    invoke-direct {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->forceNextChangeSignificant()V

    #@26
    .line 106
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@29
    .line 107
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    #@2c
    return-void
.end method

.method private cancelPendingShow()V
    .registers 3

    #@0
    .line 217
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@2
    iget-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    return-void
.end method

.method private forceNextChangeSignificant()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 245
    iput-boolean v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mForceNextChangeSignificant:Z

    #@3
    return-void
.end method

.method private scheduleShow()V
    .registers 5

    #@0
    .line 213
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@2
    iget-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    #@4
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@7
    move-result v2

    #@8
    int-to-long v2, v2

    #@9
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@c
    return-void
.end method

.method private static setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V
    .registers 2

    #@0
    .line 203
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 204
    invoke-direct {v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->cancelPendingShow()V

    #@7
    .line 206
    :cond_7
    sput-object p0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    #@9
    if-eqz p0, :cond_e

    #@b
    .line 208
    invoke-direct {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->scheduleShow()V

    #@e
    :cond_e
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    #@0
    .line 84
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_c

    #@5
    iget-object v0, v0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@7
    if-ne v0, p0, :cond_c

    #@9
    .line 85
    invoke-static {v1}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    #@c
    .line 87
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_28

    #@12
    .line 88
    sget-object p1, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    #@14
    if-eqz p1, :cond_1d

    #@16
    iget-object v0, p1, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@18
    if-ne v0, p0, :cond_1d

    #@1a
    .line 89
    invoke-virtual {p1}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    #@1d
    .line 91
    :cond_1d
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@20
    const/4 p1, 0x0

    #@21
    .line 92
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    #@24
    .line 93
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    #@27
    goto :goto_2d

    #@28
    .line 95
    :cond_28
    new-instance v0, Landroidx/appcompat/widget/TooltipCompatHandler;

    #@2a
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/TooltipCompatHandler;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@2d
    :goto_2d
    return-void
.end method

.method private updateAnchorPos(Landroid/view/MotionEvent;)Z
    .registers 6

    #@0
    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v0

    #@4
    float-to-int v0, v0

    #@5
    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@8
    move-result p1

    #@9
    float-to-int p1, p1

    #@a
    .line 230
    iget-boolean v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mForceNextChangeSignificant:Z

    #@c
    const/4 v2, 0x0

    #@d
    if-nez v1, :cond_29

    #@f
    iget v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    #@11
    sub-int v1, v0, v1

    #@13
    .line 231
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@16
    move-result v1

    #@17
    iget v3, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    #@19
    if-gt v1, v3, :cond_29

    #@1b
    iget v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    #@1d
    sub-int v1, p1, v1

    #@1f
    .line 232
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@22
    move-result v1

    #@23
    iget v3, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHoverSlop:I

    #@25
    if-le v1, v3, :cond_28

    #@27
    goto :goto_29

    #@28
    :cond_28
    return v2

    #@29
    .line 233
    :cond_29
    :goto_29
    iput v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    #@2b
    .line 234
    iput p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    #@2d
    .line 235
    iput-boolean v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mForceNextChangeSignificant:Z

    #@2f
    const/4 p1, 0x1

    #@30
    return p1
.end method


# virtual methods
.method hide()V
    .registers 4

    #@0
    .line 185
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    #@2
    const/4 v1, 0x0

    #@3
    if-ne v0, p0, :cond_20

    #@5
    .line 186
    sput-object v1, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    #@7
    .line 187
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    #@9
    if-eqz v0, :cond_19

    #@b
    .line 188
    invoke-virtual {v0}, Landroidx/appcompat/widget/TooltipPopup;->hide()V

    #@e
    .line 189
    iput-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    #@10
    .line 190
    invoke-direct {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->forceNextChangeSignificant()V

    #@13
    .line 191
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@15
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@18
    goto :goto_20

    #@19
    :cond_19
    const-string v0, "TooltipCompatHandler"

    #@1b
    const-string v2, "sActiveHandler.mPopup == null"

    #@1d
    .line 193
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 196
    :cond_20
    :goto_20
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sPendingHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    #@22
    if-ne v0, p0, :cond_27

    #@24
    .line 197
    invoke-static {v1}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    #@27
    .line 199
    :cond_27
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@29
    iget-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    #@2b
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@2e
    return-void
.end method

.method synthetic lambda$new$0$androidx-appcompat-widget-TooltipCompatHandler()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 54
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->show(Z)V

    #@4
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    #@0
    .line 120
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    #@2
    const/4 v0, 0x0

    #@3
    if-eqz p1, :cond_a

    #@5
    iget-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    #@7
    if-eqz p1, :cond_a

    #@9
    return v0

    #@a
    .line 123
    :cond_a
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@c
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@f
    move-result-object p1

    #@10
    const-string v1, "accessibility"

    #@12
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    #@18
    .line 125
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_25

    #@1e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@21
    move-result p1

    #@22
    if-eqz p1, :cond_25

    #@24
    return v0

    #@25
    .line 128
    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@28
    move-result p1

    #@29
    const/4 v1, 0x7

    #@2a
    if-eq p1, v1, :cond_38

    #@2c
    const/16 p2, 0xa

    #@2e
    if-eq p1, p2, :cond_31

    #@30
    goto :goto_4d

    #@31
    .line 135
    :cond_31
    invoke-direct {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->forceNextChangeSignificant()V

    #@34
    .line 136
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    #@37
    goto :goto_4d

    #@38
    .line 130
    :cond_38
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@3a
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    #@3d
    move-result p1

    #@3e
    if-eqz p1, :cond_4d

    #@40
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    #@42
    if-nez p1, :cond_4d

    #@44
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/TooltipCompatHandler;->updateAnchorPos(Landroid/view/MotionEvent;)Z

    #@47
    move-result p1

    #@48
    if-eqz p1, :cond_4d

    #@4a
    .line 131
    invoke-static {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    #@4d
    :cond_4d
    :goto_4d
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    #@0
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@3
    move-result v0

    #@4
    div-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    #@8
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@b
    move-result p1

    #@c
    div-int/lit8 p1, p1, 0x2

    #@e
    iput p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    #@10
    const/4 p1, 0x1

    #@11
    .line 114
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/TooltipCompatHandler;->show(Z)V

    #@14
    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    #@0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    #@0
    .line 150
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    #@3
    return-void
.end method

.method show(Z)V
    .registers 9

    #@0
    .line 155
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    .line 159
    invoke-static {v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->setPendingHandler(Landroidx/appcompat/widget/TooltipCompatHandler;)V

    #@d
    .line 160
    sget-object v0, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    #@f
    if-eqz v0, :cond_14

    #@11
    .line 161
    invoke-virtual {v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    #@14
    .line 163
    :cond_14
    sput-object p0, Landroidx/appcompat/widget/TooltipCompatHandler;->sActiveHandler:Landroidx/appcompat/widget/TooltipCompatHandler;

    #@16
    .line 165
    iput-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    #@18
    .line 166
    new-instance v1, Landroidx/appcompat/widget/TooltipPopup;

    #@1a
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@1c
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@1f
    move-result-object p1

    #@20
    invoke-direct {v1, p1}, Landroidx/appcompat/widget/TooltipPopup;-><init>(Landroid/content/Context;)V

    #@23
    iput-object v1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mPopup:Landroidx/appcompat/widget/TooltipPopup;

    #@25
    .line 167
    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@27
    iget v3, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorX:I

    #@29
    iget v4, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchorY:I

    #@2b
    iget-boolean v5, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    #@2d
    iget-object v6, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    #@2f
    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/TooltipPopup;->show(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    #@32
    .line 169
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@34
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@37
    .line 172
    iget-boolean p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mFromTouch:Z

    #@39
    if-eqz p1, :cond_3e

    #@3b
    const-wide/16 v0, 0x9c4

    #@3d
    goto :goto_59

    #@3e
    .line 174
    :cond_3e
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@40
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    #@43
    move-result p1

    #@44
    const/4 v0, 0x1

    #@45
    and-int/2addr p1, v0

    #@46
    if-ne p1, v0, :cond_50

    #@48
    .line 176
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@4b
    move-result p1

    #@4c
    int-to-long v0, p1

    #@4d
    const-wide/16 v2, 0xbb8

    #@4f
    goto :goto_57

    #@50
    .line 178
    :cond_50
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@53
    move-result p1

    #@54
    int-to-long v0, p1

    #@55
    const-wide/16 v2, 0x3a98

    #@57
    :goto_57
    sub-long v0, v2, v0

    #@59
    .line 180
    :goto_59
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@5b
    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    #@5d
    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@60
    .line 181
    iget-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    #@62
    iget-object v2, p0, Landroidx/appcompat/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    #@64
    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@67
    return-void
.end method

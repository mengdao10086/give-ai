.class abstract Landroidx/appcompat/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8


# instance fields
.field protected mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field protected mContentHeight:I

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field protected mMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected final mVisAnimListener:Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 54
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 58
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 39
    new-instance p2, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    #@5
    invoke-direct {p2, p0}, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Landroidx/appcompat/widget/AbsActionBarView;)V

    #@8
    iput-object p2, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisAnimListener:Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    #@a
    .line 64
    new-instance p2, Landroid/util/TypedValue;

    #@c
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    #@f
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@12
    move-result-object p3

    #@13
    sget v0, Landroidx/appcompat/R$attr;->actionBarPopupTheme:I

    #@15
    const/4 v1, 0x1

    #@16
    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@19
    move-result p3

    #@1a
    if-eqz p3, :cond_2a

    #@1c
    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    #@1e
    if-eqz p3, :cond_2a

    #@20
    .line 67
    new-instance p3, Landroid/view/ContextThemeWrapper;

    #@22
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    #@24
    invoke-direct {p3, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@27
    iput-object p3, p0, Landroidx/appcompat/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    #@29
    goto :goto_2c

    #@2a
    .line 69
    :cond_2a
    iput-object p1, p0, Landroidx/appcompat/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    #@2c
    :goto_2c
    return-void
.end method

.method static synthetic access$001(Landroidx/appcompat/widget/AbsActionBarView;I)V
    .registers 2

    #@0
    .line 36
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@3
    return-void
.end method

.method static synthetic access$101(Landroidx/appcompat/widget/AbsActionBarView;I)V
    .registers 2

    #@0
    .line 36
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@3
    return-void
.end method

.method protected static next(IIZ)I
    .registers 3

    #@0
    if-eqz p2, :cond_4

    #@2
    sub-int/2addr p0, p1

    #@3
    goto :goto_5

    #@4
    :cond_4
    add-int/2addr p0, p1

    #@5
    :goto_5
    return p0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .registers 4

    #@0
    const-wide/16 v0, 0xc8

    #@2
    .line 181
    invoke-virtual {p0, p1, v0, v1}, Landroidx/appcompat/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@5
    move-result-object p1

    #@6
    .line 182
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    #@9
    return-void
.end method

.method public canShowOverflowMenu()Z
    .registers 2

    #@0
    .line 237
    invoke-virtual {p0}, Landroidx/appcompat/widget/AbsActionBarView;->isOverflowReserved()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    invoke-virtual {p0}, Landroidx/appcompat/widget/AbsActionBarView;->getVisibility()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method public dismissPopupMenus()V
    .registers 2

    #@0
    .line 241
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 242
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    #@7
    :cond_7
    return-void
.end method

.method public getAnimatedVisibility()I
    .registers 2

    #@0
    .line 153
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 154
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisAnimListener:Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    #@6
    iget v0, v0, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    #@8
    return v0

    #@9
    .line 156
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/widget/AbsActionBarView;->getVisibility()I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getContentHeight()I
    .registers 2

    #@0
    .line 146
    iget v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mContentHeight:I

    #@2
    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    #@0
    .line 212
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 213
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    #@0
    .line 226
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 227
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    #@0
    .line 219
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 220
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    #@0
    .line 233
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowReserved()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .registers 6

    #@0
    const/high16 v0, -0x80000000

    #@2
    .line 248
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    #@9
    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@c
    move-result p1

    #@d
    sub-int/2addr p2, p1

    #@e
    sub-int/2addr p2, p4

    #@f
    const/4 p1, 0x0

    #@10
    .line 254
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@13
    move-result p1

    #@14
    return p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    #@0
    .line 75
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 79
    invoke-virtual {p0}, Landroidx/appcompat/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    sget-object v1, Landroidx/appcompat/R$styleable;->ActionBar:[I

    #@9
    sget v2, Landroidx/appcompat/R$attr;->actionBarStyle:I

    #@b
    const/4 v3, 0x0

    #@c
    const/4 v4, 0x0

    #@d
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@10
    move-result-object v0

    #@11
    .line 81
    sget v1, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    #@13
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@16
    move-result v1

    #@17
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AbsActionBarView;->setContentHeight(I)V

    #@1a
    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1d
    .line 84
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@1f
    if-eqz v0, :cond_24

    #@21
    .line 85
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@24
    :cond_24
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/16 v2, 0x9

    #@7
    if-ne v0, v2, :cond_b

    #@9
    .line 122
    iput-boolean v1, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingHover:Z

    #@b
    .line 125
    :cond_b
    iget-boolean v3, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingHover:Z

    #@d
    const/4 v4, 0x1

    #@e
    if-nez v3, :cond_1a

    #@10
    .line 126
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result p1

    #@14
    if-ne v0, v2, :cond_1a

    #@16
    if-nez p1, :cond_1a

    #@18
    .line 128
    iput-boolean v4, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingHover:Z

    #@1a
    :cond_1a
    const/16 p1, 0xa

    #@1c
    if-eq v0, p1, :cond_21

    #@1e
    const/4 p1, 0x3

    #@1f
    if-ne v0, p1, :cond_23

    #@21
    .line 134
    :cond_21
    iput-boolean v1, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingHover:Z

    #@23
    :cond_23
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    #@0
    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_9

    #@7
    .line 98
    iput-boolean v1, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingTouch:Z

    #@9
    .line 101
    :cond_9
    iget-boolean v2, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingTouch:Z

    #@b
    const/4 v3, 0x1

    #@c
    if-nez v2, :cond_18

    #@e
    .line 102
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@11
    move-result p1

    #@12
    if-nez v0, :cond_18

    #@14
    if-nez p1, :cond_18

    #@16
    .line 104
    iput-boolean v3, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingTouch:Z

    #@18
    :cond_18
    if-eq v0, v3, :cond_1d

    #@1a
    const/4 p1, 0x3

    #@1b
    if-ne v0, p1, :cond_1f

    #@1d
    .line 109
    :cond_1d
    iput-boolean v1, p0, Landroidx/appcompat/widget/AbsActionBarView;->mEatingTouch:Z

    #@1f
    :cond_1f
    return v3
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .registers 8

    #@0
    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@7
    move-result v1

    #@8
    sub-int/2addr p4, v1

    #@9
    .line 264
    div-int/lit8 p4, p4, 0x2

    #@b
    add-int/2addr p3, p4

    #@c
    if-eqz p5, :cond_15

    #@e
    sub-int p4, p2, v0

    #@10
    add-int/2addr v1, p3

    #@11
    .line 267
    invoke-virtual {p1, p4, p3, p2, v1}, Landroid/view/View;->layout(IIII)V

    #@14
    goto :goto_1b

    #@15
    :cond_15
    add-int p4, p2, v0

    #@17
    add-int/2addr v1, p3

    #@18
    .line 269
    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/view/View;->layout(IIII)V

    #@1b
    :goto_1b
    if-eqz p5, :cond_1e

    #@1d
    neg-int v0, v0

    #@1e
    :cond_1e
    return v0
.end method

.method public postShowOverflowMenu()V
    .registers 2

    #@0
    .line 203
    new-instance v0, Landroidx/appcompat/widget/AbsActionBarView$1;

    #@2
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AbsActionBarView$1;-><init>(Landroidx/appcompat/widget/AbsActionBarView;)V

    #@5
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    #@8
    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    #@0
    .line 141
    iput p1, p0, Landroidx/appcompat/widget/AbsActionBarView;->mContentHeight:I

    #@2
    .line 142
    invoke-virtual {p0}, Landroidx/appcompat/widget/AbsActionBarView;->requestLayout()V

    #@5
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    #@0
    .line 187
    invoke-virtual {p0}, Landroidx/appcompat/widget/AbsActionBarView;->getVisibility()I

    #@3
    move-result v0

    #@4
    if-eq p1, v0, :cond_10

    #@6
    .line 188
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 189
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    #@d
    .line 191
    :cond_d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@10
    :cond_10
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 6

    #@0
    .line 160
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 161
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    if-nez p1, :cond_2a

    #@a
    .line 165
    invoke-virtual {p0}, Landroidx/appcompat/widget/AbsActionBarView;->getVisibility()I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_13

    #@10
    .line 166
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AbsActionBarView;->setAlpha(F)V

    #@13
    .line 168
    :cond_13
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@16
    move-result-object v0

    #@17
    const/high16 v1, 0x3f800000    # 1.0f

    #@19
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@1c
    move-result-object v0

    #@1d
    .line 169
    invoke-virtual {v0, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@20
    .line 170
    iget-object p2, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisAnimListener:Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    #@22
    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroidx/core/view/ViewPropertyAnimatorCompat;I)Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    #@25
    move-result-object p1

    #@26
    invoke-virtual {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@29
    return-object v0

    #@2a
    .line 173
    :cond_2a
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@31
    move-result-object v0

    #@32
    .line 174
    invoke-virtual {v0, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@35
    .line 175
    iget-object p2, p0, Landroidx/appcompat/widget/AbsActionBarView;->mVisAnimListener:Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    #@37
    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroidx/core/view/ViewPropertyAnimatorCompat;I)Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    #@3a
    move-result-object p1

    #@3b
    invoke-virtual {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@3e
    return-object v0
.end method

.method public showOverflowMenu()Z
    .registers 2

    #@0
    .line 196
    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 197
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    return v0
.end method

.class public Landroidx/appcompat/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;,
        Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;,
        Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

.field mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field protected final mVisAnimListener:Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/view/ViewPropertyAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 78
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@5
    sput-object v0, Landroidx/appcompat/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    #@0
    .line 83
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    #@3
    .line 76
    new-instance v0, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    #@5
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    #@8
    iput-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mVisAnimListener:Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    #@a
    const/4 v0, 0x0

    #@b
    .line 85
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    #@e
    .line 87
    invoke-static {p1}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    #@11
    move-result-object p1

    #@12
    .line 88
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->getTabContainerHeight()I

    #@15
    move-result v0

    #@16
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setContentHeight(I)V

    #@19
    .line 89
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    #@1c
    move-result p1

    #@1d
    iput p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    #@1f
    .line 91
    invoke-direct {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->createTabLayout()Landroidx/appcompat/widget/LinearLayoutCompat;

    #@22
    move-result-object p1

    #@23
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@25
    .line 92
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@27
    const/4 v1, -0x2

    #@28
    const/4 v2, -0x1

    #@29
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@2c
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@2f
    return-void
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .registers 5

    #@0
    .line 215
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    #@2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    sget v3, Landroidx/appcompat/R$attr;->actionDropDownStyle:I

    #@9
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@c
    .line 217
    new-instance v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@e
    const/4 v2, -0x2

    #@f
    const/4 v3, -0x1

    #@10
    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    #@13
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@16
    .line 220
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@19
    return-object v0
.end method

.method private createTabLayout()Landroidx/appcompat/widget/LinearLayoutCompat;
    .registers 5

    #@0
    .line 205
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    #@2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    sget v3, Landroidx/appcompat/R$attr;->actionBarTabBarStyle:I

    #@9
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@c
    const/4 v1, 0x1

    #@d
    .line 207
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasureWithLargestChildEnabled(Z)V

    #@10
    const/16 v1, 0x11

    #@12
    .line 208
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    #@15
    .line 209
    new-instance v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@17
    const/4 v2, -0x2

    #@18
    const/4 v3, -0x1

    #@19
    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    #@1c
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@1f
    return-object v0
.end method

.method private isCollapsed()Z
    .registers 2

    #@0
    .line 147
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_c

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

.method private performCollapse()V
    .registers 5

    #@0
    .line 155
    invoke-direct {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->isCollapsed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 157
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@9
    if-nez v0, :cond_11

    #@b
    .line 158
    invoke-direct {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@11
    .line 160
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@13
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    #@16
    .line 161
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@18
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@1a
    const/4 v2, -0x2

    #@1b
    const/4 v3, -0x1

    #@1c
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@1f
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@22
    .line 163
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@24
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@27
    move-result-object v0

    #@28
    if-nez v0, :cond_34

    #@2a
    .line 164
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@2c
    new-instance v1, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    #@2e
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    #@31
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@34
    .line 166
    :cond_34
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@36
    if-eqz v0, :cond_3e

    #@38
    .line 167
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@3b
    const/4 v0, 0x0

    #@3c
    .line 168
    iput-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@3e
    .line 170
    :cond_3e
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@40
    iget v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    #@42
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    #@45
    return-void
.end method

.method private performExpand()Z
    .registers 6

    #@0
    .line 174
    invoke-direct {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->isCollapsed()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    .line 176
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@a
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    #@d
    .line 177
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@f
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    #@11
    const/4 v3, -0x2

    #@12
    const/4 v4, -0x1

    #@13
    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@16
    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@19
    .line 179
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@1b
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    #@1e
    move-result v0

    #@1f
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setTabSelected(I)V

    #@22
    return v1
.end method


# virtual methods
.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    .line 326
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->createTabView(Landroidx/appcompat/app/ActionBar$Tab;Z)Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    #@4
    move-result-object p1

    #@5
    .line 327
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@7
    new-instance v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@9
    const/4 v3, -0x1

    #@a
    const/high16 v4, 0x3f800000    # 1.0f

    #@c
    invoke-direct {v2, v0, v3, v4}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    #@f
    invoke-virtual {v1, p1, p2, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@12
    .line 329
    iget-object p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@14
    if-eqz p2, :cond_1f

    #@16
    .line 330
    invoke-virtual {p2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@19
    move-result-object p2

    #@1a
    check-cast p2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    #@1c
    invoke-virtual {p2}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    #@1f
    :cond_1f
    if-eqz p3, :cond_25

    #@21
    const/4 p2, 0x1

    #@22
    .line 333
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    #@25
    .line 335
    :cond_25
    iget-boolean p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@27
    if-eqz p1, :cond_2c

    #@29
    .line 336
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    #@2c
    :cond_2c
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    .line 311
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->createTabView(Landroidx/appcompat/app/ActionBar$Tab;Z)Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    #@4
    move-result-object p1

    #@5
    .line 312
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@7
    new-instance v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    #@9
    const/4 v3, -0x1

    #@a
    const/high16 v4, 0x3f800000    # 1.0f

    #@c
    invoke-direct {v2, v0, v3, v4}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    #@f
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@12
    .line 314
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@14
    if-eqz v0, :cond_1f

    #@16
    .line 315
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    #@1c
    invoke-virtual {v0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    #@1f
    :cond_1f
    if-eqz p2, :cond_25

    #@21
    const/4 p2, 0x1

    #@22
    .line 318
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    #@25
    .line 320
    :cond_25
    iget-boolean p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@27
    if-eqz p1, :cond_2c

    #@29
    .line 321
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    #@2c
    :cond_2c
    return-void
.end method

.method public animateToTab(I)V
    .registers 3

    #@0
    .line 261
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    .line 262
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 263
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@d
    .line 265
    :cond_d
    new-instance v0, Landroidx/appcompat/widget/ScrollingTabContainerView$1;

    #@f
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$1;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/view/View;)V

    #@12
    iput-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@14
    .line 273
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    #@17
    return-void
.end method

.method public animateToVisibility(I)V
    .registers 6

    #@0
    .line 236
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/view/ViewPropertyAnimator;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 237
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    #@7
    :cond_7
    const-wide/16 v0, 0xc8

    #@9
    const/4 v2, 0x0

    #@a
    if-nez p1, :cond_34

    #@c
    .line 240
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getVisibility()I

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_15

    #@12
    .line 241
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setAlpha(F)V

    #@15
    .line 244
    :cond_15
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    #@18
    move-result-object v2

    #@19
    const/high16 v3, 0x3f800000    # 1.0f

    #@1b
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@1e
    move-result-object v2

    #@1f
    .line 245
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@22
    .line 247
    sget-object v0, Landroidx/appcompat/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    #@24
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@27
    .line 248
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mVisAnimListener:Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    #@29
    invoke-virtual {v0, v2, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/view/ViewPropertyAnimator;I)Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    #@2c
    move-result-object p1

    #@2d
    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@30
    .line 249
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    #@33
    goto :goto_50

    #@34
    .line 251
    :cond_34
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@3b
    move-result-object v2

    #@3c
    .line 252
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@3f
    .line 254
    sget-object v0, Landroidx/appcompat/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    #@41
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@44
    .line 255
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mVisAnimListener:Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    #@46
    invoke-virtual {v0, v2, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/view/ViewPropertyAnimator;I)Landroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;

    #@49
    move-result-object p1

    #@4a
    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@4d
    .line 256
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    #@50
    :goto_50
    return-void
.end method

.method createTabView(Landroidx/appcompat/app/ActionBar$Tab;Z)Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    .registers 5

    #@0
    .line 294
    new-instance v0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    #@2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/content/Context;Landroidx/appcompat/app/ActionBar$Tab;Z)V

    #@9
    if-eqz p2, :cond_1b

    #@b
    const/4 p1, 0x0

    #@c
    .line 296
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    .line 297
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    #@11
    const/4 p2, -0x1

    #@12
    iget v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mContentHeight:I

    #@14
    invoke-direct {p1, p2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    #@17
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@1a
    goto :goto_2f

    #@1b
    :cond_1b
    const/4 p1, 0x1

    #@1c
    .line 300
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    #@1f
    .line 302
    iget-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabClickListener:Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

    #@21
    if-nez p1, :cond_2a

    #@23
    .line 303
    new-instance p1, Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

    #@25
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    #@28
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabClickListener:Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

    #@2a
    .line 305
    :cond_2a
    iget-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabClickListener:Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;

    #@2c
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@2f
    :goto_2f
    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    #@0
    .line 278
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    #@3
    .line 279
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 281
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    #@a
    :cond_a
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    #@0
    .line 226
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 228
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    #@6
    move-result-object p1

    #@7
    invoke-static {p1}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    #@a
    move-result-object p1

    #@b
    .line 231
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->getTabContainerHeight()I

    #@e
    move-result v0

    #@f
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setContentHeight(I)V

    #@12
    .line 232
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    #@15
    move-result p1

    #@16
    iput p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    #@18
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    #@0
    .line 287
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    #@3
    .line 288
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 289
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@a
    :cond_a
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .line 372
    check-cast p2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    #@2
    .line 373
    invoke-virtual {p2}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getTab()Landroidx/appcompat/app/ActionBar$Tab;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->select()V

    #@9
    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    #@0
    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result p2

    #@4
    const/4 v0, 0x1

    #@5
    const/4 v1, 0x0

    #@6
    const/high16 v2, 0x40000000    # 2.0f

    #@8
    if-ne p2, v2, :cond_c

    #@a
    move v3, v0

    #@b
    goto :goto_d

    #@c
    :cond_c
    move v3, v1

    #@d
    .line 100
    :goto_d
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    #@10
    .line 102
    iget-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@12
    invoke-virtual {v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    #@15
    move-result v4

    #@16
    if-le v4, v0, :cond_40

    #@18
    if-eq p2, v2, :cond_1e

    #@1a
    const/high16 v5, -0x80000000

    #@1c
    if-ne p2, v5, :cond_40

    #@1e
    :cond_1e
    const/4 p2, 0x2

    #@1f
    if-le v4, p2, :cond_2e

    #@21
    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@24
    move-result p2

    #@25
    int-to-float p2, p2

    #@26
    const v4, 0x3ecccccd    # 0.4f

    #@29
    mul-float/2addr p2, v4

    #@2a
    float-to-int p2, p2

    #@2b
    iput p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@2d
    goto :goto_35

    #@2e
    .line 108
    :cond_2e
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@31
    move-result v4

    #@32
    div-int/2addr v4, p2

    #@33
    iput v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@35
    .line 110
    :goto_35
    iget p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@37
    iget v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    #@39
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    #@3c
    move-result p2

    #@3d
    iput p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@3f
    goto :goto_43

    #@40
    :cond_40
    const/4 p2, -0x1

    #@41
    .line 112
    iput p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@43
    .line 115
    :goto_43
    iget p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mContentHeight:I

    #@45
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@48
    move-result p2

    #@49
    if-nez v3, :cond_50

    #@4b
    .line 117
    iget-boolean v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@4d
    if-eqz v2, :cond_50

    #@4f
    goto :goto_51

    #@50
    :cond_50
    move v0, v1

    #@51
    :goto_51
    if-eqz v0, :cond_6c

    #@53
    .line 121
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@55
    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measure(II)V

    #@58
    .line 122
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@5a
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    #@5d
    move-result v0

    #@5e
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@61
    move-result v1

    #@62
    if-le v0, v1, :cond_68

    #@64
    .line 123
    invoke-direct {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->performCollapse()V

    #@67
    goto :goto_6f

    #@68
    .line 125
    :cond_68
    invoke-direct {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->performExpand()Z

    #@6b
    goto :goto_6f

    #@6c
    .line 128
    :cond_6c
    invoke-direct {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->performExpand()Z

    #@6f
    .line 131
    :goto_6f
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    #@72
    move-result v0

    #@73
    .line 132
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    #@76
    .line 133
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    #@79
    move-result p1

    #@7a
    if-eqz v3, :cond_83

    #@7c
    if-eq v0, p1, :cond_83

    #@7e
    .line 137
    iget p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    #@80
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setTabSelected(I)V

    #@83
    :cond_83
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public removeAllTabs()V
    .registers 2

    #@0
    .line 361
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->removeAllViews()V

    #@5
    .line 362
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@7
    if-eqz v0, :cond_12

    #@9
    .line 363
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    #@f
    invoke-virtual {v0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    #@12
    .line 365
    :cond_12
    iget-boolean v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@14
    if-eqz v0, :cond_19

    #@16
    .line 366
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    #@19
    :cond_19
    return-void
.end method

.method public removeTabAt(I)V
    .registers 3

    #@0
    .line 351
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->removeViewAt(I)V

    #@5
    .line 352
    iget-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@7
    if-eqz p1, :cond_12

    #@9
    .line 353
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@c
    move-result-object p1

    #@d
    check-cast p1, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    #@f
    invoke-virtual {p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    #@12
    .line 355
    :cond_12
    iget-boolean p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@14
    if-eqz p1, :cond_19

    #@16
    .line 356
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    #@19
    :cond_19
    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 2

    #@0
    .line 151
    iput-boolean p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@2
    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    #@0
    .line 200
    iput p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mContentHeight:I

    #@2
    .line 201
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    #@5
    return-void
.end method

.method public setTabSelected(I)V
    .registers 7

    #@0
    .line 184
    iput p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    #@2
    .line 185
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@4
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    move v2, v1

    #@a
    :goto_a
    if-ge v2, v0, :cond_22

    #@c
    .line 187
    iget-object v3, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@e
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v3

    #@12
    if-ne v2, p1, :cond_16

    #@14
    const/4 v4, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v4, v1

    #@17
    .line 189
    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    #@1a
    if-eqz v4, :cond_1f

    #@1c
    .line 191
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->animateToTab(I)V

    #@1f
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_a

    #@22
    .line 194
    :cond_22
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@24
    if-eqz v0, :cond_2b

    #@26
    if-ltz p1, :cond_2b

    #@28
    .line 195
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    #@2b
    :cond_2b
    return-void
.end method

.method public updateTab(I)V
    .registers 3

    #@0
    .line 341
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    #@8
    invoke-virtual {p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->update()V

    #@b
    .line 342
    iget-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@d
    if-eqz p1, :cond_18

    #@f
    .line 343
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@12
    move-result-object p1

    #@13
    check-cast p1, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;

    #@15
    invoke-virtual {p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    #@18
    .line 345
    :cond_18
    iget-boolean p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@1a
    if-eqz p1, :cond_1f

    #@1c
    .line 346
    invoke-virtual {p0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->requestLayout()V

    #@1f
    :cond_1f
    return-void
.end method

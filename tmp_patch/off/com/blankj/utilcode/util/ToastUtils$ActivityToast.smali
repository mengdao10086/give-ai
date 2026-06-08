.class final Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;
.super Lcom/blankj/utilcode/util/ToastUtils$AbsToast;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActivityToast"
.end annotation


# static fields
.field private static sShowingIndex:I


# instance fields
.field private iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

.field private mActivityLifecycleCallbacks:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils;)V
    .registers 2

    #@0
    .line 662
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    #@3
    return-void
.end method

.method static synthetic access$200(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;)Z
    .registers 1

    #@0
    .line 654
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->isShowing()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$300(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;Landroid/app/Activity;IZ)V
    .registers 4

    #@0
    .line 654
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->showWithActivityView(Landroid/app/Activity;IZ)V

    #@3
    return-void
.end method

.method private isShowing()Z
    .registers 2

    #@0
    .line 782
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method private registerLifecycleCallback()V
    .registers 3

    #@0
    .line 764
    sget v0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    #@2
    .line 765
    new-instance v1, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;

    #@4
    invoke-direct {v1, p0, v0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;-><init>(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;I)V

    #@7
    iput-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    #@9
    .line 773
    invoke-static {v1}, Lcom/blankj/utilcode/util/UtilsBridge;->addActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    #@c
    return-void
.end method

.method private showSystemToast(I)Lcom/blankj/utilcode/util/ToastUtils$IToast;
    .registers 4

    #@0
    .line 729
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;

    #@2
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@4
    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    #@7
    .line 730
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    #@9
    iput-object v1, v0, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;->mToast:Landroid/widget/Toast;

    #@b
    .line 731
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;->show(I)V

    #@e
    return-object v0
.end method

.method private showWithActivityView(Landroid/app/Activity;IZ)V
    .registers 7

    #@0
    .line 744
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_5c

    #@6
    .line 746
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Landroid/view/ViewGroup;

    #@c
    .line 747
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@e
    const/4 v1, -0x2

    #@f
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@12
    .line 750
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    #@14
    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    #@17
    move-result v1

    #@18
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@1a
    .line 751
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    #@1c
    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    #@1f
    move-result v1

    #@20
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getNavBarHeight()I

    #@23
    move-result v2

    #@24
    add-int/2addr v1, v2

    #@25
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@27
    .line 752
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    #@29
    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    #@2c
    move-result v1

    #@2d
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getStatusBarHeight()I

    #@30
    move-result v2

    #@31
    add-int/2addr v1, v2

    #@32
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@34
    .line 753
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    #@36
    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    #@39
    move-result v1

    #@3a
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@3c
    .line 754
    invoke-virtual {p0, p2}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->getToastViewSnapshot(I)Landroid/view/View;

    #@3f
    move-result-object p2

    #@40
    if-eqz p3, :cond_59

    #@42
    const/4 p3, 0x0

    #@43
    .line 756
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    #@46
    .line 757
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@49
    move-result-object p3

    #@4a
    const/high16 v1, 0x3f800000    # 1.0f

    #@4c
    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@4f
    move-result-object p3

    #@50
    const-wide/16 v1, 0xc8

    #@52
    invoke-virtual {p3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@55
    move-result-object p3

    #@56
    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    #@59
    .line 759
    :cond_59
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@5c
    :cond_5c
    return-void
.end method

.method private showWithActivityWindow(Landroid/app/Activity;I)Lcom/blankj/utilcode/util/ToastUtils$IToast;
    .registers 6

    #@0
    .line 736
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;

    #@2
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@7
    move-result-object p1

    #@8
    const/16 v2, 0x63

    #@a
    invoke-direct {v0, v1, p1, v2}, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;Landroid/view/WindowManager;I)V

    #@d
    const/4 p1, -0x1

    #@e
    .line 737
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->getToastViewSnapshot(I)Landroid/view/View;

    #@11
    move-result-object p1

    #@12
    iput-object p1, v0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToastView:Landroid/view/View;

    #@14
    .line 738
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    #@16
    iput-object p1, v0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    #@18
    .line 739
    invoke-virtual {v0, p2}, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->show(I)V

    #@1b
    return-object v0
.end method

.method private unregisterLifecycleCallback()V
    .registers 2

    #@0
    .line 777
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    #@2
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->removeActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    #@5
    const/4 v0, 0x0

    #@6
    .line 778
    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    #@8
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    #@0
    .line 703
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_4d

    #@6
    .line 704
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->unregisterLifecycleCallback()V

    #@9
    .line 705
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v0

    #@11
    :catch_11
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_4d

    #@17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/app/Activity;

    #@1d
    .line 706
    invoke-static {v1}, Lcom/blankj/utilcode/util/UtilsBridge;->isActivityAlive(Landroid/app/Activity;)Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_24

    #@23
    goto :goto_11

    #@24
    .line 709
    :cond_24
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@27
    move-result-object v1

    #@28
    if-eqz v1, :cond_11

    #@2a
    .line 711
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Landroid/view/ViewGroup;

    #@30
    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    const-string v3, "TAG_TOAST"

    #@34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@37
    sget v3, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    #@39
    add-int/lit8 v3, v3, -0x1

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    #@46
    move-result-object v2

    #@47
    if-eqz v2, :cond_11

    #@49
    .line 715
    :try_start_49
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_11

    #@4c
    goto :goto_11

    #@4d
    .line 721
    :cond_4d
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    #@4f
    if-eqz v0, :cond_57

    #@51
    .line 722
    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->cancel()V

    #@54
    const/4 v0, 0x0

    #@55
    .line 723
    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    #@57
    .line 725
    :cond_57
    invoke-super {p0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->cancel()V

    #@5a
    return-void
.end method

.method public show(I)V
    .registers 7

    #@0
    .line 667
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 668
    :cond_5
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isAppForeground()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_12

    #@b
    .line 670
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->showSystemToast(I)Lcom/blankj/utilcode/util/ToastUtils$IToast;

    #@e
    move-result-object p1

    #@f
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    #@11
    return-void

    #@12
    .line 674
    :cond_12
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@15
    move-result-object v0

    #@16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v0

    #@1a
    const/4 v1, 0x0

    #@1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v2

    #@1f
    const/4 v3, 0x1

    #@20
    if-eqz v2, :cond_3f

    #@22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/app/Activity;

    #@28
    .line 675
    invoke-static {v2}, Lcom/blankj/utilcode/util/UtilsBridge;->isActivityAlive(Landroid/app/Activity;)Z

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_2f

    #@2e
    goto :goto_1b

    #@2f
    :cond_2f
    if-nez v1, :cond_39

    #@31
    .line 680
    invoke-direct {p0, v2, p1}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->showWithActivityWindow(Landroid/app/Activity;I)Lcom/blankj/utilcode/util/ToastUtils$IToast;

    #@34
    move-result-object v1

    #@35
    iput-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    #@37
    move v1, v3

    #@38
    goto :goto_1b

    #@39
    .line 682
    :cond_39
    sget v4, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    #@3b
    invoke-direct {p0, v2, v4, v3}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->showWithActivityView(Landroid/app/Activity;IZ)V

    #@3e
    goto :goto_1b

    #@3f
    :cond_3f
    if-eqz v1, :cond_59

    #@41
    .line 686
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->registerLifecycleCallback()V

    #@44
    .line 687
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$1;

    #@46
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$1;-><init>(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;)V

    #@49
    if-nez p1, :cond_4e

    #@4b
    const-wide/16 v1, 0x7d0

    #@4d
    goto :goto_50

    #@4e
    :cond_4e
    const-wide/16 v1, 0xdac

    #@50
    :goto_50
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    #@53
    .line 694
    sget p1, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    #@55
    add-int/2addr p1, v3

    #@56
    sput p1, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    #@58
    goto :goto_5f

    #@59
    .line 697
    :cond_59
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->showSystemToast(I)Lcom/blankj/utilcode/util/ToastUtils$IToast;

    #@5c
    move-result-object p1

    #@5d
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    #@5f
    :goto_5f
    return-void
.end method

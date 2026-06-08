.class public Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.super Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<",
        "Lcom/google/android/material/bottomappbar/BottomAppBar;",
        ">;"
    }
.end annotation


# instance fields
.field private final fabContentRect:Landroid/graphics/Rect;

.field private final fabLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private originalBottomMargin:I

.field private viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/bottomappbar/BottomAppBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 1398
    invoke-direct {p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;-><init>()V

    #@3
    .line 1317
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;

    #@5
    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V

    #@8
    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    #@a
    .line 1399
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    #@11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 1403
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 1317
    new-instance p1, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;

    #@5
    invoke-direct {p1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V

    #@8
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    #@a
    .line 1404
    new-instance p1, Landroid/graphics/Rect;

    #@c
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    #@11
    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Ljava/lang/ref/WeakReference;
    .registers 1

    #@0
    .line 1309
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@2
    return-object p0
.end method

.method static synthetic access$2600(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;
    .registers 1

    #@0
    .line 1309
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    #@2
    return-object p0
.end method

.method static synthetic access$2700(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)I
    .registers 1

    #@0
    .line 1309
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->originalBottomMargin:I

    #@2
    return p0
.end method


# virtual methods
.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4

    #@0
    .line 1309
    check-cast p2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;I)Z
    .registers 7

    #@0
    .line 1410
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@2
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@7
    .line 1412
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3200(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_5b

    #@d
    .line 1413
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_5b

    #@13
    .line 1416
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->updateFabAnchorGravity(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;)V
    invoke-static {p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3300(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;)V

    #@16
    .line 1421
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@1c
    .line 1422
    iget v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    #@1e
    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->originalBottomMargin:I

    #@20
    .line 1424
    instance-of v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@22
    if-eqz v1, :cond_53

    #@24
    .line 1425
    move-object v1, v0

    #@25
    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@27
    .line 1426
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$400(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_3a

    #@2d
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->removeEmbeddedFabElevation:Z
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3400(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_3a

    #@33
    const/4 v2, 0x0

    #@34
    .line 1427
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    #@37
    .line 1428
    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    #@3a
    .line 1434
    :cond_3a
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    #@3d
    move-result-object v2

    #@3e
    if-nez v2, :cond_45

    #@40
    .line 1435
    sget v2, Lcom/google/android/material/R$animator;->mtrl_fab_show_motion_spec:I

    #@42
    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setShowMotionSpecResource(I)V

    #@45
    .line 1437
    :cond_45
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    #@48
    move-result-object v2

    #@49
    if-nez v2, :cond_50

    #@4b
    .line 1438
    sget v2, Lcom/google/android/material/R$animator;->mtrl_fab_hide_motion_spec:I

    #@4d
    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setHideMotionSpecResource(I)V

    #@50
    .line 1442
    :cond_50
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->addFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    invoke-static {p2, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3500(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    #@53
    .line 1445
    :cond_53
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    #@55
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@58
    .line 1448
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutStateAndTranslateFab()V
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1400(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@5b
    .line 1452
    :cond_5b
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    #@5e
    .line 1453
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    #@61
    move-result p1

    #@62
    return p1
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7

    #@0
    .line 1309
    check-cast p2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@2
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;Landroid/view/View;II)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;Landroid/view/View;II)Z
    .registers 8

    #@0
    .line 1465
    invoke-virtual {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getHideOnScroll()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 1466
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    return p1
.end method

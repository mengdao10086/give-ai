.class Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityPaneVisibilityManager"
.end annotation


# instance fields
.field private final mPanesToVisible:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 4544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4546
    new-instance v0, Ljava/util/WeakHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    #@a
    return-void
.end method

.method private checkPaneVisibility(Landroid/view/View;Z)V
    .registers 4

    #@0
    .line 4588
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

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
    if-eq p2, v0, :cond_24

    #@11
    if-eqz v0, :cond_16

    #@13
    const/16 p2, 0x10

    #@15
    goto :goto_18

    #@16
    :cond_16
    const/16 p2, 0x20

    #@18
    .line 4593
    :goto_18
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    #@1b
    .line 4594
    iget-object p2, p0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    #@1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    :cond_24
    return-void
.end method

.method private registerForLayoutCallback(Landroid/view/View;)V
    .registers 2

    #@0
    .line 4600
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@7
    return-void
.end method

.method private unregisterForLayoutCallback(Landroid/view/View;)V
    .registers 2

    #@0
    .line 4605
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@3
    move-result-object p1

    #@4
    .line 4606
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat$Api16Impl;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@7
    return-void
.end method


# virtual methods
.method addAccessibilityPane(Landroid/view/View;)V
    .registers 4

    #@0
    .line 4572
    iget-object v0, p0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_10

    #@8
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_10

    #@e
    const/4 v1, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v1, 0x0

    #@11
    :goto_11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 4573
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@1b
    .line 4574
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_24

    #@21
    .line 4575
    invoke-direct {p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->registerForLayoutCallback(Landroid/view/View;)V

    #@24
    :cond_24
    return-void
.end method

.method public onGlobalLayout()V
    .registers 4

    #@0
    .line 4551
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-ge v0, v1, :cond_30

    #@6
    .line 4552
    iget-object v0, p0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    #@8
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v0

    #@10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_30

    #@16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Ljava/util/Map$Entry;

    #@1c
    .line 4553
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/view/View;

    #@22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Ljava/lang/Boolean;

    #@28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@2b
    move-result v1

    #@2c
    invoke-direct {p0, v2, v1}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->checkPaneVisibility(Landroid/view/View;Z)V

    #@2f
    goto :goto_10

    #@30
    :cond_30
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    #@0
    .line 4562
    invoke-direct {p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->registerForLayoutCallback(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    #@0
    return-void
.end method

.method removeAccessibilityPane(Landroid/view/View;)V
    .registers 3

    #@0
    .line 4581
    iget-object v0, p0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 4582
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@8
    .line 4583
    invoke-direct {p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->unregisterForLayoutCallback(Landroid/view/View;)V

    #@b
    return-void
.end method

.class Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnhandledKeyEventManager"
.end annotation


# static fields
.field private static final sViewsWithListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCapturedKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mViewsContainingListeners:Ljava/util/WeakHashMap;
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
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 4614
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sput-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    .line 4610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 4618
    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    #@6
    .line 4623
    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    #@8
    .line 4629
    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    #@a
    return-void
.end method

.method static at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    .registers 3

    #@0
    .line 4639
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_event_manager:I

    #@2
    .line 4640
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    #@8
    if-nez v0, :cond_14

    #@a
    .line 4642
    new-instance v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    #@c
    invoke-direct {v0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;-><init>()V

    #@f
    .line 4643
    sget v1, Landroidx/core/R$id;->tag_unhandled_key_event_manager:I

    #@11
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@14
    :cond_14
    return-object v0
.end method

.method private dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;
    .registers 7

    #@0
    .line 4668
    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_30

    #@5
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_c

    #@b
    goto :goto_30

    #@c
    .line 4671
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup;

    #@e
    if-eqz v0, :cond_29

    #@10
    .line 4672
    move-object v0, p1

    #@11
    check-cast v0, Landroid/view/ViewGroup;

    #@13
    .line 4674
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@16
    move-result v2

    #@17
    add-int/lit8 v2, v2, -0x1

    #@19
    :goto_19
    if-ltz v2, :cond_29

    #@1b
    .line 4675
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v3

    #@1f
    .line 4676
    invoke-direct {p0, v3, p2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    #@22
    move-result-object v3

    #@23
    if-eqz v3, :cond_26

    #@25
    return-object v3

    #@26
    :cond_26
    add-int/lit8 v2, v2, -0x1

    #@28
    goto :goto_19

    #@29
    .line 4682
    :cond_29
    invoke-direct {p0, p1, p2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    #@2c
    move-result p2

    #@2d
    if-eqz p2, :cond_30

    #@2f
    return-object p1

    #@30
    :cond_30
    :goto_30
    return-object v1
.end method

.method private getCapturedKeys()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    #@0
    .line 4632
    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 4633
    new-instance v0, Landroid/util/SparseArray;

    #@6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    #@b
    .line 4635
    :cond_b
    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    #@d
    return-object v0
.end method

.method private onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 7

    #@0
    .line 4727
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    #@2
    .line 4729
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    if-eqz v0, :cond_22

    #@a
    .line 4731
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x1

    #@f
    sub-int/2addr v1, v2

    #@10
    :goto_10
    if-ltz v1, :cond_22

    #@12
    .line 4732
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    #@18
    invoke-interface {v3, p1, p2}, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1f

    #@1e
    return v2

    #@1f
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_10

    #@22
    :cond_22
    const/4 p1, 0x0

    #@23
    return p1
.end method

.method private recalcViewsWithUnhandled()V
    .registers 7

    #@0
    .line 4767
    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 4768
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    #@7
    .line 4770
    :cond_7
    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_10

    #@f
    return-void

    #@10
    .line 4773
    :cond_10
    monitor-enter v0

    #@11
    .line 4774
    :try_start_11
    iget-object v1, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    #@13
    if-nez v1, :cond_1c

    #@15
    .line 4775
    new-instance v1, Ljava/util/WeakHashMap;

    #@17
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    #@1a
    iput-object v1, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    #@1c
    .line 4777
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v1

    #@20
    add-int/lit8 v1, v1, -0x1

    #@22
    :goto_22
    if-ltz v1, :cond_59

    #@24
    .line 4778
    sget-object v2, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Ljava/lang/ref/WeakReference;

    #@2c
    .line 4779
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroid/view/View;

    #@32
    if-nez v3, :cond_38

    #@34
    .line 4781
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@37
    goto :goto_56

    #@38
    .line 4783
    :cond_38
    iget-object v2, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    #@3a
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@3c
    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 4784
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@42
    move-result-object v2

    #@43
    .line 4785
    :goto_43
    instance-of v3, v2, Landroid/view/View;

    #@45
    if-eqz v3, :cond_56

    #@47
    .line 4786
    iget-object v3, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    #@49
    move-object v4, v2

    #@4a
    check-cast v4, Landroid/view/View;

    #@4c
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@4e
    invoke-virtual {v3, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 4787
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@54
    move-result-object v2

    #@55
    goto :goto_43

    #@56
    :cond_56
    :goto_56
    add-int/lit8 v1, v1, -0x1

    #@58
    goto :goto_22

    #@59
    .line 4791
    :cond_59
    monitor-exit v0

    #@5a
    return-void

    #@5b
    :catchall_5b
    move-exception v1

    #@5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_11 .. :try_end_5d} :catchall_5b

    #@5d
    throw v1
.end method

.method static registerListeningView(Landroid/view/View;)V
    .registers 4

    #@0
    .line 4745
    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    #@2
    monitor-enter v0

    #@3
    .line 4746
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1b

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@13
    .line 4747
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    if-ne v2, p0, :cond_7

    #@19
    .line 4748
    monitor-exit v0

    #@1a
    return-void

    #@1b
    .line 4751
    :cond_1b
    sget-object v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    #@1d
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@1f
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    .line 4752
    monitor-exit v0

    #@26
    return-void

    #@27
    :catchall_27
    move-exception p0

    #@28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    #@29
    throw p0
.end method

.method static unregisterListeningView(Landroid/view/View;)V
    .registers 5

    #@0
    .line 4756
    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    #@2
    monitor-enter v0

    #@3
    const/4 v1, 0x0

    #@4
    .line 4757
    :goto_4
    :try_start_4
    sget-object v2, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v3

    #@a
    if-ge v1, v3, :cond_20

    #@c
    .line 4758
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Ljava/lang/ref/WeakReference;

    #@12
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    if-ne v3, p0, :cond_1d

    #@18
    .line 4759
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1b
    .line 4760
    monitor-exit v0

    #@1c
    return-void

    #@1d
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_4

    #@20
    .line 4763
    :cond_20
    monitor-exit v0

    #@21
    return-void

    #@22
    :catchall_22
    move-exception p0

    #@23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    #@24
    throw p0
.end method


# virtual methods
.method dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 5

    #@0
    .line 4649
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 4650
    invoke-direct {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->recalcViewsWithUnhandled()V

    #@9
    .line 4653
    :cond_9
    invoke-direct {p0, p1, p2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    #@c
    move-result-object p1

    #@d
    .line 4657
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_2b

    #@13
    .line 4658
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@16
    move-result p2

    #@17
    if-eqz p1, :cond_2b

    #@19
    .line 4659
    invoke-static {p2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_2b

    #@1f
    .line 4660
    invoke-direct {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Landroid/util/SparseArray;

    #@22
    move-result-object v0

    #@23
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@25
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@28
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2b
    :cond_2b
    if-eqz p1, :cond_2f

    #@2d
    const/4 p1, 0x1

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    const/4 p1, 0x0

    #@30
    :goto_30
    return p1
.end method

.method preDispatch(Landroid/view/KeyEvent;)Z
    .registers 7

    #@0
    .line 4694
    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_c

    #@5
    .line 4695
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    if-ne v0, p1, :cond_c

    #@b
    return v1

    #@c
    .line 4698
    :cond_c
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@e
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@11
    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    #@13
    .line 4703
    invoke-direct {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Landroid/util/SparseArray;

    #@16
    move-result-object v0

    #@17
    .line 4704
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@1a
    move-result v2

    #@1b
    const/4 v3, 0x1

    #@1c
    if-ne v2, v3, :cond_32

    #@1e
    .line 4705
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@21
    move-result v2

    #@22
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@25
    move-result v2

    #@26
    if-ltz v2, :cond_32

    #@28
    .line 4707
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, Ljava/lang/ref/WeakReference;

    #@2e
    .line 4708
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    #@31
    goto :goto_33

    #@32
    :cond_32
    const/4 v4, 0x0

    #@33
    :goto_33
    if-nez v4, :cond_40

    #@35
    .line 4712
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@38
    move-result v2

    #@39
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    move-object v4, v0

    #@3e
    check-cast v4, Ljava/lang/ref/WeakReference;

    #@40
    :cond_40
    if-eqz v4, :cond_54

    #@42
    .line 4715
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Landroid/view/View;

    #@48
    if-eqz v0, :cond_53

    #@4a
    .line 4716
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_53

    #@50
    .line 4717
    invoke-direct {p0, v0, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    #@53
    :cond_53
    return v3

    #@54
    :cond_54
    return v1
.end method

.class public Landroidx/transition/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TransitionManager$MultiListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TransitionManager"

.field private static sDefaultTransition:Landroidx/transition/Transition;

.field static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mScenePairTransitions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/transition/Scene;",
            "Landroidx/collection/ArrayMap<",
            "Landroidx/transition/Scene;",
            "Landroidx/transition/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSceneTransitions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/transition/Scene;",
            "Landroidx/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 83
    new-instance v0, Landroidx/transition/AutoTransition;

    #@2
    invoke-direct {v0}, Landroidx/transition/AutoTransition;-><init>()V

    #@5
    sput-object v0, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    #@7
    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    #@9
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@c
    sput-object v0, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    #@e
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    sput-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    #@15
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    new-instance v0, Landroidx/collection/ArrayMap;

    #@5
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/transition/TransitionManager;->mSceneTransitions:Landroidx/collection/ArrayMap;

    #@a
    .line 86
    new-instance v0, Landroidx/collection/ArrayMap;

    #@c
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    #@11
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 380
    invoke-static {p0, v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    #@4
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .registers 3

    #@0
    .line 408
    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_25

    #@8
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_25

    #@e
    .line 413
    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    if-nez p1, :cond_17

    #@15
    .line 415
    sget-object p1, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    #@17
    .line 417
    :cond_17
    invoke-virtual {p1}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    #@1a
    move-result-object p1

    #@1b
    .line 418
    invoke-static {p0, p1}, Landroidx/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    #@1e
    const/4 v0, 0x0

    #@1f
    .line 419
    invoke-static {p0, v0}, Landroidx/transition/Scene;->setCurrentScene(Landroid/view/ViewGroup;Landroidx/transition/Scene;)V

    #@22
    .line 420
    invoke-static {p0, p1}, Landroidx/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    #@25
    :cond_25
    return-void
.end method

.method private static changeScene(Landroidx/transition/Scene;Landroidx/transition/Transition;)V
    .registers 5

    #@0
    .line 169
    invoke-virtual {p0}, Landroidx/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    .line 171
    sget-object v1, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_3c

    #@c
    .line 172
    invoke-static {v0}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;

    #@f
    move-result-object v1

    #@10
    if-nez p1, :cond_1b

    #@12
    if-eqz v1, :cond_17

    #@14
    .line 176
    invoke-virtual {v1}, Landroidx/transition/Scene;->exit()V

    #@17
    .line 179
    :cond_17
    invoke-virtual {p0}, Landroidx/transition/Scene;->enter()V

    #@1a
    goto :goto_3c

    #@1b
    .line 181
    :cond_1b
    sget-object v2, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 183
    invoke-virtual {p1}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    #@23
    move-result-object p1

    #@24
    .line 184
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/Transition;

    #@27
    if-eqz v1, :cond_33

    #@29
    .line 186
    invoke-virtual {v1}, Landroidx/transition/Scene;->isCreatedFromLayoutResource()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_33

    #@2f
    const/4 v1, 0x1

    #@30
    .line 187
    invoke-virtual {p1, v1}, Landroidx/transition/Transition;->setCanRemoveViews(Z)V

    #@33
    .line 190
    :cond_33
    invoke-static {v0, p1}, Landroidx/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    #@36
    .line 192
    invoke-virtual {p0}, Landroidx/transition/Scene;->enter()V

    #@39
    .line 194
    invoke-static {v0, p1}, Landroidx/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    #@3c
    :cond_3c
    :goto_3c
    return-void
.end method

.method public static endTransitions(Landroid/view/ViewGroup;)V
    .registers 4

    #@0
    .line 430
    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 431
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/util/ArrayList;

    #@f
    if-eqz v0, :cond_30

    #@11
    .line 432
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_30

    #@17
    .line 434
    new-instance v1, Ljava/util/ArrayList;

    #@19
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1c
    .line 435
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v0

    #@20
    add-int/lit8 v0, v0, -0x1

    #@22
    :goto_22
    if-ltz v0, :cond_30

    #@24
    .line 436
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroidx/transition/Transition;

    #@2a
    .line 437
    invoke-virtual {v2, p0}, Landroidx/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    #@2d
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_22

    #@30
    :cond_30
    return-void
.end method

.method static getRunningTransitions()Landroidx/collection/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition;",
            ">;>;"
        }
    .end annotation

    #@0
    .line 200
    sget-object v0, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    #@2
    .line 201
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@8
    if-eqz v0, :cond_13

    #@a
    .line 203
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroidx/collection/ArrayMap;

    #@10
    if-eqz v0, :cond_13

    #@12
    return-object v0

    #@13
    .line 208
    :cond_13
    new-instance v0, Landroidx/collection/ArrayMap;

    #@15
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    #@18
    .line 209
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@1a
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1d
    .line 210
    sget-object v2, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    #@1f
    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@22
    return-object v0
.end method

.method private getTransition(Landroidx/transition/Scene;)Landroidx/transition/Transition;
    .registers 4

    #@0
    .line 139
    invoke-virtual {p1}, Landroidx/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_1f

    #@6
    .line 142
    invoke-static {v0}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_1f

    #@c
    .line 144
    iget-object v1, p0, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    #@e
    .line 145
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroidx/collection/ArrayMap;

    #@14
    if-eqz v1, :cond_1f

    #@16
    .line 147
    invoke-virtual {v1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroidx/transition/Transition;

    #@1c
    if-eqz v0, :cond_1f

    #@1e
    return-object v0

    #@1f
    .line 154
    :cond_1f
    iget-object v0, p0, Landroidx/transition/TransitionManager;->mSceneTransitions:Landroidx/collection/ArrayMap;

    #@21
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object p1

    #@25
    check-cast p1, Landroidx/transition/Transition;

    #@27
    if-eqz p1, :cond_2a

    #@29
    goto :goto_2c

    #@2a
    .line 155
    :cond_2a
    sget-object p1, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    #@2c
    :goto_2c
    return-object p1
.end method

.method public static go(Landroidx/transition/Scene;)V
    .registers 2

    #@0
    .line 349
    sget-object v0, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    #@2
    invoke-static {p0, v0}, Landroidx/transition/TransitionManager;->changeScene(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    #@5
    return-void
.end method

.method public static go(Landroidx/transition/Scene;Landroidx/transition/Transition;)V
    .registers 2

    #@0
    .line 367
    invoke-static {p0, p1}, Landroidx/transition/TransitionManager;->changeScene(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    #@3
    return-void
.end method

.method private static sceneChangeRunTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .registers 3

    #@0
    if-eqz p1, :cond_13

    #@2
    if-eqz p0, :cond_13

    #@4
    .line 217
    new-instance v0, Landroidx/transition/TransitionManager$MultiListener;

    #@6
    invoke-direct {v0, p1, p0}, Landroidx/transition/TransitionManager$MultiListener;-><init>(Landroidx/transition/Transition;Landroid/view/ViewGroup;)V

    #@9
    .line 218
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@c
    .line 219
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@f
    move-result-object p0

    #@10
    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@13
    :cond_13
    return-void
.end method

.method private static sceneChangeSetup(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .registers 4

    #@0
    .line 309
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/ArrayList;

    #@a
    if-eqz v0, :cond_26

    #@c
    .line 311
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v1

    #@10
    if-lez v1, :cond_26

    #@12
    .line 312
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v0

    #@16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_26

    #@1c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroidx/transition/Transition;

    #@22
    .line 313
    invoke-virtual {v1, p0}, Landroidx/transition/Transition;->pause(Landroid/view/View;)V

    #@25
    goto :goto_16

    #@26
    :cond_26
    if-eqz p1, :cond_2c

    #@28
    const/4 v0, 0x1

    #@29
    .line 318
    invoke-virtual {p1, p0, v0}, Landroidx/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    #@2c
    .line 322
    :cond_2c
    invoke-static {p0}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;

    #@2f
    move-result-object p0

    #@30
    if-eqz p0, :cond_35

    #@32
    .line 324
    invoke-virtual {p0}, Landroidx/transition/Scene;->exit()V

    #@35
    :cond_35
    return-void
.end method


# virtual methods
.method public setTransition(Landroidx/transition/Scene;Landroidx/transition/Scene;Landroidx/transition/Transition;)V
    .registers 6

    #@0
    .line 119
    iget-object v0, p0, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    #@2
    invoke-virtual {v0, p2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/collection/ArrayMap;

    #@8
    if-nez v0, :cond_14

    #@a
    .line 121
    new-instance v0, Landroidx/collection/ArrayMap;

    #@c
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    #@f
    .line 122
    iget-object v1, p0, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    #@11
    invoke-virtual {v1, p2, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 124
    :cond_14
    invoke-virtual {v0, p1, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    return-void
.end method

.method public setTransition(Landroidx/transition/Scene;Landroidx/transition/Transition;)V
    .registers 4

    #@0
    .line 102
    iget-object v0, p0, Landroidx/transition/TransitionManager;->mSceneTransitions:Landroidx/collection/ArrayMap;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public transitionTo(Landroidx/transition/Scene;)V
    .registers 3

    #@0
    .line 339
    invoke-direct {p0, p1}, Landroidx/transition/TransitionManager;->getTransition(Landroidx/transition/Scene;)Landroidx/transition/Transition;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, v0}, Landroidx/transition/TransitionManager;->changeScene(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    #@7
    return-void
.end method

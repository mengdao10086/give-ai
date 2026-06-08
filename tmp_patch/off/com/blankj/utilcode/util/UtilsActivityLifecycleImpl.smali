.class final Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;
.super Ljava/lang/Object;
.source "UtilsActivityLifecycleImpl.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field static final INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

.field private static final STUB:Landroid/app/Activity;


# instance fields
.field private final mActivityLifecycleCallbacksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mActivityList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigCount:I

.field private mForegroundCount:I

.field private mIsBackground:Z

.field private final mStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 33
    new-instance v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    #@2
    invoke-direct {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    #@7
    .line 40
    new-instance v0, Landroid/app/Activity;

    #@9
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    #@c
    sput-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    #@e
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    #@a
    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    #@11
    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    #@18
    const/4 v0, 0x0

    #@19
    .line 42
    iput v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    #@1b
    .line 43
    iput v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    #@1d
    .line 44
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    #@1f
    return-void
.end method

.method static synthetic access$000(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 3

    #@0
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->addActivityLifecycleCallbacksInner(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    #@3
    return-void
.end method

.method static synthetic access$100(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;)Ljava/util/Map;
    .registers 1

    #@0
    .line 31
    iget-object p0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 3

    #@0
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->removeActivityLifecycleCallbacksInner(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    #@3
    return-void
.end method

.method private addActivityLifecycleCallbacksInner(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 5

    #@0
    .line 104
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    if-nez v0, :cond_15

    #@a
    .line 106
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@f
    .line 107
    iget-object v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    #@11
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    goto :goto_1c

    #@15
    .line 109
    :cond_15
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_1c

    #@1b
    return-void

    #@1c
    .line 111
    :cond_1c
    :goto_1c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    return-void
.end method

.method private consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5

    #@0
    .line 148
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    invoke-direct {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeLifecycle(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;Ljava/util/List;)V

    #@b
    .line 149
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    #@d
    sget-object v1, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    #@f
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/util/List;

    #@15
    invoke-direct {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeLifecycle(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;Ljava/util/List;)V

    #@18
    return-void
.end method

.method private consumeLifecycle(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;",
            ">;)V"
        }
    .end annotation

    #@0
    if-nez p3, :cond_3

    #@2
    return-void

    #@3
    .line 154
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object p3

    #@7
    :cond_7
    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_5e

    #@d
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    #@13
    .line 155
    invoke-virtual {v0, p1, p2}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onLifecycleChanged(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    #@16
    .line 156
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    #@18
    invoke-virtual {p2, v1}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_22

    #@1e
    .line 157
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;)V

    #@21
    goto :goto_7

    #@22
    .line 158
    :cond_22
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    #@24
    invoke-virtual {p2, v1}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2e

    #@2a
    .line 159
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    #@2d
    goto :goto_7

    #@2e
    .line 160
    :cond_2e
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    #@30
    invoke-virtual {p2, v1}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_3a

    #@36
    .line 161
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    #@39
    goto :goto_7

    #@3a
    .line 162
    :cond_3a
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    #@3c
    invoke-virtual {p2, v1}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_46

    #@42
    .line 163
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    #@45
    goto :goto_7

    #@46
    .line 164
    :cond_46
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@48
    invoke-virtual {p2, v1}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_52

    #@4e
    .line 165
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    #@51
    goto :goto_7

    #@52
    .line 166
    :cond_52
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    #@54
    invoke-virtual {p2, v1}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_7

    #@5a
    .line 167
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    #@5d
    goto :goto_7

    #@5e
    .line 170
    :cond_5e
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    #@60
    invoke-virtual {p2, p3}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    #@63
    move-result p2

    #@64
    if-eqz p2, :cond_6b

    #@66
    .line 171
    iget-object p2, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    #@68
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    :cond_6b
    return-void
.end method

.method private getActivitiesByReflect()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    #@0
    .line 361
    new-instance v0, Ljava/util/LinkedList;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 364
    :try_start_6
    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivityThread()Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    if-nez v2, :cond_d

    #@c
    return-object v0

    #@d
    .line 366
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@10
    move-result-object v3

    #@11
    const-string v4, "mActivities"

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@16
    move-result-object v3

    #@17
    const/4 v4, 0x1

    #@18
    .line 367
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@1b
    .line 368
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    .line 369
    instance-of v3, v2, Ljava/util/Map;

    #@21
    if-nez v3, :cond_24

    #@23
    return-object v0

    #@24
    .line 372
    :cond_24
    check-cast v2, Ljava/util/Map;

    #@26
    .line 373
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@29
    move-result-object v2

    #@2a
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v2

    #@2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_7f

    #@34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v3

    #@38
    .line 374
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3b
    move-result-object v5

    #@3c
    const-string v6, "activity"

    #@3e
    .line 375
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@41
    move-result-object v6

    #@42
    .line 376
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@45
    .line 377
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v6

    #@49
    check-cast v6, Landroid/app/Activity;

    #@4b
    if-nez v1, :cond_62

    #@4d
    const-string v7, "paused"

    #@4f
    .line 379
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@52
    move-result-object v5

    #@53
    .line 380
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@56
    .line 381
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@59
    move-result v3

    #@5a
    if-nez v3, :cond_5e

    #@5c
    move-object v1, v6

    #@5d
    goto :goto_2e

    #@5e
    .line 384
    :cond_5e
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@61
    goto :goto_2e

    #@62
    .line 387
    :cond_62
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_65} :catch_66

    #@65
    goto :goto_2e

    #@66
    :catch_66
    move-exception v2

    #@67
    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    #@69
    const-string v4, "getActivitiesByReflect: "

    #@6b
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6e
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    const-string v3, "UtilsActivityLifecycle"

    #@7c
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    :cond_7f
    if-eqz v1, :cond_84

    #@81
    .line 394
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@84
    :cond_84
    return-object v0
.end method

.method private getActivityThread()Ljava/lang/Object;
    .registers 2

    #@0
    .line 400
    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 402
    :cond_7
    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    #@3
    .line 407
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    const-string v2, "sCurrentActivityThread"

    #@9
    .line 408
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x1

    #@e
    .line 409
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@11
    .line 410
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_16

    #@15
    return-object v0

    #@16
    :catch_16
    move-exception v1

    #@17
    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    const-string v3, "getActivityThreadInActivityThreadStaticField: "

    #@1b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    const-string v2, "UtilsActivityLifecycle"

    #@2c
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    return-object v0
.end method

.method private getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    #@3
    .line 419
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    const-string v2, "currentActivityThread"

    #@9
    const/4 v3, 0x0

    #@a
    new-array v4, v3, [Ljava/lang/Class;

    #@c
    .line 420
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@f
    move-result-object v1

    #@10
    new-array v2, v3, [Ljava/lang/Object;

    #@12
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    #@16
    return-object v0

    #@17
    :catch_17
    move-exception v1

    #@18
    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    const-string v3, "getActivityThreadInActivityThreadStaticMethod: "

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    const-string v2, "UtilsActivityLifecycle"

    #@2d
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    return-object v0
.end method

.method private postStatus(Landroid/app/Activity;Z)V
    .registers 5

    #@0
    .line 336
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 337
    :cond_9
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    #@b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_25

    #@15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;

    #@1b
    if-eqz p2, :cond_21

    #@1d
    .line 339
    invoke-interface {v1, p1}, Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;->onForeground(Landroid/app/Activity;)V

    #@20
    goto :goto_f

    #@21
    .line 341
    :cond_21
    invoke-interface {v1, p1}, Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;->onBackground(Landroid/app/Activity;)V

    #@24
    goto :goto_f

    #@25
    :cond_25
    return-void
.end method

.method private processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V
    .registers 5

    #@0
    const/16 v0, -0x7b

    #@2
    if-eqz p2, :cond_1e

    #@4
    .line 310
    :try_start_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@7
    move-result-object p1

    #@8
    .line 311
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@b
    move-result-object p2

    #@c
    .line 312
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@e
    .line 313
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@11
    move-result-object v1

    #@12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object p2

    #@16
    invoke-virtual {v1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@19
    const/4 p2, 0x3

    #@1a
    .line 314
    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    #@1d
    goto :goto_39

    #@1e
    .line 316
    :cond_1e
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@21
    move-result-object p2

    #@22
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@25
    move-result-object p2

    #@26
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@29
    move-result-object p2

    #@2a
    .line 317
    instance-of v0, p2, Ljava/lang/Integer;

    #@2c
    if-nez v0, :cond_2f

    #@2e
    return-void

    #@2f
    .line 318
    :cond_2f
    new-instance v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;

    #@31
    invoke-direct {v0, p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;-><init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Ljava/lang/Object;)V

    #@34
    const-wide/16 p1, 0x64

    #@36
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_39

    #@39
    :catch_39
    :goto_39
    return-void
.end method

.method private removeActivityLifecycleCallbacksInner(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 4

    #@0
    .line 141
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Ljava/util/List;

    #@8
    if-eqz p1, :cond_13

    #@a
    .line 142
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_13

    #@10
    .line 143
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@13
    :cond_13
    return-void
.end method

.method private static setAnimatorsEnabled()V
    .registers 4

    #@0
    .line 431
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 436
    :cond_7
    :try_start_7
    const-class v0, Landroid/animation/ValueAnimator;

    #@9
    const-string v1, "sDurationScale"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x1

    #@10
    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@13
    const/4 v1, 0x0

    #@14
    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Ljava/lang/Float;

    #@1a
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@1d
    move-result v2

    #@1e
    const/4 v3, 0x0

    #@1f
    cmpl-float v2, v2, v3

    #@21
    if-nez v2, :cond_3d

    #@23
    const/high16 v2, 0x3f800000    # 1.0f

    #@25
    .line 441
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    #@2c
    const-string v0, "UtilsActivityLifecycle"

    #@2e
    const-string v1, "setAnimatorsEnabled: Animators are enabled now!"

    #@30
    .line 442
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_33} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_33} :catch_34

    #@33
    goto :goto_3d

    #@34
    :catch_34
    move-exception v0

    #@35
    .line 447
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@38
    goto :goto_3d

    #@39
    :catch_39
    move-exception v0

    #@3a
    .line 445
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    #@3d
    :cond_3d
    :goto_3d
    return-void
.end method

.method private setTopActivity(Landroid/app/Activity;)V
    .registers 3

    #@0
    .line 347
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_21

    #@8
    .line 348
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    #@a
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/app/Activity;

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_26

    #@16
    .line 349
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    #@18
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    #@1b
    .line 350
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    #@1d
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@20
    goto :goto_26

    #@21
    .line 353
    :cond_21
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    #@23
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@26
    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 4

    #@0
    if-eqz p1, :cond_d

    #@2
    if-nez p2, :cond_5

    #@4
    goto :goto_d

    #@5
    .line 90
    :cond_5
    new-instance v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;

    #@7
    invoke-direct {v0, p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;-><init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    #@a
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    #@d
    :cond_d
    :goto_d
    return-void
.end method

.method addActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 3

    #@0
    .line 84
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    #@5
    return-void
.end method

.method addOnAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;)V
    .registers 3

    #@0
    .line 76
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method getActivityList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    #@0
    .line 67
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_10

    #@8
    .line 68
    new-instance v0, Ljava/util/LinkedList;

    #@a
    iget-object v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    #@c
    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    #@f
    return-object v0

    #@10
    .line 70
    :cond_10
    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivitiesByReflect()Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    .line 71
    iget-object v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    #@16
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    #@19
    .line 72
    new-instance v0, Ljava/util/LinkedList;

    #@1b
    iget-object v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    #@1d
    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    #@20
    return-object v0
.end method

.method getApplicationByReflect()Landroid/app/Application;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    #@3
    .line 177
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    .line 178
    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivityThread()Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    if-nez v2, :cond_e

    #@d
    return-object v0

    #@e
    :cond_e
    const-string v3, "getApplication"

    #@10
    const/4 v4, 0x0

    #@11
    new-array v5, v4, [Ljava/lang/Class;

    #@13
    .line 180
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@16
    move-result-object v1

    #@17
    new-array v3, v4, [Ljava/lang/Object;

    #@19
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    if-nez v1, :cond_20

    #@1f
    return-object v0

    #@20
    .line 182
    :cond_20
    check-cast v1, Landroid/app/Application;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    #@22
    return-object v1

    #@23
    :catch_23
    move-exception v1

    #@24
    .line 184
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@27
    return-object v0
.end method

.method getTopActivity()Landroid/app/Activity;
    .registers 4

    #@0
    .line 56
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivityList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1c

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/app/Activity;

    #@14
    .line 58
    invoke-static {v1}, Lcom/blankj/utilcode/util/UtilsBridge;->isActivityAlive(Landroid/app/Activity;)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_1b

    #@1a
    goto :goto_8

    #@1b
    :cond_1b
    return-object v1

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    return-object v0
.end method

.method init(Landroid/app/Application;)V
    .registers 2

    #@0
    .line 47
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    #@3
    return-void
.end method

.method isAppForeground()Z
    .registers 2

    #@0
    .line 99
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    #@2
    xor-int/lit8 v0, v0, 0x1

    #@4
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 197
    iget-object p2, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    #@2
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    #@5
    move-result p2

    #@6
    if-nez p2, :cond_c

    #@8
    const/4 p2, 0x1

    #@9
    .line 198
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->postStatus(Landroid/app/Activity;Z)V

    #@c
    .line 200
    :cond_c
    invoke-static {p1}, Lcom/blankj/utilcode/util/LanguageUtils;->applyLanguage(Landroid/app/Activity;)V

    #@f
    .line 201
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->setAnimatorsEnabled()V

    #@12
    .line 202
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    #@15
    .line 203
    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    #@17
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    #@1a
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    #@0
    .line 291
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 292
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->fixSoftInputLeaks(Landroid/app/Activity;)V

    #@8
    .line 293
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    #@a
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    #@d
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    #@0
    .line 250
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    #@5
    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    #@0
    return-void
.end method

.method public onActivityPostDestroyed(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivityPostPaused(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    #@0
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivityPostStopped(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    #@0
    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivityPreResumed(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    #@0
    return-void
.end method

.method public onActivityPreStarted(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    #@0
    .line 233
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    #@3
    .line 234
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    #@5
    const/4 v1, 0x0

    #@6
    if-eqz v0, :cond_e

    #@8
    .line 235
    iput-boolean v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    #@a
    const/4 v0, 0x1

    #@b
    .line 236
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->postStatus(Landroid/app/Activity;Z)V

    #@e
    .line 238
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V

    #@11
    .line 239
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    #@13
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    #@16
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    #@0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    #@0
    .line 214
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    #@2
    if-nez v0, :cond_7

    #@4
    .line 215
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    #@7
    .line 217
    :cond_7
    iget v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    #@9
    if-gez v0, :cond_10

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    .line 218
    iput v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    #@f
    goto :goto_16

    #@10
    .line 220
    :cond_10
    iget v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    #@16
    .line 222
    :goto_16
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    #@18
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    #@1b
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    #@0
    .line 261
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_d

    #@7
    .line 262
    iget v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    #@9
    sub-int/2addr v0, v1

    #@a
    iput v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mConfigCount:I

    #@c
    goto :goto_1a

    #@d
    .line 264
    :cond_d
    iget v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    #@f
    sub-int/2addr v0, v1

    #@10
    iput v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mForegroundCount:I

    #@12
    if-gtz v0, :cond_1a

    #@14
    .line 266
    iput-boolean v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mIsBackground:Z

    #@16
    const/4 v0, 0x0

    #@17
    .line 267
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->postStatus(Landroid/app/Activity;Z)V

    #@1a
    .line 270
    :cond_1a
    :goto_1a
    invoke-direct {p0, p1, v1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V

    #@1d
    .line 271
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    #@1f
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    #@22
    return-void
.end method

.method removeActivityLifecycleCallbacks(Landroid/app/Activity;)V
    .registers 3

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 120
    :cond_3
    new-instance v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;

    #@5
    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;-><init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;)V

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    #@b
    return-void
.end method

.method removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 4

    #@0
    if-eqz p1, :cond_d

    #@2
    if-nez p2, :cond_5

    #@4
    goto :goto_d

    #@5
    .line 131
    :cond_5
    new-instance v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$3;

    #@7
    invoke-direct {v0, p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$3;-><init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    #@a
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThread(Ljava/lang/Runnable;)V

    #@d
    :cond_d
    :goto_d
    return-void
.end method

.method removeActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 3

    #@0
    .line 115
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    #@2
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    #@5
    return-void
.end method

.method removeOnAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;)V
    .registers 3

    #@0
    .line 80
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method unInit(Landroid/app/Application;)V
    .registers 3

    #@0
    .line 51
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    #@5
    .line 52
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    #@8
    return-void
.end method

.class final Landroidx/lifecycle/ClassesInfoCache;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ClassesInfoCache$MethodReference;,
        Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CALL_TYPE_NO_ARG:I = 0x0

.field private static final CALL_TYPE_PROVIDER:I = 0x1

.field private static final CALL_TYPE_PROVIDER_WITH_EVENT:I = 0x2

.field static sInstance:Landroidx/lifecycle/ClassesInfoCache;


# instance fields
.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasLifecycleMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 39
    new-instance v0, Landroidx/lifecycle/ClassesInfoCache;

    #@2
    invoke-direct {v0}, Landroidx/lifecycle/ClassesInfoCache;-><init>()V

    #@5
    sput-object v0, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    #@a
    .line 46
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    #@11
    return-void
.end method

.method private createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;"
        }
    .end annotation

    #@0
    .line 109
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 110
    new-instance v1, Ljava/util/HashMap;

    #@6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@9
    if-eqz v0, :cond_16

    #@b
    .line 112
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_16

    #@11
    .line 114
    iget-object v0, v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    #@13
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@16
    .line 118
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@19
    move-result-object v0

    #@1a
    .line 119
    array-length v2, v0

    #@1b
    const/4 v3, 0x0

    #@1c
    move v4, v3

    #@1d
    :goto_1d
    if-ge v4, v2, :cond_4e

    #@1f
    aget-object v5, v0, v4

    #@21
    .line 120
    invoke-virtual {p0, v5}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    #@24
    move-result-object v5

    #@25
    iget-object v5, v5, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    #@27
    .line 121
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2a
    move-result-object v5

    #@2b
    .line 120
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v5

    #@2f
    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_4b

    #@35
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v6

    #@39
    check-cast v6, Ljava/util/Map$Entry;

    #@3b
    .line 122
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3e
    move-result-object v7

    #@3f
    check-cast v7, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    #@41
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@44
    move-result-object v6

    #@45
    check-cast v6, Landroidx/lifecycle/Lifecycle$Event;

    #@47
    invoke-direct {p0, v1, v7, v6, p1}, Landroidx/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    #@4a
    goto :goto_2f

    #@4b
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    #@4d
    goto :goto_1d

    #@4e
    :cond_4e
    if-eqz p2, :cond_51

    #@50
    goto :goto_55

    #@51
    .line 126
    :cond_51
    invoke-direct {p0, p1}, Landroidx/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    #@54
    move-result-object p2

    #@55
    .line 128
    :goto_55
    array-length v0, p2

    #@56
    move v2, v3

    #@57
    move v4, v2

    #@58
    :goto_58
    if-ge v2, v0, :cond_c3

    #@5a
    aget-object v5, p2, v2

    #@5c
    .line 129
    const-class v6, Landroidx/lifecycle/OnLifecycleEvent;

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@61
    move-result-object v6

    #@62
    check-cast v6, Landroidx/lifecycle/OnLifecycleEvent;

    #@64
    if-nez v6, :cond_67

    #@66
    goto :goto_b8

    #@67
    .line 134
    :cond_67
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@6a
    move-result-object v4

    #@6b
    .line 136
    array-length v7, v4

    #@6c
    const/4 v8, 0x1

    #@6d
    if-lez v7, :cond_83

    #@6f
    .line 138
    aget-object v7, v4, v3

    #@71
    const-class v9, Landroidx/lifecycle/LifecycleOwner;

    #@73
    invoke-virtual {v7, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@76
    move-result v7

    #@77
    if-eqz v7, :cond_7b

    #@79
    move v7, v8

    #@7a
    goto :goto_84

    #@7b
    .line 139
    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@7d
    const-string p2, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    #@7f
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@82
    throw p1

    #@83
    :cond_83
    move v7, v3

    #@84
    .line 143
    :goto_84
    invoke-interface {v6}, Landroidx/lifecycle/OnLifecycleEvent;->value()Landroidx/lifecycle/Lifecycle$Event;

    #@87
    move-result-object v6

    #@88
    .line 145
    array-length v9, v4

    #@89
    const/4 v10, 0x2

    #@8a
    if-le v9, v8, :cond_ac

    #@8c
    .line 147
    aget-object v7, v4, v8

    #@8e
    const-class v9, Landroidx/lifecycle/Lifecycle$Event;

    #@90
    invoke-virtual {v7, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@93
    move-result v7

    #@94
    if-eqz v7, :cond_a4

    #@96
    .line 151
    sget-object v7, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    #@98
    if-ne v6, v7, :cond_9c

    #@9a
    move v7, v10

    #@9b
    goto :goto_ac

    #@9c
    .line 152
    :cond_9c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@9e
    const-string p2, "Second arg is supported only for ON_ANY value"

    #@a0
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a3
    throw p1

    #@a4
    .line 148
    :cond_a4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@a6
    const-string p2, "invalid parameter type. second arg must be an event"

    #@a8
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ab
    throw p1

    #@ac
    .line 156
    :cond_ac
    :goto_ac
    array-length v4, v4

    #@ad
    if-gt v4, v10, :cond_bb

    #@af
    .line 159
    new-instance v4, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    #@b1
    invoke-direct {v4, v7, v5}, Landroidx/lifecycle/ClassesInfoCache$MethodReference;-><init>(ILjava/lang/reflect/Method;)V

    #@b4
    .line 160
    invoke-direct {p0, v1, v4, v6, p1}, Landroidx/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    #@b7
    move v4, v8

    #@b8
    :goto_b8
    add-int/lit8 v2, v2, 0x1

    #@ba
    goto :goto_58

    #@bb
    .line 157
    :cond_bb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@bd
    const-string p2, "cannot have more than 2 params"

    #@bf
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c2
    throw p1

    #@c3
    .line 162
    :cond_c3
    new-instance p2, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    #@c5
    invoke-direct {p2, v1}, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;-><init>(Ljava/util/Map;)V

    #@c8
    .line 163
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    #@ca
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cd
    .line 164
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    #@cf
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d2
    move-result-object v1

    #@d3
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d6
    return-object p2
.end method

.method private getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    .line 74
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    #@3
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return-object p1

    #@5
    :catch_5
    move-exception p1

    #@6
    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    #@a
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d
    throw v0
.end method

.method private verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ">;",
            "Landroidx/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 95
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/lifecycle/Lifecycle$Event;

    #@6
    if-eqz v0, :cond_48

    #@8
    if-ne p3, v0, :cond_b

    #@a
    goto :goto_48

    #@b
    .line 97
    :cond_b
    iget-object p1, p2, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    #@d
    .line 98
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    const-string v2, "Method "

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    .line 99
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p1

    #@1e
    const-string v1, " in "

    #@20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object p1

    #@24
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object p4

    #@28
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    const-string p4, " already declared with different @OnLifecycleEvent value: previous value "

    #@2e
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object p1

    #@32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object p1

    #@36
    const-string p4, ", new value "

    #@38
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object p1

    #@3c
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object p1

    #@40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object p1

    #@44
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw p2

    #@48
    :cond_48
    :goto_48
    if-nez v0, :cond_4d

    #@4a
    .line 104
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    :cond_4d
    return-void
.end method


# virtual methods
.method getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;"
        }
    .end annotation

    #@0
    .line 85
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    #@8
    if-eqz v0, :cond_b

    #@a
    return-object v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    .line 89
    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    #@f
    move-result-object p1

    #@10
    return-object p1
.end method

.method hasLifecycleMethods(Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 49
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@d
    move-result p1

    #@e
    return p1

    #@f
    .line 54
    :cond_f
    invoke-direct {p0, p1}, Landroidx/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    #@12
    move-result-object v0

    #@13
    .line 55
    array-length v1, v0

    #@14
    const/4 v2, 0x0

    #@15
    move v3, v2

    #@16
    :goto_16
    if-ge v3, v1, :cond_2c

    #@18
    aget-object v4, v0, v3

    #@1a
    .line 56
    const-class v5, Landroidx/lifecycle/OnLifecycleEvent;

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Landroidx/lifecycle/OnLifecycleEvent;

    #@22
    if-eqz v4, :cond_29

    #@24
    .line 64
    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    #@27
    const/4 p1, 0x1

    #@28
    return p1

    #@29
    :cond_29
    add-int/lit8 v3, v3, 0x1

    #@2b
    goto :goto_16

    #@2c
    .line 68
    :cond_2c
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    #@2e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@31
    move-result-object v1

    #@32
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    return v2
.end method

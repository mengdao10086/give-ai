.class public Landroidx/lifecycle/Lifecycling;
.super Ljava/lang/Object;
.source "Lifecycling.java"


# static fields
.field private static final GENERATED_CALLBACK:I = 0x2

.field private static final REFLECTIVE_CALLBACK:I = 0x1

.field private static sCallbackCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sClassToAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 42
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    #@7
    .line 43
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v0, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    #@e
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/lifecycle/GeneratedAdapter;"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, Landroidx/lifecycle/GeneratedAdapter;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_c} :catch_1b
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_c} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_c} :catch_d

    #@c
    return-object p0

    #@d
    :catch_d
    move-exception p0

    #@e
    .line 112
    new-instance p1, Ljava/lang/RuntimeException;

    #@10
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@13
    throw p1

    #@14
    :catch_14
    move-exception p0

    #@15
    .line 110
    new-instance p1, Ljava/lang/RuntimeException;

    #@17
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw p1

    #@1b
    :catch_1b
    move-exception p0

    #@1c
    .line 108
    new-instance p1, Ljava/lang/RuntimeException;

    #@1e
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@21
    throw p1
.end method

.method private static generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;"
        }
    .end annotation

    #@0
    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@3
    move-result-object v0

    #@4
    .line 121
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 122
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    goto :goto_11

    #@f
    :cond_f
    const-string v0, ""

    #@11
    .line 123
    :goto_11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@14
    move-result v2

    #@15
    const/4 v3, 0x1

    #@16
    if-eqz v2, :cond_19

    #@18
    goto :goto_22

    #@19
    .line 124
    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1c
    move-result v2

    #@1d
    add-int/2addr v2, v3

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 123
    :goto_22
    invoke-static {v1}, Landroidx/lifecycle/Lifecycling;->getAdapterName(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_2d

    #@2c
    goto :goto_44

    #@2d
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    const-string v2, "."

    #@38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 127
    :goto_44
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@47
    move-result-object v0

    #@48
    new-array v1, v3, [Ljava/lang/Class;

    #@4a
    const/4 v2, 0x0

    #@4b
    aput-object p0, v1, v2

    #@4d
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@50
    move-result-object p0

    #@51
    .line 131
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    #@54
    move-result v0

    #@55
    if-nez v0, :cond_5a

    #@57
    .line 132
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_5a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5a} :catch_62
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_5a} :catch_5b

    #@5a
    :cond_5a
    return-object p0

    #@5b
    :catch_5b
    move-exception p0

    #@5c
    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    #@5e
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@61
    throw v0

    #@62
    :catch_62
    const/4 p0, 0x0

    #@63
    return-object p0
.end method

.method public static getAdapterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "."

    #@7
    const-string v2, "_"

    #@9
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object p0

    #@11
    const-string v0, "_LifecycleAdapter"

    #@13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p0

    #@17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    return-object p0
.end method

.method static getCallback(Ljava/lang/Object;)Landroidx/lifecycle/GenericLifecycleObserver;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 56
    invoke-static {p0}, Landroidx/lifecycle/Lifecycling;->lifecycleEventObserver(Ljava/lang/Object;)Landroidx/lifecycle/LifecycleEventObserver;

    #@3
    move-result-object p0

    #@4
    .line 57
    new-instance v0, Landroidx/lifecycle/Lifecycling$1;

    #@6
    invoke-direct {v0, p0}, Landroidx/lifecycle/Lifecycling$1;-><init>(Landroidx/lifecycle/LifecycleEventObserver;)V

    #@9
    return-object v0
.end method

.method private static getObserverConstructorType(Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    #@0
    .line 144
    sget-object v0, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 146
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result p0

    #@e
    return p0

    #@f
    .line 148
    :cond_f
    invoke-static {p0}, Landroidx/lifecycle/Lifecycling;->resolveObserverCallbackType(Ljava/lang/Class;)I

    #@12
    move-result v0

    #@13
    .line 149
    sget-object v1, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    #@15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v2

    #@19
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    return v0
.end method

.method private static isLifecycleParent(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_c

    #@2
    .line 202
    const-class v0, Landroidx/lifecycle/LifecycleObserver;

    #@4
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@7
    move-result p0

    #@8
    if-eqz p0, :cond_c

    #@a
    const/4 p0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p0, 0x0

    #@d
    :goto_d
    return p0
.end method

.method static lifecycleEventObserver(Ljava/lang/Object;)Landroidx/lifecycle/LifecycleEventObserver;
    .registers 5

    #@0
    .line 69
    instance-of v0, p0, Landroidx/lifecycle/LifecycleEventObserver;

    #@2
    .line 70
    instance-of v1, p0, Landroidx/lifecycle/FullLifecycleObserver;

    #@4
    if-eqz v0, :cond_13

    #@6
    if-eqz v1, :cond_13

    #@8
    .line 72
    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    #@a
    move-object v1, p0

    #@b
    check-cast v1, Landroidx/lifecycle/FullLifecycleObserver;

    #@d
    check-cast p0, Landroidx/lifecycle/LifecycleEventObserver;

    #@f
    invoke-direct {v0, v1, p0}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/FullLifecycleObserver;Landroidx/lifecycle/LifecycleEventObserver;)V

    #@12
    return-object v0

    #@13
    :cond_13
    if-eqz v1, :cond_1e

    #@15
    .line 76
    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    #@17
    check-cast p0, Landroidx/lifecycle/FullLifecycleObserver;

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/FullLifecycleObserver;Landroidx/lifecycle/LifecycleEventObserver;)V

    #@1d
    return-object v0

    #@1e
    :cond_1e
    if-eqz v0, :cond_23

    #@20
    .line 80
    check-cast p0, Landroidx/lifecycle/LifecycleEventObserver;

    #@22
    return-object p0

    #@23
    .line 83
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v0

    #@27
    .line 84
    invoke-static {v0}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    #@2a
    move-result v1

    #@2b
    const/4 v2, 0x2

    #@2c
    if-ne v1, v2, :cond_6f

    #@2e
    .line 86
    sget-object v1, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    #@30
    .line 87
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Ljava/util/List;

    #@36
    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@39
    move-result v1

    #@3a
    const/4 v2, 0x0

    #@3b
    const/4 v3, 0x1

    #@3c
    if-ne v1, v3, :cond_4e

    #@3e
    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Ljava/lang/reflect/Constructor;

    #@44
    .line 89
    invoke-static {v0, p0}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;

    #@47
    move-result-object p0

    #@48
    .line 91
    new-instance v0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    #@4a
    invoke-direct {v0, p0}, Landroidx/lifecycle/SingleGeneratedAdapterObserver;-><init>(Landroidx/lifecycle/GeneratedAdapter;)V

    #@4d
    return-object v0

    #@4e
    .line 93
    :cond_4e
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@51
    move-result v1

    #@52
    new-array v1, v1, [Landroidx/lifecycle/GeneratedAdapter;

    #@54
    .line 94
    :goto_54
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@57
    move-result v3

    #@58
    if-ge v2, v3, :cond_69

    #@5a
    .line 95
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v3

    #@5e
    check-cast v3, Ljava/lang/reflect/Constructor;

    #@60
    invoke-static {v3, p0}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;

    #@63
    move-result-object v3

    #@64
    aput-object v3, v1, v2

    #@66
    add-int/lit8 v2, v2, 0x1

    #@68
    goto :goto_54

    #@69
    .line 97
    :cond_69
    new-instance p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    #@6b
    invoke-direct {p0, v1}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroidx/lifecycle/GeneratedAdapter;)V

    #@6e
    return-object p0

    #@6f
    .line 99
    :cond_6f
    new-instance v0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    #@71
    invoke-direct {v0, p0}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    #@74
    return-object v0
.end method

.method private static resolveObserverCallbackType(Ljava/lang/Class;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    #@0
    .line 155
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    .line 159
    :cond_8
    invoke-static {p0}, Landroidx/lifecycle/Lifecycling;->generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@b
    move-result-object v0

    #@c
    const/4 v2, 0x2

    #@d
    if-eqz v0, :cond_19

    #@f
    .line 161
    sget-object v1, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    #@11
    .line 162
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@14
    move-result-object v0

    #@15
    .line 161
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    return v2

    #@19
    .line 167
    :cond_19
    sget-object v0, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    #@1b
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ClassesInfoCache;->hasLifecycleMethods(Ljava/lang/Class;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_22

    #@21
    return v1

    #@22
    .line 172
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@25
    move-result-object v0

    #@26
    .line 174
    invoke-static {v0}, Landroidx/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_41

    #@2c
    .line 175
    invoke-static {v0}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    #@2f
    move-result v3

    #@30
    if-ne v3, v1, :cond_33

    #@32
    return v1

    #@33
    .line 178
    :cond_33
    new-instance v3, Ljava/util/ArrayList;

    #@35
    sget-object v4, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    #@37
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Ljava/util/Collection;

    #@3d
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@40
    goto :goto_42

    #@41
    :cond_41
    const/4 v3, 0x0

    #@42
    .line 181
    :goto_42
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@45
    move-result-object v0

    #@46
    array-length v4, v0

    #@47
    const/4 v5, 0x0

    #@48
    :goto_48
    if-ge v5, v4, :cond_6f

    #@4a
    aget-object v6, v0, v5

    #@4c
    .line 182
    invoke-static {v6}, Landroidx/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    #@4f
    move-result v7

    #@50
    if-nez v7, :cond_53

    #@52
    goto :goto_6c

    #@53
    .line 185
    :cond_53
    invoke-static {v6}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    #@56
    move-result v7

    #@57
    if-ne v7, v1, :cond_5a

    #@59
    return v1

    #@5a
    :cond_5a
    if-nez v3, :cond_61

    #@5c
    .line 189
    new-instance v3, Ljava/util/ArrayList;

    #@5e
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@61
    .line 191
    :cond_61
    sget-object v7, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    #@63
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    move-result-object v6

    #@67
    check-cast v6, Ljava/util/Collection;

    #@69
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@6c
    :goto_6c
    add-int/lit8 v5, v5, 0x1

    #@6e
    goto :goto_48

    #@6f
    :cond_6f
    if-eqz v3, :cond_77

    #@71
    .line 194
    sget-object v0, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    #@73
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    return v2

    #@77
    :cond_77
    return v1
.end method

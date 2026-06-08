.class public final Lcom/google/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field private final accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;)V"
        }
    .end annotation

    #@0
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    invoke-static {}, Lcom/google/gson/internal/reflect/ReflectionAccessor;->getInstance()Lcom/google/gson/internal/reflect/ReflectionAccessor;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    #@9
    .line 54
    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    #@b
    return-void
.end method

.method private newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@6
    move-result-object p1

    #@7
    .line 102
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_12

    #@d
    .line 103
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    #@f
    invoke-virtual {v0, p1}, Lcom/google/gson/internal/reflect/ReflectionAccessor;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    #@12
    .line 105
    :cond_12
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    #@14
    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_17} :catch_18

    #@17
    return-object v0

    #@18
    :catch_18
    const/4 p1, 0x0

    #@19
    return-object p1
.end method

.method private newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 136
    const-class v0, Ljava/util/Collection;

    #@2
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_46

    #@8
    .line 137
    const-class v0, Ljava/util/SortedSet;

    #@a
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_16

    #@10
    .line 138
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$4;

    #@12
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$4;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    #@15
    return-object p1

    #@16
    .line 143
    :cond_16
    const-class v0, Ljava/util/EnumSet;

    #@18
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_24

    #@1e
    .line 144
    new-instance p2, Lcom/google/gson/internal/ConstructorConstructor$5;

    #@20
    invoke-direct {p2, p0, p1}, Lcom/google/gson/internal/ConstructorConstructor$5;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V

    #@23
    return-object p2

    #@24
    .line 159
    :cond_24
    const-class p1, Ljava/util/Set;

    #@26
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@29
    move-result p1

    #@2a
    if-eqz p1, :cond_32

    #@2c
    .line 160
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$6;

    #@2e
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$6;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    #@31
    return-object p1

    #@32
    .line 165
    :cond_32
    const-class p1, Ljava/util/Queue;

    #@34
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@37
    move-result p1

    #@38
    if-eqz p1, :cond_40

    #@3a
    .line 166
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$7;

    #@3c
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$7;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    #@3f
    return-object p1

    #@40
    .line 172
    :cond_40
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$8;

    #@42
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$8;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    #@45
    return-object p1

    #@46
    .line 180
    :cond_46
    const-class v0, Ljava/util/Map;

    #@48
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_a1

    #@4e
    .line 181
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    #@50
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_5c

    #@56
    .line 182
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$9;

    #@58
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$9;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    #@5b
    return-object p1

    #@5c
    .line 187
    :cond_5c
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    #@5e
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_6a

    #@64
    .line 188
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$10;

    #@66
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    #@69
    return-object p1

    #@6a
    .line 193
    :cond_6a
    const-class v0, Ljava/util/SortedMap;

    #@6c
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@6f
    move-result p2

    #@70
    if-eqz p2, :cond_78

    #@72
    .line 194
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$11;

    #@74
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$11;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    #@77
    return-object p1

    #@78
    .line 199
    :cond_78
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    #@7a
    if-eqz p2, :cond_9b

    #@7c
    const-class p2, Ljava/lang/String;

    #@7e
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    #@80
    .line 200
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@83
    move-result-object p1

    #@84
    const/4 v0, 0x0

    #@85
    aget-object p1, p1, v0

    #@87
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    #@8a
    move-result-object p1

    #@8b
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    #@8e
    move-result-object p1

    #@8f
    .line 199
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@92
    move-result p1

    #@93
    if-nez p1, :cond_9b

    #@95
    .line 201
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$12;

    #@97
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$12;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    #@9a
    return-object p1

    #@9b
    .line 207
    :cond_9b
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$13;

    #@9d
    invoke-direct {p1, p0}, Lcom/google/gson/internal/ConstructorConstructor$13;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    #@a0
    return-object p1

    #@a1
    :cond_a1
    const/4 p1, 0x0

    #@a2
    return-object p1
.end method

.method private newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 220
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$14;

    #@2
    invoke-direct {v0, p0, p2, p1}, Lcom/google/gson/internal/ConstructorConstructor$14;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 58
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    #@3
    move-result-object v0

    #@4
    .line 59
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    #@7
    move-result-object p1

    #@8
    .line 64
    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    #@a
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/google/gson/InstanceCreator;

    #@10
    if-eqz v1, :cond_18

    #@12
    .line 66
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$1;

    #@14
    invoke-direct {p1, p0, v1, v0}, Lcom/google/gson/internal/ConstructorConstructor$1;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    #@17
    return-object p1

    #@18
    .line 75
    :cond_18
    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    #@1a
    .line 76
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/google/gson/InstanceCreator;

    #@20
    if-eqz v1, :cond_28

    #@22
    .line 78
    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$2;

    #@24
    invoke-direct {p1, p0, v1, v0}, Lcom/google/gson/internal/ConstructorConstructor$2;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    #@27
    return-object p1

    #@28
    .line 85
    :cond_28
    invoke-direct {p0, p1}, Lcom/google/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    #@2b
    move-result-object v1

    #@2c
    if-eqz v1, :cond_2f

    #@2e
    return-object v1

    #@2f
    .line 90
    :cond_2f
    invoke-direct {p0, v0, p1}, Lcom/google/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    #@32
    move-result-object v1

    #@33
    if-eqz v1, :cond_36

    #@35
    return-object v1

    #@36
    .line 96
    :cond_36
    invoke-direct {p0, v0, p1}, Lcom/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    #@39
    move-result-object p1

    #@3a
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 236
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

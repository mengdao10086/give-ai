.class public abstract Lcom/google/gson/internal/UnsafeAllocator;
.super Ljava/lang/Object;
.source "UnsafeAllocator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static assertInstantiable(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 115
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    #@3
    move-result v0

    #@4
    .line 116
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_2a

    #@a
    .line 119
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_11

    #@10
    return-void

    #@11
    .line 120
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    const-string v2, "Abstract class can\'t be instantiated! Class name: "

    #@17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d
    move-result-object p0

    #@1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p0

    #@22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p0

    #@26
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 117
    :cond_2a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2c
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    const-string v2, "Interface can\'t be instantiated! Interface name: "

    #@30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@33
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@36
    move-result-object p0

    #@37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object p0

    #@3b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object p0

    #@3f
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0
.end method

.method public static create()Lcom/google/gson/internal/UnsafeAllocator;
    .registers 9

    #@0
    const-string v0, "newInstance"

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    :try_start_5
    const-string v4, "sun.misc.Unsafe"

    #@7
    .line 40
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@a
    move-result-object v4

    #@b
    const-string v5, "theUnsafe"

    #@d
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v5

    #@11
    .line 42
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@14
    .line 43
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v5

    #@18
    const-string v6, "allocateInstance"

    #@1a
    new-array v7, v3, [Ljava/lang/Class;

    #@1c
    .line 44
    const-class v8, Ljava/lang/Class;

    #@1e
    aput-object v8, v7, v2

    #@20
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@23
    move-result-object v4

    #@24
    .line 45
    new-instance v6, Lcom/google/gson/internal/UnsafeAllocator$1;

    #@26
    invoke-direct {v6, v4, v5}, Lcom/google/gson/internal/UnsafeAllocator$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2a

    #@29
    return-object v6

    #@2a
    :catch_2a
    const/4 v4, 0x2

    #@2b
    .line 62
    :try_start_2b
    const-class v5, Ljava/io/ObjectStreamClass;

    #@2d
    const-string v6, "getConstructorId"

    #@2f
    new-array v7, v3, [Ljava/lang/Class;

    #@31
    const-class v8, Ljava/lang/Class;

    #@33
    aput-object v8, v7, v2

    #@35
    .line 63
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@38
    move-result-object v5

    #@39
    .line 64
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@3c
    new-array v6, v3, [Ljava/lang/Object;

    #@3e
    .line 65
    const-class v7, Ljava/lang/Object;

    #@40
    aput-object v7, v6, v2

    #@42
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    check-cast v1, Ljava/lang/Integer;

    #@48
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@4b
    move-result v1

    #@4c
    .line 66
    const-class v5, Ljava/io/ObjectStreamClass;

    #@4e
    new-array v6, v4, [Ljava/lang/Class;

    #@50
    const-class v7, Ljava/lang/Class;

    #@52
    aput-object v7, v6, v2

    #@54
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@56
    aput-object v7, v6, v3

    #@58
    .line 67
    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@5b
    move-result-object v5

    #@5c
    .line 68
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@5f
    .line 69
    new-instance v6, Lcom/google/gson/internal/UnsafeAllocator$2;

    #@61
    invoke-direct {v6, v5, v1}, Lcom/google/gson/internal/UnsafeAllocator$2;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_64} :catch_65

    #@64
    return-object v6

    #@65
    .line 86
    :catch_65
    :try_start_65
    const-class v1, Ljava/io/ObjectInputStream;

    #@67
    new-array v4, v4, [Ljava/lang/Class;

    #@69
    const-class v5, Ljava/lang/Class;

    #@6b
    aput-object v5, v4, v2

    #@6d
    const-class v2, Ljava/lang/Class;

    #@6f
    aput-object v2, v4, v3

    #@71
    .line 87
    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@74
    move-result-object v0

    #@75
    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@78
    .line 89
    new-instance v1, Lcom/google/gson/internal/UnsafeAllocator$3;

    #@7a
    invoke-direct {v1, v0}, Lcom/google/gson/internal/UnsafeAllocator$3;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7d} :catch_7e

    #@7d
    return-object v1

    #@7e
    .line 101
    :catch_7e
    new-instance v0, Lcom/google/gson/internal/UnsafeAllocator$4;

    #@80
    invoke-direct {v0}, Lcom/google/gson/internal/UnsafeAllocator$4;-><init>()V

    #@83
    return-object v0
.end method


# virtual methods
.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

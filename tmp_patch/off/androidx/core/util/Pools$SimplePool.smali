.class public Landroidx/core/util/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    #@0
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-lez p1, :cond_a

    #@5
    .line 98
    new-array p1, p1, [Ljava/lang/Object;

    #@7
    iput-object p1, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@9
    return-void

    #@a
    .line 96
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string v0, "The max pool size must be > 0"

    #@e
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw p1
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 128
    :goto_2
    iget v2, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    #@4
    if-ge v1, v2, :cond_11

    #@6
    .line 129
    iget-object v2, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@8
    aget-object v2, v2, v1

    #@a
    if-ne v2, p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    return p1

    #@e
    :cond_e
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_2

    #@11
    :cond_11
    return v0
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 104
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    #@2
    const/4 v1, 0x0

    #@3
    if-lez v0, :cond_12

    #@5
    add-int/lit8 v2, v0, -0x1

    #@7
    .line 106
    iget-object v3, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@9
    aget-object v4, v3, v2

    #@b
    .line 107
    aput-object v1, v3, v2

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    .line 108
    iput v0, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    #@11
    return-object v4

    #@12
    :cond_12
    return-object v1
.end method

.method public release(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .line 116
    invoke-direct {p0, p1}, Landroidx/core/util/Pools$SimplePool;->isInPool(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_16

    #@6
    .line 119
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    #@8
    iget-object v1, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@a
    array-length v2, v1

    #@b
    if-ge v0, v2, :cond_14

    #@d
    .line 120
    aput-object p1, v1, v0

    #@f
    const/4 p1, 0x1

    #@10
    add-int/2addr v0, p1

    #@11
    .line 121
    iput v0, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    #@13
    return p1

    #@14
    :cond_14
    const/4 p1, 0x0

    #@15
    return p1

    #@16
    .line 117
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    #@18
    const-string v0, "Already in the pool!"

    #@1a
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw p1
.end method

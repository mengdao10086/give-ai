.class Landroidx/constraintlayout/core/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroidx/constraintlayout/core/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/constraintlayout/core/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    #@0
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-lez p1, :cond_a

    #@5
    .line 100
    new-array p1, p1, [Ljava/lang/Object;

    #@7
    iput-object p1, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@9
    return-void

    #@a
    .line 98
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
    .line 151
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    #@4
    if-ge v1, v2, :cond_11

    #@6
    .line 152
    iget-object v2, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

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
    .line 106
    iget v0, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    #@2
    const/4 v1, 0x0

    #@3
    if-lez v0, :cond_12

    #@5
    add-int/lit8 v2, v0, -0x1

    #@7
    .line 108
    iget-object v3, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@9
    aget-object v4, v3, v2

    #@b
    .line 109
    aput-object v1, v3, v2

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    .line 110
    iput v0, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

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
    .line 123
    iget v0, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@4
    array-length v2, v1

    #@5
    if-ge v0, v2, :cond_e

    #@7
    .line 124
    aput-object p1, v1, v0

    #@9
    const/4 p1, 0x1

    #@a
    add-int/2addr v0, p1

    #@b
    .line 125
    iput v0, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    #@d
    return p1

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    return p1
.end method

.method public releaseAll([Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    #@0
    .line 133
    array-length v0, p1

    #@1
    if-le p2, v0, :cond_4

    #@3
    .line 134
    array-length p2, p1

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    :goto_5
    if-ge v0, p2, :cond_19

    #@7
    .line 137
    aget-object v1, p1, v0

    #@9
    .line 143
    iget v2, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    #@b
    iget-object v3, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    #@d
    array-length v4, v3

    #@e
    if-ge v2, v4, :cond_16

    #@10
    .line 144
    aput-object v1, v3, v2

    #@12
    add-int/lit8 v2, v2, 0x1

    #@14
    .line 145
    iput v2, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    #@16
    :cond_16
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_5

    #@19
    :cond_19
    return-void
.end method

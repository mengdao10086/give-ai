.class final Landroidx/collection/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Landroidx/collection/MapCollections;


# direct methods
.method constructor <init>(Landroidx/collection/MapCollections;I)V
    .registers 4

    #@0
    .line 43
    iput-object p1, p0, Landroidx/collection/MapCollections$ArrayIterator;->this$0:Landroidx/collection/MapCollections;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    .line 41
    iput-boolean v0, p0, Landroidx/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    #@8
    .line 44
    iput p2, p0, Landroidx/collection/MapCollections$ArrayIterator;->mOffset:I

    #@a
    .line 45
    invoke-virtual {p1}, Landroidx/collection/MapCollections;->colGetSize()I

    #@d
    move-result p1

    #@e
    iput p1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mSize:I

    #@10
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    #@0
    .line 50
    iget v0, p0, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    #@2
    iget v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mSize:I

    #@4
    if-ge v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 55
    invoke-virtual {p0}, Landroidx/collection/MapCollections$ArrayIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_19

    #@6
    .line 56
    iget-object v0, p0, Landroidx/collection/MapCollections$ArrayIterator;->this$0:Landroidx/collection/MapCollections;

    #@8
    iget v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    #@a
    iget v2, p0, Landroidx/collection/MapCollections$ArrayIterator;->mOffset:I

    #@c
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .line 57
    iget v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    #@12
    const/4 v2, 0x1

    #@13
    add-int/2addr v1, v2

    #@14
    iput v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    #@16
    .line 58
    iput-boolean v2, p0, Landroidx/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    #@18
    return-object v0

    #@19
    .line 55
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    #@1b
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@1e
    throw v0
.end method

.method public remove()V
    .registers 3

    #@0
    .line 64
    iget-boolean v0, p0, Landroidx/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    #@2
    if-eqz v0, :cond_19

    #@4
    .line 67
    iget v0, p0, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    iput v0, p0, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    #@a
    .line 68
    iget v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mSize:I

    #@c
    add-int/lit8 v1, v1, -0x1

    #@e
    iput v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mSize:I

    #@10
    const/4 v1, 0x0

    #@11
    .line 69
    iput-boolean v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    #@13
    .line 70
    iget-object v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->this$0:Landroidx/collection/MapCollections;

    #@15
    invoke-virtual {v1, v0}, Landroidx/collection/MapCollections;->colRemoveAt(I)V

    #@18
    return-void

    #@19
    .line 65
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1b
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1e
    throw v0
.end method

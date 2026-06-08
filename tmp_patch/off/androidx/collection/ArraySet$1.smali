.class Landroidx/collection/ArraySet$1;
.super Landroidx/collection/MapCollections;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/ArraySet;->getCollection()Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/MapCollections<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/ArraySet;


# direct methods
.method constructor <init>(Landroidx/collection/ArraySet;)V
    .registers 2

    #@0
    .line 635
    iput-object p1, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    #@2
    invoke-direct {p0}, Landroidx/collection/MapCollections;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected colClear()V
    .registers 2

    #@0
    .line 678
    iget-object v0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    #@2
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    #@5
    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .registers 3

    #@0
    .line 643
    iget-object p2, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    #@2
    iget-object p2, p2, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    #@4
    aget-object p1, p2, p1

    #@6
    return-object p1
.end method

.method protected colGetMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    #@0
    .line 658
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "not a map"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method protected colGetSize()I
    .registers 2

    #@0
    .line 638
    iget-object v0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    #@2
    iget v0, v0, Landroidx/collection/ArraySet;->mSize:I

    #@4
    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 648
    iget-object v0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 653
    iget-object v0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    #@0
    .line 663
    iget-object p2, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    #@2
    invoke-virtual {p2, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method protected colRemoveAt(I)V
    .registers 3

    #@0
    .line 673
    iget-object v0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@5
    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .line 668
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "not a map"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

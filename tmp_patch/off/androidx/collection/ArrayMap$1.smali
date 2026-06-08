.class Landroidx/collection/ArrayMap$1;
.super Landroidx/collection/MapCollections;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/ArrayMap;->getCollection()Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/MapCollections<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/collection/ArrayMap;)V
    .registers 2

    #@0
    .line 76
    iput-object p1, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    #@2
    invoke-direct {p0}, Landroidx/collection/MapCollections;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected colClear()V
    .registers 2

    #@0
    .line 119
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    #@2
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    #@5
    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .registers 4

    #@0
    .line 84
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    #@2
    iget-object v0, v0, Landroidx/collection/ArrayMap;->mArray:[Ljava/lang/Object;

    #@4
    shl-int/lit8 p1, p1, 0x1

    #@6
    add-int/2addr p1, p2

    #@7
    aget-object p1, v0, p1

    #@9
    return-object p1
.end method

.method protected colGetMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 99
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    #@2
    return-object v0
.end method

.method protected colGetSize()I
    .registers 2

    #@0
    .line 79
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    #@2
    iget v0, v0, Landroidx/collection/ArrayMap;->mSize:I

    #@4
    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 89
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 94
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .line 104
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method protected colRemoveAt(I)V
    .registers 3

    #@0
    .line 114
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@5
    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    #@0
    .line 109
    iget-object v0, p0, Landroidx/collection/ArrayMap$1;->this$0:Landroidx/collection/ArrayMap;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

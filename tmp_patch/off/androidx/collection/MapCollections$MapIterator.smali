.class final Landroidx/collection/MapCollections$MapIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic this$0:Landroidx/collection/MapCollections;


# direct methods
.method constructor <init>(Landroidx/collection/MapCollections;)V
    .registers 3

    #@0
    .line 79
    iput-object p1, p0, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    .line 77
    iput-boolean v0, p0, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    #@8
    .line 80
    invoke-virtual {p1}, Landroidx/collection/MapCollections;->colGetSize()I

    #@b
    move-result p1

    #@c
    add-int/lit8 p1, p1, -0x1

    #@e
    iput p1, p0, Landroidx/collection/MapCollections$MapIterator;->mEnd:I

    #@10
    const/4 p1, -0x1

    #@11
    .line 81
    iput p1, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    .line 137
    iget-boolean v0, p0, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    #@2
    if-eqz v0, :cond_33

    #@4
    .line 141
    instance-of v0, p1, Ljava/util/Map$Entry;

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_a

    #@9
    return v1

    #@a
    .line 144
    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    #@c
    .line 145
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    iget-object v2, p0, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    #@12
    iget v3, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@14
    invoke-virtual {v2, v3, v1}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    invoke-static {v0, v2}, Landroidx/collection/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_32

    #@1e
    .line 146
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@21
    move-result-object p1

    #@22
    iget-object v0, p0, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    #@24
    iget v2, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@26
    const/4 v3, 0x1

    #@27
    invoke-virtual {v0, v2, v3}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    invoke-static {p1, v0}, Landroidx/collection/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2e
    move-result p1

    #@2f
    if-eqz p1, :cond_32

    #@31
    move v1, v3

    #@32
    :cond_32
    return v1

    #@33
    .line 138
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    #@35
    const-string v0, "This container does not support retaining Map.Entry objects"

    #@37
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3a
    throw p1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .line 110
    iget-boolean v0, p0, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    #@2
    if-eqz v0, :cond_e

    #@4
    .line 114
    iget-object v0, p0, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    #@6
    iget v1, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 111
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    const-string v1, "This container does not support retaining Map.Entry objects"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .line 119
    iget-boolean v0, p0, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    #@2
    if-eqz v0, :cond_e

    #@4
    .line 123
    iget-object v0, p0, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    #@6
    iget v1, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 120
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    const-string v1, "This container does not support retaining Map.Entry objects"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
.end method

.method public hasNext()Z
    .registers 3

    #@0
    .line 86
    iget v0, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@2
    iget v1, p0, Landroidx/collection/MapCollections$MapIterator;->mEnd:I

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

.method public hashCode()I
    .registers 6

    #@0
    .line 151
    iget-boolean v0, p0, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    #@2
    if-eqz v0, :cond_27

    #@4
    .line 155
    iget-object v0, p0, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    #@6
    iget v1, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    .line 156
    iget-object v1, p0, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    #@f
    iget v3, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@11
    const/4 v4, 0x1

    #@12
    invoke-virtual {v1, v3, v4}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    if-nez v0, :cond_1a

    #@18
    move v0, v2

    #@19
    goto :goto_1e

    #@1a
    .line 157
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@1d
    move-result v0

    #@1e
    :goto_1e
    if-nez v1, :cond_21

    #@20
    goto :goto_25

    #@21
    .line 158
    :cond_21
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@24
    move-result v2

    #@25
    :goto_25
    xor-int/2addr v0, v2

    #@26
    return v0

    #@27
    .line 152
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    #@29
    const-string v1, "This container does not support retaining Map.Entry objects"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    #@0
    .line 74
    invoke-virtual {p0}, Landroidx/collection/MapCollections$MapIterator;->next()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 91
    invoke-virtual {p0}, Landroidx/collection/MapCollections$MapIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 92
    iget v0, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@8
    const/4 v1, 0x1

    #@9
    add-int/2addr v0, v1

    #@a
    iput v0, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@c
    .line 93
    iput-boolean v1, p0, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    #@e
    return-object p0

    #@f
    .line 91
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    #@11
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@14
    throw v0
.end method

.method public remove()V
    .registers 3

    #@0
    .line 99
    iget-boolean v0, p0, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    #@2
    if-eqz v0, :cond_1b

    #@4
    .line 102
    iget-object v0, p0, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    #@6
    iget v1, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@8
    invoke-virtual {v0, v1}, Landroidx/collection/MapCollections;->colRemoveAt(I)V

    #@b
    .line 103
    iget v0, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    iput v0, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@11
    .line 104
    iget v0, p0, Landroidx/collection/MapCollections$MapIterator;->mEnd:I

    #@13
    add-int/lit8 v0, v0, -0x1

    #@15
    iput v0, p0, Landroidx/collection/MapCollections$MapIterator;->mEnd:I

    #@17
    const/4 v0, 0x0

    #@18
    .line 105
    iput-boolean v0, p0, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    #@1a
    return-void

    #@1b
    .line 100
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1d
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@20
    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .line 128
    iget-boolean v0, p0, Landroidx/collection/MapCollections$MapIterator;->mEntryValid:Z

    #@2
    if-eqz v0, :cond_d

    #@4
    .line 132
    iget-object v0, p0, Landroidx/collection/MapCollections$MapIterator;->this$0:Landroidx/collection/MapCollections;

    #@6
    iget v1, p0, Landroidx/collection/MapCollections$MapIterator;->mIndex:I

    #@8
    invoke-virtual {v0, v1, p1}, Landroidx/collection/MapCollections;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    return-object p1

    #@d
    .line 129
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    #@f
    const-string v0, "This container does not support retaining Map.Entry objects"

    #@11
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Landroidx/collection/MapCollections$MapIterator;->getKey()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, "="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0}, Landroidx/collection/MapCollections$MapIterator;->getValue()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

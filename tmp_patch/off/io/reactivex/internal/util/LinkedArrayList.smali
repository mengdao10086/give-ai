.class public Lio/reactivex/internal/util/LinkedArrayList;
.super Ljava/lang/Object;
.source "LinkedArrayList.java"


# instance fields
.field final capacityHint:I

.field head:[Ljava/lang/Object;

.field indexInTail:I

.field volatile size:I

.field tail:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    #@5
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 6

    #@0
    .line 54
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-nez v0, :cond_16

    #@6
    .line 55
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    #@8
    add-int/2addr v0, v2

    #@9
    new-array v0, v0, [Ljava/lang/Object;

    #@b
    iput-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    #@d
    .line 56
    iput-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    #@f
    .line 57
    aput-object p1, v0, v1

    #@11
    .line 58
    iput v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    #@13
    .line 59
    iput v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    #@15
    goto :goto_3c

    #@16
    .line 62
    :cond_16
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    #@18
    iget v3, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    #@1a
    if-ne v0, v3, :cond_30

    #@1c
    add-int/lit8 v0, v3, 0x1

    #@1e
    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    #@20
    .line 64
    aput-object p1, v0, v1

    #@22
    .line 65
    iget-object p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    #@24
    aput-object v0, p1, v3

    #@26
    .line 66
    iput-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    #@28
    .line 67
    iput v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    #@2a
    .line 68
    iget p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    #@2c
    add-int/2addr p1, v2

    #@2d
    iput p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    #@2f
    goto :goto_3c

    #@30
    .line 70
    :cond_30
    iget-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    #@32
    aput-object p1, v1, v0

    #@34
    add-int/2addr v0, v2

    #@35
    .line 71
    iput v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    #@37
    .line 72
    iget p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    #@39
    add-int/2addr p1, v2

    #@3a
    iput p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    #@3c
    :goto_3c
    return-void
.end method

.method public head()[Ljava/lang/Object;
    .registers 2

    #@0
    .line 80
    iget-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public size()I
    .registers 2

    #@0
    .line 88
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    #@0
    .line 93
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    #@2
    .line 94
    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    #@4
    .line 95
    new-instance v2, Ljava/util/ArrayList;

    #@6
    add-int/lit8 v3, v1, 0x1

    #@8
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 97
    invoke-virtual {p0}, Lio/reactivex/internal/util/LinkedArrayList;->head()[Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    const/4 v4, 0x0

    #@10
    move v5, v4

    #@11
    move v6, v5

    #@12
    :cond_12
    :goto_12
    if-ge v5, v1, :cond_27

    #@14
    .line 101
    aget-object v7, v3, v6

    #@16
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    add-int/lit8 v5, v5, 0x1

    #@1b
    add-int/lit8 v6, v6, 0x1

    #@1d
    if-ne v6, v0, :cond_12

    #@1f
    .line 105
    aget-object v3, v3, v0

    #@21
    check-cast v3, [Ljava/lang/Object;

    #@23
    check-cast v3, [Ljava/lang/Object;

    #@25
    move v6, v4

    #@26
    goto :goto_12

    #@27
    .line 109
    :cond_27
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

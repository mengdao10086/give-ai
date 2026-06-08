.class Landroidx/recyclerview/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/OpReorderer$Callback;)V
    .registers 2

    #@0
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    iput-object p1, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    #@5
    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    #@0
    .line 214
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    sub-int/2addr v0, v1

    #@6
    const/4 v2, 0x0

    #@7
    :goto_7
    if-ltz v0, :cond_1c

    #@9
    .line 215
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@f
    .line 216
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@11
    const/16 v4, 0x8

    #@13
    if-ne v3, v4, :cond_18

    #@15
    if-eqz v2, :cond_19

    #@17
    return v0

    #@18
    :cond_18
    move v2, v1

    #@19
    :cond_19
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_7

    #@1c
    :cond_1c
    const/4 p1, -0x1

    #@1d
    return p1
.end method

.method private swapMoveAdd(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    #@0
    .line 157
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@2
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@4
    if-ge v0, v1, :cond_8

    #@6
    const/4 v0, -0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    .line 160
    :goto_9
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@b
    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@d
    if-ge v1, v2, :cond_11

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    .line 163
    :cond_11
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@13
    iget v2, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@15
    if-gt v1, v2, :cond_1e

    #@17
    .line 164
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@19
    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@1b
    add-int/2addr v1, v2

    #@1c
    iput v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@1e
    .line 166
    :cond_1e
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@20
    iget v2, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@22
    if-gt v1, v2, :cond_2b

    #@24
    .line 167
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@26
    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@28
    add-int/2addr v1, v2

    #@29
    iput v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@2b
    .line 169
    :cond_2b
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@2d
    add-int/2addr v1, v0

    #@2e
    iput v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@30
    .line 170
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 171
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@36
    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 39
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    move-object v4, v0

    #@5
    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@7
    .line 40
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    move-object v6, v0

    #@c
    check-cast v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@e
    .line 41
    iget v0, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@10
    const/4 v1, 0x1

    #@11
    if-eq v0, v1, :cond_2a

    #@13
    const/4 v1, 0x2

    #@14
    if-eq v0, v1, :cond_22

    #@16
    const/4 v1, 0x4

    #@17
    if-eq v0, v1, :cond_1a

    #@19
    goto :goto_31

    #@1a
    :cond_1a
    move-object v1, p0

    #@1b
    move-object v2, p1

    #@1c
    move v3, p2

    #@1d
    move v5, p3

    #@1e
    .line 49
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@21
    goto :goto_31

    #@22
    :cond_22
    move-object v1, p0

    #@23
    move-object v2, p1

    #@24
    move v3, p2

    #@25
    move v5, p3

    #@26
    .line 43
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@29
    goto :goto_31

    #@2a
    :cond_2a
    move-object v1, p0

    #@2b
    move-object v2, p1

    #@2c
    move v3, p2

    #@2d
    move v5, p3

    #@2e
    .line 46
    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@31
    :goto_31
    return-void
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 33
    :goto_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_d

    #@7
    add-int/lit8 v1, v0, 0x1

    #@9
    .line 34
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    #@c
    goto :goto_0

    #@d
    :cond_d
    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    #@0
    .line 61
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@2
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    if-ge v0, v1, :cond_1c

    #@8
    .line 63
    iget v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@a
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@c
    if-ne v0, v1, :cond_1a

    #@e
    iget v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@10
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@12
    iget v4, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@14
    sub-int/2addr v1, v4

    #@15
    if-ne v0, v1, :cond_1a

    #@17
    move v0, v3

    #@18
    move v3, v2

    #@19
    goto :goto_30

    #@1a
    :cond_1a
    move v0, v3

    #@1b
    goto :goto_30

    #@1c
    .line 69
    :cond_1c
    iget v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@1e
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@20
    add-int/2addr v1, v2

    #@21
    if-ne v0, v1, :cond_2f

    #@23
    iget v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@25
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@27
    iget v4, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@29
    sub-int/2addr v1, v4

    #@2a
    if-ne v0, v1, :cond_2f

    #@2c
    move v0, v2

    #@2d
    move v3, v0

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    move v0, v2

    #@30
    .line 76
    :goto_30
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@32
    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@34
    const/4 v5, 0x2

    #@35
    if-ge v1, v4, :cond_3d

    #@37
    .line 77
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@39
    sub-int/2addr v1, v2

    #@3a
    iput v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@3c
    goto :goto_5c

    #@3d
    .line 78
    :cond_3d
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@3f
    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@41
    iget v6, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@43
    add-int/2addr v4, v6

    #@44
    if-ge v1, v4, :cond_5c

    #@46
    .line 80
    iget p2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@48
    sub-int/2addr p2, v2

    #@49
    iput p2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@4b
    .line 81
    iput v5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@4d
    .line 82
    iput v2, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@4f
    .line 83
    iget p2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@51
    if-nez p2, :cond_5b

    #@53
    .line 84
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@56
    .line 85
    iget-object p1, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    #@58
    invoke-interface {p1, p5}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@5b
    :cond_5b
    return-void

    #@5c
    .line 92
    :cond_5c
    :goto_5c
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@5e
    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@60
    const/4 v6, 0x0

    #@61
    if-gt v1, v4, :cond_69

    #@63
    .line 93
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@65
    add-int/2addr v1, v2

    #@66
    iput v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@68
    goto :goto_8a

    #@69
    .line 94
    :cond_69
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@6b
    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@6d
    iget v7, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@6f
    add-int/2addr v4, v7

    #@70
    if-ge v1, v4, :cond_8a

    #@72
    .line 95
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@74
    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@76
    add-int/2addr v1, v4

    #@77
    iget v4, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@79
    sub-int/2addr v1, v4

    #@7a
    .line 97
    iget-object v4, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    #@7c
    iget v7, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@7e
    add-int/2addr v7, v2

    #@7f
    invoke-interface {v4, v5, v7, v1, v6}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@82
    move-result-object v6

    #@83
    .line 98
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@85
    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@87
    sub-int/2addr v1, v2

    #@88
    iput v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@8a
    :cond_8a
    :goto_8a
    if-eqz v3, :cond_98

    #@8c
    .line 103
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@8f
    .line 104
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@92
    .line 105
    iget-object p1, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    #@94
    invoke-interface {p1, p3}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@97
    return-void

    #@98
    :cond_98
    if-eqz v0, :cond_d1

    #@9a
    if-eqz v6, :cond_b6

    #@9c
    .line 112
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@9e
    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@a0
    if-le v0, v1, :cond_a9

    #@a2
    .line 113
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@a4
    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@a6
    sub-int/2addr v0, v1

    #@a7
    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@a9
    .line 115
    :cond_a9
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@ab
    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@ad
    if-le v0, v1, :cond_b6

    #@af
    .line 116
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@b1
    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@b3
    sub-int/2addr v0, v1

    #@b4
    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@b6
    .line 119
    :cond_b6
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@b8
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@ba
    if-le v0, v1, :cond_c3

    #@bc
    .line 120
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@be
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@c0
    sub-int/2addr v0, v1

    #@c1
    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@c3
    .line 122
    :cond_c3
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@c5
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@c7
    if-le v0, v1, :cond_107

    #@c9
    .line 123
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@cb
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@cd
    sub-int/2addr v0, v1

    #@ce
    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@d0
    goto :goto_107

    #@d1
    :cond_d1
    if-eqz v6, :cond_ed

    #@d3
    .line 127
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@d5
    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@d7
    if-lt v0, v1, :cond_e0

    #@d9
    .line 128
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@db
    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@dd
    sub-int/2addr v0, v1

    #@de
    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@e0
    .line 130
    :cond_e0
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@e2
    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@e4
    if-lt v0, v1, :cond_ed

    #@e6
    .line 131
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@e8
    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@ea
    sub-int/2addr v0, v1

    #@eb
    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@ed
    .line 134
    :cond_ed
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@ef
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@f1
    if-lt v0, v1, :cond_fa

    #@f3
    .line 135
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@f5
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@f7
    sub-int/2addr v0, v1

    #@f8
    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@fa
    .line 137
    :cond_fa
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@fc
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@fe
    if-lt v0, v1, :cond_107

    #@100
    .line 138
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@102
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@104
    sub-int/2addr v0, v1

    #@105
    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@107
    .line 142
    :cond_107
    :goto_107
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@10a
    .line 143
    iget p5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@10c
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@10e
    if-eq p5, v0, :cond_114

    #@110
    .line 144
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@113
    goto :goto_117

    #@114
    .line 146
    :cond_114
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@117
    :goto_117
    if-eqz v6, :cond_11c

    #@119
    .line 149
    invoke-interface {p1, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@11c
    :cond_11c
    return-void
.end method

.method swapMoveUpdate(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    #@0
    .line 179
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@2
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@4
    const/4 v2, 0x4

    #@5
    const/4 v3, 0x1

    #@6
    const/4 v4, 0x0

    #@7
    if-ge v0, v1, :cond_f

    #@9
    .line 180
    iget v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@b
    sub-int/2addr v0, v3

    #@c
    iput v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@e
    goto :goto_28

    #@f
    .line 181
    :cond_f
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@11
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@13
    iget v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@15
    add-int/2addr v1, v5

    #@16
    if-ge v0, v1, :cond_28

    #@18
    .line 183
    iget v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@1a
    sub-int/2addr v0, v3

    #@1b
    iput v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@1d
    .line 184
    iget-object v0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    #@1f
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@21
    iget-object v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@23
    invoke-interface {v0, v2, v1, v3, v5}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@26
    move-result-object v0

    #@27
    goto :goto_29

    #@28
    :cond_28
    :goto_28
    move-object v0, v4

    #@29
    .line 187
    :goto_29
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@2b
    iget v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@2d
    if-gt v1, v5, :cond_35

    #@2f
    .line 188
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@31
    add-int/2addr v1, v3

    #@32
    iput v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@34
    goto :goto_56

    #@35
    .line 189
    :cond_35
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@37
    iget v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@39
    iget v6, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@3b
    add-int/2addr v5, v6

    #@3c
    if-ge v1, v5, :cond_56

    #@3e
    .line 190
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@40
    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@42
    add-int/2addr v1, v4

    #@43
    iget v4, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@45
    sub-int/2addr v1, v4

    #@46
    .line 192
    iget-object v4, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    #@48
    iget v5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@4a
    add-int/2addr v5, v3

    #@4b
    iget-object v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@4d
    invoke-interface {v4, v2, v5, v1, v3}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@50
    move-result-object v4

    #@51
    .line 195
    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@53
    sub-int/2addr v2, v1

    #@54
    iput v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@56
    .line 197
    :cond_56
    :goto_56
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 198
    iget p3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@5b
    if-lez p3, :cond_61

    #@5d
    .line 199
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@60
    goto :goto_69

    #@61
    .line 201
    :cond_61
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@64
    .line 202
    iget-object p3, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    #@66
    invoke-interface {p3, p5}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@69
    :goto_69
    if-eqz v0, :cond_6e

    #@6b
    .line 205
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@6e
    :cond_6e
    if-eqz v4, :cond_73

    #@70
    .line 208
    invoke-interface {p1, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@73
    :cond_73
    return-void
.end method

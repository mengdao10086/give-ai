.class Landroidx/recyclerview/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AdapterHelper$Callback;,
        Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 72
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/AdapterHelper;-><init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;Z)V

    #@4
    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;Z)V
    .registers 5

    #@0
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    #@5
    const/16 v1, 0x1e

    #@7
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    #@a
    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    #@c
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@13
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@1a
    const/4 v0, 0x0

    #@1b
    .line 69
    iput v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    #@1d
    .line 76
    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@1f
    .line 77
    iput-boolean p2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mDisableRecycler:Z

    #@21
    .line 78
    new-instance p1, Landroidx/recyclerview/widget/OpReorderer;

    #@23
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Landroidx/recyclerview/widget/OpReorderer$Callback;)V

    #@26
    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

    #@28
    return-void
.end method

.method private applyAdd(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    #@0
    .line 432
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@3
    return-void
.end method

.method private applyMove(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    #@0
    .line 130
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@3
    return-void
.end method

.method private applyRemove(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 12

    #@0
    .line 134
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@2
    .line 136
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@4
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@6
    add-int/2addr v1, v2

    #@7
    .line 138
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@9
    const/4 v3, 0x0

    #@a
    const/4 v4, -0x1

    #@b
    move v5, v3

    #@c
    :goto_c
    const/4 v6, 0x0

    #@d
    const/4 v7, 0x2

    #@e
    if-ge v2, v1, :cond_46

    #@10
    .line 140
    iget-object v8, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@12
    invoke-interface {v8, v2}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@15
    move-result-object v8

    #@16
    const/4 v9, 0x1

    #@17
    if-nez v8, :cond_2e

    #@19
    .line 141
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    #@1c
    move-result v8

    #@1d
    if-eqz v8, :cond_20

    #@1f
    goto :goto_2e

    #@20
    :cond_20
    if-ne v4, v9, :cond_2b

    #@22
    .line 162
    invoke-virtual {p0, v7, v0, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@25
    move-result-object v4

    #@26
    .line 163
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@29
    move v4, v9

    #@2a
    goto :goto_2c

    #@2b
    :cond_2b
    move v4, v3

    #@2c
    :goto_2c
    move v6, v3

    #@2d
    goto :goto_3b

    #@2e
    :cond_2e
    :goto_2e
    if-nez v4, :cond_39

    #@30
    .line 151
    invoke-virtual {p0, v7, v0, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@33
    move-result-object v4

    #@34
    .line 152
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@37
    move v4, v9

    #@38
    goto :goto_3a

    #@39
    :cond_39
    move v4, v3

    #@3a
    :goto_3a
    move v6, v9

    #@3b
    :goto_3b
    if-eqz v4, :cond_41

    #@3d
    sub-int/2addr v2, v5

    #@3e
    sub-int/2addr v1, v5

    #@3f
    move v5, v9

    #@40
    goto :goto_43

    #@41
    :cond_41
    add-int/lit8 v5, v5, 0x1

    #@43
    :goto_43
    add-int/2addr v2, v9

    #@44
    move v4, v6

    #@45
    goto :goto_c

    #@46
    .line 176
    :cond_46
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@48
    if-eq v5, v1, :cond_51

    #@4a
    .line 177
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@4d
    .line 178
    invoke-virtual {p0, v7, v0, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@50
    move-result-object p1

    #@51
    :cond_51
    if-nez v4, :cond_57

    #@53
    .line 181
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@56
    goto :goto_5a

    #@57
    .line 183
    :cond_57
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@5a
    :goto_5a
    return-void
.end method

.method private applyUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 11

    #@0
    .line 188
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@2
    .line 190
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@4
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@6
    add-int/2addr v1, v2

    #@7
    .line 192
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@9
    const/4 v3, 0x0

    #@a
    const/4 v4, -0x1

    #@b
    move v5, v3

    #@c
    :goto_c
    const/4 v6, 0x4

    #@d
    if-ge v2, v1, :cond_40

    #@f
    .line 193
    iget-object v7, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@11
    invoke-interface {v7, v2}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@14
    move-result-object v7

    #@15
    const/4 v8, 0x1

    #@16
    if-nez v7, :cond_2e

    #@18
    .line 194
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_1f

    #@1e
    goto :goto_2e

    #@1f
    :cond_1f
    if-ne v4, v8, :cond_2c

    #@21
    .line 205
    iget-object v4, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@23
    invoke-virtual {p0, v6, v0, v5, v4}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@26
    move-result-object v0

    #@27
    .line 207
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@2a
    move v0, v2

    #@2b
    move v5, v3

    #@2c
    :cond_2c
    move v4, v3

    #@2d
    goto :goto_3c

    #@2e
    :cond_2e
    :goto_2e
    if-nez v4, :cond_3b

    #@30
    .line 196
    iget-object v4, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@32
    invoke-virtual {p0, v6, v0, v5, v4}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@35
    move-result-object v0

    #@36
    .line 198
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@39
    move v0, v2

    #@3a
    move v5, v3

    #@3b
    :cond_3b
    move v4, v8

    #@3c
    :goto_3c
    add-int/2addr v5, v8

    #@3d
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_c

    #@40
    .line 215
    :cond_40
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@42
    if-eq v5, v1, :cond_4d

    #@44
    .line 216
    iget-object v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@46
    .line 217
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@49
    .line 218
    invoke-virtual {p0, v6, v0, v5, v1}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@4c
    move-result-object p1

    #@4d
    :cond_4d
    if-nez v4, :cond_53

    #@4f
    .line 221
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@52
    goto :goto_56

    #@53
    .line 223
    :cond_53
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@56
    :goto_56
    return-void
.end method

.method private canFindInPreLayout(I)Z
    .registers 9

    #@0
    .line 411
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_40

    #@a
    .line 413
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@12
    .line 414
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@14
    const/16 v5, 0x8

    #@16
    const/4 v6, 0x1

    #@17
    if-ne v4, v5, :cond_24

    #@19
    .line 415
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@1b
    add-int/lit8 v4, v2, 0x1

    #@1d
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    #@20
    move-result v3

    #@21
    if-ne v3, p1, :cond_3d

    #@23
    return v6

    #@24
    .line 418
    :cond_24
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@26
    if-ne v4, v6, :cond_3d

    #@28
    .line 420
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@2a
    iget v5, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@2c
    add-int/2addr v4, v5

    #@2d
    .line 421
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@2f
    :goto_2f
    if-ge v3, v4, :cond_3d

    #@31
    add-int/lit8 v5, v2, 0x1

    #@33
    .line 422
    invoke-virtual {p0, v3, v5}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    #@36
    move-result v5

    #@37
    if-ne v5, p1, :cond_3a

    #@39
    return v6

    #@3a
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    #@3c
    goto :goto_2f

    #@3d
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_8

    #@40
    :cond_40
    return v1
.end method

.method private dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 14

    #@0
    .line 231
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_89

    #@5
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@7
    const/16 v2, 0x8

    #@9
    if-eq v0, v2, :cond_89

    #@b
    .line 245
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@d
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@f
    invoke-direct {p0, v0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    #@12
    move-result v0

    #@13
    .line 250
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@15
    .line 252
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@17
    const/4 v4, 0x2

    #@18
    const/4 v5, 0x4

    #@19
    const/4 v6, 0x0

    #@1a
    if-eq v3, v4, :cond_35

    #@1c
    if-ne v3, v5, :cond_20

    #@1e
    move v3, v1

    #@1f
    goto :goto_36

    #@20
    .line 260
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    const-string v2, "op should be remove or update."

    #@26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object p1

    #@2d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object p1

    #@31
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    :cond_35
    move v3, v6

    #@36
    :goto_36
    move v7, v1

    #@37
    move v8, v7

    #@38
    .line 262
    :goto_38
    iget v9, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@3a
    if-ge v7, v9, :cond_75

    #@3c
    .line 263
    iget v9, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@3e
    mul-int v10, v3, v7

    #@40
    add-int/2addr v9, v10

    #@41
    .line 264
    iget v10, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@43
    invoke-direct {p0, v9, v10}, Landroidx/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    #@46
    move-result v9

    #@47
    .line 269
    iget v10, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@49
    if-eq v10, v4, :cond_55

    #@4b
    if-eq v10, v5, :cond_4f

    #@4d
    :cond_4d
    move v10, v6

    #@4e
    goto :goto_58

    #@4f
    :cond_4f
    add-int/lit8 v10, v0, 0x1

    #@51
    if-ne v9, v10, :cond_4d

    #@53
    :goto_53
    move v10, v1

    #@54
    goto :goto_58

    #@55
    :cond_55
    if-ne v9, v0, :cond_4d

    #@57
    goto :goto_53

    #@58
    :goto_58
    if-eqz v10, :cond_5d

    #@5a
    add-int/lit8 v8, v8, 0x1

    #@5c
    goto :goto_72

    #@5d
    .line 281
    :cond_5d
    iget v10, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@5f
    iget-object v11, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@61
    invoke-virtual {p0, v10, v0, v8, v11}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@64
    move-result-object v0

    #@65
    .line 285
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    #@68
    .line 286
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@6b
    .line 287
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@6d
    if-ne v0, v5, :cond_70

    #@6f
    add-int/2addr v2, v8

    #@70
    :cond_70
    move v8, v1

    #@71
    move v0, v9

    #@72
    :goto_72
    add-int/lit8 v7, v7, 0x1

    #@74
    goto :goto_38

    #@75
    .line 294
    :cond_75
    iget-object v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@77
    .line 295
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@7a
    if-lez v8, :cond_88

    #@7c
    .line 297
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@7e
    invoke-virtual {p0, p1, v0, v8, v1}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@81
    move-result-object p1

    #@82
    .line 301
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    #@85
    .line 302
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@88
    :cond_88
    return-void

    #@89
    .line 232
    :cond_89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@8b
    const-string v0, "should not dispatch add or move for pre layout"

    #@8d
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@90
    throw p1
.end method

.method private postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 5

    #@0
    .line 439
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 440
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@7
    const/4 v1, 0x1

    #@8
    if-eq v0, v1, :cond_49

    #@a
    const/4 v1, 0x2

    #@b
    if-eq v0, v1, :cond_3f

    #@d
    const/4 v1, 0x4

    #@e
    if-eq v0, v1, :cond_33

    #@10
    const/16 v1, 0x8

    #@12
    if-ne v0, v1, :cond_1e

    #@14
    .line 445
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@16
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@18
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@1a
    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    #@1d
    goto :goto_52

    #@1e
    .line 455
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    const-string v2, "Unknown update op type for "

    #@24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p1

    #@2b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object p1

    #@2f
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 452
    :cond_33
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@35
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@37
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@39
    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@3b
    invoke-interface {v0, v1, v2, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    #@3e
    goto :goto_52

    #@3f
    .line 448
    :cond_3f
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@41
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@43
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@45
    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    #@48
    goto :goto_52

    #@49
    .line 442
    :cond_49
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@4b
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@4d
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@4f
    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    #@52
    :goto_52
    return-void
.end method

.method private updatePositionWithPostponed(II)I
    .registers 9

    #@0
    .line 330
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    sub-int/2addr v0, v1

    #@8
    :goto_8
    const/16 v2, 0x8

    #@a
    if-ltz v0, :cond_99

    #@c
    .line 332
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@14
    .line 333
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@16
    const/4 v5, 0x2

    #@17
    if-ne v4, v2, :cond_72

    #@19
    .line 335
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@1b
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@1d
    if-ge v2, v4, :cond_24

    #@1f
    .line 336
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@21
    .line 337
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@23
    goto :goto_28

    #@24
    .line 339
    :cond_24
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@26
    .line 340
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@28
    :goto_28
    if-lt p1, v2, :cond_54

    #@2a
    if-gt p1, v4, :cond_54

    #@2c
    .line 344
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@2e
    if-ne v2, v4, :cond_42

    #@30
    if-ne p2, v1, :cond_38

    #@32
    .line 346
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@34
    add-int/2addr v2, v1

    #@35
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@37
    goto :goto_3f

    #@38
    :cond_38
    if-ne p2, v5, :cond_3f

    #@3a
    .line 348
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@3c
    sub-int/2addr v2, v1

    #@3d
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@3f
    :cond_3f
    :goto_3f
    add-int/lit8 p1, p1, 0x1

    #@41
    goto :goto_95

    #@42
    :cond_42
    if-ne p2, v1, :cond_4a

    #@44
    .line 354
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@46
    add-int/2addr v2, v1

    #@47
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@49
    goto :goto_51

    #@4a
    :cond_4a
    if-ne p2, v5, :cond_51

    #@4c
    .line 356
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@4e
    sub-int/2addr v2, v1

    #@4f
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@51
    :cond_51
    :goto_51
    add-int/lit8 p1, p1, -0x1

    #@53
    goto :goto_95

    #@54
    .line 361
    :cond_54
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@56
    if-ge p1, v2, :cond_95

    #@58
    if-ne p2, v1, :cond_65

    #@5a
    .line 364
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@5c
    add-int/2addr v2, v1

    #@5d
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@5f
    .line 365
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@61
    add-int/2addr v2, v1

    #@62
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@64
    goto :goto_95

    #@65
    :cond_65
    if-ne p2, v5, :cond_95

    #@67
    .line 367
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@69
    sub-int/2addr v2, v1

    #@6a
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@6c
    .line 368
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@6e
    sub-int/2addr v2, v1

    #@6f
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@71
    goto :goto_95

    #@72
    .line 372
    :cond_72
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@74
    if-gt v2, p1, :cond_86

    #@76
    .line 373
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@78
    if-ne v2, v1, :cond_7e

    #@7a
    .line 374
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@7c
    sub-int/2addr p1, v2

    #@7d
    goto :goto_95

    #@7e
    .line 375
    :cond_7e
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@80
    if-ne v2, v5, :cond_95

    #@82
    .line 376
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@84
    add-int/2addr p1, v2

    #@85
    goto :goto_95

    #@86
    :cond_86
    if-ne p2, v1, :cond_8e

    #@88
    .line 380
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@8a
    add-int/2addr v2, v1

    #@8b
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@8d
    goto :goto_95

    #@8e
    :cond_8e
    if-ne p2, v5, :cond_95

    #@90
    .line 382
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@92
    sub-int/2addr v2, v1

    #@93
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@95
    :cond_95
    :goto_95
    add-int/lit8 v0, v0, -0x1

    #@97
    goto/16 :goto_8

    #@99
    .line 395
    :cond_99
    iget-object p2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@9b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@9e
    move-result p2

    #@9f
    sub-int/2addr p2, v1

    #@a0
    :goto_a0
    if-ltz p2, :cond_d0

    #@a2
    .line 396
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@a4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a7
    move-result-object v0

    #@a8
    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@aa
    .line 397
    iget v1, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@ac
    if-ne v1, v2, :cond_c1

    #@ae
    .line 398
    iget v1, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@b0
    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@b2
    if-eq v1, v3, :cond_b8

    #@b4
    iget v1, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@b6
    if-gez v1, :cond_cd

    #@b8
    .line 399
    :cond_b8
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@ba
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@bd
    .line 400
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@c0
    goto :goto_cd

    #@c1
    .line 402
    :cond_c1
    iget v1, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@c3
    if-gtz v1, :cond_cd

    #@c5
    .line 403
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@c7
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@ca
    .line 404
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@cd
    :cond_cd
    :goto_cd
    add-int/lit8 p2, p2, -0x1

    #@cf
    goto :goto_a0

    #@d0
    :cond_d0
    return p1
.end method


# virtual methods
.method varargs addUpdateOp([Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)Landroidx/recyclerview/widget/AdapterHelper;
    .registers 3

    #@0
    .line 82
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@2
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@5
    return-object p0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .registers 7

    #@0
    .line 588
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_4d

    #@9
    .line 590
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@11
    .line 591
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@13
    const/4 v4, 0x1

    #@14
    if-eq v3, v4, :cond_43

    #@16
    const/4 v4, 0x2

    #@17
    if-eq v3, v4, :cond_32

    #@19
    const/16 v4, 0x8

    #@1b
    if-eq v3, v4, :cond_1e

    #@1d
    goto :goto_4a

    #@1e
    .line 607
    :cond_1e
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@20
    if-ne v3, p1, :cond_25

    #@22
    .line 608
    iget p1, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@24
    goto :goto_4a

    #@25
    .line 610
    :cond_25
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@27
    if-ge v3, p1, :cond_2b

    #@29
    add-int/lit8 p1, p1, -0x1

    #@2b
    .line 613
    :cond_2b
    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@2d
    if-gt v2, p1, :cond_4a

    #@2f
    add-int/lit8 p1, p1, 0x1

    #@31
    goto :goto_4a

    #@32
    .line 598
    :cond_32
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@34
    if-gt v3, p1, :cond_4a

    #@36
    .line 599
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@38
    iget v4, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@3a
    add-int/2addr v3, v4

    #@3b
    if-le v3, p1, :cond_3f

    #@3d
    const/4 p1, -0x1

    #@3e
    return p1

    #@3f
    .line 603
    :cond_3f
    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@41
    sub-int/2addr p1, v2

    #@42
    goto :goto_4a

    #@43
    .line 593
    :cond_43
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@45
    if-gt v3, p1, :cond_4a

    #@47
    .line 594
    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@49
    add-int/2addr p1, v2

    #@4a
    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_7

    #@4d
    :cond_4d
    return p1
.end method

.method consumePostponedUpdates()V
    .registers 6

    #@0
    .line 119
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_1a

    #@a
    .line 121
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@c
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@14
    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@17
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_8

    #@1a
    .line 123
    :cond_1a
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    #@1f
    .line 124
    iput v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    #@21
    return-void
.end method

.method consumeUpdatesInOnePass()V
    .registers 8

    #@0
    .line 557
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    #@3
    .line 558
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    move v2, v1

    #@b
    :goto_b
    if-ge v2, v0, :cond_6c

    #@d
    .line 560
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@15
    .line 561
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@17
    const/4 v5, 0x1

    #@18
    if-eq v4, v5, :cond_54

    #@1a
    const/4 v5, 0x2

    #@1b
    if-eq v4, v5, :cond_45

    #@1d
    const/4 v5, 0x4

    #@1e
    if-eq v4, v5, :cond_34

    #@20
    const/16 v5, 0x8

    #@22
    if-eq v4, v5, :cond_25

    #@24
    goto :goto_62

    #@25
    .line 575
    :cond_25
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@27
    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@2a
    .line 576
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@2c
    iget v5, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@2e
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@30
    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    #@33
    goto :goto_62

    #@34
    .line 571
    :cond_34
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@36
    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@39
    .line 572
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@3b
    iget v5, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@3d
    iget v6, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@3f
    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@41
    invoke-interface {v4, v5, v6, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    #@44
    goto :goto_62

    #@45
    .line 567
    :cond_45
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@47
    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@4a
    .line 568
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@4c
    iget v5, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@4e
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@50
    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    #@53
    goto :goto_62

    #@54
    .line 563
    :cond_54
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@56
    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@59
    .line 564
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@5b
    iget v5, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@5d
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@5f
    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    #@62
    .line 579
    :goto_62
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    #@64
    if-eqz v3, :cond_69

    #@66
    .line 580
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    #@69
    :cond_69
    add-int/lit8 v2, v2, 0x1

    #@6b
    goto :goto_b

    #@6c
    .line 583
    :cond_6c
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@6e
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    #@71
    .line 584
    iput v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    #@73
    return-void
.end method

.method dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V
    .registers 5

    #@0
    .line 315
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@2
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchFirstPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@5
    .line 316
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_1f

    #@a
    const/4 v1, 0x4

    #@b
    if-ne v0, v1, :cond_17

    #@d
    .line 321
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@f
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@11
    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@13
    invoke-interface {v0, p2, v1, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    #@16
    goto :goto_26

    #@17
    .line 324
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@19
    const-string p2, "only remove and update ops can be dispatched in first pass"

    #@1b
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw p1

    #@1f
    .line 318
    :cond_1f
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    #@21
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@23
    invoke-interface {v0, p2, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    #@26
    :goto_26
    return-void
.end method

.method findPositionOffset(I)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 468
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    #@4
    move-result p1

    #@5
    return p1
.end method

.method findPositionOffset(II)I
    .registers 7

    #@0
    .line 472
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    :goto_6
    if-ge p2, v0, :cond_4b

    #@8
    .line 474
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@10
    .line 475
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@12
    const/16 v3, 0x8

    #@14
    if-ne v2, v3, :cond_2a

    #@16
    .line 476
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@18
    if-ne v2, p1, :cond_1d

    #@1a
    .line 477
    iget p1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@1c
    goto :goto_48

    #@1d
    .line 479
    :cond_1d
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@1f
    if-ge v2, p1, :cond_23

    #@21
    add-int/lit8 p1, p1, -0x1

    #@23
    .line 482
    :cond_23
    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@25
    if-gt v1, p1, :cond_48

    #@27
    add-int/lit8 p1, p1, 0x1

    #@29
    goto :goto_48

    #@2a
    .line 486
    :cond_2a
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@2c
    if-gt v2, p1, :cond_48

    #@2e
    .line 487
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@30
    const/4 v3, 0x2

    #@31
    if-ne v2, v3, :cond_40

    #@33
    .line 488
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@35
    iget v3, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@37
    add-int/2addr v2, v3

    #@38
    if-ge p1, v2, :cond_3c

    #@3a
    const/4 p1, -0x1

    #@3b
    return p1

    #@3c
    .line 491
    :cond_3c
    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@3e
    sub-int/2addr p1, v1

    #@3f
    goto :goto_48

    #@40
    .line 492
    :cond_40
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@42
    const/4 v3, 0x1

    #@43
    if-ne v2, v3, :cond_48

    #@45
    .line 493
    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@47
    add-int/2addr p1, v1

    #@48
    :cond_48
    :goto_48
    add-int/lit8 p2, p2, 0x1

    #@4a
    goto :goto_6

    #@4b
    :cond_4b
    return p1
.end method

.method hasAnyUpdateTypes(I)Z
    .registers 3

    #@0
    .line 464
    iget v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    #@2
    and-int/2addr p1, v0

    #@3
    if-eqz p1, :cond_7

    #@5
    const/4 p1, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    :goto_8
    return p1
.end method

.method hasPendingUpdates()Z
    .registers 2

    #@0
    .line 460
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method hasUpdates()Z
    .registers 2

    #@0
    .line 624
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_12

    #@8
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .registers 6

    #@0
    .line 727
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    #@2
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@8
    if-nez v0, :cond_10

    #@a
    .line 729
    new-instance v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@c
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    #@f
    goto :goto_18

    #@10
    .line 731
    :cond_10
    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@12
    .line 732
    iput p2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@14
    .line 733
    iput p3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@16
    .line 734
    iput-object p4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@18
    :goto_18
    return-object v0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ge p2, v1, :cond_5

    #@4
    return v0

    #@5
    .line 507
    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@7
    const/4 v3, 0x4

    #@8
    invoke-virtual {p0, v3, p1, p2, p3}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f
    .line 508
    iget p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    #@11
    or-int/2addr p1, v3

    #@12
    iput p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    #@14
    .line 509
    iget-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@19
    move-result p1

    #@1a
    if-ne p1, v1, :cond_1d

    #@1c
    move v0, v1

    #@1d
    :cond_1d
    return v0
.end method

.method onItemRangeInserted(II)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ge p2, v1, :cond_5

    #@4
    return v0

    #@5
    .line 519
    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@7
    const/4 v3, 0x0

    #@8
    invoke-virtual {p0, v1, p1, p2, v3}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f
    .line 520
    iget p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    #@11
    or-int/2addr p1, v1

    #@12
    iput p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    #@14
    .line 521
    iget-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@19
    move-result p1

    #@1a
    if-ne p1, v1, :cond_1d

    #@1c
    move v0, v1

    #@1d
    :cond_1d
    return v0
.end method

.method onItemRangeMoved(III)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-ne p1, p2, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    const/4 v1, 0x1

    #@5
    if-ne p3, v1, :cond_22

    #@7
    .line 546
    iget-object p3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@9
    const/4 v2, 0x0

    #@a
    const/16 v3, 0x8

    #@c
    invoke-virtual {p0, v3, p1, p2, v2}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@f
    move-result-object p1

    #@10
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 547
    iget p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    #@15
    or-int/2addr p1, v3

    #@16
    iput p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    #@18
    .line 548
    iget-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result p1

    #@1e
    if-ne p1, v1, :cond_21

    #@20
    move v0, v1

    #@21
    :cond_21
    return v0

    #@22
    .line 544
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@24
    const-string p2, "Moving more than 1 item is not supported yet"

    #@26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw p1
.end method

.method onItemRangeRemoved(II)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ge p2, v1, :cond_5

    #@4
    return v0

    #@5
    .line 531
    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@7
    const/4 v3, 0x0

    #@8
    const/4 v4, 0x2

    #@9
    invoke-virtual {p0, v4, p1, p2, v3}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@c
    move-result-object p1

    #@d
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 532
    iget p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    #@12
    or-int/2addr p1, v4

    #@13
    iput p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    #@15
    .line 533
    iget-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result p1

    #@1b
    if-ne p1, v1, :cond_1e

    #@1d
    move v0, v1

    #@1e
    :cond_1e
    return v0
.end method

.method preProcess()V
    .registers 6

    #@0
    .line 93
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

    #@2
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    #@7
    .line 94
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x0

    #@e
    :goto_e
    if-ge v1, v0, :cond_41

    #@10
    .line 96
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@18
    .line 97
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@1a
    const/4 v4, 0x1

    #@1b
    if-eq v3, v4, :cond_34

    #@1d
    const/4 v4, 0x2

    #@1e
    if-eq v3, v4, :cond_30

    #@20
    const/4 v4, 0x4

    #@21
    if-eq v3, v4, :cond_2c

    #@23
    const/16 v4, 0x8

    #@25
    if-eq v3, v4, :cond_28

    #@27
    goto :goto_37

    #@28
    .line 108
    :cond_28
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->applyMove(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@2b
    goto :goto_37

    #@2c
    .line 105
    :cond_2c
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->applyUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@2f
    goto :goto_37

    #@30
    .line 102
    :cond_30
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->applyRemove(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@33
    goto :goto_37

    #@34
    .line 99
    :cond_34
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->applyAdd(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@37
    .line 111
    :goto_37
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    #@39
    if-eqz v2, :cond_3e

    #@3b
    .line 112
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    #@3e
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_e

    #@41
    .line 115
    :cond_41
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@43
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@46
    return-void
.end method

.method public recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 3

    #@0
    .line 741
    iget-boolean v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mDisableRecycler:Z

    #@2
    if-nez v0, :cond_c

    #@4
    const/4 v0, 0x0

    #@5
    .line 742
    iput-object v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@7
    .line 743
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    #@9
    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@c
    :cond_c
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 748
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_13

    #@7
    .line 750
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@d
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_5

    #@13
    .line 752
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@16
    return-void
.end method

.method reset()V
    .registers 2

    #@0
    .line 87
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    #@2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    #@5
    .line 88
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    #@7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    #@a
    const/4 v0, 0x0

    #@b
    .line 89
    iput v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    #@d
    return-void
.end method

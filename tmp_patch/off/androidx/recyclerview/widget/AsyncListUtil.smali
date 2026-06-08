.class public Landroidx/recyclerview/widget/AsyncListUtil;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;,
        Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncListUtil"


# instance fields
.field mAllowScrollHints:Z

.field private final mBackgroundCallback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field mDisplayedGeneration:I

.field mItemCount:I

.field private final mMainThreadCallback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMissingPositions:Landroid/util/SparseIntArray;

.field final mPrevRange:[I

.field mRequestedGeneration:I

.field private mScrollHint:I

.field final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileList:Landroidx/recyclerview/widget/TileList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/TileList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field final mTmpRange:[I

.field final mTmpRangeExtended:[I

.field final mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILandroidx/recyclerview/widget/AsyncListUtil$DataCallback;Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback<",
            "TT;>;",
            "Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;",
            ")V"
        }
    .end annotation

    #@0
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x2

    #@4
    new-array v1, v0, [I

    #@6
    .line 64
    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    #@8
    new-array v1, v0, [I

    #@a
    .line 65
    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    #@c
    new-array v0, v0, [I

    #@e
    .line 66
    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    #@10
    const/4 v0, 0x0

    #@11
    .line 69
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    #@13
    .line 71
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    #@15
    .line 73
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    #@17
    .line 74
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    #@19
    .line 76
    new-instance v0, Landroid/util/SparseIntArray;

    #@1b
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@1e
    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    #@20
    .line 211
    new-instance v0, Landroidx/recyclerview/widget/AsyncListUtil$1;

    #@22
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/AsyncListUtil$1;-><init>(Landroidx/recyclerview/widget/AsyncListUtil;)V

    #@25
    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadCallback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    #@27
    .line 293
    new-instance v1, Landroidx/recyclerview/widget/AsyncListUtil$2;

    #@29
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/AsyncListUtil$2;-><init>(Landroidx/recyclerview/widget/AsyncListUtil;)V

    #@2c
    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundCallback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    #@2e
    .line 92
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTClass:Ljava/lang/Class;

    #@30
    .line 93
    iput p2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    #@32
    .line 94
    iput-object p3, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    #@34
    .line 95
    iput-object p4, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    #@36
    .line 97
    new-instance p1, Landroidx/recyclerview/widget/TileList;

    #@38
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/TileList;-><init>(I)V

    #@3b
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    #@3d
    .line 99
    new-instance p1, Landroidx/recyclerview/widget/MessageThreadUtil;

    #@3f
    invoke-direct {p1}, Landroidx/recyclerview/widget/MessageThreadUtil;-><init>()V

    #@42
    .line 100
    invoke-interface {p1, v0}, Landroidx/recyclerview/widget/ThreadUtil;->getMainThreadProxy(Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    #@45
    move-result-object p2

    #@46
    iput-object p2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    #@48
    .line 101
    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/ThreadUtil;->getBackgroundProxy(Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    #@4b
    move-result-object p1

    #@4c
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    #@4e
    .line 103
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->refresh()V

    #@51
    return-void
.end method

.method private isRefreshPending()Z
    .registers 3

    #@0
    .line 107
    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    #@2
    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    #@4
    if-eq v0, v1, :cond_8

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


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    #@0
    if-ltz p1, :cond_1b

    #@2
    .line 155
    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    #@4
    if-ge p1, v0, :cond_1b

    #@6
    .line 158
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    #@8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/TileList;->getItemAt(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_1a

    #@e
    .line 159
    invoke-direct {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->isRefreshPending()Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_1a

    #@14
    .line 160
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    #@16
    const/4 v2, 0x0

    #@17
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1a
    :cond_1a
    return-object v0

    #@1b
    .line 156
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    const-string v1, " is not within 0 and "

    #@28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    #@2e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object p1

    #@32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object p1

    #@36
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0
.end method

.method public getItemCount()I
    .registers 2

    #@0
    .line 175
    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    #@2
    return v0
.end method

.method varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    #@0
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "[MAIN] "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object p1

    #@f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    const-string p2, "AsyncListUtil"

    #@15
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    return-void
.end method

.method public onRangeChanged()V
    .registers 2

    #@0
    .line 119
    invoke-direct {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->isRefreshPending()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 122
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->updateRange()V

    #@a
    const/4 v0, 0x1

    #@b
    .line 123
    iput-boolean v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    #@d
    return-void
.end method

.method public refresh()V
    .registers 3

    #@0
    .line 133
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@5
    .line 134
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    #@7
    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    iput v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    #@d
    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->refresh(I)V

    #@10
    return-void
.end method

.method updateRange()V
    .registers 11

    #@0
    .line 179
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    #@2
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    #@4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->getItemRangeInto([I)V

    #@7
    .line 180
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    #@9
    const/4 v1, 0x0

    #@a
    aget v2, v0, v1

    #@c
    const/4 v3, 0x1

    #@d
    aget v4, v0, v3

    #@f
    if-gt v2, v4, :cond_81

    #@11
    if-gez v2, :cond_14

    #@13
    goto :goto_81

    #@14
    .line 183
    :cond_14
    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    #@16
    if-lt v4, v5, :cond_19

    #@18
    return-void

    #@19
    .line 188
    :cond_19
    iget-boolean v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    #@1b
    if-nez v5, :cond_20

    #@1d
    .line 189
    iput v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    #@1f
    goto :goto_38

    #@20
    .line 190
    :cond_20
    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    #@22
    aget v6, v5, v3

    #@24
    if-gt v2, v6, :cond_36

    #@26
    aget v5, v5, v1

    #@28
    if-le v5, v4, :cond_2b

    #@2a
    goto :goto_36

    #@2b
    :cond_2b
    if-ge v2, v5, :cond_30

    #@2d
    .line 194
    iput v3, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    #@2f
    goto :goto_38

    #@30
    :cond_30
    if-le v2, v5, :cond_38

    #@32
    const/4 v5, 0x2

    #@33
    .line 196
    iput v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    #@35
    goto :goto_38

    #@36
    .line 192
    :cond_36
    :goto_36
    iput v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    #@38
    .line 199
    :cond_38
    :goto_38
    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    #@3a
    aput v2, v5, v1

    #@3c
    .line 200
    aput v4, v5, v3

    #@3e
    .line 202
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    #@40
    iget-object v4, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    #@42
    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    #@44
    invoke-virtual {v2, v0, v4, v5}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->extendRangeInto([I[II)V

    #@47
    .line 203
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    #@49
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    #@4b
    aget v2, v2, v1

    #@4d
    aget v4, v0, v1

    #@4f
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    #@52
    move-result v4

    #@53
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@56
    move-result v2

    #@57
    aput v2, v0, v1

    #@59
    .line 204
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    #@5b
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    #@5d
    aget v2, v2, v3

    #@5f
    aget v4, v0, v3

    #@61
    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    #@63
    sub-int/2addr v5, v3

    #@64
    .line 205
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@67
    move-result v4

    #@68
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    #@6b
    move-result v2

    #@6c
    aput v2, v0, v3

    #@6e
    .line 207
    iget-object v4, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    #@70
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    #@72
    aget v5, v0, v1

    #@74
    aget v6, v0, v3

    #@76
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    #@78
    aget v7, v0, v1

    #@7a
    aget v8, v0, v3

    #@7c
    iget v9, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    #@7e
    invoke-interface/range {v4 .. v9}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    #@81
    :cond_81
    :goto_81
    return-void
.end method

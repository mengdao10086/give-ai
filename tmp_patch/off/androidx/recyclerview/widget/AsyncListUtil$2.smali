.class Landroidx/recyclerview/widget/AsyncListUtil$2;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mFirstRequiredTileStart:I

.field private mGeneration:I

.field private mItemCount:I

.field private mLastRequiredTileStart:I

.field final mLoadedTiles:Landroid/util/SparseBooleanArray;

.field private mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/recyclerview/widget/AsyncListUtil;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AsyncListUtil;)V
    .registers 2

    #@0
    .line 294
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 298
    new-instance p1, Landroid/util/SparseBooleanArray;

    #@7
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@a
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    #@c
    return-void
.end method

.method private acquireTile()Landroidx/recyclerview/widget/TileList$Tile;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 392
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 394
    iget-object v1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mNext:Landroidx/recyclerview/widget/TileList$Tile;

    #@6
    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    #@8
    return-object v0

    #@9
    .line 397
    :cond_9
    new-instance v0, Landroidx/recyclerview/widget/TileList$Tile;

    #@b
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@d
    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTClass:Ljava/lang/Class;

    #@f
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@11
    iget v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    #@13
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/TileList$Tile;-><init>(Ljava/lang/Class;I)V

    #@16
    return-object v0
.end method

.method private addTile(Landroidx/recyclerview/widget/TileList$Tile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 405
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    #@2
    iget v1, p1, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@8
    .line 406
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@a
    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    #@c
    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mGeneration:I

    #@e
    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V

    #@11
    return-void
.end method

.method private flushTileCache(I)V
    .registers 9

    #@0
    .line 421
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@2
    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    #@4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->getMaxCachedTiles()I

    #@7
    move-result v0

    #@8
    .line 422
    :goto_8
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    #@a
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    #@d
    move-result v1

    #@e
    if-lt v1, v0, :cond_3f

    #@10
    .line 423
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@16
    move-result v1

    #@17
    .line 424
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    #@19
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    #@1c
    move-result v3

    #@1d
    const/4 v4, 0x1

    #@1e
    sub-int/2addr v3, v4

    #@1f
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@22
    move-result v2

    #@23
    .line 425
    iget v3, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mFirstRequiredTileStart:I

    #@25
    sub-int/2addr v3, v1

    #@26
    .line 426
    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLastRequiredTileStart:I

    #@28
    sub-int v5, v2, v5

    #@2a
    if-lez v3, :cond_35

    #@2c
    if-ge v3, v5, :cond_31

    #@2e
    const/4 v6, 0x2

    #@2f
    if-ne p1, v6, :cond_35

    #@31
    .line 429
    :cond_31
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/AsyncListUtil$2;->removeTile(I)V

    #@34
    goto :goto_8

    #@35
    :cond_35
    if-lez v5, :cond_3f

    #@37
    if-lt v3, v5, :cond_3b

    #@39
    if-ne p1, v4, :cond_3f

    #@3b
    .line 432
    :cond_3b
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/AsyncListUtil$2;->removeTile(I)V

    #@3e
    goto :goto_8

    #@3f
    :cond_3f
    return-void
.end method

.method private getTileStart(I)I
    .registers 3

    #@0
    .line 350
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@2
    iget v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    #@4
    rem-int v0, p1, v0

    #@6
    sub-int/2addr p1, v0

    #@7
    return p1
.end method

.method private isTileLoaded(I)Z
    .registers 3

    #@0
    .line 401
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    #@0
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "[BKGR] "

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

.method private removeTile(I)V
    .registers 4

    #@0
    .line 413
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@5
    .line 414
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@7
    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    #@9
    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mGeneration:I

    #@b
    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    #@e
    return-void
.end method

.method private requestTiles(IIIZ)V
    .registers 8

    #@0
    move v0, p1

    #@1
    :goto_1
    if-gt v0, p2, :cond_17

    #@3
    if-eqz p4, :cond_9

    #@5
    add-int v1, p2, p1

    #@7
    sub-int/2addr v1, v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    move v1, v0

    #@a
    .line 360
    :goto_a
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@c
    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    #@e
    invoke-interface {v2, v1, p3}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->loadTile(II)V

    #@11
    .line 355
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@13
    iget v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    #@15
    add-int/2addr v0, v1

    #@16
    goto :goto_1

    #@17
    :cond_17
    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .registers 7

    #@0
    .line 366
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AsyncListUtil$2;->isTileLoaded(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 372
    :cond_7
    invoke-direct {p0}, Landroidx/recyclerview/widget/AsyncListUtil$2;->acquireTile()Landroidx/recyclerview/widget/TileList$Tile;

    #@a
    move-result-object v0

    #@b
    .line 373
    iput p1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    #@d
    .line 374
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@f
    iget p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    #@11
    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mItemCount:I

    #@13
    iget v2, v0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    #@15
    sub-int/2addr v1, v2

    #@16
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@19
    move-result p1

    #@1a
    iput p1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    #@1c
    .line 375
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@1e
    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    #@20
    iget-object v1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    #@22
    iget v2, v0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    #@24
    iget v3, v0, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    #@26
    invoke-virtual {p1, v1, v2, v3}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->fillData([Ljava/lang/Object;II)V

    #@29
    .line 376
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/AsyncListUtil$2;->flushTileCache(I)V

    #@2c
    .line 377
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/AsyncListUtil$2;->addTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    #@2f
    return-void
.end method

.method public recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 385
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@2
    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    #@4
    iget-object v1, p1, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    #@6
    iget v2, p1, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    #@8
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->recycleData([Ljava/lang/Object;I)V

    #@b
    .line 387
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    #@d
    iput-object v0, p1, Landroidx/recyclerview/widget/TileList$Tile;->mNext:Landroidx/recyclerview/widget/TileList$Tile;

    #@f
    .line 388
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    #@11
    return-void
.end method

.method public refresh(I)V
    .registers 4

    #@0
    .line 308
    iput p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mGeneration:I

    #@2
    .line 309
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    #@4
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    #@7
    .line 310
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@9
    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    #@b
    invoke-virtual {p1}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->refreshData()I

    #@e
    move-result p1

    #@f
    iput p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mItemCount:I

    #@11
    .line 311
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@13
    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    #@15
    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mGeneration:I

    #@17
    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mItemCount:I

    #@19
    invoke-interface {p1, v0, v1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    #@1c
    return-void
.end method

.method public updateRange(IIIII)V
    .registers 7

    #@0
    if-le p1, p2, :cond_3

    #@2
    return-void

    #@3
    .line 326
    :cond_3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AsyncListUtil$2;->getTileStart(I)I

    #@6
    move-result p1

    #@7
    .line 327
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/AsyncListUtil$2;->getTileStart(I)I

    #@a
    move-result p2

    #@b
    .line 329
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/AsyncListUtil$2;->getTileStart(I)I

    #@e
    move-result p3

    #@f
    iput p3, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mFirstRequiredTileStart:I

    #@11
    .line 330
    invoke-direct {p0, p4}, Landroidx/recyclerview/widget/AsyncListUtil$2;->getTileStart(I)I

    #@14
    move-result p3

    #@15
    iput p3, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLastRequiredTileStart:I

    #@17
    const/4 p4, 0x0

    #@18
    const/4 v0, 0x1

    #@19
    if-ne p5, v0, :cond_2b

    #@1b
    .line 339
    iget p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mFirstRequiredTileStart:I

    #@1d
    invoke-direct {p0, p1, p2, p5, v0}, Landroidx/recyclerview/widget/AsyncListUtil$2;->requestTiles(IIIZ)V

    #@20
    .line 340
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@22
    iget p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    #@24
    add-int/2addr p2, p1

    #@25
    iget p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLastRequiredTileStart:I

    #@27
    invoke-direct {p0, p2, p1, p5, p4}, Landroidx/recyclerview/widget/AsyncListUtil$2;->requestTiles(IIIZ)V

    #@2a
    goto :goto_38

    #@2b
    .line 343
    :cond_2b
    invoke-direct {p0, p1, p3, p5, p4}, Landroidx/recyclerview/widget/AsyncListUtil$2;->requestTiles(IIIZ)V

    #@2e
    .line 344
    iget p2, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mFirstRequiredTileStart:I

    #@30
    iget-object p3, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    #@32
    iget p3, p3, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    #@34
    sub-int/2addr p1, p3

    #@35
    invoke-direct {p0, p2, p1, p5, v0}, Landroidx/recyclerview/widget/AsyncListUtil$2;->requestTiles(IIIZ)V

    #@38
    :goto_38
    return-void
.end method

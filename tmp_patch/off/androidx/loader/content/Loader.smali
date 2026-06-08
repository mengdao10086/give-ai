.class public Landroidx/loader/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/Loader$OnLoadCanceledListener;,
        Landroidx/loader/content/Loader$OnLoadCompleteListener;,
        Landroidx/loader/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader$OnLoadCompleteListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader$OnLoadCanceledListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 44
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    #@6
    .line 45
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    #@8
    const/4 v1, 0x1

    #@9
    .line 46
    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mReset:Z

    #@b
    .line 47
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    #@d
    .line 48
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    #@f
    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@12
    move-result-object p1

    #@13
    iput-object p1, p0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    #@15
    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 409
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    #@3
    .line 410
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onAbandon()V

    #@6
    return-void
.end method

.method public cancelLoad()Z
    .registers 2

    #@0
    .line 318
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onCancelLoad()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public commitContentChanged()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 485
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    #@3
    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 528
    invoke-static {p1, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    const-string p1, "}"

    #@c
    .line 529
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    return-object p1
.end method

.method public deliverCancellation()V
    .registers 2

    #@0
    .line 144
    iget-object v0, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 145
    invoke-interface {v0, p0}, Landroidx/loader/content/Loader$OnLoadCanceledListener;->onLoadCanceled(Landroidx/loader/content/Loader;)V

    #@7
    :cond_7
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    #@0
    .line 131
    iget-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 132
    invoke-interface {v0, p0, p1}, Landroidx/loader/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroidx/loader/content/Loader;Ljava/lang/Object;)V

    #@7
    :cond_7
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 555
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string p2, "mId="

    #@5
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    iget p2, p0, Landroidx/loader/content/Loader;->mId:I

    #@a
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    #@d
    const-string p2, " mListener="

    #@f
    .line 556
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    iget-object p2, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    #@14
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@17
    .line 557
    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mStarted:Z

    #@19
    if-nez p2, :cond_23

    #@1b
    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    #@1d
    if-nez p2, :cond_23

    #@1f
    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    #@21
    if-eqz p2, :cond_44

    #@23
    .line 558
    :cond_23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    const-string p2, "mStarted="

    #@28
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mStarted:Z

    #@2d
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    #@30
    const-string p2, " mContentChanged="

    #@32
    .line 559
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35
    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    #@37
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    #@3a
    const-string p2, " mProcessingChange="

    #@3c
    .line 560
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    #@41
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    #@44
    .line 562
    :cond_44
    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    #@46
    if-nez p2, :cond_4c

    #@48
    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mReset:Z

    #@4a
    if-eqz p2, :cond_63

    #@4c
    .line 563
    :cond_4c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    const-string p1, "mAbandoned="

    #@51
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    iget-boolean p1, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    #@56
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    #@59
    const-string p1, " mReset="

    #@5b
    .line 564
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    iget-boolean p1, p0, Landroidx/loader/content/Loader;->mReset:Z

    #@60
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    #@63
    :cond_63
    return-void
.end method

.method public forceLoad()V
    .registers 1

    #@0
    .line 347
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onForceLoad()V

    #@3
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    #@0
    .line 154
    iget-object v0, p0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getId()I
    .registers 2

    #@0
    .line 161
    iget v0, p0, Landroidx/loader/content/Loader;->mId:I

    #@2
    return v0
.end method

.method public isAbandoned()Z
    .registers 2

    #@0
    .line 247
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    #@2
    return v0
.end method

.method public isReset()Z
    .registers 2

    #@0
    .line 256
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    #@2
    return v0
.end method

.method public isStarted()Z
    .registers 2

    #@0
    .line 238
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    #@2
    return v0
.end method

.method protected onAbandon()V
    .registers 1

    #@0
    return-void
.end method

.method protected onCancelLoad()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onContentChanged()V
    .registers 2

    #@0
    .line 511
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 512
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    #@7
    goto :goto_b

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 517
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    #@b
    :goto_b
    return-void
.end method

.method protected onForceLoad()V
    .registers 1

    #@0
    return-void
.end method

.method protected onReset()V
    .registers 1

    #@0
    return-void
.end method

.method protected onStartLoading()V
    .registers 1

    #@0
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    #@0
    return-void
.end method

.method public registerListener(ILandroidx/loader/content/Loader$OnLoadCompleteListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/loader/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    #@0
    .line 173
    iget-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    #@2
    if-nez v0, :cond_9

    #@4
    .line 176
    iput-object p2, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    #@6
    .line 177
    iput p1, p0, Landroidx/loader/content/Loader;->mId:I

    #@8
    return-void

    #@9
    .line 174
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    #@b
    const-string p2, "There is already a listener registered"

    #@d
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw p1
.end method

.method public registerOnLoadCanceledListener(Landroidx/loader/content/Loader$OnLoadCanceledListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    #@0
    .line 207
    iget-object v0, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    #@2
    if-nez v0, :cond_7

    #@4
    .line 210
    iput-object p1, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    #@6
    return-void

    #@7
    .line 208
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    #@9
    const-string v0, "There is already a listener registered"

    #@b
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1
.end method

.method public reset()V
    .registers 2

    #@0
    .line 447
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onReset()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 448
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    #@6
    const/4 v0, 0x0

    #@7
    .line 449
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    #@9
    .line 450
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    #@b
    .line 451
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    #@d
    .line 452
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    #@f
    return-void
.end method

.method public rollbackContentChanged()V
    .registers 2

    #@0
    .line 496
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 497
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onContentChanged()V

    #@7
    :cond_7
    return-void
.end method

.method public final startLoading()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 282
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    #@3
    const/4 v0, 0x0

    #@4
    .line 283
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    #@6
    .line 284
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    #@8
    .line 285
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onStartLoading()V

    #@b
    return-void
.end method

.method public stopLoading()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 380
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    #@3
    .line 381
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onStopLoading()V

    #@6
    return-void
.end method

.method public takeContentChanged()Z
    .registers 3

    #@0
    .line 471
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    #@2
    const/4 v1, 0x0

    #@3
    .line 472
    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    #@5
    .line 473
    iget-boolean v1, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    #@7
    or-int/2addr v1, v0

    #@8
    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    #@a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 536
    invoke-static {p0, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    const-string v1, " id="

    #@c
    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 538
    iget v1, p0, Landroidx/loader/content/Loader;->mId:I

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    const-string v1, "}"

    #@16
    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public unregisterListener(Landroidx/loader/content/Loader$OnLoadCompleteListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    #@0
    .line 187
    iget-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    #@2
    if-eqz v0, :cond_12

    #@4
    if-ne v0, p1, :cond_a

    #@6
    const/4 p1, 0x0

    #@7
    .line 193
    iput-object p1, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    #@9
    return-void

    #@a
    .line 191
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string v0, "Attempting to unregister the wrong listener"

    #@e
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw p1

    #@12
    .line 188
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    #@14
    const-string v0, "No listener register"

    #@16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw p1
.end method

.method public unregisterOnLoadCanceledListener(Landroidx/loader/content/Loader$OnLoadCanceledListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    #@0
    .line 223
    iget-object v0, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    #@2
    if-eqz v0, :cond_12

    #@4
    if-ne v0, p1, :cond_a

    #@6
    const/4 p1, 0x0

    #@7
    .line 229
    iput-object p1, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    #@9
    return-void

    #@a
    .line 227
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string v0, "Attempting to unregister the wrong listener"

    #@e
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw p1

    #@12
    .line 224
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    #@14
    const-string v0, "No listener register"

    #@16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw p1
.end method

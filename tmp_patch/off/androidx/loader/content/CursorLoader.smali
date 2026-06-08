.class public Landroidx/loader/content/CursorLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCancellationSignal:Landroidx/core/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    .line 123
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    #@3
    .line 124
    new-instance p1, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    #@5
    invoke-direct {p1, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    #@8
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    #@a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    #@0
    .line 136
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    #@3
    .line 137
    new-instance p1, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    #@5
    invoke-direct {p1, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    #@8
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    #@a
    .line 138
    iput-object p2, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@c
    .line 139
    iput-object p3, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@e
    .line 140
    iput-object p4, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@10
    .line 141
    iput-object p5, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@12
    .line 142
    iput-object p6, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@14
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .registers 2

    #@0
    .line 86
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->cancelLoadInBackground()V

    #@3
    .line 88
    monitor-enter p0

    #@4
    .line 89
    :try_start_4
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 90
    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V

    #@b
    .line 92
    :cond_b
    monitor-exit p0

    #@c
    return-void

    #@d
    :catchall_d
    move-exception v0

    #@e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    #@f
    throw v0
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .registers 4

    #@0
    .line 98
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->isReset()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    if-eqz p1, :cond_b

    #@8
    .line 101
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    #@b
    :cond_b
    return-void

    #@c
    .line 105
    :cond_c
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@e
    .line 106
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@10
    .line 108
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->isStarted()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_19

    #@16
    .line 109
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    #@19
    :cond_19
    if-eqz v0, :cond_26

    #@1b
    if-eq v0, p1, :cond_26

    #@1d
    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    #@20
    move-result p1

    #@21
    if-nez p1, :cond_26

    #@23
    .line 113
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@26
    :cond_26
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 41
    check-cast p1, Landroid/database/Cursor;

    #@2
    invoke-virtual {p0, p1}, Landroidx/loader/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    #@5
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/loader/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 240
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string p2, "mUri="

    #@8
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    iget-object p2, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@d
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@10
    .line 241
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    const-string p2, "mProjection="

    #@15
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 242
    iget-object p2, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@1a
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object p2

    #@1e
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21
    .line 243
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    const-string p2, "mSelection="

    #@26
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    iget-object p2, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@2b
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 244
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    const-string p2, "mSelectionArgs="

    #@33
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    .line 245
    iget-object p2, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@38
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@3b
    move-result-object p2

    #@3c
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    .line 246
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    const-string p2, "mSortOrder="

    #@44
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    iget-object p2, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@49
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    .line 247
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    const-string p2, "mCursor="

    #@51
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    iget-object p2, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@56
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@59
    .line 248
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    const-string p1, "mContentChanged="

    #@5e
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61
    iget-boolean p1, p0, Landroidx/loader/content/CursorLoader;->mContentChanged:Z

    #@63
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    #@66
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .registers 2

    #@0
    .line 202
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .registers 2

    #@0
    .line 211
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .registers 2

    #@0
    .line 220
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .registers 2

    #@0
    .line 229
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    #@0
    .line 193
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .registers 10

    #@0
    .line 56
    monitor-enter p0

    #@1
    .line 57
    :try_start_1
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_49

    #@7
    .line 60
    new-instance v0, Landroidx/core/os/CancellationSignal;

    #@9
    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    #@c
    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    #@e
    .line 61
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_4f

    #@f
    const/4 v0, 0x0

    #@10
    .line 63
    :try_start_10
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->getContext()Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@1a
    iget-object v4, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@1c
    iget-object v5, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@1e
    iget-object v6, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@20
    iget-object v7, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@22
    iget-object v8, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    #@24
    invoke-static/range {v2 .. v8}, Landroidx/core/content/ContentResolverCompat;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    #@27
    move-result-object v1
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_40

    #@28
    if-eqz v1, :cond_38

    #@2a
    .line 69
    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    #@2d
    .line 70
    iget-object v2, p0, Landroidx/loader/content/CursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    #@2f
    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_32} :catch_33
    .catchall {:try_start_2a .. :try_end_32} :catchall_40

    #@32
    goto :goto_38

    #@33
    :catch_33
    move-exception v2

    #@34
    .line 72
    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@37
    .line 73
    throw v2
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_40

    #@38
    .line 78
    :cond_38
    :goto_38
    monitor-enter p0

    #@39
    .line 79
    :try_start_39
    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    #@3b
    .line 80
    monitor-exit p0

    #@3c
    return-object v1

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3d

    #@3f
    throw v0

    #@40
    :catchall_40
    move-exception v1

    #@41
    .line 78
    monitor-enter p0

    #@42
    .line 79
    :try_start_42
    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    #@44
    .line 80
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    #@45
    throw v1

    #@46
    :catchall_46
    move-exception v0

    #@47
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    #@48
    throw v0

    #@49
    .line 58
    :cond_49
    :try_start_49
    new-instance v0, Landroidx/core/os/OperationCanceledException;

    #@4b
    invoke-direct {v0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    #@4e
    throw v0

    #@4f
    :catchall_4f
    move-exception v0

    #@50
    .line 61
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_4f

    #@51
    throw v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    #@0
    .line 41
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 173
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_b

    #@8
    .line 174
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    #@b
    :cond_b
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 41
    check-cast p1, Landroid/database/Cursor;

    #@2
    invoke-virtual {p0, p1}, Landroidx/loader/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    #@5
    return-void
.end method

.method protected onReset()V
    .registers 2

    #@0
    .line 180
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onReset()V

    #@3
    .line 183
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->onStopLoading()V

    #@6
    .line 185
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@8
    if-eqz v0, :cond_15

    #@a
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_15

    #@10
    .line 186
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@12
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    .line 188
    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@18
    return-void
.end method

.method protected onStartLoading()V
    .registers 2

    #@0
    .line 154
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 155
    invoke-virtual {p0, v0}, Landroidx/loader/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    #@7
    .line 157
    :cond_7
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->takeContentChanged()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_11

    #@d
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    #@f
    if-nez v0, :cond_14

    #@11
    .line 158
    :cond_11
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->forceLoad()V

    #@14
    :cond_14
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    #@0
    .line 168
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->cancelLoad()Z

    #@3
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .registers 2

    #@0
    .line 206
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    #@2
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 215
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .registers 2

    #@0
    .line 224
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    #@2
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 233
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2

    #@0
    .line 197
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    #@2
    return-void
.end method

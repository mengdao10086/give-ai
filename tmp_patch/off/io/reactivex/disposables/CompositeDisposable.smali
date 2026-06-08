.class public final Lio/reactivex/disposables/CompositeDisposable;
.super Ljava/lang/Object;
.source "CompositeDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Lio/reactivex/internal/util/OpenHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/OpenHashSet<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "disposables is null"

    #@5
    .line 59
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@8
    .line 60
    new-instance v0, Lio/reactivex/internal/util/OpenHashSet;

    #@a
    invoke-direct {v0}, Lio/reactivex/internal/util/OpenHashSet;-><init>()V

    #@d
    iput-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@f
    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object p1

    #@13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2a

    #@19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@1f
    const-string v1, "A Disposable item in the disposables sequence is null"

    #@21
    .line 62
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@24
    .line 63
    iget-object v1, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@26
    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_13

    #@2a
    :cond_2a
    return-void
.end method

.method public varargs constructor <init>([Lio/reactivex/disposables/Disposable;)V
    .registers 6

    #@0
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "disposables is null"

    #@5
    .line 45
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@8
    .line 46
    new-instance v0, Lio/reactivex/internal/util/OpenHashSet;

    #@a
    array-length v1, p1

    #@b
    add-int/lit8 v1, v1, 0x1

    #@d
    invoke-direct {v0, v1}, Lio/reactivex/internal/util/OpenHashSet;-><init>(I)V

    #@10
    iput-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@12
    .line 47
    array-length v0, p1

    #@13
    const/4 v1, 0x0

    #@14
    :goto_14
    if-ge v1, v0, :cond_25

    #@16
    aget-object v2, p1, v1

    #@18
    const-string v3, "A Disposable in the disposables array is null"

    #@1a
    .line 48
    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1d
    .line 49
    iget-object v3, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@1f
    invoke-virtual {v3, v2}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    #@22
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_14

    #@25
    :cond_25
    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/disposables/Disposable;)Z
    .registers 3

    #@0
    const-string v0, "disposable is null"

    #@2
    .line 99
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 100
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@7
    if-nez v0, :cond_24

    #@9
    .line 101
    monitor-enter p0

    #@a
    .line 102
    :try_start_a
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@c
    if-nez v0, :cond_1f

    #@e
    .line 103
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@10
    if-nez v0, :cond_19

    #@12
    .line 105
    new-instance v0, Lio/reactivex/internal/util/OpenHashSet;

    #@14
    invoke-direct {v0}, Lio/reactivex/internal/util/OpenHashSet;-><init>()V

    #@17
    .line 106
    iput-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@19
    .line 108
    :cond_19
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    #@1c
    .line 109
    monitor-exit p0

    #@1d
    const/4 p1, 0x1

    #@1e
    return p1

    #@1f
    .line 111
    :cond_1f
    monitor-exit p0

    #@20
    goto :goto_24

    #@21
    :catchall_21
    move-exception p1

    #@22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    #@23
    throw p1

    #@24
    .line 113
    :cond_24
    :goto_24
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@27
    const/4 p1, 0x0

    #@28
    return p1
.end method

.method public varargs addAll([Lio/reactivex/disposables/Disposable;)Z
    .registers 8

    #@0
    const-string v0, "disposables is null"

    #@2
    .line 125
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 126
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@7
    const/4 v1, 0x0

    #@8
    if-nez v0, :cond_34

    #@a
    .line 127
    monitor-enter p0

    #@b
    .line 128
    :try_start_b
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@d
    if-nez v0, :cond_2f

    #@f
    .line 129
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@11
    const/4 v2, 0x1

    #@12
    if-nez v0, :cond_1d

    #@14
    .line 131
    new-instance v0, Lio/reactivex/internal/util/OpenHashSet;

    #@16
    array-length v3, p1

    #@17
    add-int/2addr v3, v2

    #@18
    invoke-direct {v0, v3}, Lio/reactivex/internal/util/OpenHashSet;-><init>(I)V

    #@1b
    .line 132
    iput-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@1d
    .line 134
    :cond_1d
    array-length v3, p1

    #@1e
    :goto_1e
    if-ge v1, v3, :cond_2d

    #@20
    aget-object v4, p1, v1

    #@22
    const-string v5, "A Disposable in the disposables array is null"

    #@24
    .line 135
    invoke-static {v4, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@27
    .line 136
    invoke-virtual {v0, v4}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    #@2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_1e

    #@2d
    .line 138
    :cond_2d
    monitor-exit p0

    #@2e
    return v2

    #@2f
    .line 140
    :cond_2f
    monitor-exit p0

    #@30
    goto :goto_34

    #@31
    :catchall_31
    move-exception p1

    #@32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_31

    #@33
    throw p1

    #@34
    .line 142
    :cond_34
    :goto_34
    array-length v0, p1

    #@35
    move v2, v1

    #@36
    :goto_36
    if-ge v2, v0, :cond_40

    #@38
    aget-object v3, p1, v2

    #@3a
    .line 143
    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@3d
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_36

    #@40
    :cond_40
    return v1
.end method

.method public clear()V
    .registers 3

    #@0
    .line 193
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 197
    :cond_5
    monitor-enter p0

    #@6
    .line 198
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@8
    if-eqz v0, :cond_c

    #@a
    .line 199
    monitor-exit p0

    #@b
    return-void

    #@c
    .line 202
    :cond_c
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@e
    const/4 v1, 0x0

    #@f
    .line 203
    iput-object v1, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@11
    .line 204
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    #@12
    .line 206
    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose(Lio/reactivex/internal/util/OpenHashSet;)V

    #@15
    return-void

    #@16
    :catchall_16
    move-exception v0

    #@17
    .line 204
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    #@18
    throw v0
.end method

.method public delete(Lio/reactivex/disposables/Disposable;)Z
    .registers 4

    #@0
    const-string v0, "disposables is null"

    #@2
    .line 172
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 173
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@7
    const/4 v1, 0x0

    #@8
    if-eqz v0, :cond_b

    #@a
    return v1

    #@b
    .line 176
    :cond_b
    monitor-enter p0

    #@c
    .line 177
    :try_start_c
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@e
    if-eqz v0, :cond_12

    #@10
    .line 178
    monitor-exit p0

    #@11
    return v1

    #@12
    .line 181
    :cond_12
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@14
    if-eqz v0, :cond_20

    #@16
    .line 182
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/OpenHashSet;->remove(Ljava/lang/Object;)Z

    #@19
    move-result p1

    #@1a
    if-nez p1, :cond_1d

    #@1c
    goto :goto_20

    #@1d
    .line 185
    :cond_1d
    monitor-exit p0

    #@1e
    const/4 p1, 0x1

    #@1f
    return p1

    #@20
    .line 183
    :cond_20
    :goto_20
    monitor-exit p0

    #@21
    return v1

    #@22
    :catchall_22
    move-exception p1

    #@23
    .line 185
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    #@24
    throw p1
.end method

.method public dispose()V
    .registers 3

    #@0
    .line 69
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 73
    :cond_5
    monitor-enter p0

    #@6
    .line 74
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@8
    if-eqz v0, :cond_c

    #@a
    .line 75
    monitor-exit p0

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    .line 77
    iput-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@f
    .line 78
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@11
    const/4 v1, 0x0

    #@12
    .line 79
    iput-object v1, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@14
    .line 80
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_19

    #@15
    .line 82
    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose(Lio/reactivex/internal/util/OpenHashSet;)V

    #@18
    return-void

    #@19
    :catchall_19
    move-exception v0

    #@1a
    .line 80
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    #@1b
    throw v0
.end method

.method dispose(Lio/reactivex/internal/util/OpenHashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/util/OpenHashSet<",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 236
    :cond_3
    invoke-virtual {p1}, Lio/reactivex/internal/util/OpenHashSet;->keys()[Ljava/lang/Object;

    #@6
    move-result-object p1

    #@7
    .line 237
    array-length v0, p1

    #@8
    const/4 v1, 0x0

    #@9
    const/4 v2, 0x0

    #@a
    move v3, v1

    #@b
    :goto_b
    if-ge v3, v0, :cond_2a

    #@d
    aget-object v4, p1, v3

    #@f
    .line 238
    instance-of v5, v4, Lio/reactivex/disposables/Disposable;

    #@11
    if-eqz v5, :cond_27

    #@13
    .line 240
    :try_start_13
    check-cast v4, Lio/reactivex/disposables/Disposable;

    #@15
    invoke-interface {v4}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    #@18
    goto :goto_27

    #@19
    :catchall_19
    move-exception v4

    #@1a
    .line 242
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1d
    if-nez v2, :cond_24

    #@1f
    .line 244
    new-instance v2, Ljava/util/ArrayList;

    #@21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@24
    .line 246
    :cond_24
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_b

    #@2a
    :cond_2a
    if-eqz v2, :cond_44

    #@2c
    .line 251
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@2f
    move-result p1

    #@30
    const/4 v0, 0x1

    #@31
    if-ne p1, v0, :cond_3e

    #@33
    .line 252
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object p1

    #@37
    check-cast p1, Ljava/lang/Throwable;

    #@39
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@3c
    move-result-object p1

    #@3d
    throw p1

    #@3e
    .line 254
    :cond_3e
    new-instance p1, Lio/reactivex/exceptions/CompositeException;

    #@40
    invoke-direct {p1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    #@43
    throw p1

    #@44
    :cond_44
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 87
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@2
    return v0
.end method

.method public remove(Lio/reactivex/disposables/Disposable;)Z
    .registers 3

    #@0
    .line 156
    invoke-virtual {p0, p1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 157
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@9
    const/4 p1, 0x1

    #@a
    return p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return p1
.end method

.method public size()I
    .registers 3

    #@0
    .line 214
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_6

    #@5
    return v1

    #@6
    .line 217
    :cond_6
    monitor-enter p0

    #@7
    .line 218
    :try_start_7
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    #@9
    if-eqz v0, :cond_d

    #@b
    .line 219
    monitor-exit p0

    #@c
    return v1

    #@d
    .line 221
    :cond_d
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    #@f
    if-eqz v0, :cond_15

    #@11
    .line 222
    invoke-virtual {v0}, Lio/reactivex/internal/util/OpenHashSet;->size()I

    #@14
    move-result v1

    #@15
    :cond_15
    monitor-exit p0

    #@16
    return v1

    #@17
    :catchall_17
    move-exception v0

    #@18
    .line 223
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    #@19
    throw v0
.end method

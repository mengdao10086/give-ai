.class public final Lio/reactivex/internal/disposables/ListCompositeDisposable;
.super Ljava/lang/Object;
.source "ListCompositeDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 31
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
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "resources is null"

    #@5
    .line 44
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@8
    .line 45
    new-instance v0, Ljava/util/LinkedList;

    #@a
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@d
    iput-object v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    #@f
    .line 46
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
    const-string v1, "Disposable item is null"

    #@21
    .line 47
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@24
    .line 48
    iget-object v1, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    #@26
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_13

    #@2a
    :cond_2a
    return-void
.end method

.method public varargs constructor <init>([Lio/reactivex/disposables/Disposable;)V
    .registers 6

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "resources is null"

    #@5
    .line 35
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@8
    .line 36
    new-instance v0, Ljava/util/LinkedList;

    #@a
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@d
    iput-object v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    #@f
    .line 37
    array-length v0, p1

    #@10
    const/4 v1, 0x0

    #@11
    :goto_11
    if-ge v1, v0, :cond_22

    #@13
    aget-object v2, p1, v1

    #@15
    const-string v3, "Disposable item is null"

    #@17
    .line 38
    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    .line 39
    iget-object v3, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    #@1c
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_11

    #@22
    :cond_22
    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/disposables/Disposable;)Z
    .registers 3

    #@0
    const-string v0, "d is null"

    #@2
    .line 77
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 78
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    #@7
    if-nez v0, :cond_24

    #@9
    .line 79
    monitor-enter p0

    #@a
    .line 80
    :try_start_a
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    #@c
    if-nez v0, :cond_1f

    #@e
    .line 81
    iget-object v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    #@10
    if-nez v0, :cond_19

    #@12
    .line 83
    new-instance v0, Ljava/util/LinkedList;

    #@14
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@17
    .line 84
    iput-object v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    #@19
    .line 86
    :cond_19
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c
    .line 87
    monitor-exit p0

    #@1d
    const/4 p1, 0x1

    #@1e
    return p1

    #@1f
    .line 89
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
    .line 91
    :cond_24
    :goto_24
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@27
    const/4 p1, 0x0

    #@28
    return p1
.end method

.method public varargs addAll([Lio/reactivex/disposables/Disposable;)Z
    .registers 7

    #@0
    const-string v0, "ds is null"

    #@2
    .line 96
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 97
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    #@7
    const/4 v1, 0x0

    #@8
    if-nez v0, :cond_32

    #@a
    .line 98
    monitor-enter p0

    #@b
    .line 99
    :try_start_b
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    #@d
    if-nez v0, :cond_2d

    #@f
    .line 100
    iget-object v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    #@11
    if-nez v0, :cond_1a

    #@13
    .line 102
    new-instance v0, Ljava/util/LinkedList;

    #@15
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@18
    .line 103
    iput-object v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    #@1a
    .line 105
    :cond_1a
    array-length v2, p1

    #@1b
    :goto_1b
    if-ge v1, v2, :cond_2a

    #@1d
    aget-object v3, p1, v1

    #@1f
    const-string v4, "d is null"

    #@21
    .line 106
    invoke-static {v3, v4}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@24
    .line 107
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_1b

    #@2a
    .line 109
    :cond_2a
    monitor-exit p0

    #@2b
    const/4 p1, 0x1

    #@2c
    return p1

    #@2d
    .line 111
    :cond_2d
    monitor-exit p0

    #@2e
    goto :goto_32

    #@2f
    :catchall_2f
    move-exception p1

    #@30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2f

    #@31
    throw p1

    #@32
    .line 113
    :cond_32
    :goto_32
    array-length v0, p1

    #@33
    move v2, v1

    #@34
    :goto_34
    if-ge v2, v0, :cond_3e

    #@36
    aget-object v3, p1, v2

    #@38
    .line 114
    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@3b
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_34

    #@3e
    :cond_3e
    return v1
.end method

.method public clear()V
    .registers 3

    #@0
    .line 148
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 152
    :cond_5
    monitor-enter p0

    #@6
    .line 153
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    #@8
    if-eqz v0, :cond_c

    #@a
    .line 154
    monitor-exit p0

    #@b
    return-void

    #@c
    .line 157
    :cond_c
    iget-object v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    #@e
    const/4 v1, 0x0

    #@f
    .line 158
    iput-object v1, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    #@11
    .line 159
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    #@12
    .line 161
    invoke-virtual {p0, v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->dispose(Ljava/util/List;)V

    #@15
    return-void

    #@16
    :catchall_16
    move-exception v0

    #@17
    .line 159
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
    const-string v0, "Disposable item is null"

    #@2
    .line 130
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 131
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    #@7
    const/4 v1, 0x0

    #@8
    if-eqz v0, :cond_b

    #@a
    return v1

    #@b
    .line 134
    :cond_b
    monitor-enter p0

    #@c
    .line 135
    :try_start_c
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    #@e
    if-eqz v0, :cond_12

    #@10
    .line 136
    monitor-exit p0

    #@11
    return v1

    #@12
    .line 139
    :cond_12
    iget-object v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    #@14
    if-eqz v0, :cond_20

    #@16
    .line 140
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@19
    move-result p1

    #@1a
    if-nez p1, :cond_1d

    #@1c
    goto :goto_20

    #@1d
    .line 143
    :cond_1d
    monitor-exit p0

    #@1e
    const/4 p1, 0x1

    #@1f
    return p1

    #@20
    .line 141
    :cond_20
    :goto_20
    monitor-exit p0

    #@21
    return v1

    #@22
    :catchall_22
    move-exception p1

    #@23
    .line 143
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    #@24
    throw p1
.end method

.method public dispose()V
    .registers 3

    #@0
    .line 54
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 58
    :cond_5
    monitor-enter p0

    #@6
    .line 59
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    #@8
    if-eqz v0, :cond_c

    #@a
    .line 60
    monitor-exit p0

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    .line 62
    iput-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    #@f
    .line 63
    iget-object v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    #@11
    const/4 v1, 0x0

    #@12
    .line 64
    iput-object v1, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    #@14
    .line 65
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_19

    #@15
    .line 67
    invoke-virtual {p0, v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->dispose(Ljava/util/List;)V

    #@18
    return-void

    #@19
    :catchall_19
    move-exception v0

    #@1a
    .line 65
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    #@1b
    throw v0
.end method

.method dispose(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 169
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object p1

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_27

    #@e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lio/reactivex/disposables/Disposable;

    #@14
    .line 171
    :try_start_14
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    #@17
    goto :goto_8

    #@18
    :catchall_18
    move-exception v1

    #@19
    .line 173
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@1c
    if-nez v0, :cond_23

    #@1e
    .line 175
    new-instance v0, Ljava/util/ArrayList;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 177
    :cond_23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_8

    #@27
    :cond_27
    if-eqz v0, :cond_42

    #@29
    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@2c
    move-result p1

    #@2d
    const/4 v1, 0x1

    #@2e
    if-ne p1, v1, :cond_3c

    #@30
    const/4 p1, 0x0

    #@31
    .line 182
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@34
    move-result-object p1

    #@35
    check-cast p1, Ljava/lang/Throwable;

    #@37
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@3a
    move-result-object p1

    #@3b
    throw p1

    #@3c
    .line 184
    :cond_3c
    new-instance p1, Lio/reactivex/exceptions/CompositeException;

    #@3e
    invoke-direct {p1, v0}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    #@41
    throw p1

    #@42
    :cond_42
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 72
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ListCompositeDisposable;->disposed:Z

    #@2
    return v0
.end method

.method public remove(Lio/reactivex/disposables/Disposable;)Z
    .registers 3

    #@0
    .line 121
    invoke-virtual {p0, p1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 122
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

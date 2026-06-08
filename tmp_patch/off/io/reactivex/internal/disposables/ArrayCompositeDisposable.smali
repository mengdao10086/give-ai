.class public final Lio/reactivex/internal/disposables/ArrayCompositeDisposable;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "ArrayCompositeDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x261d229f8c0b4b20L


# direct methods
.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 32
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    #@3
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 78
    invoke-virtual {p0, v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->get(I)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@7
    if-eq v1, v2, :cond_2d

    #@9
    .line 79
    invoke-virtual {p0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->length()I

    #@c
    move-result v1

    #@d
    :goto_d
    if-ge v0, v1, :cond_2d

    #@f
    .line 81
    invoke-virtual {p0, v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Lio/reactivex/disposables/Disposable;

    #@15
    .line 82
    sget-object v3, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@17
    if-eq v2, v3, :cond_2a

    #@19
    .line 83
    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@1b
    invoke-virtual {p0, v0, v2}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lio/reactivex/disposables/Disposable;

    #@21
    .line 84
    sget-object v3, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@23
    if-eq v2, v3, :cond_2a

    #@25
    if-eqz v2, :cond_2a

    #@27
    .line 85
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@2a
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_d

    #@2d
    :cond_2d
    return-void
.end method

.method public isDisposed()Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 94
    invoke-virtual {p0, v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->get(I)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@7
    if-ne v1, v2, :cond_a

    #@9
    const/4 v0, 0x1

    #@a
    :cond_a
    return v0
.end method

.method public replaceResource(ILio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 5

    #@0
    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@6
    .line 66
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@8
    if-ne v0, v1, :cond_f

    #@a
    .line 67
    invoke-interface {p2}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@d
    const/4 p1, 0x0

    #@e
    return-object p1

    #@f
    .line 70
    :cond_f
    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    return-object v0
.end method

.method public setResource(ILio/reactivex/disposables/Disposable;)Z
    .registers 5

    #@0
    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@6
    .line 44
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@8
    if-ne v0, v1, :cond_f

    #@a
    .line 45
    invoke-interface {p2}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@d
    const/4 p1, 0x0

    #@e
    return p1

    #@f
    .line 48
    :cond_f
    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    if-eqz v0, :cond_1a

    #@17
    .line 50
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@1a
    :cond_1a
    const/4 p1, 0x1

    #@1b
    return p1
.end method

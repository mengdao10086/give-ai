.class final Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;
.super Ljava/lang/Object;
.source "ObservableAmb.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AmbCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field final winner:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;I)V"
        }
    .end annotation

    #@0
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@8
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    .line 83
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->downstream:Lio/reactivex/Observer;

    #@c
    .line 84
    new-array p1, p2, [Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    #@e
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    #@10
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    #@0
    .line 125
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_1c

    #@9
    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    #@e
    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    #@10
    array-length v1, v0

    #@11
    const/4 v2, 0x0

    #@12
    :goto_12
    if-ge v2, v1, :cond_1c

    #@14
    aget-object v3, v0, v2

    #@16
    .line 129
    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->dispose()V

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_12

    #@1c
    :cond_1c
    return-void
.end method

.method public isDisposed()Z
    .registers 3

    #@0
    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_b

    #@9
    const/4 v0, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return v0
.end method

.method public subscribe([Lio/reactivex/ObservableSource;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)V"
        }
    .end annotation

    #@0
    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    #@2
    .line 89
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    move v3, v2

    #@5
    :goto_5
    if-ge v3, v1, :cond_14

    #@7
    .line 91
    new-instance v4, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    #@9
    add-int/lit8 v5, v3, 0x1

    #@b
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->downstream:Lio/reactivex/Observer;

    #@d
    invoke-direct {v4, p0, v5, v6}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;ILio/reactivex/Observer;)V

    #@10
    aput-object v4, v0, v3

    #@12
    move v3, v5

    #@13
    goto :goto_5

    #@14
    .line 93
    :cond_14
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    #@16
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    #@19
    .line 94
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->downstream:Lio/reactivex/Observer;

    #@1b
    invoke-interface {v3, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@1e
    :goto_1e
    if-ge v2, v1, :cond_33

    #@20
    .line 97
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    #@22
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_29

    #@28
    return-void

    #@29
    .line 101
    :cond_29
    aget-object v3, p1, v2

    #@2b
    aget-object v4, v0, v2

    #@2d
    invoke-interface {v3, v4}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@30
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_1e

    #@33
    :cond_33
    return-void
.end method

.method public win(I)Z
    .registers 7

    #@0
    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    const/4 v2, 0x0

    #@8
    if-nez v0, :cond_24

    #@a
    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_23

    #@12
    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    #@14
    .line 110
    array-length v3, v0

    #@15
    :goto_15
    if-ge v2, v3, :cond_22

    #@17
    add-int/lit8 v4, v2, 0x1

    #@19
    if-eq v4, p1, :cond_20

    #@1b
    .line 113
    aget-object v2, v0, v2

    #@1d
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->dispose()V

    #@20
    :cond_20
    move v2, v4

    #@21
    goto :goto_15

    #@22
    :cond_22
    return v1

    #@23
    :cond_23
    return v2

    #@24
    :cond_24
    if-ne v0, p1, :cond_27

    #@26
    goto :goto_28

    #@27
    :cond_27
    move v1, v2

    #@28
    :goto_28
    return v1
.end method

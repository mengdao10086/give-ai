.class final Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;
.super Lio/reactivex/internal/observers/BasicQueueDisposable;
.source "ObservableFromArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFromArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FromArrayDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicQueueDisposable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field volatile disposed:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field fusionMode:Z

.field index:I


# direct methods
.method constructor <init>(Lio/reactivex/Observer;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;[TT;)V"
        }
    .end annotation

    #@0
    .line 52
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicQueueDisposable;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->downstream:Lio/reactivex/Observer;

    #@5
    .line 54
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->array:[Ljava/lang/Object;

    #@7
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    #@0
    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->array:[Ljava/lang/Object;

    #@2
    array-length v0, v0

    #@3
    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->index:I

    #@5
    return-void
.end method

.method public dispose()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 90
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->disposed:Z

    #@3
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    .line 95
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->disposed:Z

    #@2
    return v0
.end method

.method public isEmpty()Z
    .registers 3

    #@0
    .line 80
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->index:I

    #@2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->array:[Ljava/lang/Object;

    #@4
    array-length v1, v1

    #@5
    if-ne v0, v1, :cond_9

    #@7
    const/4 v0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 69
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->index:I

    #@2
    .line 70
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->array:[Ljava/lang/Object;

    #@4
    .line 71
    array-length v2, v1

    #@5
    if-eq v0, v2, :cond_14

    #@7
    add-int/lit8 v2, v0, 0x1

    #@9
    .line 72
    iput v2, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->index:I

    #@b
    .line 73
    aget-object v0, v1, v0

    #@d
    const-string v1, "The array element is null"

    #@f
    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    return-object v0
.end method

.method public requestFusion(I)I
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    and-int/2addr p1, v0

    #@2
    if-eqz p1, :cond_7

    #@4
    .line 60
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->fusionMode:Z

    #@6
    return v0

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    return p1
.end method

.method run()V
    .registers 6

    #@0
    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->array:[Ljava/lang/Object;

    #@2
    .line 100
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    :goto_4
    if-ge v2, v1, :cond_38

    #@6
    .line 102
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->isDisposed()Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_38

    #@c
    .line 103
    aget-object v3, v0, v2

    #@e
    if-nez v3, :cond_30

    #@10
    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->downstream:Lio/reactivex/Observer;

    #@12
    new-instance v1, Ljava/lang/NullPointerException;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    const-string v4, "The element at index "

    #@18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string v3, " is null"

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2c
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    #@2f
    return-void

    #@30
    .line 108
    :cond_30
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->downstream:Lio/reactivex/Observer;

    #@32
    invoke-interface {v4, v3}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    #@35
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_4

    #@38
    .line 110
    :cond_38
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->isDisposed()Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_43

    #@3e
    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->downstream:Lio/reactivex/Observer;

    #@40
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    #@43
    :cond_43
    return-void
.end method

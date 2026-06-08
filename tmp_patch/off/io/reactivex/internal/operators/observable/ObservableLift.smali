.class public final Lio/reactivex/internal/operators/observable/ObservableLift;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableLift.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final operator:Lio/reactivex/ObservableOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableOperator<",
            "+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableOperator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/ObservableOperator<",
            "+TR;-TT;>;)V"
        }
    .end annotation

    #@0
    .line 35
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    #@3
    .line 36
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableLift;->operator:Lio/reactivex/ObservableOperator;

    #@5
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "Operator "

    #@2
    .line 43
    :try_start_2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLift;->operator:Lio/reactivex/ObservableOperator;

    #@4
    invoke-interface {v1, p1}, Lio/reactivex/ObservableOperator;->apply(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    #@7
    move-result-object p1

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLift;->operator:Lio/reactivex/ObservableOperator;

    #@f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, " returned a null Observer"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@20
    move-result-object p1

    #@21
    check-cast p1, Lio/reactivex/Observer;
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_23} :catch_3b
    .catchall {:try_start_2 .. :try_end_23} :catchall_29

    #@23
    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLift;->source:Lio/reactivex/ObservableSource;

    #@25
    invoke-interface {v0, p1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@28
    return-void

    #@29
    :catchall_29
    move-exception p1

    #@2a
    .line 47
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    #@2d
    .line 50
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@30
    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    #@32
    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    #@34
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@37
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3a
    .line 54
    throw v0

    #@3b
    :catch_3b
    move-exception p1

    #@3c
    .line 45
    throw p1
.end method

.class public final Lio/reactivex/internal/operators/single/SingleDoAfterSuccess;
.super Lio/reactivex/Single;
.source "SingleDoAfterSuccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleDoAfterSuccess$DoAfterObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final onAfterSuccess:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource<",
            "TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 35
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoAfterSuccess;->source:Lio/reactivex/SingleSource;

    #@5
    .line 37
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDoAfterSuccess;->onAfterSuccess:Lio/reactivex/functions/Consumer;

    #@7
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 42
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoAfterSuccess;->source:Lio/reactivex/SingleSource;

    #@2
    new-instance v1, Lio/reactivex/internal/operators/single/SingleDoAfterSuccess$DoAfterObserver;

    #@4
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleDoAfterSuccess;->onAfterSuccess:Lio/reactivex/functions/Consumer;

    #@6
    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/SingleDoAfterSuccess$DoAfterObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Consumer;)V

    #@9
    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    #@c
    return-void
.end method

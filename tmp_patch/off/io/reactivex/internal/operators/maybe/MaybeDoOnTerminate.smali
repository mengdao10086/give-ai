.class public final Lio/reactivex/internal/operators/maybe/MaybeDoOnTerminate;
.super Lio/reactivex/Maybe;
.source "MaybeDoOnTerminate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeDoOnTerminate$DoOnTerminate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final onTerminate:Lio/reactivex/functions/Action;

.field final source:Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Action;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource<",
            "TT;>;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    #@0
    .line 30
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDoOnTerminate;->source:Lio/reactivex/MaybeSource;

    #@5
    .line 32
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeDoOnTerminate;->onTerminate:Lio/reactivex/functions/Action;

    #@7
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 37
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDoOnTerminate;->source:Lio/reactivex/MaybeSource;

    #@2
    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeDoOnTerminate$DoOnTerminate;

    #@4
    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeDoOnTerminate$DoOnTerminate;-><init>(Lio/reactivex/internal/operators/maybe/MaybeDoOnTerminate;Lio/reactivex/MaybeObserver;)V

    #@7
    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    #@a
    return-void
.end method

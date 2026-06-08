.class public final Lio/reactivex/internal/operators/maybe/MaybeNever;
.super Lio/reactivex/Maybe;
.source "MaybeNever.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Maybe<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/reactivex/internal/operators/maybe/MaybeNever;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 24
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeNever;

    #@2
    invoke-direct {v0}, Lio/reactivex/internal/operators/maybe/MaybeNever;-><init>()V

    #@5
    sput-object v0, Lio/reactivex/internal/operators/maybe/MaybeNever;->INSTANCE:Lio/reactivex/internal/operators/maybe/MaybeNever;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 22
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 28
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@2
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@5
    return-void
.end method

.class public final Lio/reactivex/internal/operators/completable/CompletableNever;
.super Lio/reactivex/Completable;
.source "CompletableNever.java"


# static fields
.field public static final INSTANCE:Lio/reactivex/Completable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 20
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableNever;

    #@2
    invoke-direct {v0}, Lio/reactivex/internal/operators/completable/CompletableNever;-><init>()V

    #@5
    sput-object v0, Lio/reactivex/internal/operators/completable/CompletableNever;->INSTANCE:Lio/reactivex/Completable;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 22
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .registers 3

    #@0
    .line 27
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

    #@2
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@5
    return-void
.end method

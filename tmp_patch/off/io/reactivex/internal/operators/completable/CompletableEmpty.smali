.class public final Lio/reactivex/internal/operators/completable/CompletableEmpty;
.super Lio/reactivex/Completable;
.source "CompletableEmpty.java"


# static fields
.field public static final INSTANCE:Lio/reactivex/Completable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 20
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableEmpty;

    #@2
    invoke-direct {v0}, Lio/reactivex/internal/operators/completable/CompletableEmpty;-><init>()V

    #@5
    sput-object v0, Lio/reactivex/internal/operators/completable/CompletableEmpty;->INSTANCE:Lio/reactivex/Completable;

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
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .registers 2

    #@0
    .line 27
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/CompletableObserver;)V

    #@3
    return-void
.end method

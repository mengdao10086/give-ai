.class public final enum Lio/reactivex/internal/util/EmptyComponent;
.super Ljava/lang/Enum;
.source "EmptyComponent.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/CompletableObserver;
.implements Lorg/reactivestreams/Subscription;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/util/EmptyComponent;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/SingleObserver<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/CompletableObserver;",
        "Lorg/reactivestreams/Subscription;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/util/EmptyComponent;

.field public static final enum INSTANCE:Lio/reactivex/internal/util/EmptyComponent;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 27
    new-instance v0, Lio/reactivex/internal/util/EmptyComponent;

    #@2
    const-string v1, "INSTANCE"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/util/EmptyComponent;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    #@a
    const/4 v1, 0x1

    #@b
    new-array v1, v1, [Lio/reactivex/internal/util/EmptyComponent;

    #@d
    aput-object v0, v1, v2

    #@f
    .line 25
    sput-object v1, Lio/reactivex/internal/util/EmptyComponent;->$VALUES:[Lio/reactivex/internal/util/EmptyComponent;

    #@11
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static asObserver()Lio/reactivex/Observer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Observer<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 36
    sget-object v0, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    #@2
    return-object v0
.end method

.method public static asSubscriber()Lorg/reactivestreams/Subscriber;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 31
    sget-object v0, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    #@2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/EmptyComponent;
    .registers 2

    #@0
    .line 25
    const-class v0, Lio/reactivex/internal/util/EmptyComponent;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/internal/util/EmptyComponent;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/util/EmptyComponent;
    .registers 1

    #@0
    .line 25
    sget-object v0, Lio/reactivex/internal/util/EmptyComponent;->$VALUES:[Lio/reactivex/internal/util/EmptyComponent;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/internal/util/EmptyComponent;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/util/EmptyComponent;

    #@8
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    #@0
    return-void
.end method

.method public dispose()V
    .registers 1

    #@0
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onComplete()V
    .registers 1

    #@0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    #@0
    .line 76
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2

    #@0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    #@0
    .line 61
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@3
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 2

    #@0
    .line 66
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    #@3
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 2

    #@0
    return-void
.end method

.method public request(J)V
    .registers 3

    #@0
    return-void
.end method

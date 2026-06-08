.class public final Lio/reactivex/internal/subscribers/BlockingLastSubscriber;
.super Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;
.source "BlockingLastSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BlockingBaseSubscriber<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 21
    invoke-direct {p0}, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 30
    iput-object v0, p0, Lio/reactivex/internal/subscribers/BlockingLastSubscriber;->value:Ljava/lang/Object;

    #@3
    .line 31
    iput-object p1, p0, Lio/reactivex/internal/subscribers/BlockingLastSubscriber;->error:Ljava/lang/Throwable;

    #@5
    .line 32
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BlockingLastSubscriber;->countDown()V

    #@8
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 25
    iput-object p1, p0, Lio/reactivex/internal/subscribers/BlockingLastSubscriber;->value:Ljava/lang/Object;

    #@2
    return-void
.end method

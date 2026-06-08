.class public final Lio/reactivex/internal/util/BlockingIgnoringReceiver;
.super Ljava/util/concurrent/CountDownLatch;
.source "BlockingIgnoringReceiver.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;",
        "Lio/reactivex/functions/Action;"
    }
.end annotation


# instance fields
.field public error:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 29
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@4
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 23
    check-cast p1, Ljava/lang/Throwable;

    #@2
    invoke-virtual {p0, p1}, Lio/reactivex/internal/util/BlockingIgnoringReceiver;->accept(Ljava/lang/Throwable;)V

    #@5
    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .registers 2

    #@0
    .line 34
    iput-object p1, p0, Lio/reactivex/internal/util/BlockingIgnoringReceiver;->error:Ljava/lang/Throwable;

    #@2
    .line 35
    invoke-virtual {p0}, Lio/reactivex/internal/util/BlockingIgnoringReceiver;->countDown()V

    #@5
    return-void
.end method

.method public run()V
    .registers 1

    #@0
    .line 40
    invoke-virtual {p0}, Lio/reactivex/internal/util/BlockingIgnoringReceiver;->countDown()V

    #@3
    return-void
.end method

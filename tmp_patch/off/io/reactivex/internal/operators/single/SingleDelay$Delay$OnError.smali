.class final Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnError;
.super Ljava/lang/Object;
.source "SingleDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleDelay$Delay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnError"
.end annotation


# instance fields
.field private final e:Ljava/lang/Throwable;

.field final synthetic this$1:Lio/reactivex/internal/operators/single/SingleDelay$Delay;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleDelay$Delay;Ljava/lang/Throwable;)V
    .registers 3

    #@0
    .line 86
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnError;->this$1:Lio/reactivex/internal/operators/single/SingleDelay$Delay;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 87
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnError;->e:Ljava/lang/Throwable;

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnError;->this$1:Lio/reactivex/internal/operators/single/SingleDelay$Delay;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->downstream:Lio/reactivex/SingleObserver;

    #@4
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnError;->e:Ljava/lang/Throwable;

    #@6
    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    #@9
    return-void
.end method

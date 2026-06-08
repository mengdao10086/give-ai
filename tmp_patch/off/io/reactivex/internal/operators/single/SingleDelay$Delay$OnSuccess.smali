.class final Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess;
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
    name = "OnSuccess"
.end annotation


# instance fields
.field final synthetic this$1:Lio/reactivex/internal/operators/single/SingleDelay$Delay;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleDelay$Delay;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 73
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess;->this$1:Lio/reactivex/internal/operators/single/SingleDelay$Delay;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 74
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess;->value:Ljava/lang/Object;

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess;->this$1:Lio/reactivex/internal/operators/single/SingleDelay$Delay;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleDelay$Delay;->downstream:Lio/reactivex/SingleObserver;

    #@4
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess;->value:Ljava/lang/Object;

    #@6
    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    #@9
    return-void
.end method

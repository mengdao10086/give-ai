.class final Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$SingletonArrayFunc;
.super Ljava/lang/Object;
.source "FlowableCombineLatest.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SingletonArrayFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;)V
    .registers 2

    #@0
    .line 551
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$SingletonArrayFunc;->this$0:Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 554
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$SingletonArrayFunc;->this$0:Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;

    #@2
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->combiner:Lio/reactivex/functions/Function;

    #@4
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object p1, v1, v2

    #@a
    invoke-interface {v0, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    return-object p1
.end method

.class public final Lio/reactivex/internal/operators/flowable/FlowableElementAtSingle;
.super Lio/reactivex/Single;
.source "FlowableElementAtSingle.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/FuseToFlowable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableElementAtSingle$ElementAtSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/FuseToFlowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final index:J

.field final source:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;JLjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;JTT;)V"
        }
    .end annotation

    #@0
    .line 33
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtSingle;->source:Lio/reactivex/Flowable;

    #@5
    .line 35
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtSingle;->index:J

    #@7
    .line 36
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtSingle;->defaultValue:Ljava/lang/Object;

    #@9
    return-void
.end method


# virtual methods
.method public fuseToFlowable()Lio/reactivex/Flowable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 46
    new-instance v6, Lio/reactivex/internal/operators/flowable/FlowableElementAt;

    #@2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtSingle;->source:Lio/reactivex/Flowable;

    #@4
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtSingle;->index:J

    #@6
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtSingle;->defaultValue:Ljava/lang/Object;

    #@8
    const/4 v5, 0x1

    #@9
    move-object v0, v6

    #@a
    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableElementAt;-><init>(Lio/reactivex/Flowable;JLjava/lang/Object;Z)V

    #@d
    invoke-static {v6}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 41
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtSingle;->source:Lio/reactivex/Flowable;

    #@2
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableElementAtSingle$ElementAtSubscriber;

    #@4
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtSingle;->index:J

    #@6
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableElementAtSingle;->defaultValue:Ljava/lang/Object;

    #@8
    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableElementAtSingle$ElementAtSubscriber;-><init>(Lio/reactivex/SingleObserver;JLjava/lang/Object;)V

    #@b
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    #@e
    return-void
.end method

.class final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;
.super Ljava/lang/Object;
.source "ObservableTimeoutTimed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutTask"
.end annotation


# instance fields
.field final idx:J

.field final parent:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;)V
    .registers 4

    #@0
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 159
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;->idx:J

    #@5
    .line 160
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;->parent:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;->parent:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;

    #@2
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;->idx:J

    #@4
    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;->onTimeout(J)V

    #@7
    return-void
.end method

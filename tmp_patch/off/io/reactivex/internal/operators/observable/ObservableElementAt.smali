.class public final Lio/reactivex/internal/operators/observable/ObservableElementAt;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableElementAt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
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

.field final errorOnFewer:Z

.field final index:J


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JLjava/lang/Object;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;JTT;Z)V"
        }
    .end annotation

    #@0
    .line 29
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    #@3
    .line 30
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt;->index:J

    #@5
    .line 31
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt;->defaultValue:Ljava/lang/Object;

    #@7
    .line 32
    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt;->errorOnFewer:Z

    #@9
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 37
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt;->source:Lio/reactivex/ObservableSource;

    #@2
    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;

    #@4
    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt;->index:J

    #@6
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt;->defaultValue:Ljava/lang/Object;

    #@8
    iget-boolean v6, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt;->errorOnFewer:Z

    #@a
    move-object v1, v7

    #@b
    move-object v2, p1

    #@c
    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;-><init>(Lio/reactivex/Observer;JLjava/lang/Object;Z)V

    #@f
    invoke-interface {v0, v7}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    #@12
    return-void
.end method

.class public final Lio/reactivex/internal/operators/observable/ObservableRange;
.super Lio/reactivex/Observable;
.source "ObservableRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final end:J

.field private final start:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    #@0
    .line 26
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    #@3
    .line 27
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->start:I

    #@5
    int-to-long v0, p1

    #@6
    int-to-long p1, p2

    #@7
    add-long/2addr v0, p1

    #@8
    .line 28
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->end:J

    #@a
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 33
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;

    #@2
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->start:I

    #@4
    int-to-long v2, v0

    #@5
    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->end:J

    #@7
    move-object v0, v6

    #@8
    move-object v1, p1

    #@9
    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;-><init>(Lio/reactivex/Observer;JJ)V

    #@c
    .line 34
    invoke-interface {p1, v6}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    #@f
    .line 35
    invoke-virtual {v6}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->run()V

    #@12
    return-void
.end method

.class public final Lio/reactivex/internal/util/ExceptionHelper;
.super Ljava/lang/Object;
.source "ExceptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/util/ExceptionHelper$Termination;
    }
.end annotation


# static fields
.field public static final TERMINATED:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 53
    new-instance v0, Lio/reactivex/internal/util/ExceptionHelper$Termination;

    #@2
    invoke-direct {v0}, Lio/reactivex/internal/util/ExceptionHelper$Termination;-><init>()V

    #@5
    sput-object v0, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string v1, "No instances!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    #@0
    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/Throwable;

    #@6
    .line 59
    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    #@8
    const/4 v2, 0x0

    #@9
    if-ne v0, v1, :cond_c

    #@b
    return v2

    #@c
    :cond_c
    const/4 v1, 0x1

    #@d
    if-nez v0, :cond_11

    #@f
    move-object v3, p1

    #@10
    goto :goto_1d

    #@11
    .line 67
    :cond_11
    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    #@13
    const/4 v4, 0x2

    #@14
    new-array v4, v4, [Ljava/lang/Throwable;

    #@16
    aput-object v0, v4, v2

    #@18
    aput-object p1, v4, v1

    #@1a
    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    #@1d
    .line 70
    :goto_1d
    invoke-static {p0, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    return v1
.end method

.method public static flatten(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    #@0
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 91
    new-instance v1, Ljava/util/ArrayDeque;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    #@a
    .line 92
    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    #@d
    .line 94
    :cond_d
    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@10
    move-result p0

    #@11
    if-nez p0, :cond_39

    #@13
    .line 95
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    #@16
    move-result-object p0

    #@17
    check-cast p0, Ljava/lang/Throwable;

    #@19
    .line 96
    instance-of v2, p0, Lio/reactivex/exceptions/CompositeException;

    #@1b
    if-eqz v2, :cond_35

    #@1d
    .line 97
    check-cast p0, Lio/reactivex/exceptions/CompositeException;

    #@1f
    .line 98
    invoke-virtual {p0}, Lio/reactivex/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    #@22
    move-result-object p0

    #@23
    .line 99
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@26
    move-result v2

    #@27
    add-int/lit8 v2, v2, -0x1

    #@29
    :goto_29
    if-ltz v2, :cond_d

    #@2b
    .line 100
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->offerFirst(Ljava/lang/Object;)Z

    #@32
    add-int/lit8 v2, v2, -0x1

    #@34
    goto :goto_29

    #@35
    .line 103
    :cond_35
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_d

    #@39
    :cond_39
    return-object v0
.end method

.method public static terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    #@0
    .line 77
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/Throwable;

    #@6
    .line 78
    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    #@8
    if-eq v0, v1, :cond_11

    #@a
    .line 79
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object p0

    #@e
    move-object v0, p0

    #@f
    check-cast v0, Ljava/lang/Throwable;

    #@11
    :cond_11
    return-object v0
.end method

.method public static throwIfThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Exception;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .line 119
    instance-of v0, p0, Ljava/lang/Exception;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 120
    check-cast p0, Ljava/lang/Exception;

    #@6
    return-object p0

    #@7
    .line 122
    :cond_7
    throw p0
.end method

.method public static timeoutMessage(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .registers 5

    #@0
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "The source did not signal an event for "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a
    move-result-object p0

    #@b
    const-string p1, " "

    #@d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object p0

    #@11
    .line 129
    invoke-virtual {p2}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p0

    #@1d
    const-string p1, " and has been terminated."

    #@1f
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object p0

    #@23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object p0

    #@27
    return-object p0
.end method

.method public static wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2

    #@0
    .line 40
    instance-of v0, p0, Ljava/lang/Error;

    #@2
    if-nez v0, :cond_11

    #@4
    .line 43
    instance-of v0, p0, Ljava/lang/RuntimeException;

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 44
    check-cast p0, Ljava/lang/RuntimeException;

    #@a
    return-object p0

    #@b
    .line 46
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@10
    return-object v0

    #@11
    .line 41
    :cond_11
    check-cast p0, Ljava/lang/Error;

    #@13
    throw p0
.end method

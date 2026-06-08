.class public final Lio/reactivex/exceptions/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string v1, "No instances!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 1

    #@0
    .line 46
    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    #@3
    move-result-object p0

    #@4
    throw p0
.end method

.method public static throwIfFatal(Ljava/lang/Throwable;)V
    .registers 2

    #@0
    .line 68
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    #@2
    if-nez v0, :cond_13

    #@4
    .line 70
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    #@6
    if-nez v0, :cond_10

    #@8
    .line 72
    instance-of v0, p0, Ljava/lang/LinkageError;

    #@a
    if-nez v0, :cond_d

    #@c
    return-void

    #@d
    .line 73
    :cond_d
    check-cast p0, Ljava/lang/LinkageError;

    #@f
    throw p0

    #@10
    .line 71
    :cond_10
    check-cast p0, Ljava/lang/ThreadDeath;

    #@12
    throw p0

    #@13
    .line 69
    :cond_13
    check-cast p0, Ljava/lang/VirtualMachineError;

    #@15
    throw p0
.end method

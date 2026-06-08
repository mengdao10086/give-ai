.class final Lio/reactivex/disposables/RunnableDisposable;
.super Lio/reactivex/disposables/ReferenceDisposable;
.source "RunnableDisposable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/disposables/ReferenceDisposable<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x721258278bee89a1L


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    .line 25
    invoke-direct {p0, p1}, Lio/reactivex/disposables/ReferenceDisposable;-><init>(Ljava/lang/Object;)V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic onDisposed(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 20
    check-cast p1, Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, p1}, Lio/reactivex/disposables/RunnableDisposable;->onDisposed(Ljava/lang/Runnable;)V

    #@5
    return-void
.end method

.method protected onDisposed(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    .line 30
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "RunnableDisposable(disposed="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {p0}, Lio/reactivex/disposables/RunnableDisposable;->isDisposed()Z

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, ", "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0}, Lio/reactivex/disposables/RunnableDisposable;->get()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, ")"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

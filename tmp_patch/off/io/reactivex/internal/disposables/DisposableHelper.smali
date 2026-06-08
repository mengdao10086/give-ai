.class public final enum Lio/reactivex/internal/disposables/DisposableHelper;
.super Ljava/lang/Enum;
.source "DisposableHelper.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/disposables/DisposableHelper;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/disposables/DisposableHelper;

.field public static final enum DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 30
    new-instance v0, Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    const-string v1, "DISPOSED"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/disposables/DisposableHelper;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@a
    const/4 v1, 0x1

    #@b
    new-array v1, v1, [Lio/reactivex/internal/disposables/DisposableHelper;

    #@d
    aput-object v0, v1, v2

    #@f
    .line 26
    sput-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->$VALUES:[Lio/reactivex/internal/disposables/DisposableHelper;

    #@11
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;)Z"
        }
    .end annotation

    #@0
    .line 118
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@6
    .line 119
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@8
    if-eq v0, v1, :cond_19

    #@a
    .line 121
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object p0

    #@e
    check-cast p0, Lio/reactivex/disposables/Disposable;

    #@10
    if-eq p0, v1, :cond_19

    #@12
    if-eqz p0, :cond_17

    #@14
    .line 124
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@17
    :cond_17
    const/4 p0, 0x1

    #@18
    return p0

    #@19
    :cond_19
    const/4 p0, 0x0

    #@1a
    return p0
.end method

.method public static isDisposed(Lio/reactivex/disposables/Disposable;)Z
    .registers 2

    #@0
    .line 39
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    if-ne p0, v0, :cond_6

    #@4
    const/4 p0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 p0, 0x0

    #@7
    :goto_7
    return p0
.end method

.method public static replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Lio/reactivex/disposables/Disposable;",
            ")Z"
        }
    .end annotation

    #@0
    .line 99
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@6
    .line 100
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@8
    if-ne v0, v1, :cond_11

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 102
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@f
    :cond_f
    const/4 p0, 0x0

    #@10
    return p0

    #@11
    .line 106
    :cond_11
    invoke-static {p0, v0, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    const/4 p0, 0x1

    #@18
    return p0
.end method

.method public static reportDisposableSet()V
    .registers 2

    #@0
    .line 156
    new-instance v0, Lio/reactivex/exceptions/ProtocolViolationException;

    #@2
    const-string v1, "Disposable already set!"

    #@4
    invoke-direct {v0, v1}, Lio/reactivex/exceptions/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    #@7
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@a
    return-void
.end method

.method public static set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Lio/reactivex/disposables/Disposable;",
            ")Z"
        }
    .end annotation

    #@0
    .line 50
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lio/reactivex/disposables/Disposable;

    #@6
    .line 51
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@8
    if-ne v0, v1, :cond_11

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 53
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@f
    :cond_f
    const/4 p0, 0x0

    #@10
    return p0

    #@11
    .line 57
    :cond_11
    invoke-static {p0, v0, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    if-eqz v0, :cond_1c

    #@19
    .line 59
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@1c
    :cond_1c
    const/4 p0, 0x1

    #@1d
    return p0
.end method

.method public static setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Lio/reactivex/disposables/Disposable;",
            ")Z"
        }
    .end annotation

    #@0
    const-string v0, "d is null"

    #@2
    .line 78
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    const/4 v0, 0x0

    #@6
    .line 79
    invoke-static {p0, v0, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1c

    #@c
    .line 80
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@f
    .line 81
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@12
    move-result-object p0

    #@13
    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@15
    if-eq p0, p1, :cond_1a

    #@17
    .line 82
    invoke-static {}, Lio/reactivex/internal/disposables/DisposableHelper;->reportDisposableSet()V

    #@1a
    :cond_1a
    const/4 p0, 0x0

    #@1b
    return p0

    #@1c
    :cond_1c
    const/4 p0, 0x1

    #@1d
    return p0
.end method

.method public static trySet(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Lio/reactivex/disposables/Disposable;",
            ")Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 167
    invoke-static {p0, v0, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_14

    #@7
    .line 168
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@a
    move-result-object p0

    #@b
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    #@d
    if-ne p0, v0, :cond_12

    #@f
    .line 169
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@12
    :cond_12
    const/4 p0, 0x0

    #@13
    return p0

    #@14
    :cond_14
    const/4 p0, 0x1

    #@15
    return p0
.end method

.method public static validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_e

    #@3
    .line 141
    new-instance p0, Ljava/lang/NullPointerException;

    #@5
    const-string p1, "next is null"

    #@7
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@d
    return v0

    #@e
    :cond_e
    if-eqz p0, :cond_17

    #@10
    .line 145
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    #@13
    .line 146
    invoke-static {}, Lio/reactivex/internal/disposables/DisposableHelper;->reportDisposableSet()V

    #@16
    return v0

    #@17
    :cond_17
    const/4 p0, 0x1

    #@18
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/disposables/DisposableHelper;
    .registers 2

    #@0
    .line 26
    const-class v0, Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/internal/disposables/DisposableHelper;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/disposables/DisposableHelper;
    .registers 1

    #@0
    .line 26
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->$VALUES:[Lio/reactivex/internal/disposables/DisposableHelper;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/internal/disposables/DisposableHelper;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/disposables/DisposableHelper;

    #@8
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .registers 1

    #@0
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

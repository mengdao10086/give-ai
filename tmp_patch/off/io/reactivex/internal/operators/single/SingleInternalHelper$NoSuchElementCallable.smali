.class final enum Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;
.super Ljava/lang/Enum;
.source "SingleInternalHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NoSuchElementCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;",
        ">;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/NoSuchElementException;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

.field public static final enum INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 36
    new-instance v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    #@2
    const-string v1, "INSTANCE"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;->INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    #@a
    const/4 v1, 0x1

    #@b
    new-array v1, v1, [Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    #@d
    aput-object v0, v1, v2

    #@f
    .line 35
    sput-object v1, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;->$VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;
    .registers 2

    #@0
    .line 35
    const-class v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;
    .registers 1

    #@0
    .line 35
    sget-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;->$VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    #@8
    return-object v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 35
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;->call()Ljava/util/NoSuchElementException;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public call()Ljava/util/NoSuchElementException;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 40
    new-instance v0, Ljava/util/NoSuchElementException;

    #@2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@5
    return-object v0
.end method

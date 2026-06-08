.class public final enum Lio/reactivex/parallel/ParallelFailureHandling;
.super Ljava/lang/Enum;
.source "ParallelFailureHandling.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/parallel/ParallelFailureHandling;",
        ">;",
        "Lio/reactivex/functions/BiFunction<",
        "Ljava/lang/Long;",
        "Ljava/lang/Throwable;",
        "Lio/reactivex/parallel/ParallelFailureHandling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/parallel/ParallelFailureHandling;

.field public static final enum ERROR:Lio/reactivex/parallel/ParallelFailureHandling;

.field public static final enum RETRY:Lio/reactivex/parallel/ParallelFailureHandling;

.field public static final enum SKIP:Lio/reactivex/parallel/ParallelFailureHandling;

.field public static final enum STOP:Lio/reactivex/parallel/ParallelFailureHandling;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    #@0
    .line 27
    new-instance v0, Lio/reactivex/parallel/ParallelFailureHandling;

    #@2
    const-string v1, "STOP"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/parallel/ParallelFailureHandling;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/parallel/ParallelFailureHandling;->STOP:Lio/reactivex/parallel/ParallelFailureHandling;

    #@a
    .line 31
    new-instance v1, Lio/reactivex/parallel/ParallelFailureHandling;

    #@c
    const-string v3, "ERROR"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Lio/reactivex/parallel/ParallelFailureHandling;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Lio/reactivex/parallel/ParallelFailureHandling;->ERROR:Lio/reactivex/parallel/ParallelFailureHandling;

    #@14
    .line 35
    new-instance v3, Lio/reactivex/parallel/ParallelFailureHandling;

    #@16
    const-string v5, "SKIP"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Lio/reactivex/parallel/ParallelFailureHandling;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Lio/reactivex/parallel/ParallelFailureHandling;->SKIP:Lio/reactivex/parallel/ParallelFailureHandling;

    #@1e
    .line 39
    new-instance v5, Lio/reactivex/parallel/ParallelFailureHandling;

    #@20
    const-string v7, "RETRY"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Lio/reactivex/parallel/ParallelFailureHandling;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Lio/reactivex/parallel/ParallelFailureHandling;->RETRY:Lio/reactivex/parallel/ParallelFailureHandling;

    #@28
    const/4 v7, 0x4

    #@29
    new-array v7, v7, [Lio/reactivex/parallel/ParallelFailureHandling;

    #@2b
    aput-object v0, v7, v2

    #@2d
    aput-object v1, v7, v4

    #@2f
    aput-object v3, v7, v6

    #@31
    aput-object v5, v7, v8

    #@33
    .line 23
    sput-object v7, Lio/reactivex/parallel/ParallelFailureHandling;->$VALUES:[Lio/reactivex/parallel/ParallelFailureHandling;

    #@35
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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/parallel/ParallelFailureHandling;
    .registers 2

    #@0
    .line 23
    const-class v0, Lio/reactivex/parallel/ParallelFailureHandling;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/parallel/ParallelFailureHandling;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/parallel/ParallelFailureHandling;
    .registers 1

    #@0
    .line 23
    sget-object v0, Lio/reactivex/parallel/ParallelFailureHandling;->$VALUES:[Lio/reactivex/parallel/ParallelFailureHandling;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/parallel/ParallelFailureHandling;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/parallel/ParallelFailureHandling;

    #@8
    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Long;Ljava/lang/Throwable;)Lio/reactivex/parallel/ParallelFailureHandling;
    .registers 3

    #@0
    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 23
    check-cast p1, Ljava/lang/Long;

    #@2
    check-cast p2, Ljava/lang/Throwable;

    #@4
    invoke-virtual {p0, p1, p2}, Lio/reactivex/parallel/ParallelFailureHandling;->apply(Ljava/lang/Long;Ljava/lang/Throwable;)Lio/reactivex/parallel/ParallelFailureHandling;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

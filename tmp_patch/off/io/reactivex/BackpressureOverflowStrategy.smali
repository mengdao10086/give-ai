.class public final enum Lio/reactivex/BackpressureOverflowStrategy;
.super Ljava/lang/Enum;
.source "BackpressureOverflowStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/BackpressureOverflowStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/BackpressureOverflowStrategy;

.field public static final enum DROP_LATEST:Lio/reactivex/BackpressureOverflowStrategy;

.field public static final enum DROP_OLDEST:Lio/reactivex/BackpressureOverflowStrategy;

.field public static final enum ERROR:Lio/reactivex/BackpressureOverflowStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    .line 23
    new-instance v0, Lio/reactivex/BackpressureOverflowStrategy;

    #@2
    const-string v1, "ERROR"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/BackpressureOverflowStrategy;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/BackpressureOverflowStrategy;->ERROR:Lio/reactivex/BackpressureOverflowStrategy;

    #@a
    .line 25
    new-instance v1, Lio/reactivex/BackpressureOverflowStrategy;

    #@c
    const-string v3, "DROP_OLDEST"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Lio/reactivex/BackpressureOverflowStrategy;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Lio/reactivex/BackpressureOverflowStrategy;->DROP_OLDEST:Lio/reactivex/BackpressureOverflowStrategy;

    #@14
    .line 27
    new-instance v3, Lio/reactivex/BackpressureOverflowStrategy;

    #@16
    const-string v5, "DROP_LATEST"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Lio/reactivex/BackpressureOverflowStrategy;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Lio/reactivex/BackpressureOverflowStrategy;->DROP_LATEST:Lio/reactivex/BackpressureOverflowStrategy;

    #@1e
    const/4 v5, 0x3

    #@1f
    new-array v5, v5, [Lio/reactivex/BackpressureOverflowStrategy;

    #@21
    aput-object v0, v5, v2

    #@23
    aput-object v1, v5, v4

    #@25
    aput-object v3, v5, v6

    #@27
    .line 21
    sput-object v5, Lio/reactivex/BackpressureOverflowStrategy;->$VALUES:[Lio/reactivex/BackpressureOverflowStrategy;

    #@29
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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/BackpressureOverflowStrategy;
    .registers 2

    #@0
    .line 21
    const-class v0, Lio/reactivex/BackpressureOverflowStrategy;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/BackpressureOverflowStrategy;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/BackpressureOverflowStrategy;
    .registers 1

    #@0
    .line 21
    sget-object v0, Lio/reactivex/BackpressureOverflowStrategy;->$VALUES:[Lio/reactivex/BackpressureOverflowStrategy;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/BackpressureOverflowStrategy;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/BackpressureOverflowStrategy;

    #@8
    return-object v0
.end method

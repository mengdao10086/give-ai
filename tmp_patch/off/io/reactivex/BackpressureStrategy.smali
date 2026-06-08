.class public final enum Lio/reactivex/BackpressureStrategy;
.super Ljava/lang/Enum;
.source "BackpressureStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/BackpressureStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/BackpressureStrategy;

.field public static final enum BUFFER:Lio/reactivex/BackpressureStrategy;

.field public static final enum DROP:Lio/reactivex/BackpressureStrategy;

.field public static final enum ERROR:Lio/reactivex/BackpressureStrategy;

.field public static final enum LATEST:Lio/reactivex/BackpressureStrategy;

.field public static final enum MISSING:Lio/reactivex/BackpressureStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    #@0
    .line 25
    new-instance v0, Lio/reactivex/BackpressureStrategy;

    #@2
    const-string v1, "MISSING"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/BackpressureStrategy;->MISSING:Lio/reactivex/BackpressureStrategy;

    #@a
    .line 29
    new-instance v1, Lio/reactivex/BackpressureStrategy;

    #@c
    const-string v3, "ERROR"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Lio/reactivex/BackpressureStrategy;->ERROR:Lio/reactivex/BackpressureStrategy;

    #@14
    .line 33
    new-instance v3, Lio/reactivex/BackpressureStrategy;

    #@16
    const-string v5, "BUFFER"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    #@1e
    .line 37
    new-instance v5, Lio/reactivex/BackpressureStrategy;

    #@20
    const-string v7, "DROP"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    #@28
    .line 42
    new-instance v7, Lio/reactivex/BackpressureStrategy;

    #@2a
    const-string v9, "LATEST"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    #@32
    const/4 v9, 0x5

    #@33
    new-array v9, v9, [Lio/reactivex/BackpressureStrategy;

    #@35
    aput-object v0, v9, v2

    #@37
    aput-object v1, v9, v4

    #@39
    aput-object v3, v9, v6

    #@3b
    aput-object v5, v9, v8

    #@3d
    aput-object v7, v9, v10

    #@3f
    .line 19
    sput-object v9, Lio/reactivex/BackpressureStrategy;->$VALUES:[Lio/reactivex/BackpressureStrategy;

    #@41
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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/BackpressureStrategy;
    .registers 2

    #@0
    .line 19
    const-class v0, Lio/reactivex/BackpressureStrategy;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/BackpressureStrategy;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/BackpressureStrategy;
    .registers 1

    #@0
    .line 19
    sget-object v0, Lio/reactivex/BackpressureStrategy;->$VALUES:[Lio/reactivex/BackpressureStrategy;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/BackpressureStrategy;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/BackpressureStrategy;

    #@8
    return-object v0
.end method

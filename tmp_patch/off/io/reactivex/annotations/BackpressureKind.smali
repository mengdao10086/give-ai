.class public final enum Lio/reactivex/annotations/BackpressureKind;
.super Ljava/lang/Enum;
.source "BackpressureKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/annotations/BackpressureKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/annotations/BackpressureKind;

.field public static final enum ERROR:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum FULL:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum NONE:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum SPECIAL:Lio/reactivex/annotations/BackpressureKind;

.field public static final enum UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    #@0
    .line 24
    new-instance v0, Lio/reactivex/annotations/BackpressureKind;

    #@2
    const-string v1, "PASS_THROUGH"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/annotations/BackpressureKind;

    #@a
    .line 29
    new-instance v1, Lio/reactivex/annotations/BackpressureKind;

    #@c
    const-string v3, "FULL"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;

    #@14
    .line 33
    new-instance v3, Lio/reactivex/annotations/BackpressureKind;

    #@16
    const-string v5, "SPECIAL"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Lio/reactivex/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/annotations/BackpressureKind;

    #@1e
    .line 38
    new-instance v5, Lio/reactivex/annotations/BackpressureKind;

    #@20
    const-string v7, "UNBOUNDED_IN"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;

    #@28
    .line 43
    new-instance v7, Lio/reactivex/annotations/BackpressureKind;

    #@2a
    const-string v9, "ERROR"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Lio/reactivex/annotations/BackpressureKind;->ERROR:Lio/reactivex/annotations/BackpressureKind;

    #@32
    .line 47
    new-instance v9, Lio/reactivex/annotations/BackpressureKind;

    #@34
    const-string v11, "NONE"

    #@36
    const/4 v12, 0x5

    #@37
    invoke-direct {v9, v11, v12}, Lio/reactivex/annotations/BackpressureKind;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v9, Lio/reactivex/annotations/BackpressureKind;->NONE:Lio/reactivex/annotations/BackpressureKind;

    #@3c
    const/4 v11, 0x6

    #@3d
    new-array v11, v11, [Lio/reactivex/annotations/BackpressureKind;

    #@3f
    aput-object v0, v11, v2

    #@41
    aput-object v1, v11, v4

    #@43
    aput-object v3, v11, v6

    #@45
    aput-object v5, v11, v8

    #@47
    aput-object v7, v11, v10

    #@49
    aput-object v9, v11, v12

    #@4b
    .line 20
    sput-object v11, Lio/reactivex/annotations/BackpressureKind;->$VALUES:[Lio/reactivex/annotations/BackpressureKind;

    #@4d
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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/annotations/BackpressureKind;
    .registers 2

    #@0
    .line 20
    const-class v0, Lio/reactivex/annotations/BackpressureKind;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/annotations/BackpressureKind;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/annotations/BackpressureKind;
    .registers 1

    #@0
    .line 20
    sget-object v0, Lio/reactivex/annotations/BackpressureKind;->$VALUES:[Lio/reactivex/annotations/BackpressureKind;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/annotations/BackpressureKind;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/annotations/BackpressureKind;

    #@8
    return-object v0
.end method

.class public final enum Lio/reactivex/internal/util/ErrorMode;
.super Ljava/lang/Enum;
.source "ErrorMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/util/ErrorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/util/ErrorMode;

.field public static final enum BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

.field public static final enum END:Lio/reactivex/internal/util/ErrorMode;

.field public static final enum IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    .line 21
    new-instance v0, Lio/reactivex/internal/util/ErrorMode;

    #@2
    const-string v1, "IMMEDIATE"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/util/ErrorMode;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    #@a
    .line 23
    new-instance v1, Lio/reactivex/internal/util/ErrorMode;

    #@c
    const-string v3, "BOUNDARY"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Lio/reactivex/internal/util/ErrorMode;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    #@14
    .line 25
    new-instance v3, Lio/reactivex/internal/util/ErrorMode;

    #@16
    const-string v5, "END"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Lio/reactivex/internal/util/ErrorMode;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    #@1e
    const/4 v5, 0x3

    #@1f
    new-array v5, v5, [Lio/reactivex/internal/util/ErrorMode;

    #@21
    aput-object v0, v5, v2

    #@23
    aput-object v1, v5, v4

    #@25
    aput-object v3, v5, v6

    #@27
    .line 19
    sput-object v5, Lio/reactivex/internal/util/ErrorMode;->$VALUES:[Lio/reactivex/internal/util/ErrorMode;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/ErrorMode;
    .registers 2

    #@0
    .line 19
    const-class v0, Lio/reactivex/internal/util/ErrorMode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/internal/util/ErrorMode;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/util/ErrorMode;
    .registers 1

    #@0
    .line 19
    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->$VALUES:[Lio/reactivex/internal/util/ErrorMode;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/internal/util/ErrorMode;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/util/ErrorMode;

    #@8
    return-object v0
.end method

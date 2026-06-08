.class public final enum Lkotlin/DeprecationLevel;
.super Ljava/lang/Enum;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/DeprecationLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/DeprecationLevel;",
        "",
        "(Ljava/lang/String;I)V",
        "WARNING",
        "ERROR",
        "HIDDEN",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/DeprecationLevel;

.field public static final enum ERROR:Lkotlin/DeprecationLevel;

.field public static final enum HIDDEN:Lkotlin/DeprecationLevel;

.field public static final enum WARNING:Lkotlin/DeprecationLevel;


# direct methods
.method private static final synthetic $values()[Lkotlin/DeprecationLevel;
    .registers 3

    #@0
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Lkotlin/DeprecationLevel;

    #@3
    const/4 v1, 0x0

    #@4
    sget-object v2, Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    sget-object v2, Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    sget-object v2, Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;

    #@10
    aput-object v2, v0, v1

    #@12
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 86
    new-instance v0, Lkotlin/DeprecationLevel;

    #@2
    const-string v1, "WARNING"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lkotlin/DeprecationLevel;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;

    #@a
    .line 88
    new-instance v0, Lkotlin/DeprecationLevel;

    #@c
    const-string v1, "ERROR"

    #@e
    const/4 v2, 0x1

    #@f
    invoke-direct {v0, v1, v2}, Lkotlin/DeprecationLevel;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v0, Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;

    #@14
    .line 90
    new-instance v0, Lkotlin/DeprecationLevel;

    #@16
    const-string v1, "HIDDEN"

    #@18
    const/4 v2, 0x2

    #@19
    invoke-direct {v0, v1, v2}, Lkotlin/DeprecationLevel;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v0, Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;

    #@1e
    invoke-static {}, Lkotlin/DeprecationLevel;->$values()[Lkotlin/DeprecationLevel;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Lkotlin/DeprecationLevel;->$VALUES:[Lkotlin/DeprecationLevel;

    #@24
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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/DeprecationLevel;
    .registers 2

    #@0
    const-class v0, Lkotlin/DeprecationLevel;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lkotlin/DeprecationLevel;

    #@8
    return-object p0
.end method

.method public static values()[Lkotlin/DeprecationLevel;
    .registers 1

    #@0
    sget-object v0, Lkotlin/DeprecationLevel;->$VALUES:[Lkotlin/DeprecationLevel;

    #@2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lkotlin/DeprecationLevel;

    #@8
    return-object v0
.end method

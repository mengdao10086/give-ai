.class final enum Lkotlin/collections/State;
.super Ljava/lang/Enum;
.source "AbstractIterator.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/collections/State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/collections/State;",
        "",
        "(Ljava/lang/String;I)V",
        "Ready",
        "NotReady",
        "Done",
        "Failed",
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
.field private static final synthetic $VALUES:[Lkotlin/collections/State;

.field public static final enum Done:Lkotlin/collections/State;

.field public static final enum Failed:Lkotlin/collections/State;

.field public static final enum NotReady:Lkotlin/collections/State;

.field public static final enum Ready:Lkotlin/collections/State;


# direct methods
.method private static final synthetic $values()[Lkotlin/collections/State;
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Lkotlin/collections/State;

    #@3
    const/4 v1, 0x0

    #@4
    sget-object v2, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    sget-object v2, Lkotlin/collections/State;->NotReady:Lkotlin/collections/State;

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    sget-object v2, Lkotlin/collections/State;->Done:Lkotlin/collections/State;

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x3

    #@13
    sget-object v2, Lkotlin/collections/State;->Failed:Lkotlin/collections/State;

    #@15
    aput-object v2, v0, v1

    #@17
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 10
    new-instance v0, Lkotlin/collections/State;

    #@2
    const-string v1, "Ready"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lkotlin/collections/State;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    #@a
    .line 11
    new-instance v0, Lkotlin/collections/State;

    #@c
    const-string v1, "NotReady"

    #@e
    const/4 v2, 0x1

    #@f
    invoke-direct {v0, v1, v2}, Lkotlin/collections/State;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v0, Lkotlin/collections/State;->NotReady:Lkotlin/collections/State;

    #@14
    .line 12
    new-instance v0, Lkotlin/collections/State;

    #@16
    const-string v1, "Done"

    #@18
    const/4 v2, 0x2

    #@19
    invoke-direct {v0, v1, v2}, Lkotlin/collections/State;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v0, Lkotlin/collections/State;->Done:Lkotlin/collections/State;

    #@1e
    .line 13
    new-instance v0, Lkotlin/collections/State;

    #@20
    const-string v1, "Failed"

    #@22
    const/4 v2, 0x3

    #@23
    invoke-direct {v0, v1, v2}, Lkotlin/collections/State;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v0, Lkotlin/collections/State;->Failed:Lkotlin/collections/State;

    #@28
    invoke-static {}, Lkotlin/collections/State;->$values()[Lkotlin/collections/State;

    #@2b
    move-result-object v0

    #@2c
    sput-object v0, Lkotlin/collections/State;->$VALUES:[Lkotlin/collections/State;

    #@2e
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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/collections/State;
    .registers 2

    #@0
    const-class v0, Lkotlin/collections/State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lkotlin/collections/State;

    #@8
    return-object p0
.end method

.method public static values()[Lkotlin/collections/State;
    .registers 1

    #@0
    sget-object v0, Lkotlin/collections/State;->$VALUES:[Lkotlin/collections/State;

    #@2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lkotlin/collections/State;

    #@8
    return-object v0
.end method

.class public final enum Landroidx/constraintlayout/core/state/State$Chain;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Chain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/state/State$Chain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/state/State$Chain;

.field public static final enum PACKED:Landroidx/constraintlayout/core/state/State$Chain;

.field public static final enum SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

.field public static final enum SPREAD_INSIDE:Landroidx/constraintlayout/core/state/State$Chain;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    .line 91
    new-instance v0, Landroidx/constraintlayout/core/state/State$Chain;

    #@2
    const-string v1, "SPREAD"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/state/State$Chain;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

    #@a
    .line 92
    new-instance v1, Landroidx/constraintlayout/core/state/State$Chain;

    #@c
    const-string v3, "SPREAD_INSIDE"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Landroidx/constraintlayout/core/state/State$Chain;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/core/state/State$Chain;

    #@14
    .line 93
    new-instance v3, Landroidx/constraintlayout/core/state/State$Chain;

    #@16
    const-string v5, "PACKED"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Landroidx/constraintlayout/core/state/State$Chain;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Landroidx/constraintlayout/core/state/State$Chain;->PACKED:Landroidx/constraintlayout/core/state/State$Chain;

    #@1e
    const/4 v5, 0x3

    #@1f
    new-array v5, v5, [Landroidx/constraintlayout/core/state/State$Chain;

    #@21
    aput-object v0, v5, v2

    #@23
    aput-object v1, v5, v4

    #@25
    aput-object v3, v5, v6

    #@27
    .line 90
    sput-object v5, Landroidx/constraintlayout/core/state/State$Chain;->$VALUES:[Landroidx/constraintlayout/core/state/State$Chain;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/state/State$Chain;
    .registers 2

    #@0
    .line 90
    const-class v0, Landroidx/constraintlayout/core/state/State$Chain;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/constraintlayout/core/state/State$Chain;

    #@8
    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/core/state/State$Chain;
    .registers 1

    #@0
    .line 90
    sget-object v0, Landroidx/constraintlayout/core/state/State$Chain;->$VALUES:[Landroidx/constraintlayout/core/state/State$Chain;

    #@2
    invoke-virtual {v0}, [Landroidx/constraintlayout/core/state/State$Chain;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Landroidx/constraintlayout/core/state/State$Chain;

    #@8
    return-object v0
.end method

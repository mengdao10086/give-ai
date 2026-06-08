.class public final enum Landroidx/constraintlayout/core/SolverVariable$Type;
.super Ljava/lang/Enum;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/SolverVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/SolverVariable$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum CONSTANT:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum UNKNOWN:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    #@0
    .line 79
    new-instance v0, Landroidx/constraintlayout/core/SolverVariable$Type;

    #@2
    const-string v1, "UNRESTRICTED"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@a
    .line 83
    new-instance v1, Landroidx/constraintlayout/core/SolverVariable$Type;

    #@c
    const-string v3, "CONSTANT"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->CONSTANT:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@14
    .line 87
    new-instance v3, Landroidx/constraintlayout/core/SolverVariable$Type;

    #@16
    const-string v5, "SLACK"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@1e
    .line 91
    new-instance v5, Landroidx/constraintlayout/core/SolverVariable$Type;

    #@20
    const-string v7, "ERROR"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@28
    .line 95
    new-instance v7, Landroidx/constraintlayout/core/SolverVariable$Type;

    #@2a
    const-string v9, "UNKNOWN"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Landroidx/constraintlayout/core/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@32
    const/4 v9, 0x5

    #@33
    new-array v9, v9, [Landroidx/constraintlayout/core/SolverVariable$Type;

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
    .line 75
    sput-object v9, Landroidx/constraintlayout/core/SolverVariable$Type;->$VALUES:[Landroidx/constraintlayout/core/SolverVariable$Type;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable$Type;
    .registers 2

    #@0
    .line 75
    const-class v0, Landroidx/constraintlayout/core/SolverVariable$Type;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/constraintlayout/core/SolverVariable$Type;

    #@8
    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/core/SolverVariable$Type;
    .registers 1

    #@0
    .line 75
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->$VALUES:[Landroidx/constraintlayout/core/SolverVariable$Type;

    #@2
    invoke-virtual {v0}, [Landroidx/constraintlayout/core/SolverVariable$Type;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable$Type;

    #@8
    return-object v0
.end method

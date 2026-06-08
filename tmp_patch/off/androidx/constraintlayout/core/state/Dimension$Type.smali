.class public final enum Landroidx/constraintlayout/core/state/Dimension$Type;
.super Ljava/lang/Enum;
.source "Dimension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/Dimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/state/Dimension$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/state/Dimension$Type;

.field public static final enum FIXED:Landroidx/constraintlayout/core/state/Dimension$Type;

.field public static final enum MATCH_CONSTRAINT:Landroidx/constraintlayout/core/state/Dimension$Type;

.field public static final enum MATCH_PARENT:Landroidx/constraintlayout/core/state/Dimension$Type;

.field public static final enum WRAP:Landroidx/constraintlayout/core/state/Dimension$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    #@0
    .line 61
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension$Type;

    #@2
    const-string v1, "FIXED"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/state/Dimension$Type;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension$Type;->FIXED:Landroidx/constraintlayout/core/state/Dimension$Type;

    #@a
    .line 62
    new-instance v1, Landroidx/constraintlayout/core/state/Dimension$Type;

    #@c
    const-string v3, "WRAP"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Landroidx/constraintlayout/core/state/Dimension$Type;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Landroidx/constraintlayout/core/state/Dimension$Type;->WRAP:Landroidx/constraintlayout/core/state/Dimension$Type;

    #@14
    .line 63
    new-instance v3, Landroidx/constraintlayout/core/state/Dimension$Type;

    #@16
    const-string v5, "MATCH_PARENT"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Landroidx/constraintlayout/core/state/Dimension$Type;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Landroidx/constraintlayout/core/state/Dimension$Type;->MATCH_PARENT:Landroidx/constraintlayout/core/state/Dimension$Type;

    #@1e
    .line 64
    new-instance v5, Landroidx/constraintlayout/core/state/Dimension$Type;

    #@20
    const-string v7, "MATCH_CONSTRAINT"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Landroidx/constraintlayout/core/state/Dimension$Type;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Landroidx/constraintlayout/core/state/Dimension$Type;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/state/Dimension$Type;

    #@28
    const/4 v7, 0x4

    #@29
    new-array v7, v7, [Landroidx/constraintlayout/core/state/Dimension$Type;

    #@2b
    aput-object v0, v7, v2

    #@2d
    aput-object v1, v7, v4

    #@2f
    aput-object v3, v7, v6

    #@31
    aput-object v5, v7, v8

    #@33
    .line 60
    sput-object v7, Landroidx/constraintlayout/core/state/Dimension$Type;->$VALUES:[Landroidx/constraintlayout/core/state/Dimension$Type;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension$Type;
    .registers 2

    #@0
    .line 60
    const-class v0, Landroidx/constraintlayout/core/state/Dimension$Type;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/constraintlayout/core/state/Dimension$Type;

    #@8
    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/core/state/Dimension$Type;
    .registers 1

    #@0
    .line 60
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension$Type;->$VALUES:[Landroidx/constraintlayout/core/state/Dimension$Type;

    #@2
    invoke-virtual {v0}, [Landroidx/constraintlayout/core/state/Dimension$Type;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Landroidx/constraintlayout/core/state/Dimension$Type;

    #@8
    return-object v0
.end method

.class public final enum Landroidx/constraintlayout/core/state/State$Direction;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/state/State$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/state/State$Direction;

.field public static final enum BOTTOM:Landroidx/constraintlayout/core/state/State$Direction;

.field public static final enum END:Landroidx/constraintlayout/core/state/State$Direction;

.field public static final enum LEFT:Landroidx/constraintlayout/core/state/State$Direction;

.field public static final enum RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

.field public static final enum START:Landroidx/constraintlayout/core/state/State$Direction;

.field public static final enum TOP:Landroidx/constraintlayout/core/state/State$Direction;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    #@0
    .line 72
    new-instance v0, Landroidx/constraintlayout/core/state/State$Direction;

    #@2
    const-string v1, "LEFT"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/state/State$Direction;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Landroidx/constraintlayout/core/state/State$Direction;->LEFT:Landroidx/constraintlayout/core/state/State$Direction;

    #@a
    .line 73
    new-instance v1, Landroidx/constraintlayout/core/state/State$Direction;

    #@c
    const-string v3, "RIGHT"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Landroidx/constraintlayout/core/state/State$Direction;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Landroidx/constraintlayout/core/state/State$Direction;->RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

    #@14
    .line 74
    new-instance v3, Landroidx/constraintlayout/core/state/State$Direction;

    #@16
    const-string v5, "START"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Landroidx/constraintlayout/core/state/State$Direction;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Landroidx/constraintlayout/core/state/State$Direction;->START:Landroidx/constraintlayout/core/state/State$Direction;

    #@1e
    .line 75
    new-instance v5, Landroidx/constraintlayout/core/state/State$Direction;

    #@20
    const-string v7, "END"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Landroidx/constraintlayout/core/state/State$Direction;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Landroidx/constraintlayout/core/state/State$Direction;->END:Landroidx/constraintlayout/core/state/State$Direction;

    #@28
    .line 76
    new-instance v7, Landroidx/constraintlayout/core/state/State$Direction;

    #@2a
    const-string v9, "TOP"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Landroidx/constraintlayout/core/state/State$Direction;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Landroidx/constraintlayout/core/state/State$Direction;->TOP:Landroidx/constraintlayout/core/state/State$Direction;

    #@32
    .line 77
    new-instance v9, Landroidx/constraintlayout/core/state/State$Direction;

    #@34
    const-string v11, "BOTTOM"

    #@36
    const/4 v12, 0x5

    #@37
    invoke-direct {v9, v11, v12}, Landroidx/constraintlayout/core/state/State$Direction;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v9, Landroidx/constraintlayout/core/state/State$Direction;->BOTTOM:Landroidx/constraintlayout/core/state/State$Direction;

    #@3c
    const/4 v11, 0x6

    #@3d
    new-array v11, v11, [Landroidx/constraintlayout/core/state/State$Direction;

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
    .line 71
    sput-object v11, Landroidx/constraintlayout/core/state/State$Direction;->$VALUES:[Landroidx/constraintlayout/core/state/State$Direction;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/state/State$Direction;
    .registers 2

    #@0
    .line 71
    const-class v0, Landroidx/constraintlayout/core/state/State$Direction;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/constraintlayout/core/state/State$Direction;

    #@8
    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/core/state/State$Direction;
    .registers 1

    #@0
    .line 71
    sget-object v0, Landroidx/constraintlayout/core/state/State$Direction;->$VALUES:[Landroidx/constraintlayout/core/state/State$Direction;

    #@2
    invoke-virtual {v0}, [Landroidx/constraintlayout/core/state/State$Direction;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Landroidx/constraintlayout/core/state/State$Direction;

    #@8
    return-object v0
.end method

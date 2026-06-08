.class public final enum Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
.super Ljava/lang/Enum;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

.field public static final enum BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

.field public static final enum BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

.field public static final enum CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

.field public static final enum CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

.field public static final enum CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

.field public static final enum LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

.field public static final enum NONE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

.field public static final enum RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

.field public static final enum TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    #@0
    .line 91
    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2
    const-string v1, "NONE"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->NONE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@a
    new-instance v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@c
    const-string v3, "LEFT"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@14
    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@16
    const-string v5, "TOP"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1e
    new-instance v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@20
    const-string v7, "RIGHT"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@28
    new-instance v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2a
    const-string v9, "BOTTOM"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@32
    new-instance v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@34
    const-string v11, "BASELINE"

    #@36
    const/4 v12, 0x5

    #@37
    invoke-direct {v9, v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@3c
    new-instance v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@3e
    const-string v13, "CENTER"

    #@40
    const/4 v14, 0x6

    #@41
    invoke-direct {v11, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@46
    new-instance v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@48
    const-string v15, "CENTER_X"

    #@4a
    const/4 v14, 0x7

    #@4b
    invoke-direct {v13, v15, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    #@4e
    sput-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@50
    new-instance v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@52
    const-string v14, "CENTER_Y"

    #@54
    const/16 v12, 0x8

    #@56
    invoke-direct {v15, v14, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;-><init>(Ljava/lang/String;I)V

    #@59
    sput-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@5b
    const/16 v14, 0x9

    #@5d
    new-array v14, v14, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@5f
    aput-object v0, v14, v2

    #@61
    aput-object v1, v14, v4

    #@63
    aput-object v3, v14, v6

    #@65
    aput-object v5, v14, v8

    #@67
    aput-object v7, v14, v10

    #@69
    const/4 v0, 0x5

    #@6a
    aput-object v9, v14, v0

    #@6c
    const/4 v0, 0x6

    #@6d
    aput-object v11, v14, v0

    #@6f
    const/4 v0, 0x7

    #@70
    aput-object v13, v14, v0

    #@72
    aput-object v15, v14, v12

    #@74
    sput-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->$VALUES:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@76
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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .registers 2

    #@0
    .line 91
    const-class v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@8
    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .registers 1

    #@0
    .line 91
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->$VALUES:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2
    invoke-virtual {v0}, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@8
    return-object v0
.end method

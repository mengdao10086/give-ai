.class public final enum Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
.super Ljava/lang/Enum;
.source "CustomAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/CustomAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum BOOLEAN_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum COLOR_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum DIMENSION_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum FLOAT_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum INT_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum REFERENCE_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

.field public static final enum STRING_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    #@0
    .line 52
    new-instance v0, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@2
    const-string v1, "INT_TYPE"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@a
    .line 53
    new-instance v1, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@c
    const-string v3, "FLOAT_TYPE"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@14
    .line 54
    new-instance v3, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@16
    const-string v5, "COLOR_TYPE"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@1e
    .line 55
    new-instance v5, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@20
    const-string v7, "COLOR_DRAWABLE_TYPE"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@28
    .line 56
    new-instance v7, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@2a
    const-string v9, "STRING_TYPE"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@32
    .line 57
    new-instance v9, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@34
    const-string v11, "BOOLEAN_TYPE"

    #@36
    const/4 v12, 0x5

    #@37
    invoke-direct {v9, v11, v12}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v9, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@3c
    .line 58
    new-instance v11, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@3e
    const-string v13, "DIMENSION_TYPE"

    #@40
    const/4 v14, 0x6

    #@41
    invoke-direct {v11, v13, v14}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v11, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@46
    .line 59
    new-instance v13, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@48
    const-string v15, "REFERENCE_TYPE"

    #@4a
    const/4 v14, 0x7

    #@4b
    invoke-direct {v13, v15, v14}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@4e
    sput-object v13, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->REFERENCE_TYPE:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@50
    const/16 v15, 0x8

    #@52
    new-array v15, v15, [Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@54
    aput-object v0, v15, v2

    #@56
    aput-object v1, v15, v4

    #@58
    aput-object v3, v15, v6

    #@5a
    aput-object v5, v15, v8

    #@5c
    aput-object v7, v15, v10

    #@5e
    aput-object v9, v15, v12

    #@60
    const/4 v0, 0x6

    #@61
    aput-object v11, v15, v0

    #@63
    aput-object v13, v15, v14

    #@65
    .line 51
    sput-object v15, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->$VALUES:[Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@67
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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    .registers 2

    #@0
    .line 51
    const-class v0, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@8
    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    .registers 1

    #@0
    .line 51
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->$VALUES:[Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@2
    invoke-virtual {v0}, [Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@8
    return-object v0
.end method

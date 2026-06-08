.class public final enum Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
.super Ljava/lang/Enum;
.source "ConstraintAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum REFERENCE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;


# direct methods
.method private static synthetic $values()[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .registers 3

    #@0
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@4
    const/4 v1, 0x0

    #@5
    .line 53
    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@7
    aput-object v2, v0, v1

    #@9
    const/4 v1, 0x1

    #@a
    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@c
    aput-object v2, v0, v1

    #@e
    const/4 v1, 0x2

    #@f
    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@11
    aput-object v2, v0, v1

    #@13
    const/4 v1, 0x3

    #@14
    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@16
    aput-object v2, v0, v1

    #@18
    const/4 v1, 0x4

    #@19
    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x5

    #@1e
    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@20
    aput-object v2, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x7

    #@28
    sget-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->REFERENCE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@2a
    aput-object v2, v0, v1

    #@2c
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 54
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@2
    const-string v1, "INT_TYPE"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@a
    .line 55
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@c
    const-string v1, "FLOAT_TYPE"

    #@e
    const/4 v2, 0x1

    #@f
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@14
    .line 56
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@16
    const-string v1, "COLOR_TYPE"

    #@18
    const/4 v2, 0x2

    #@19
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@1e
    .line 57
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@20
    const-string v1, "COLOR_DRAWABLE_TYPE"

    #@22
    const/4 v2, 0x3

    #@23
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@28
    .line 58
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@2a
    const-string v1, "STRING_TYPE"

    #@2c
    const/4 v2, 0x4

    #@2d
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@32
    .line 59
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@34
    const-string v1, "BOOLEAN_TYPE"

    #@36
    const/4 v2, 0x5

    #@37
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@3c
    .line 60
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@3e
    const-string v1, "DIMENSION_TYPE"

    #@40
    const/4 v2, 0x6

    #@41
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@46
    .line 61
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@48
    const-string v1, "REFERENCE_TYPE"

    #@4a
    const/4 v2, 0x7

    #@4b
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    #@4e
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->REFERENCE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@50
    .line 53
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->$values()[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@53
    move-result-object v0

    #@54
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->$VALUES:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    #@0
    .line 53
    const-class v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@8
    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .registers 1

    #@0
    .line 53
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->$VALUES:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@2
    invoke-virtual {v0}, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@8
    return-object v0
.end method

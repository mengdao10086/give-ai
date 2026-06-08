.class Landroidx/transition/MatrixUtils;
.super Ljava/lang/Object;
.source "MatrixUtils.java"


# static fields
.field static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 24
    new-instance v0, Landroidx/transition/MatrixUtils$1;

    #@2
    invoke-direct {v0}, Landroidx/transition/MatrixUtils$1;-><init>()V

    #@5
    sput-object v0, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.class Landroidx/transition/ImageViewUtils;
.super Ljava/lang/Object;
.source "ImageViewUtils.java"


# static fields
.field private static sDrawMatrixField:Ljava/lang/reflect/Field; = null

.field private static sDrawMatrixFieldFetched:Z = false

.field private static sTryHiddenAnimateTransform:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .registers 5

    #@0
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->animateTransform(Landroid/graphics/Matrix;)V

    #@9
    goto :goto_39

    #@a
    :cond_a
    if-nez p1, :cond_36

    #@c
    .line 50
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object p1

    #@10
    if-eqz p1, :cond_39

    #@12
    .line 52
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    #@15
    move-result v0

    #@16
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    #@19
    move-result v1

    #@1a
    sub-int/2addr v0, v1

    #@1b
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    #@1e
    move-result v1

    #@1f
    sub-int/2addr v0, v1

    #@20
    .line 53
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    #@23
    move-result v1

    #@24
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    #@27
    move-result v2

    #@28
    sub-int/2addr v1, v2

    #@29
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    #@2c
    move-result v2

    #@2d
    sub-int/2addr v1, v2

    #@2e
    const/4 v2, 0x0

    #@2f
    .line 54
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@32
    .line 55
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@35
    goto :goto_39

    #@36
    .line 58
    :cond_36
    invoke-static {p0, p1}, Landroidx/transition/ImageViewUtils;->hiddenAnimateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    #@39
    :cond_39
    :goto_39
    return-void
.end method

.method private static fetchDrawMatrixField()V
    .registers 3

    #@0
    .line 100
    sget-boolean v0, Landroidx/transition/ImageViewUtils;->sDrawMatrixFieldFetched:Z

    #@2
    if-nez v0, :cond_14

    #@4
    const/4 v0, 0x1

    #@5
    .line 102
    :try_start_5
    const-class v1, Landroid/widget/ImageView;

    #@7
    const-string v2, "mDrawMatrix"

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@c
    move-result-object v1

    #@d
    sput-object v1, Landroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    #@f
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_12

    #@12
    .line 107
    :catch_12
    sput-boolean v0, Landroidx/transition/ImageViewUtils;->sDrawMatrixFieldFetched:Z

    #@14
    :cond_14
    return-void
.end method

.method private static hiddenAnimateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .registers 3

    #@0
    .line 88
    sget-boolean v0, Landroidx/transition/ImageViewUtils;->sTryHiddenAnimateTransform:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 92
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->animateTransform(Landroid/graphics/Matrix;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    #@7
    goto :goto_b

    #@8
    :catch_8
    const/4 p0, 0x0

    #@9
    .line 94
    sput-boolean p0, Landroidx/transition/ImageViewUtils;->sTryHiddenAnimateTransform:Z

    #@b
    :cond_b
    :goto_b
    return-void
.end method

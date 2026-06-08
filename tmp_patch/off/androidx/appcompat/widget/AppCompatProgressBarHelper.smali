.class Landroidx/appcompat/widget/AppCompatProgressBarHelper;
.super Ljava/lang/Object;
.source "AppCompatProgressBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatProgressBarHelper$Api23Impl;
    }
.end annotation


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mSampleTile:Landroid/graphics/Bitmap;

.field private final mView:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    .line 41
    fill-array-data v0, :array_a

    #@6
    sput-object v0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    #@8
    return-void

    #@9
    nop

    #@a
    :array_a
    .array-data 4
        0x101013b
        0x101013c
    .end array-data
.end method

.method constructor <init>(Landroid/widget/ProgressBar;)V
    .registers 2

    #@0
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    #@5
    return-void
.end method

.method private getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .registers 4

    #@0
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [F

    #@4
    .line 147
    fill-array-data v0, :array_e

    #@7
    .line 148
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    #@d
    return-object v1

    #@e
    :array_e
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 8

    #@0
    .line 129
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    #@2
    if-eqz v0, :cond_35

    #@4
    .line 130
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    #@6
    .line 131
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    #@9
    move-result v0

    #@a
    .line 132
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    #@c
    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    #@f
    .line 133
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    #@12
    move-result v2

    #@13
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    #@16
    const/4 v2, 0x0

    #@17
    :goto_17
    const/16 v3, 0x2710

    #@19
    if-ge v2, v0, :cond_31

    #@1b
    .line 136
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v4

    #@1f
    const/4 v5, 0x1

    #@20
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@23
    move-result-object v4

    #@24
    .line 137
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@27
    .line 138
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    #@2a
    move-result v3

    #@2b
    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    #@2e
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_17

    #@31
    .line 140
    :cond_31
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    #@34
    move-object p1, v1

    #@35
    :cond_35
    return-object p1
.end method


# virtual methods
.method getSampleTile()Landroid/graphics/Bitmap;
    .registers 2

    #@0
    .line 152
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    .line 55
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    #@2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@c
    move-result-object p1

    #@d
    .line 58
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object p2

    #@11
    if-eqz p2, :cond_1c

    #@13
    .line 60
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    #@15
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object p2

    #@19
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1c
    :cond_1c
    const/4 p2, 0x1

    #@1d
    .line 63
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    #@20
    move-result-object p2

    #@21
    if-eqz p2, :cond_2c

    #@23
    .line 65
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    #@25
    invoke-virtual {p0, p2, v2}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@28
    move-result-object p2

    #@29
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2c
    .line 68
    :cond_2c
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@2f
    return-void
.end method

.method tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .registers 10

    #@0
    .line 77
    instance-of v0, p1, Landroidx/core/graphics/drawable/WrappedDrawable;

    #@2
    if-eqz v0, :cond_16

    #@4
    .line 78
    move-object v0, p1

    #@5
    check-cast v0, Landroidx/core/graphics/drawable/WrappedDrawable;

    #@7
    invoke-interface {v0}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_9d

    #@d
    .line 80
    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object p2

    #@11
    .line 81
    invoke-interface {v0, p2}, Landroidx/core/graphics/drawable/WrappedDrawable;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    #@14
    goto/16 :goto_9d

    #@16
    .line 83
    :cond_16
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    #@18
    const/4 v1, 0x1

    #@19
    if-eqz v0, :cond_5b

    #@1b
    .line 84
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    #@1d
    .line 85
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    #@20
    move-result p2

    #@21
    .line 86
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    #@23
    const/4 v2, 0x0

    #@24
    move v3, v2

    #@25
    :goto_25
    if-ge v3, p2, :cond_46

    #@27
    .line 89
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    #@2a
    move-result v4

    #@2b
    .line 90
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2e
    move-result-object v5

    #@2f
    const v6, 0x102000d

    #@32
    if-eq v4, v6, :cond_3c

    #@34
    const v6, 0x102000f

    #@37
    if-ne v4, v6, :cond_3a

    #@39
    goto :goto_3c

    #@3a
    :cond_3a
    move v4, v2

    #@3b
    goto :goto_3d

    #@3c
    :cond_3c
    :goto_3c
    move v4, v1

    #@3d
    :goto_3d
    invoke-virtual {p0, v5, v4}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@40
    move-result-object v4

    #@41
    aput-object v4, v0, v3

    #@43
    add-int/lit8 v3, v3, 0x1

    #@45
    goto :goto_25

    #@46
    .line 94
    :cond_46
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    #@48
    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@4b
    :goto_4b
    if-ge v2, p2, :cond_5a

    #@4d
    .line 96
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    #@50
    move-result v0

    #@51
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    #@54
    .line 98
    invoke-static {p1, v1, v2}, Landroidx/appcompat/widget/AppCompatProgressBarHelper$Api23Impl;->transferLayerProperties(Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/LayerDrawable;I)V

    #@57
    add-int/lit8 v2, v2, 0x1

    #@59
    goto :goto_4b

    #@5a
    :cond_5a
    return-object v1

    #@5b
    .line 104
    :cond_5b
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    #@5d
    if-eqz v0, :cond_9d

    #@5f
    .line 105
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    #@61
    .line 106
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@64
    move-result-object v0

    #@65
    .line 107
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    #@67
    if-nez v2, :cond_6b

    #@69
    .line 108
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    #@6b
    .line 111
    :cond_6b
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    #@6d
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    #@70
    move-result-object v3

    #@71
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    #@74
    .line 112
    new-instance v3, Landroid/graphics/BitmapShader;

    #@76
    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    #@78
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@7a
    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@7d
    .line 114
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@84
    .line 115
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    #@8b
    move-result-object p1

    #@8c
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    #@8f
    move-result-object p1

    #@90
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@93
    if-eqz p2, :cond_9c

    #@95
    .line 116
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    #@97
    const/4 p2, 0x3

    #@98
    invoke-direct {p1, v2, p2, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    #@9b
    move-object v2, p1

    #@9c
    :cond_9c
    return-object v2

    #@9d
    :cond_9d
    :goto_9d
    return-object p1
.end method

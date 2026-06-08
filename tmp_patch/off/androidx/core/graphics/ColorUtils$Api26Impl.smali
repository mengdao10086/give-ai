.class Landroidx/core/graphics/ColorUtils$Api26Impl;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/ColorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static compositeColors(Landroid/graphics/Color;Landroid/graphics/Color;)Landroid/graphics/Color;
    .registers 9

    #@0
    .line 104
    invoke-virtual {p0}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_62

    #@e
    .line 110
    invoke-virtual {p1}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    #@15
    move-result-object v1

    #@16
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1d

    #@1c
    goto :goto_25

    #@1d
    .line 112
    :cond_1d
    invoke-virtual {p1}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p0, v0}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    #@24
    move-result-object p0

    #@25
    .line 114
    :goto_25
    invoke-virtual {p0}, Landroid/graphics/Color;->getComponents()[F

    #@28
    move-result-object v0

    #@29
    .line 115
    invoke-virtual {p1}, Landroid/graphics/Color;->getComponents()[F

    #@2c
    move-result-object v1

    #@2d
    .line 117
    invoke-virtual {p0}, Landroid/graphics/Color;->alpha()F

    #@30
    move-result p0

    #@31
    .line 119
    invoke-virtual {p1}, Landroid/graphics/Color;->alpha()F

    #@34
    move-result v2

    #@35
    const/high16 v3, 0x3f800000    # 1.0f

    #@37
    sub-float/2addr v3, p0

    #@38
    mul-float/2addr v2, v3

    #@39
    .line 123
    invoke-virtual {p1}, Landroid/graphics/Color;->getComponentCount()I

    #@3c
    move-result v3

    #@3d
    add-int/lit8 v3, v3, -0x1

    #@3f
    add-float v4, p0, v2

    #@41
    .line 126
    aput v4, v1, v3

    #@43
    const/4 v5, 0x0

    #@44
    cmpl-float v5, v4, v5

    #@46
    if-lez v5, :cond_4a

    #@48
    div-float/2addr p0, v4

    #@49
    div-float/2addr v2, v4

    #@4a
    :cond_4a
    const/4 v4, 0x0

    #@4b
    :goto_4b
    if-ge v4, v3, :cond_59

    #@4d
    .line 136
    aget v5, v0, v4

    #@4f
    mul-float/2addr v5, p0

    #@50
    aget v6, v1, v4

    #@52
    mul-float/2addr v6, v2

    #@53
    add-float/2addr v5, v6

    #@54
    aput v5, v1, v4

    #@56
    add-int/lit8 v4, v4, 0x1

    #@58
    goto :goto_4b

    #@59
    .line 139
    :cond_59
    invoke-virtual {p1}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    #@5c
    move-result-object p0

    #@5d
    invoke-static {v1, p0}, Landroid/graphics/Color;->valueOf([FLandroid/graphics/ColorSpace;)Landroid/graphics/Color;

    #@60
    move-result-object p0

    #@61
    return-object p0

    #@62
    .line 105
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@64
    new-instance v1, Ljava/lang/StringBuilder;

    #@66
    const-string v2, "Color models must match ("

    #@68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6b
    .line 106
    invoke-virtual {p0}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    #@6e
    move-result-object p0

    #@6f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object p0

    #@73
    const-string v1, " vs. "

    #@75
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object p0

    #@79
    .line 107
    invoke-virtual {p1}, Landroid/graphics/Color;->getModel()Landroid/graphics/ColorSpace$Model;

    #@7c
    move-result-object p1

    #@7d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object p0

    #@81
    const-string p1, ")"

    #@83
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object p0

    #@87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object p0

    #@8b
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v0
.end method

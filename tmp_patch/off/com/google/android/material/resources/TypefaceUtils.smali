.class public Lcom/google/android/material/resources/TypefaceUtils;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static maybeCopyWithFontWeightAdjustment(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 2

    #@0
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 4

    #@0
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    if-lt v0, v1, :cond_2a

    #@6
    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    #@8
    const v1, 0x7fffffff

    #@b
    if-eq v0, v1, :cond_2a

    #@d
    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    #@f
    if-eqz v0, :cond_2a

    #@11
    if-eqz p1, :cond_2a

    #@13
    .line 58
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getWeight()I

    #@16
    move-result v0

    #@17
    iget p0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    #@19
    add-int/2addr v0, p0

    #@1a
    const/4 p0, 0x1

    #@1b
    const/16 v1, 0x3e8

    #@1d
    .line 57
    invoke-static {v0, p0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    #@20
    move-result p0

    #@21
    .line 61
    invoke-virtual {p1}, Landroid/graphics/Typeface;->isItalic()Z

    #@24
    move-result v0

    #@25
    invoke-static {p1, p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    #@28
    move-result-object p0

    #@29
    return-object p0

    #@2a
    :cond_2a
    const/4 p0, 0x0

    #@2b
    return-object p0
.end method

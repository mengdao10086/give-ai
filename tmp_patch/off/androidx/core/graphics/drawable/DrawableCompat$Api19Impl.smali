.class Landroidx/core/graphics/drawable/DrawableCompat$Api19Impl;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getAlpha(Landroid/graphics/drawable/Drawable;)I
    .registers 1

    #@0
    .line 450
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getChild(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;I)Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 456
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getDrawable(Landroid/graphics/drawable/InsetDrawable;)Landroid/graphics/drawable/Drawable;
    .registers 1

    #@0
    .line 461
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .registers 1

    #@0
    .line 445
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .registers 2

    #@0
    .line 440
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    #@3
    return-void
.end method

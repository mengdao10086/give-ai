.class Lcom/google/android/material/ripple/RippleUtils$RippleUtilsLollipop;
.super Ljava/lang/Object;
.source "RippleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/ripple/RippleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RippleUtilsLollipop"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 290
    invoke-static {p0, p1}, Lcom/google/android/material/ripple/RippleUtils$RippleUtilsLollipop;->createOvalRipple(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static createOvalRipple(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 9

    #@0
    .line 295
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    #@2
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    #@5
    const/4 v0, -0x1

    #@6
    .line 296
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    #@9
    const/4 v0, 0x1

    #@a
    .line 297
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    #@d
    .line 298
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    #@f
    move-object v0, v6

    #@10
    move v2, p1

    #@11
    move v3, p1

    #@12
    move v4, p1

    #@13
    move v5, p1

    #@14
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    #@17
    .line 300
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    #@19
    sget v0, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    #@1b
    const/4 v1, 0x0

    #@1c
    .line 302
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@1f
    move-result-object v1

    #@20
    .line 301
    invoke-static {p0, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@23
    move-result-object p0

    #@24
    const/4 v0, 0x0

    #@25
    invoke-direct {p1, p0, v0, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@28
    return-object p1
.end method

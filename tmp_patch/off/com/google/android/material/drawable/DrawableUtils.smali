.class public final Lcom/google/android/material/drawable/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 7

    #@0
    if-nez p0, :cond_3

    #@2
    return-object p1

    #@3
    :cond_3
    if-nez p1, :cond_6

    #@5
    return-object p0

    #@6
    .line 208
    :cond_6
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    #@8
    const/4 v1, 0x2

    #@9
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    #@b
    const/4 v2, 0x0

    #@c
    aput-object p0, v1, v2

    #@e
    const/4 v2, 0x1

    #@f
    aput-object p1, v1, v2

    #@11
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@14
    .line 212
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@17
    move-result v1

    #@18
    const/4 v3, -0x1

    #@19
    if-eq v1, v3, :cond_69

    #@1b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@1e
    move-result v1

    #@1f
    if-ne v1, v3, :cond_22

    #@21
    goto :goto_69

    #@22
    .line 216
    :cond_22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@25
    move-result v1

    #@26
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@29
    move-result v3

    #@2a
    if-gt v1, v3, :cond_3f

    #@2c
    .line 217
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@2f
    move-result v1

    #@30
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@33
    move-result v3

    #@34
    if-gt v1, v3, :cond_3f

    #@36
    .line 220
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@39
    move-result p0

    #@3a
    .line 221
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@3d
    move-result p1

    #@3e
    goto :goto_74

    #@3f
    .line 224
    :cond_3f
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@42
    move-result v1

    #@43
    int-to-float v1, v1

    #@44
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@47
    move-result p1

    #@48
    int-to-float p1, p1

    #@49
    div-float/2addr v1, p1

    #@4a
    .line 226
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@4d
    move-result p1

    #@4e
    int-to-float p1, p1

    #@4f
    .line 227
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@52
    move-result v3

    #@53
    int-to-float v3, v3

    #@54
    div-float/2addr p1, v3

    #@55
    cmpl-float p1, v1, p1

    #@57
    if-ltz p1, :cond_61

    #@59
    .line 231
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5c
    move-result p0

    #@5d
    int-to-float p1, p0

    #@5e
    div-float/2addr p1, v1

    #@5f
    float-to-int p1, p1

    #@60
    goto :goto_74

    #@61
    .line 236
    :cond_61
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@64
    move-result p1

    #@65
    int-to-float p0, p1

    #@66
    mul-float/2addr v1, p0

    #@67
    float-to-int p0, v1

    #@68
    goto :goto_74

    #@69
    .line 214
    :cond_69
    :goto_69
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@6c
    move-result p1

    #@6d
    .line 215
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@70
    move-result p0

    #@71
    move v4, p1

    #@72
    move p1, p0

    #@73
    move p0, v4

    #@74
    .line 243
    :goto_74
    invoke-virtual {v0, v2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    #@77
    const/16 p0, 0x11

    #@79
    .line 244
    invoke-virtual {v0, v2, p0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    #@7c
    return-object v0
.end method

.method public static createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 152
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 168
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method private static createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    if-eqz p1, :cond_14

    #@6
    .line 182
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p0

    #@a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object p0

    #@e
    if-eqz p2, :cond_19

    #@10
    .line 184
    invoke-static {p0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@13
    goto :goto_19

    #@14
    :cond_14
    if-eqz p3, :cond_19

    #@16
    .line 187
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@19
    :cond_19
    :goto_19
    return-object p0
.end method

.method public static getCheckedState([I)[I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 256
    :goto_1
    array-length v1, p0

    #@2
    const v2, 0x10100a0

    #@5
    if-ge v0, v1, :cond_1a

    #@7
    .line 257
    aget v1, p0, v0

    #@9
    if-ne v1, v2, :cond_c

    #@b
    return-object p0

    #@c
    :cond_c
    if-nez v1, :cond_17

    #@e
    .line 260
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    #@11
    move-result-object p0

    #@12
    check-cast p0, [I

    #@14
    .line 261
    aput v2, p0, v0

    #@16
    return-object p0

    #@17
    :cond_17
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_1

    #@1a
    .line 265
    :cond_1a
    array-length v0, p0

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@20
    move-result-object v0

    #@21
    .line 266
    array-length p0, p0

    #@22
    aput v2, v0, p0

    #@24
    return-object v0
.end method

.method public static getUncheckedState([I)[I
    .registers 7

    #@0
    .line 273
    array-length v0, p0

    #@1
    new-array v0, v0, [I

    #@3
    .line 275
    array-length v1, p0

    #@4
    const/4 v2, 0x0

    #@5
    move v3, v2

    #@6
    :goto_6
    if-ge v2, v1, :cond_17

    #@8
    aget v4, p0, v2

    #@a
    const v5, 0x10100a0

    #@d
    if-eq v4, v5, :cond_14

    #@f
    add-int/lit8 v5, v3, 0x1

    #@11
    .line 277
    aput v4, v0, v3

    #@13
    move v3, v5

    #@14
    :cond_14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_6

    #@17
    :cond_17
    return-object v0
.end method

.method public static parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;
    .registers 6

    #@0
    .line 104
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@7
    move-result-object p0

    #@8
    .line 108
    :cond_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x2

    #@d
    if-eq v0, v1, :cond_12

    #@f
    const/4 v2, 0x1

    #@10
    if-ne v0, v2, :cond_8

    #@12
    :cond_12
    if-ne v0, v1, :cond_42

    #@14
    .line 114
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_23

    #@1e
    .line 118
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@21
    move-result-object p0

    #@22
    return-object p0

    #@23
    .line 115
    :cond_23
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    #@25
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string v1, "Must have a <"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object p2

    #@34
    const-string v0, "> start tag"

    #@36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object p2

    #@3a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object p2

    #@3e
    invoke-direct {p0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@41
    throw p0

    #@42
    .line 111
    :cond_42
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    #@44
    const-string p2, "No start tag found"

    #@46
    invoke-direct {p0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@49
    throw p0
    :try_end_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4a} :catch_4c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4a} :catch_4a

    #@4a
    :catch_4a
    move-exception p0

    #@4b
    goto :goto_4d

    #@4c
    :catch_4c
    move-exception p0

    #@4d
    .line 122
    :goto_4d
    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    #@4f
    new-instance v0, Ljava/lang/StringBuilder;

    #@51
    const-string v1, "Can\'t load badge resource ID #0x"

    #@53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@56
    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@59
    move-result-object p1

    #@5a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object p1

    #@5e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object p1

    #@62
    invoke-direct {p2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@65
    .line 124
    invoke-virtual {p2, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@68
    .line 125
    throw p2
.end method

.method public static setOutlineToPath(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    .registers 4

    #@0
    .line 285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 286
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    #@9
    goto :goto_1d

    #@a
    .line 287
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@c
    const/16 v1, 0x1d

    #@e
    if-lt v0, v1, :cond_14

    #@10
    .line 291
    :try_start_10
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_1d

    #@13
    goto :goto_1d

    #@14
    .line 296
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1d

    #@1a
    .line 297
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    #@1d
    :catch_1d
    :cond_1d
    :goto_1d
    return-void
.end method

.method public static setRippleDrawableRadius(Landroid/graphics/drawable/RippleDrawable;I)V
    .registers 2

    #@0
    .line 132
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    #@3
    return-void
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    #@0
    if-eqz p1, :cond_4

    #@2
    const/4 v0, 0x1

    #@3
    goto :goto_5

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    :goto_5
    if-eqz v0, :cond_b

    #@7
    .line 79
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    #@a
    goto :goto_f

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    .line 81
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@f
    :goto_f
    return-void
.end method

.method public static updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 4

    #@0
    if-eqz p1, :cond_14

    #@2
    if-nez p2, :cond_5

    #@4
    goto :goto_14

    #@5
    .line 96
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    #@8
    move-result-object p0

    #@9
    const/4 v0, 0x0

    #@a
    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@d
    move-result p0

    #@e
    .line 97
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    #@10
    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@13
    return-object p1

    #@14
    :cond_14
    :goto_14
    const/4 p0, 0x0

    #@15
    return-object p0
.end method

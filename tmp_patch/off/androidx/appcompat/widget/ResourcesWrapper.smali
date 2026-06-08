.class Landroidx/appcompat/widget/ResourcesWrapper;
.super Landroid/content/res/Resources;
.source "ResourcesWrapper.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    #@0
    .line 50
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@b
    move-result-object v2

    #@c
    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    #@f
    .line 51
    iput-object p1, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@11
    return-void
.end method


# virtual methods
.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 209
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getBoolean(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 194
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getColor(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 183
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 189
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    #@0
    .line 272
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDimension(I)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 112
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getDimensionPixelOffset(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 117
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getDimensionPixelSize(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 122
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    #@0
    .line 267
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 133
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 155
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-static {v0, p1, p2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method final getDrawableCanonical(I)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 149
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 165
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p1, p2, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 171
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-static {v0, p1, p2, p3}, Landroidx/core/content/res/ResourcesCompat;->getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getFraction(III)F
    .registers 5

    #@0
    .line 127
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    #@0
    .line 277
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getIntArray(I)[I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 102
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getInteger(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 199
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 204
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 177
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 82
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 77
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 61
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 297
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getResourceName(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 282
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 287
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 292
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 66
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 71
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 97
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 56
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    #@0
    .line 87
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 92
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 235
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@5
    return-void
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 248
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    #@5
    return-void
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 242
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/appcompat/resources/Compatibility$Api15Impl;->getValueForDensity(Landroid/content/res/Resources;IILandroid/util/TypedValue;Z)V

    #@5
    return-void
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 214
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 4

    #@0
    .line 253
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 107
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 219
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 224
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 229
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .line 309
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@5
    return-void
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 303
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    #@5
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .registers 4

    #@0
    .line 259
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@3
    .line 260
    iget-object v0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 261
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@a
    :cond_a
    return-void
.end method

.class public Landroidx/appcompat/widget/VectorEnabledTintResources;
.super Landroidx/appcompat/widget/ResourcesWrapper;
.source "VectorEnabledTintResources.java"


# static fields
.field public static final MAX_SDK_WHERE_REQUIRED:I = 0x14

.field private static sCompatVectorFromResourcesEnabled:Z = false


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    #@0
    .line 56
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ResourcesWrapper;-><init>(Landroid/content/res/Resources;)V

    #@3
    .line 57
    new-instance p2, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object p2, p0, Landroidx/appcompat/widget/VectorEnabledTintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    #@a
    return-void
.end method

.method public static isCompatVectorFromResourcesEnabled()Z
    .registers 1

    #@0
    .line 93
    sget-boolean v0, Landroidx/appcompat/widget/VectorEnabledTintResources;->sCompatVectorFromResourcesEnabled:Z

    #@2
    return v0
.end method

.method public static setCompatVectorFromResourcesEnabled(Z)V
    .registers 1

    #@0
    .line 83
    sput-boolean p0, Landroidx/appcompat/widget/VectorEnabledTintResources;->sCompatVectorFromResourcesEnabled:Z

    #@2
    return-void
.end method

.method public static shouldBeUsed()Z
    .registers 1

    #@0
    .line 42
    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->isCompatVectorFromResourcesEnabled()Z

    #@3
    const/4 v0, 0x0

    #@4
    return v0
.end method


# virtual methods
.method public bridge synthetic getAnimation(I)Landroid/content/res/XmlResourceParser;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getBoolean(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getBoolean(I)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic getColor(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getColor(I)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    #@0
    .line 37
    invoke-super {p0}, Landroidx/appcompat/widget/ResourcesWrapper;->getConfiguration()Landroid/content/res/Configuration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getDimension(I)F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getDimension(I)F

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic getDimensionPixelOffset(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getDimensionPixelOffset(I)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic getDimensionPixelSize(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getDimensionPixelSize(I)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    #@0
    .line 37
    invoke-super {p0}, Landroidx/appcompat/widget/ResourcesWrapper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 67
    iget-object v0, p0, Landroidx/appcompat/widget/VectorEnabledTintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/Context;

    #@8
    if-eqz v0, :cond_13

    #@a
    .line 69
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, v0, p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->onDrawableLoadedFromResources(Landroid/content/Context;Landroidx/appcompat/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object p1

    #@12
    return-object p1

    #@13
    .line 74
    :cond_13
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/VectorEnabledTintResources;->getDrawableCanonical(I)Landroid/graphics/drawable/Drawable;

    #@16
    move-result-object p1

    #@17
    return-object p1
.end method

.method public bridge synthetic getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ResourcesWrapper;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ResourcesWrapper;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    .line 37
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/ResourcesWrapper;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getFraction(III)F
    .registers 4

    #@0
    .line 37
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/ResourcesWrapper;->getFraction(III)F

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    #@0
    .line 37
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/ResourcesWrapper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic getIntArray(I)[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getIntArray(I)[I

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getInteger(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getInteger(I)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic getLayout(I)Landroid/content/res/XmlResourceParser;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getLayout(I)Landroid/content/res/XmlResourceParser;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getMovie(I)Landroid/graphics/Movie;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getMovie(I)Landroid/graphics/Movie;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getQuantityString(II)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ResourcesWrapper;->getQuantityString(II)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/ResourcesWrapper;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getQuantityText(II)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ResourcesWrapper;->getQuantityText(II)Ljava/lang/CharSequence;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getResourceEntryName(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getResourceEntryName(I)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getResourceName(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getResourceName(I)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getResourcePackageName(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getResourcePackageName(I)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getResourceTypeName(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getResourceTypeName(I)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getString(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getString(I)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ResourcesWrapper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getStringArray(I)[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getStringArray(I)[Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getText(I)Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getText(I)Ljava/lang/CharSequence;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 37
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ResourcesWrapper;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getTextArray(I)[Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getTextArray(I)[Ljava/lang/CharSequence;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic getValue(ILandroid/util/TypedValue;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/ResourcesWrapper;->getValue(ILandroid/util/TypedValue;Z)V

    #@3
    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/ResourcesWrapper;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    #@3
    return-void
.end method

.method public bridge synthetic getValueForDensity(IILandroid/util/TypedValue;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ResourcesWrapper;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    #@3
    return-void
.end method

.method public bridge synthetic getXml(I)Landroid/content/res/XmlResourceParser;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 3

    #@0
    .line 37
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ResourcesWrapper;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic obtainTypedArray(I)Landroid/content/res/TypedArray;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic openRawResource(I)Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->openRawResource(I)Ljava/io/InputStream;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ResourcesWrapper;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ResourcesWrapper;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/ResourcesWrapper;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public bridge synthetic parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 37
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ResourcesWrapper;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public bridge synthetic updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .registers 3

    #@0
    .line 37
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/ResourcesWrapper;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@3
    return-void
.end method

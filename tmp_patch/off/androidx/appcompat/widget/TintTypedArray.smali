.class public Landroidx/appcompat/widget/TintTypedArray;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/TintTypedArray$Api21Impl;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTypedValue:Landroid/util/TypedValue;

.field private final mWrapped:Landroid/content/res/TypedArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 3

    #@0
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    iput-object p1, p0, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    #@5
    .line 70
    iput-object p2, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@7
    return-void
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;
    .registers 4

    #@0
    .line 65
    new-instance v0, Landroidx/appcompat/widget/TintTypedArray;

    #@2
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    #@9
    return-object v0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;
    .registers 4

    #@0
    .line 55
    new-instance v0, Landroidx/appcompat/widget/TintTypedArray;

    #@2
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    #@9
    return-object v0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;
    .registers 6

    #@0
    .line 60
    new-instance v0, Landroidx/appcompat/widget/TintTypedArray;

    #@2
    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    #@9
    return-object v0
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .registers 4

    #@0
    .line 159
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getChangingConfigurations()I
    .registers 2

    #@0
    .line 258
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-static {v0}, Landroidx/appcompat/widget/TintTypedArray$Api21Impl;->getChangingConfigurations(Landroid/content/res/TypedArray;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getColor(II)I
    .registers 4

    #@0
    .line 171
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 4

    #@0
    .line 175
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1a

    #@8
    .line 176
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1a

    #@11
    .line 178
    iget-object v1, p0, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    #@13
    .line 179
    invoke-static {v1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_1a

    #@19
    return-object v0

    #@1a
    .line 185
    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@1c
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@1f
    move-result-object p1

    #@20
    return-object p1
.end method

.method public getDimension(IF)F
    .registers 4

    #@0
    .line 193
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getDimensionPixelOffset(II)I
    .registers 4

    #@0
    .line 197
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getDimensionPixelSize(II)I
    .registers 4

    #@0
    .line 201
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    .line 81
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_18

    #@8
    .line 82
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_18

    #@11
    .line 84
    iget-object p1, p0, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    #@13
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@16
    move-result-object p1

    #@17
    return-object p1

    #@18
    .line 87
    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@1a
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object p1

    #@1e
    return-object p1
.end method

.method public getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 91
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1d

    #@8
    .line 92
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@e
    move-result p1

    #@f
    if-eqz p1, :cond_1d

    #@11
    .line 94
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    #@17
    const/4 v2, 0x1

    #@18
    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object p1

    #@1c
    return-object p1

    #@1d
    :cond_1d
    const/4 p1, 0x0

    #@1e
    return-object p1
.end method

.method public getFloat(IF)F
    .registers 4

    #@0
    .line 167
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getFont(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;
    .registers 6

    #@0
    .line 120
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@6
    move-result p1

    #@7
    if-nez p1, :cond_b

    #@9
    const/4 p1, 0x0

    #@a
    return-object p1

    #@b
    .line 124
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    #@d
    if-nez v0, :cond_16

    #@f
    .line 125
    new-instance v0, Landroid/util/TypedValue;

    #@11
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@14
    iput-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    #@16
    .line 127
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    #@18
    iget-object v1, p0, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    #@1a
    invoke-static {v0, p1, v1, p2, p3}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    #@1d
    move-result-object p1

    #@1e
    return-object p1
.end method

.method public getFraction(IIIF)F
    .registers 6

    #@0
    .line 213
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getIndex(I)I
    .registers 3

    #@0
    .line 139
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getIndexCount()I
    .registers 2

    #@0
    .line 135
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInt(II)I
    .registers 4

    #@0
    .line 163
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getInteger(II)I
    .registers 4

    #@0
    .line 189
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getLayoutDimension(II)I
    .registers 4

    #@0
    .line 209
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .registers 4

    #@0
    .line 205
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .registers 3

    #@0
    .line 155
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 2

    #@0
    .line 249
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getResourceId(II)I
    .registers 4

    #@0
    .line 217
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    #@0
    .line 143
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    #@0
    .line 151
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 147
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 221
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getType(I)I
    .registers 3

    #@0
    .line 230
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-static {v0, p1}, Landroidx/appcompat/widget/TintTypedArray$Api21Impl;->getType(Landroid/content/res/TypedArray;I)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .registers 4

    #@0
    .line 225
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getWrappedTypeArray()Landroid/content/res/TypedArray;
    .registers 2

    #@0
    .line 77
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    return-object v0
.end method

.method public hasValue(I)Z
    .registers 3

    #@0
    .line 241
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public length()I
    .registers 2

    #@0
    .line 131
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .registers 3

    #@0
    .line 245
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public recycle()V
    .registers 2

    #@0
    .line 253
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    #@2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@5
    return-void
.end method

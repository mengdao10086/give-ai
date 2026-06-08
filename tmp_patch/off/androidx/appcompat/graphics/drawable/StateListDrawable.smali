.class Landroidx/appcompat/graphics/drawable/StateListDrawable;
.super Landroidx/appcompat/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StateListDrawable"


# instance fields
.field private mMutated:Z

.field private mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 89
    invoke-direct {p0, v0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    #@4
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;)V
    .registers 2

    #@0
    .line 415
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;-><init>()V

    #@3
    if-eqz p1, :cond_8

    #@5
    .line 417
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@8
    :cond_8
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .registers 4

    #@0
    .line 404
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;-><init>()V

    #@3
    .line 406
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@5
    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    #@8
    .line 407
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@b
    .line 408
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    #@e
    move-result-object p1

    #@f
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    #@12
    return-void
.end method

.method private inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 180
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@2
    .line 181
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x1

    #@7
    add-int/2addr v1, v2

    #@8
    .line 184
    :cond_8
    :goto_8
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@b
    move-result v3

    #@c
    if-eq v3, v2, :cond_7c

    #@e
    .line 185
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v4

    #@12
    if-ge v4, v1, :cond_17

    #@14
    const/4 v5, 0x3

    #@15
    if-eq v3, v5, :cond_7c

    #@17
    :cond_17
    const/4 v5, 0x2

    #@18
    if-eq v3, v5, :cond_1b

    #@1a
    goto :goto_8

    #@1b
    :cond_1b
    if-gt v4, v1, :cond_8

    #@1d
    .line 190
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    const-string v4, "item"

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_2a

    #@29
    goto :goto_8

    #@2a
    .line 195
    :cond_2a
    sget-object v3, Landroidx/appcompat/resources/R$styleable;->StateListDrawableItem:[I

    #@2c
    invoke-static {p2, p5, p4, v3}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2f
    move-result-object v3

    #@30
    .line 198
    sget v4, Landroidx/appcompat/resources/R$styleable;->StateListDrawableItem_android_drawable:I

    #@32
    const/4 v6, -0x1

    #@33
    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@36
    move-result v4

    #@37
    if-lez v4, :cond_42

    #@39
    .line 201
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6, p1, v4}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@40
    move-result-object v4

    #@41
    goto :goto_43

    #@42
    :cond_42
    const/4 v4, 0x0

    #@43
    .line 203
    :goto_43
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@46
    .line 204
    invoke-virtual {p0, p4}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->extractStateSet(Landroid/util/AttributeSet;)[I

    #@49
    move-result-object v3

    #@4a
    if-nez v4, :cond_78

    #@4c
    .line 209
    :goto_4c
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@4f
    move-result v4

    #@50
    const/4 v6, 0x4

    #@51
    if-ne v4, v6, :cond_54

    #@53
    goto :goto_4c

    #@54
    :cond_54
    if-ne v4, v5, :cond_5b

    #@56
    .line 219
    invoke-static {p2, p3, p4, p5}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@59
    move-result-object v4

    #@5a
    goto :goto_78

    #@5b
    .line 213
    :cond_5b
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    #@5d
    new-instance p2, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    .line 214
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@65
    move-result-object p3

    #@66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object p2

    #@6a
    const-string p3, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    #@6c
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object p2

    #@70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object p2

    #@74
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@77
    throw p1

    #@78
    .line 224
    :cond_78
    :goto_78
    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    #@7b
    goto :goto_8

    #@7c
    :cond_7c
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5

    #@0
    .line 157
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@2
    .line 160
    iget v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    #@4
    invoke-static {p1}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->getChangingConfigurations(Landroid/content/res/TypedArray;)I

    #@7
    move-result v2

    #@8
    or-int/2addr v1, v2

    #@9
    iput v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    #@b
    .line 162
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_variablePadding:I

    #@d
    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    #@f
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@12
    move-result v1

    #@13
    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    #@15
    .line 164
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_constantSize:I

    #@17
    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    #@19
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1c
    move-result v1

    #@1d
    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    #@1f
    .line 166
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_enterFadeDuration:I

    #@21
    iget v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    #@23
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    #@29
    .line 168
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_exitFadeDuration:I

    #@2b
    iget v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    #@2d
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@30
    move-result v1

    #@31
    iput v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    #@33
    .line 170
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_dither:I

    #@35
    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    #@37
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3a
    move-result p1

    #@3b
    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    #@3d
    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    if-eqz p2, :cond_e

    #@2
    .line 101
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@4
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    #@7
    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    #@e
    :cond_e
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2

    #@0
    .line 392
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 393
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    #@6
    move-result-object p1

    #@7
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    #@a
    return-void
.end method

.method clearMutated()V
    .registers 2

    #@0
    .line 325
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->clearMutated()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 326
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    #@6
    return-void
.end method

.method bridge synthetic cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .registers 2

    #@0
    .line 80
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .registers 4

    #@0
    .line 320
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@2
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    #@8
    return-object v0
.end method

.method extractStateSet(Landroid/util/AttributeSet;)[I
    .registers 10

    #@0
    .line 236
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    #@3
    move-result v0

    #@4
    .line 237
    new-array v1, v0, [I

    #@6
    const/4 v2, 0x0

    #@7
    move v3, v2

    #@8
    move v4, v3

    #@9
    :goto_9
    if-ge v3, v0, :cond_2b

    #@b
    .line 239
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_28

    #@11
    const v6, 0x10100d0

    #@14
    if-eq v5, v6, :cond_28

    #@16
    const v6, 0x1010199

    #@19
    if-eq v5, v6, :cond_28

    #@1b
    add-int/lit8 v6, v4, 0x1

    #@1d
    .line 249
    invoke-interface {p1, v3, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_24

    #@23
    goto :goto_25

    #@24
    :cond_24
    neg-int v5, v5

    #@25
    .line 250
    :goto_25
    aput v5, v1, v4

    #@27
    move v4, v6

    #@28
    :cond_28
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_9

    #@2b
    .line 253
    :cond_2b
    invoke-static {v1, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    #@2e
    move-result-object p1

    #@2f
    return-object p1
.end method

.method getStateCount()I
    .registers 2

    #@0
    .line 269
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 293
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->getChild(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method getStateDrawableIndex([I)I
    .registers 3

    #@0
    .line 305
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method getStateListState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .registers 2

    #@0
    .line 258
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@2
    return-object v0
.end method

.method getStateSet(I)[I
    .registers 3

    #@0
    .line 281
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@2
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@4
    aget-object p1, v0, p1

    #@6
    return-object p1
.end method

.method public inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 144
    sget-object v0, Landroidx/appcompat/resources/R$styleable;->StateListDrawable:[I

    #@2
    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 145
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_visible:I

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c
    move-result v1

    #@d
    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    #@10
    .line 146
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@13
    .line 147
    invoke-virtual {p0, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->updateDensity(Landroid/content/res/Resources;)V

    #@16
    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@19
    .line 149
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@1c
    .line 150
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    #@23
    return-void
.end method

.method public isStateful()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 311
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_12

    #@4
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_12

    #@a
    .line 312
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@c
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mutate()V

    #@f
    const/4 v0, 0x1

    #@10
    .line 313
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    #@12
    :cond_12
    return-object p0
.end method

.method protected onStateChange([I)Z
    .registers 4

    #@0
    .line 114
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    #@3
    move-result v0

    #@4
    .line 115
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@6
    invoke-virtual {v1, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    #@9
    move-result p1

    #@a
    if-gez p1, :cond_14

    #@c
    .line 121
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@e
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    #@10
    invoke-virtual {p1, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    #@13
    move-result p1

    #@14
    .line 123
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    #@17
    move-result p1

    #@18
    if-nez p1, :cond_1f

    #@1a
    if-eqz v0, :cond_1d

    #@1c
    goto :goto_1f

    #@1d
    :cond_1d
    const/4 p1, 0x0

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    #@20
    :goto_20
    return p1
.end method

.method setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 3

    #@0
    .line 398
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@3
    .line 399
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@5
    if-eqz v0, :cond_b

    #@7
    .line 400
    check-cast p1, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@9
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    #@b
    :cond_b
    return-void
.end method

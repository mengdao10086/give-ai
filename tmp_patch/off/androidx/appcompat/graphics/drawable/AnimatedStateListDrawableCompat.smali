.class public Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.super Landroidx/appcompat/graphics/drawable/StateListDrawable;
.source "AnimatedStateListDrawableCompat.java"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;,
        Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    }
.end annotation


# static fields
.field private static final ELEMENT_ITEM:Ljava/lang/String; = "item"

.field private static final ELEMENT_TRANSITION:Ljava/lang/String; = "transition"

.field private static final ITEM_MISSING_DRAWABLE_ERROR:Ljava/lang/String; = ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

.field private static final LOGTAG:Ljava/lang/String; = "AnimatedStateListDrawableCompat"

.field private static final TRANSITION_MISSING_DRAWABLE_ERROR:Ljava/lang/String; = ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

.field private static final TRANSITION_MISSING_FROM_TO_ID:Ljava/lang/String; = ": <transition> tag requires \'fromId\' & \'toId\' attributes"


# instance fields
.field private mMutated:Z

.field private mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

.field private mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

.field private mTransitionFromIndex:I

.field private mTransitionToIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 112
    invoke-direct {p0, v0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V

    #@4
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 117
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;)V

    #@4
    const/4 v0, -0x1

    #@5
    .line 106
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    #@7
    .line 108
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    #@9
    .line 119
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@b
    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    #@e
    .line 120
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@11
    .line 121
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getState()[I

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    #@18
    .line 122
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->jumpToCurrentState()V

    #@1b
    return-void
.end method

.method public static create(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    .registers 9

    #@0
    const-string v0, "parser error"

    #@2
    .line 139
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v1

    #@6
    .line 141
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@9
    move-result-object p1

    #@a
    .line 142
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@d
    move-result-object v2

    #@e
    .line 145
    :goto_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@11
    move-result v3

    #@12
    const/4 v4, 0x2

    #@13
    if-eq v3, v4, :cond_19

    #@15
    const/4 v5, 0x1

    #@16
    if-eq v3, v5, :cond_19

    #@18
    goto :goto_e

    #@19
    :cond_19
    if-ne v3, v4, :cond_20

    #@1b
    .line 152
    invoke-static {p0, v1, p1, v2, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    #@1e
    move-result-object p0

    #@1f
    return-object p0

    #@20
    .line 150
    :cond_20
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    #@22
    const-string p1, "No start tag found"

    #@24
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@27
    throw p0
    :try_end_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_28} :catch_2f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_28} :catch_28

    #@28
    :catch_28
    move-exception p0

    #@29
    .line 156
    sget-object p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->LOGTAG:Ljava/lang/String;

    #@2b
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_35

    #@2f
    :catch_2f
    move-exception p0

    #@30
    .line 154
    sget-object p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->LOGTAG:Ljava/lang/String;

    #@32
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    :goto_35
    const/4 p0, 0x0

    #@36
    return-object p0
.end method

.method public static createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .line 174
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "animated-selector"

    #@6
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1b

    #@c
    .line 179
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    #@e
    invoke-direct {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>()V

    #@11
    move-object v2, v0

    #@12
    move-object v3, p0

    #@13
    move-object v4, p1

    #@14
    move-object v5, p2

    #@15
    move-object v6, p3

    #@16
    move-object v7, p4

    #@17
    .line 180
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@1a
    return-object v0

    #@1b
    .line 176
    :cond_1b
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    #@1d
    new-instance p1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    .line 177
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@25
    move-result-object p2

    #@26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p1

    #@2a
    const-string p2, ": invalid animated-selector tag "

    #@2c
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p1

    #@30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object p1

    #@34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object p1

    #@38
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3b
    throw p0
.end method

.method private inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 482
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    add-int/2addr v0, v1

    #@6
    .line 484
    :cond_6
    :goto_6
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9
    move-result v2

    #@a
    if-eq v2, v1, :cond_3c

    #@c
    .line 485
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@f
    move-result v3

    #@10
    if-ge v3, v0, :cond_15

    #@12
    const/4 v4, 0x3

    #@13
    if-eq v2, v4, :cond_3c

    #@15
    :cond_15
    const/4 v4, 0x2

    #@16
    if-eq v2, v4, :cond_19

    #@18
    goto :goto_6

    #@19
    :cond_19
    if-le v3, v0, :cond_1c

    #@1b
    goto :goto_6

    #@1c
    .line 493
    :cond_1c
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    const-string v3, "item"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2c

    #@28
    .line 494
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->parseItem(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    #@2b
    goto :goto_6

    #@2c
    .line 495
    :cond_2c
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    const-string v3, "transition"

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_6

    #@38
    .line 496
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->parseTransition(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    #@3b
    goto :goto_6

    #@3c
    :cond_3c
    return-void
.end method

.method private init()V
    .registers 2

    #@0
    .line 471
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getState()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    #@7
    return-void
.end method

.method private parseItem(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 564
    sget-object v0, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem:[I

    #@2
    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 566
    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_id:I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c
    move-result v1

    #@d
    .line 569
    sget v2, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem_android_drawable:I

    #@f
    const/4 v3, -0x1

    #@10
    .line 570
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@13
    move-result v2

    #@14
    if-lez v2, :cond_1f

    #@16
    .line 572
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object p1

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    const/4 p1, 0x0

    #@20
    .line 574
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@23
    .line 575
    invoke-virtual {p0, p4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->extractStateSet(Landroid/util/AttributeSet;)[I

    #@26
    move-result-object v0

    #@27
    const-string v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    #@29
    if-nez p1, :cond_67

    #@2b
    .line 581
    :goto_2b
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@2e
    move-result p1

    #@2f
    const/4 v3, 0x4

    #@30
    if-ne p1, v3, :cond_33

    #@32
    goto :goto_2b

    #@33
    :cond_33
    const/4 v3, 0x2

    #@34
    if-ne p1, v3, :cond_4c

    #@36
    .line 589
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@39
    move-result-object p1

    #@3a
    const-string v3, "vector"

    #@3c
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result p1

    #@40
    if-eqz p1, :cond_47

    #@42
    .line 590
    invoke-static {p2, p3, p4, p5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    #@45
    move-result-object p1

    #@46
    goto :goto_67

    #@47
    .line 592
    :cond_47
    invoke-static {p2, p3, p4, p5}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@4a
    move-result-object p1

    #@4b
    goto :goto_67

    #@4c
    .line 585
    :cond_4c
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    #@4e
    new-instance p2, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    .line 586
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@56
    move-result-object p3

    #@57
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object p2

    #@5b
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object p2

    #@5f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object p2

    #@63
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@66
    throw p1

    #@67
    :cond_67
    :goto_67
    if-eqz p1, :cond_70

    #@69
    .line 601
    iget-object p2, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@6b
    invoke-virtual {p2, v0, p1, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    #@6e
    move-result p1

    #@6f
    return p1

    #@70
    .line 598
    :cond_70
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    #@72
    new-instance p2, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    .line 599
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@7a
    move-result-object p3

    #@7b
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object p2

    #@7f
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object p2

    #@83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object p2

    #@87
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@8a
    throw p1
.end method

.method private parseTransition(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 509
    sget-object v0, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition:[I

    #@2
    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 511
    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_fromId:I

    #@8
    const/4 v2, -0x1

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c
    move-result v1

    #@d
    .line 513
    sget v3, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_toId:I

    #@f
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@12
    move-result v3

    #@13
    .line 516
    sget v4, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_drawable:I

    #@15
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@18
    move-result v4

    #@19
    if-lez v4, :cond_24

    #@1b
    .line 519
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, p1, v4}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v4

    #@23
    goto :goto_25

    #@24
    :cond_24
    const/4 v4, 0x0

    #@25
    .line 521
    :goto_25
    sget v5, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition_android_reversible:I

    #@27
    const/4 v6, 0x0

    #@28
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2b
    move-result v5

    #@2c
    .line 523
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2f
    const-string v0, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    #@31
    if-nez v4, :cond_6f

    #@33
    .line 529
    :goto_33
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@36
    move-result v4

    #@37
    const/4 v6, 0x4

    #@38
    if-ne v4, v6, :cond_3b

    #@3a
    goto :goto_33

    #@3b
    :cond_3b
    const/4 v6, 0x2

    #@3c
    if-ne v4, v6, :cond_54

    #@3e
    .line 537
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    const-string v6, "animated-vector"

    #@44
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_4f

    #@4a
    .line 538
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    #@4d
    move-result-object v4

    #@4e
    goto :goto_6f

    #@4f
    .line 541
    :cond_4f
    invoke-static {p2, p3, p4, p5}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@52
    move-result-object v4

    #@53
    goto :goto_6f

    #@54
    .line 533
    :cond_54
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    #@56
    new-instance p2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    .line 534
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@5e
    move-result-object p3

    #@5f
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object p2

    #@63
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object p2

    #@67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object p2

    #@6b
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@6e
    throw p1

    #@6f
    :cond_6f
    :goto_6f
    if-eqz v4, :cond_99

    #@71
    if-eq v1, v2, :cond_7c

    #@73
    if-eq v3, v2, :cond_7c

    #@75
    .line 554
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@77
    invoke-virtual {p1, v1, v3, v4, v5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    #@7a
    move-result p1

    #@7b
    return p1

    #@7c
    .line 551
    :cond_7c
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    #@7e
    new-instance p2, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    .line 552
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@86
    move-result-object p3

    #@87
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object p2

    #@8b
    const-string p3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    #@8d
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object p2

    #@91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object p2

    #@95
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@98
    throw p1

    #@99
    .line 547
    :cond_99
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    #@9b
    new-instance p2, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    .line 548
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@a3
    move-result-object p3

    #@a4
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object p2

    #@a8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object p2

    #@ac
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object p2

    #@b0
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@b3
    throw p1
.end method

.method private selectTransition(I)Z
    .registers 11

    #@0
    .line 292
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_24

    #@5
    .line 294
    iget v2, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    #@7
    if-ne p1, v2, :cond_a

    #@9
    return v1

    #@a
    .line 297
    :cond_a
    iget v2, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    #@c
    if-ne p1, v2, :cond_1e

    #@e
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->canReverse()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1e

    #@14
    .line 299
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->reverse()V

    #@17
    .line 300
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    #@19
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    #@1b
    .line 301
    iput p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    #@1d
    return v1

    #@1e
    .line 305
    :cond_1e
    iget v2, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    #@20
    .line 307
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->stop()V

    #@23
    goto :goto_28

    #@24
    .line 309
    :cond_24
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrentIndex()I

    #@27
    move-result v2

    #@28
    :goto_28
    const/4 v0, 0x0

    #@29
    .line 312
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    #@2b
    const/4 v0, -0x1

    #@2c
    .line 313
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    #@2e
    .line 314
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    #@30
    .line 315
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@32
    .line 316
    invoke-virtual {v0, v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->getKeyframeIdAt(I)I

    #@35
    move-result v3

    #@36
    .line 317
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->getKeyframeIdAt(I)I

    #@39
    move-result v4

    #@3a
    const/4 v5, 0x0

    #@3b
    if-eqz v4, :cond_83

    #@3d
    if-nez v3, :cond_40

    #@3f
    goto :goto_83

    #@40
    .line 322
    :cond_40
    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->indexOfTransition(II)I

    #@43
    move-result v6

    #@44
    if-gez v6, :cond_47

    #@46
    return v5

    #@47
    .line 327
    :cond_47
    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->transitionHasReversibleFlag(II)Z

    #@4a
    move-result v7

    #@4b
    .line 329
    invoke-virtual {p0, v6}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->selectDrawable(I)Z

    #@4e
    .line 331
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@51
    move-result-object v6

    #@52
    .line 332
    instance-of v8, v6, Landroid/graphics/drawable/AnimationDrawable;

    #@54
    if-eqz v8, :cond_62

    #@56
    .line 333
    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->isTransitionReversed(II)Z

    #@59
    move-result v0

    #@5a
    .line 334
    new-instance v3, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;

    #@5c
    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    #@5e
    invoke-direct {v3, v6, v0, v7}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    #@61
    goto :goto_79

    #@62
    .line 336
    :cond_62
    instance-of v0, v6, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    #@64
    if-eqz v0, :cond_6e

    #@66
    .line 338
    new-instance v3, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;

    #@68
    check-cast v6, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    #@6a
    invoke-direct {v3, v6}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;-><init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    #@6d
    goto :goto_79

    #@6e
    .line 339
    :cond_6e
    instance-of v0, v6, Landroid/graphics/drawable/Animatable;

    #@70
    if-eqz v0, :cond_83

    #@72
    .line 340
    new-instance v3, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;

    #@74
    check-cast v6, Landroid/graphics/drawable/Animatable;

    #@76
    invoke-direct {v3, v6}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;-><init>(Landroid/graphics/drawable/Animatable;)V

    #@79
    .line 345
    :goto_79
    invoke-virtual {v3}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->start()V

    #@7c
    .line 346
    iput-object v3, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    #@7e
    .line 347
    iput v2, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    #@80
    .line 348
    iput p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    #@82
    return v1

    #@83
    :cond_83
    :goto_83
    return v5
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5

    #@0
    .line 448
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@2
    .line 451
    iget v1, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mChangingConfigurations:I

    #@4
    invoke-static {p1}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->getChangingConfigurations(Landroid/content/res/TypedArray;)I

    #@7
    move-result v2

    #@8
    or-int/2addr v1, v2

    #@9
    iput v1, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mChangingConfigurations:I

    #@b
    .line 454
    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_variablePadding:I

    #@d
    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mVariablePadding:Z

    #@f
    .line 455
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@12
    move-result v1

    #@13
    .line 454
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setVariablePadding(Z)V

    #@16
    .line 457
    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_constantSize:I

    #@18
    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mConstantSize:Z

    #@1a
    .line 458
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1d
    move-result v1

    #@1e
    .line 457
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setConstantSize(Z)V

    #@21
    .line 460
    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    #@23
    iget v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mEnterFadeDuration:I

    #@25
    .line 461
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@28
    move-result v1

    #@29
    .line 460
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setEnterFadeDuration(I)V

    #@2c
    .line 463
    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    #@2e
    iget v2, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mExitFadeDuration:I

    #@30
    .line 464
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@33
    move-result v1

    #@34
    .line 463
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->setExitFadeDuration(I)V

    #@37
    .line 466
    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_dither:I

    #@39
    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mDither:Z

    #@3b
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3e
    move-result p1

    #@3f
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->setDither(Z)V

    #@42
    return-void
.end method


# virtual methods
.method public bridge synthetic addState([ILandroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 91
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public addState([ILandroid/graphics/drawable/Drawable;I)V
    .registers 5

    #@0
    .line 237
    invoke-static {p2}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 238
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    #@8
    .line 239
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getState()[I

    #@b
    move-result-object p1

    #@c
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->onStateChange([I)Z

    #@f
    return-void
.end method

.method public addTransition(IILandroid/graphics/drawable/Drawable;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/graphics/drawable/Animatable;",
            ">(IITT;Z)V"
        }
    .end annotation

    #@0
    .line 252
    invoke-static {p3}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 253
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    #@8
    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    return-void
.end method

.method public bridge synthetic canApplyTheme()Z
    .registers 2

    #@0
    .line 91
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->canApplyTheme()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method clearMutated()V
    .registers 2

    #@0
    .line 621
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->clearMutated()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 622
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mMutated:Z

    #@6
    return-void
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
    .registers 4

    #@0
    .line 616
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@2
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V

    #@8
    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .registers 2

    #@0
    .line 91
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->cloneConstantState()Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .registers 2

    #@0
    .line 91
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->cloneConstantState()Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    #@3
    return-void
.end method

.method public bridge synthetic getAlpha()I
    .registers 2

    #@0
    .line 91
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getAlpha()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getChangingConfigurations()I
    .registers 2

    #@0
    .line 91
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 91
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    #@3
    return-void
.end method

.method public bridge synthetic getIntrinsicHeight()I
    .registers 2

    #@0
    .line 91
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getIntrinsicWidth()I
    .registers 2

    #@0
    .line 91
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .registers 2

    #@0
    .line 91
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getMinimumHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .registers 2

    #@0
    .line 91
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getMinimumWidth()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getOpacity()I
    .registers 2

    #@0
    .line 91
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getOpacity()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getOutline(Landroid/graphics/Outline;)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getOutline(Landroid/graphics/Outline;)V

    #@3
    return-void
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getPadding(Landroid/graphics/Rect;)Z

    #@3
    move-result p1

    #@4
    return p1
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
    .line 204
    sget-object v0, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat:[I

    #@2
    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 206
    sget v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat_android_visible:I

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c
    move-result v1

    #@d
    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->setVisible(ZZ)Z

    #@10
    .line 208
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@13
    .line 209
    invoke-virtual {p0, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->updateDensity(Landroid/content/res/Resources;)V

    #@16
    .line 210
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@19
    .line 211
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@1c
    .line 212
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->init()V

    #@1f
    return-void
.end method

.method public bridge synthetic invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public bridge synthetic isAutoMirrored()Z
    .registers 2

    #@0
    .line 91
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->isAutoMirrored()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isStateful()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    #@0
    .line 263
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    #@3
    .line 264
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    #@5
    if-eqz v0, :cond_17

    #@7
    .line 265
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->stop()V

    #@a
    const/4 v0, 0x0

    #@b
    .line 266
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    #@d
    .line 267
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    #@f
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->selectDrawable(I)Z

    #@12
    const/4 v0, -0x1

    #@13
    .line 268
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionToIndex:I

    #@15
    .line 269
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransitionFromIndex:I

    #@17
    :cond_17
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 607
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mMutated:Z

    #@2
    if-nez v0, :cond_12

    #@4
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_12

    #@a
    .line 608
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@c
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mutate()V

    #@f
    const/4 v0, 0x1

    #@10
    .line 609
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mMutated:Z

    #@12
    :cond_12
    return-object p0
.end method

.method public bridge synthetic onLayoutDirectionChanged(I)Z
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onLayoutDirectionChanged(I)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method protected onStateChange([I)Z
    .registers 4

    #@0
    .line 277
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->indexOfKeyframe([I)I

    #@5
    move-result v0

    #@6
    .line 278
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrentIndex()I

    #@9
    move-result v1

    #@a
    if-eq v0, v1, :cond_1a

    #@c
    .line 279
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->selectTransition(I)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_18

    #@12
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->selectDrawable(I)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1a

    #@18
    :cond_18
    const/4 v0, 0x1

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    .line 283
    :goto_1b
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v1

    #@1f
    if-eqz v1, :cond_26

    #@21
    .line 285
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@24
    move-result p1

    #@25
    or-int/2addr v0, p1

    #@26
    :cond_26
    return v0
.end method

.method public bridge synthetic scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    #@0
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    #@3
    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setAlpha(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setAutoMirrored(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@3
    return-void
.end method

.method setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 3

    #@0
    .line 720
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@3
    .line 721
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@5
    if-eqz v0, :cond_b

    #@7
    .line 722
    check-cast p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@9
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mState:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;

    #@b
    :cond_b
    return-void
.end method

.method public bridge synthetic setDither(Z)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setDither(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setEnterFadeDuration(I)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setEnterFadeDuration(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setExitFadeDuration(I)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .registers 3

    #@0
    .line 91
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setHotspot(FF)V

    #@3
    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .registers 5

    #@0
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setHotspotBounds(IIII)V

    #@3
    return-void
.end method

.method public bridge synthetic setTint(I)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setTint(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    #@0
    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@3
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    #@0
    .line 217
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    #@3
    move-result v0

    #@4
    .line 218
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->mTransition:Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;

    #@6
    if-eqz v1, :cond_15

    #@8
    if-nez v0, :cond_c

    #@a
    if-eqz p2, :cond_15

    #@c
    :cond_c
    if-eqz p1, :cond_12

    #@e
    .line 220
    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;->start()V

    #@11
    goto :goto_15

    #@12
    .line 223
    :cond_12
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->jumpToCurrentState()V

    #@15
    :cond_15
    :goto_15
    return v0
.end method

.method public bridge synthetic unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    #@0
    .line 91
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    #@3
    return-void
.end method

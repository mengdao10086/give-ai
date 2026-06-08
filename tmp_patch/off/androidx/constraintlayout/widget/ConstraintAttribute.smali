.class public Landroidx/constraintlayout/widget/ConstraintAttribute;
.super Ljava/lang/Object;
.source "ConstraintAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionLayout"


# instance fields
.field mBooleanValue:Z

.field private mColorValue:I

.field private mFloatValue:F

.field private mIntegerValue:I

.field private mMethod:Z

.field mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "value"
        }
    .end annotation

    #@0
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 44
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    #@6
    .line 267
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    #@a
    .line 268
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@c
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@e
    .line 269
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setValue(Ljava/lang/Object;)V

    #@11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "attributeType"
        }
    .end annotation

    #@0
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 44
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    #@6
    .line 255
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    #@8
    .line 256
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;Ljava/lang/Object;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "attributeType",
            "value",
            "method"
        }
    .end annotation

    #@0
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 260
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    #@5
    .line 261
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@7
    .line 262
    iput-boolean p4, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    #@9
    .line 263
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setValue(Ljava/lang/Object;)V

    #@c
    return-void
.end method

.method private static clamp(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    #@0
    shr-int/lit8 v0, p0, 0x1f

    #@2
    not-int v0, v0

    #@3
    and-int/2addr p0, v0

    #@4
    add-int/lit16 p0, p0, -0xff

    #@6
    shr-int/lit8 v0, p0, 0x1f

    #@8
    and-int/2addr p0, v0

    #@9
    add-int/lit16 p0, p0, 0xff

    #@b
    return p0
.end method

.method public static extractAttributes(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation

    #@0
    .line 300
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    .line 302
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_7a

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Ljava/lang/String;

    #@1d
    .line 303
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@23
    :try_start_23
    const-string v5, "BackgroundColor"

    #@25
    .line 306
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_42

    #@2b
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@2e
    move-result-object v5

    #@2f
    check-cast v5, Landroid/graphics/drawable/ColorDrawable;

    #@31
    .line 308
    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@34
    move-result v5

    #@35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v5

    #@39
    .line 309
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@3b
    invoke-direct {v6, v4, v5}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    #@3e
    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    goto :goto_11

    #@42
    .line 311
    :cond_42
    new-instance v5, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string v6, "getMap"

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    const/4 v6, 0x0

    #@56
    new-array v7, v6, [Ljava/lang/Class;

    #@58
    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@5b
    move-result-object v5

    #@5c
    new-array v6, v6, [Ljava/lang/Object;

    #@5e
    .line 312
    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    move-result-object v5

    #@62
    .line 313
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@64
    invoke-direct {v6, v4, v5}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    #@67
    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_23 .. :try_end_6a} :catch_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_6a} :catch_70
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_6a} :catch_6b

    #@6a
    goto :goto_11

    #@6b
    :catch_6b
    move-exception v3

    #@6c
    .line 321
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    #@6f
    goto :goto_11

    #@70
    :catch_70
    move-exception v3

    #@71
    .line 319
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@74
    goto :goto_11

    #@75
    :catch_75
    move-exception v3

    #@76
    .line 317
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    #@79
    goto :goto_11

    #@7a
    :cond_7a
    return-object v0
.end method

.method public static parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parser",
            "custom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 452
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object p1

    #@4
    .line 453
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute:[I

    #@6
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object p1

    #@a
    .line 458
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x0

    #@f
    const/4 v2, 0x0

    #@10
    move-object v3, v1

    #@11
    move-object v4, v3

    #@12
    move v5, v2

    #@13
    move v6, v5

    #@14
    :goto_14
    if-ge v5, v0, :cond_f7

    #@16
    .line 460
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@19
    move-result v7

    #@1a
    .line 461
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_attributeName:I

    #@1c
    const/4 v9, 0x1

    #@1d
    if-ne v7, v8, :cond_4a

    #@1f
    .line 462
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    if-eqz v1, :cond_f3

    #@25
    .line 463
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@28
    move-result v7

    #@29
    if-lez v7, :cond_f3

    #@2b
    .line 464
    new-instance v7, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v8

    #@34
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    #@37
    move-result v8

    #@38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    goto/16 :goto_f3

    #@4a
    .line 466
    :cond_4a
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_methodName:I

    #@4c
    if-ne v7, v8, :cond_55

    #@4e
    .line 468
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    move v6, v9

    #@53
    goto/16 :goto_f3

    #@55
    .line 469
    :cond_55
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customBoolean:I

    #@57
    if-ne v7, v8, :cond_65

    #@59
    .line 470
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@5c
    move-result v3

    #@5d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@60
    move-result-object v3

    #@61
    .line 471
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@63
    goto/16 :goto_f3

    #@65
    .line 472
    :cond_65
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customColorValue:I

    #@67
    if-ne v7, v8, :cond_78

    #@69
    .line 473
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@6b
    .line 474
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@6e
    move-result v4

    #@6f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v4

    #@73
    :goto_73
    move-object v11, v4

    #@74
    move-object v4, v3

    #@75
    move-object v3, v11

    #@76
    goto/16 :goto_f3

    #@78
    .line 475
    :cond_78
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customColorDrawableValue:I

    #@7a
    if-ne v7, v8, :cond_87

    #@7c
    .line 476
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@7e
    .line 477
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@81
    move-result v4

    #@82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@85
    move-result-object v4

    #@86
    goto :goto_73

    #@87
    .line 478
    :cond_87
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customPixelDimension:I

    #@89
    const/4 v10, 0x0

    #@8a
    if-ne v7, v8, :cond_a3

    #@8c
    .line 479
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@8e
    .line 482
    invoke-virtual {p1, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@91
    move-result v4

    #@92
    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@95
    move-result-object v7

    #@96
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@99
    move-result-object v7

    #@9a
    .line 480
    invoke-static {v9, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@9d
    move-result v4

    #@9e
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@a1
    move-result-object v4

    #@a2
    goto :goto_73

    #@a3
    .line 484
    :cond_a3
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customDimension:I

    #@a5
    if-ne v7, v8, :cond_b2

    #@a7
    .line 485
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@a9
    .line 486
    invoke-virtual {p1, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@ac
    move-result v4

    #@ad
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@b0
    move-result-object v4

    #@b1
    goto :goto_73

    #@b2
    .line 487
    :cond_b2
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customFloatValue:I

    #@b4
    if-ne v7, v8, :cond_c3

    #@b6
    .line 488
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@b8
    const/high16 v4, 0x7fc00000    # Float.NaN

    #@ba
    .line 489
    invoke-virtual {p1, v7, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@bd
    move-result v4

    #@be
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@c1
    move-result-object v4

    #@c2
    goto :goto_73

    #@c3
    .line 490
    :cond_c3
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customIntegerValue:I

    #@c5
    const/4 v9, -0x1

    #@c6
    if-ne v7, v8, :cond_d3

    #@c8
    .line 491
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@ca
    .line 492
    invoke-virtual {p1, v7, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@cd
    move-result v4

    #@ce
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d1
    move-result-object v4

    #@d2
    goto :goto_73

    #@d3
    .line 493
    :cond_d3
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customStringValue:I

    #@d5
    if-ne v7, v8, :cond_de

    #@d7
    .line 494
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@d9
    .line 495
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@dc
    move-result-object v4

    #@dd
    goto :goto_73

    #@de
    .line 496
    :cond_de
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customReference:I

    #@e0
    if-ne v7, v8, :cond_f3

    #@e2
    .line 497
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->REFERENCE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@e4
    .line 498
    invoke-virtual {p1, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@e7
    move-result v4

    #@e8
    if-ne v4, v9, :cond_ee

    #@ea
    .line 500
    invoke-virtual {p1, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@ed
    move-result v4

    #@ee
    .line 502
    :cond_ee
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f1
    move-result-object v4

    #@f2
    goto :goto_73

    #@f3
    :cond_f3
    :goto_f3
    add-int/lit8 v5, v5, 0x1

    #@f5
    goto/16 :goto_14

    #@f7
    :cond_f7
    if-eqz v1, :cond_103

    #@f9
    if-eqz v3, :cond_103

    #@fb
    .line 506
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@fd
    invoke-direct {p0, v1, v4, v3, v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;Ljava/lang/Object;Z)V

    #@100
    invoke-virtual {p2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@103
    .line 508
    :cond_103
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@106
    return-void
.end method

.method public static setAttributes(Landroid/view/View;Ljava/util/HashMap;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "\" not found on "

    #@2
    const-string v1, " Custom Attribute \""

    #@4
    const-string v2, "TransitionLayout"

    #@6
    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v3

    #@a
    .line 329
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@d
    move-result-object v4

    #@e
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v4

    #@12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_196

    #@18
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v5

    #@1c
    check-cast v5, Ljava/lang/String;

    #@1e
    .line 330
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@24
    .line 332
    iget-boolean v7, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    #@26
    if-nez v7, :cond_38

    #@28
    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    #@2a
    const-string v8, "set"

    #@2c
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2f
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    goto :goto_39

    #@38
    :cond_38
    move-object v7, v5

    #@39
    .line 337
    :goto_39
    :try_start_39
    sget-object v8, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    #@3b
    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@3d
    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    #@40
    move-result v9

    #@41
    aget v8, v8, v9

    #@43
    const/4 v9, 0x0

    #@44
    const/4 v10, 0x1

    #@45
    packed-switch v8, :pswitch_data_198

    #@48
    goto :goto_12

    #@49
    :pswitch_49
    new-array v8, v10, [Ljava/lang/Class;

    #@4b
    .line 365
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@4d
    aput-object v11, v8, v9

    #@4f
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@52
    move-result-object v8

    #@53
    new-array v10, v10, [Ljava/lang/Object;

    #@55
    .line 366
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@57
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5a
    move-result-object v6

    #@5b
    aput-object v6, v10, v9

    #@5d
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    goto :goto_12

    #@61
    :pswitch_61
    new-array v8, v10, [Ljava/lang/Class;

    #@63
    .line 343
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@65
    aput-object v11, v8, v9

    #@67
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@6a
    move-result-object v8

    #@6b
    new-array v10, v10, [Ljava/lang/Object;

    #@6d
    .line 344
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@6f
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@72
    move-result-object v6

    #@73
    aput-object v6, v10, v9

    #@75
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    goto :goto_12

    #@79
    :pswitch_79
    new-array v8, v10, [Ljava/lang/Class;

    #@7b
    .line 339
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@7d
    aput-object v11, v8, v9

    #@7f
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@82
    move-result-object v8

    #@83
    new-array v10, v10, [Ljava/lang/Object;

    #@85
    .line 340
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    #@87
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8a
    move-result-object v6

    #@8b
    aput-object v6, v10, v9

    #@8d
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@90
    goto :goto_12

    #@91
    :pswitch_91
    new-array v8, v10, [Ljava/lang/Class;

    #@93
    .line 347
    const-class v11, Landroid/graphics/drawable/Drawable;

    #@95
    aput-object v11, v8, v9

    #@97
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@9a
    move-result-object v8

    #@9b
    .line 348
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    #@9d
    invoke-direct {v11}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    #@a0
    .line 349
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    #@a2
    invoke-virtual {v11, v6}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    #@a5
    new-array v6, v10, [Ljava/lang/Object;

    #@a7
    aput-object v11, v6, v9

    #@a9
    .line 350
    invoke-virtual {v8, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@ac
    goto/16 :goto_12

    #@ae
    :pswitch_ae
    new-array v8, v10, [Ljava/lang/Class;

    #@b0
    .line 353
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@b2
    aput-object v11, v8, v9

    #@b4
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@b7
    move-result-object v8

    #@b8
    new-array v10, v10, [Ljava/lang/Object;

    #@ba
    .line 354
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    #@bc
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bf
    move-result-object v6

    #@c0
    aput-object v6, v10, v9

    #@c2
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@c5
    goto/16 :goto_12

    #@c7
    :pswitch_c7
    new-array v8, v10, [Ljava/lang/Class;

    #@c9
    .line 357
    const-class v11, Ljava/lang/CharSequence;

    #@cb
    aput-object v11, v8, v9

    #@cd
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@d0
    move-result-object v8

    #@d1
    new-array v10, v10, [Ljava/lang/Object;

    #@d3
    .line 358
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    #@d5
    aput-object v6, v10, v9

    #@d7
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@da
    goto/16 :goto_12

    #@dc
    :pswitch_dc
    new-array v8, v10, [Ljava/lang/Class;

    #@de
    .line 361
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@e0
    aput-object v11, v8, v9

    #@e2
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@e5
    move-result-object v8

    #@e6
    new-array v10, v10, [Ljava/lang/Object;

    #@e8
    .line 362
    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    #@ea
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@ed
    move-result-object v6

    #@ee
    aput-object v6, v10, v9

    #@f0
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@f3
    goto/16 :goto_12

    #@f5
    :pswitch_f5
    new-array v8, v10, [Ljava/lang/Class;

    #@f7
    .line 369
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@f9
    aput-object v11, v8, v9

    #@fb
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@fe
    move-result-object v8

    #@ff
    new-array v10, v10, [Ljava/lang/Object;

    #@101
    .line 370
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    #@103
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@106
    move-result-object v6

    #@107
    aput-object v6, v10, v9

    #@109
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_39 .. :try_end_10c} :catch_152
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_10c} :catch_130
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_39 .. :try_end_10c} :catch_10e

    #@10c
    goto/16 :goto_12

    #@10e
    :catch_10e
    move-exception v6

    #@10f
    .line 380
    new-instance v7, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@114
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v5

    #@118
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v5

    #@11c
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@11f
    move-result-object v7

    #@120
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v5

    #@124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v5

    #@128
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12b
    .line 381
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    #@12e
    goto/16 :goto_12

    #@130
    :catch_130
    move-exception v6

    #@131
    .line 377
    new-instance v7, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@136
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v5

    #@13a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v5

    #@13e
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@141
    move-result-object v7

    #@142
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v5

    #@146
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v5

    #@14a
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14d
    .line 378
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@150
    goto/16 :goto_12

    #@152
    :catch_152
    move-exception v6

    #@153
    .line 373
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    #@156
    move-result-object v6

    #@157
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15a
    .line 374
    new-instance v6, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15f
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v5

    #@163
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v5

    #@167
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@16a
    move-result-object v6

    #@16b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v5

    #@16f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v5

    #@173
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@176
    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    #@178
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@17b
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@17e
    move-result-object v6

    #@17f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v5

    #@183
    const-string v6, " must have a method "

    #@185
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v5

    #@189
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v5

    #@18d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object v5

    #@191
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@194
    goto/16 :goto_12

    #@196
    :cond_196
    return-void

    #@197
    nop

    #@198
    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_f5
        :pswitch_dc
        :pswitch_c7
        :pswitch_ae
        :pswitch_91
        :pswitch_79
        :pswitch_61
        :pswitch_49
    .end packed-switch
.end method


# virtual methods
.method public applyCustom(Landroid/view/View;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    const-string v0, "\" not found on "

    #@2
    const-string v1, " Custom Attribute \""

    #@4
    const-string v2, "TransitionLayout"

    #@6
    .line 387
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v3

    #@a
    .line 388
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    #@c
    .line 390
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    #@e
    if-nez v5, :cond_20

    #@10
    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    const-string v6, "set"

    #@14
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    goto :goto_21

    #@20
    :cond_20
    move-object v5, v4

    #@21
    .line 395
    :goto_21
    :try_start_21
    sget-object v6, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    #@23
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@25
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    #@28
    move-result v7

    #@29
    aget v6, v6, v7

    #@2b
    const/4 v7, 0x0

    #@2c
    const/4 v8, 0x1

    #@2d
    packed-switch v6, :pswitch_data_166

    #@30
    goto/16 :goto_165

    #@32
    :pswitch_32
    new-array v6, v8, [Ljava/lang/Class;

    #@34
    .line 424
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@36
    aput-object v9, v6, v7

    #@38
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@3b
    move-result-object v6

    #@3c
    new-array v8, v8, [Ljava/lang/Object;

    #@3e
    .line 425
    iget v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@40
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@43
    move-result-object v9

    #@44
    aput-object v9, v8, v7

    #@46
    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    goto/16 :goto_165

    #@4b
    :pswitch_4b
    new-array v6, v8, [Ljava/lang/Class;

    #@4d
    .line 402
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@4f
    aput-object v9, v6, v7

    #@51
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@54
    move-result-object v6

    #@55
    new-array v8, v8, [Ljava/lang/Object;

    #@57
    .line 403
    iget v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@59
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5c
    move-result-object v9

    #@5d
    aput-object v9, v8, v7

    #@5f
    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    goto/16 :goto_165

    #@64
    :pswitch_64
    new-array v6, v8, [Ljava/lang/Class;

    #@66
    .line 406
    const-class v9, Landroid/graphics/drawable/Drawable;

    #@68
    aput-object v9, v6, v7

    #@6a
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@6d
    move-result-object v6

    #@6e
    .line 407
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    #@70
    invoke-direct {v9}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    #@73
    .line 408
    iget v10, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    #@75
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    #@78
    new-array v8, v8, [Ljava/lang/Object;

    #@7a
    aput-object v9, v8, v7

    #@7c
    .line 409
    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    goto/16 :goto_165

    #@81
    :pswitch_81
    new-array v6, v8, [Ljava/lang/Class;

    #@83
    .line 412
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@85
    aput-object v9, v6, v7

    #@87
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@8a
    move-result-object v6

    #@8b
    new-array v8, v8, [Ljava/lang/Object;

    #@8d
    .line 413
    iget v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    #@8f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@92
    move-result-object v9

    #@93
    aput-object v9, v8, v7

    #@95
    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    goto/16 :goto_165

    #@9a
    :pswitch_9a
    new-array v6, v8, [Ljava/lang/Class;

    #@9c
    .line 416
    const-class v9, Ljava/lang/CharSequence;

    #@9e
    aput-object v9, v6, v7

    #@a0
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@a3
    move-result-object v6

    #@a4
    new-array v8, v8, [Ljava/lang/Object;

    #@a6
    .line 417
    iget-object v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    #@a8
    aput-object v9, v8, v7

    #@aa
    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    goto/16 :goto_165

    #@af
    :pswitch_af
    new-array v6, v8, [Ljava/lang/Class;

    #@b1
    .line 420
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@b3
    aput-object v9, v6, v7

    #@b5
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@b8
    move-result-object v6

    #@b9
    new-array v8, v8, [Ljava/lang/Object;

    #@bb
    .line 421
    iget-boolean v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    #@bd
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c0
    move-result-object v9

    #@c1
    aput-object v9, v8, v7

    #@c3
    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@c6
    goto/16 :goto_165

    #@c8
    :pswitch_c8
    new-array v6, v8, [Ljava/lang/Class;

    #@ca
    .line 398
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@cc
    aput-object v9, v6, v7

    #@ce
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@d1
    move-result-object v6

    #@d2
    new-array v8, v8, [Ljava/lang/Object;

    #@d4
    .line 399
    iget v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    #@d6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d9
    move-result-object v9

    #@da
    aput-object v9, v8, v7

    #@dc
    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_df
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_df} :catch_123
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_df} :catch_102
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_df} :catch_e1

    #@df
    goto/16 :goto_165

    #@e1
    :catch_e1
    move-exception p1

    #@e2
    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e7
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v1

    #@eb
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v0

    #@ef
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@f2
    move-result-object v1

    #@f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v0

    #@f7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v0

    #@fb
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@fe
    .line 437
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    #@101
    goto :goto_165

    #@102
    :catch_102
    move-exception p1

    #@103
    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@108
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v1

    #@10c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v0

    #@110
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@113
    move-result-object v1

    #@114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v0

    #@118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v0

    #@11c
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11f
    .line 434
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@122
    goto :goto_165

    #@123
    :catch_123
    move-exception p1

    #@124
    .line 429
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    #@127
    move-result-object p1

    #@128
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12b
    .line 430
    new-instance p1, Ljava/lang/StringBuilder;

    #@12d
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@130
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object p1

    #@134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object p1

    #@138
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13b
    move-result-object v0

    #@13c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object p1

    #@140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object p1

    #@144
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@147
    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    #@149
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@14f
    move-result-object v0

    #@150
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object p1

    #@154
    const-string v0, " must have a method "

    #@156
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object p1

    #@15a
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object p1

    #@15e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@161
    move-result-object p1

    #@162
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@165
    :goto_165
    return-void

    #@166
    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_af
        :pswitch_9a
        :pswitch_81
        :pswitch_64
        :pswitch_c8
        :pswitch_4b
        :pswitch_32
    .end packed-switch
.end method

.method public diff(Landroidx/constraintlayout/widget/ConstraintAttribute;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintAttribute"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_4c

    #@3
    .line 232
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@5
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@7
    if-eq v1, v2, :cond_a

    #@9
    goto :goto_4c

    #@a
    .line 235
    :cond_a
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    #@c
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@e
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    #@11
    move-result v2

    #@12
    aget v1, v1, v2

    #@14
    const/4 v2, 0x1

    #@15
    packed-switch v1, :pswitch_data_4e

    #@18
    return v0

    #@19
    .line 249
    :pswitch_19
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@1b
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@1d
    cmpl-float p1, v1, p1

    #@1f
    if-nez p1, :cond_22

    #@21
    move v0, v2

    #@22
    :cond_22
    return v0

    #@23
    .line 240
    :pswitch_23
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@25
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@27
    cmpl-float p1, v1, p1

    #@29
    if-nez p1, :cond_2c

    #@2b
    move v0, v2

    #@2c
    :cond_2c
    return v0

    #@2d
    .line 243
    :pswitch_2d
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    #@2f
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    #@31
    if-ne v1, p1, :cond_34

    #@33
    move v0, v2

    #@34
    :cond_34
    return v0

    #@35
    .line 245
    :pswitch_35
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    #@37
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    #@39
    if-ne v1, p1, :cond_3c

    #@3b
    move v0, v2

    #@3c
    :cond_3c
    return v0

    #@3d
    .line 247
    :pswitch_3d
    iget-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    #@3f
    iget-boolean p1, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    #@41
    if-ne v1, p1, :cond_44

    #@43
    move v0, v2

    #@44
    :cond_44
    return v0

    #@45
    .line 238
    :pswitch_45
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    #@47
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    #@49
    if-ne v1, p1, :cond_4c

    #@4b
    move v0, v2

    #@4c
    :cond_4c
    :goto_4c
    return v0

    #@4d
    nop

    #@4e
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_2d
        :pswitch_45
        :pswitch_23
        :pswitch_19
    .end packed-switch
.end method

.method public getColorValue()I
    .registers 2

    #@0
    .line 89
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    #@2
    return v0
.end method

.method public getFloatValue()F
    .registers 2

    #@0
    .line 77
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@2
    return v0
.end method

.method public getIntegerValue()I
    .registers 2

    #@0
    .line 73
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    .line 65
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 2

    #@0
    .line 81
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .registers 2

    #@0
    .line 93
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@2
    return-object v0
.end method

.method public getValueToInterpolate()F
    .registers 3

    #@0
    .line 149
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_34

    #@d
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@f
    return v0

    #@10
    .line 162
    :pswitch_10
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@12
    return v0

    #@13
    .line 153
    :pswitch_13
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@15
    return v0

    #@16
    .line 151
    :pswitch_16
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    #@18
    int-to-float v0, v0

    #@19
    return v0

    #@1a
    .line 156
    :pswitch_1a
    new-instance v0, Ljava/lang/RuntimeException;

    #@1c
    const-string v1, "Color does not have a single color to interpolate"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 158
    :pswitch_22
    new-instance v0, Ljava/lang/RuntimeException;

    #@24
    const-string v1, "Cannot interpolate String"

    #@26
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 160
    :pswitch_2a
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    #@2c
    if-eqz v0, :cond_31

    #@2e
    const/high16 v0, 0x3f800000    # 1.0f

    #@30
    goto :goto_32

    #@31
    :cond_31
    const/4 v0, 0x0

    #@32
    :goto_32
    return v0

    #@33
    nop

    #@34
    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public getValuesToInterpolate([F)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ret"
        }
    .end annotation

    #@0
    .line 168
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    const/4 v1, 0x0

    #@b
    packed-switch v0, :pswitch_data_70

    #@e
    goto :goto_6e

    #@f
    .line 195
    :pswitch_f
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@11
    aput v0, p1, v1

    #@13
    goto :goto_6e

    #@14
    .line 173
    :pswitch_14
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@16
    aput v0, p1, v1

    #@18
    goto :goto_6e

    #@19
    .line 170
    :pswitch_19
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    #@1b
    int-to-float v0, v0

    #@1c
    aput v0, p1, v1

    #@1e
    goto :goto_6e

    #@1f
    .line 177
    :pswitch_1f
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    #@21
    shr-int/lit8 v2, v0, 0x18

    #@23
    and-int/lit16 v2, v2, 0xff

    #@25
    shr-int/lit8 v3, v0, 0x10

    #@27
    and-int/lit16 v3, v3, 0xff

    #@29
    shr-int/lit8 v4, v0, 0x8

    #@2b
    and-int/lit16 v4, v4, 0xff

    #@2d
    and-int/lit16 v0, v0, 0xff

    #@2f
    int-to-float v3, v3

    #@30
    const/high16 v5, 0x437f0000    # 255.0f

    #@32
    div-float/2addr v3, v5

    #@33
    float-to-double v6, v3

    #@34
    const-wide v8, 0x400199999999999aL    # 2.2

    #@39
    .line 181
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@3c
    move-result-wide v6

    #@3d
    double-to-float v3, v6

    #@3e
    int-to-float v4, v4

    #@3f
    div-float/2addr v4, v5

    #@40
    float-to-double v6, v4

    #@41
    .line 182
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@44
    move-result-wide v6

    #@45
    double-to-float v4, v6

    #@46
    int-to-float v0, v0

    #@47
    div-float/2addr v0, v5

    #@48
    float-to-double v6, v0

    #@49
    .line 183
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@4c
    move-result-wide v6

    #@4d
    double-to-float v0, v6

    #@4e
    .line 184
    aput v3, p1, v1

    #@50
    const/4 v1, 0x1

    #@51
    .line 185
    aput v4, p1, v1

    #@53
    const/4 v1, 0x2

    #@54
    .line 186
    aput v0, p1, v1

    #@56
    int-to-float v0, v2

    #@57
    div-float/2addr v0, v5

    #@58
    const/4 v1, 0x3

    #@59
    .line 187
    aput v0, p1, v1

    #@5b
    goto :goto_6e

    #@5c
    .line 190
    :pswitch_5c
    new-instance p1, Ljava/lang/RuntimeException;

    #@5e
    const-string v0, "Color does not have a single color to interpolate"

    #@60
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@63
    throw p1

    #@64
    .line 192
    :pswitch_64
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    #@66
    if-eqz v0, :cond_6b

    #@68
    const/high16 v0, 0x3f800000    # 1.0f

    #@6a
    goto :goto_6c

    #@6b
    :cond_6b
    const/4 v0, 0x0

    #@6c
    :goto_6c
    aput v0, p1, v1

    #@6e
    :goto_6e
    return-void

    #@6f
    nop

    #@70
    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_64
        :pswitch_5c
        :pswitch_1f
        :pswitch_1f
        :pswitch_19
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method

.method public isBooleanValue()Z
    .registers 2

    #@0
    .line 85
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    #@2
    return v0
.end method

.method public isContinuous()Z
    .registers 4

    #@0
    .line 101
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    const/4 v1, 0x1

    #@b
    if-eq v0, v1, :cond_14

    #@d
    const/4 v2, 0x2

    #@e
    if-eq v0, v2, :cond_14

    #@10
    const/4 v2, 0x3

    #@11
    if-eq v0, v2, :cond_14

    #@13
    return v1

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    return v0
.end method

.method public isMethod()Z
    .registers 2

    #@0
    .line 69
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    #@2
    return v0
.end method

.method public numberOfInterpolatedValues()I
    .registers 4

    #@0
    .line 134
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    const/4 v1, 0x4

    #@b
    if-eq v0, v1, :cond_12

    #@d
    const/4 v2, 0x5

    #@e
    if-eq v0, v2, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    :cond_12
    return v1
.end method

.method public setColorValue(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    #@0
    .line 116
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    #@2
    return-void
.end method

.method public setFloatValue(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    #@0
    .line 112
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@2
    return-void
.end method

.method public setIntValue(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    #@0
    .line 120
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    #@2
    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    #@0
    .line 124
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    #@0
    .line 274
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_40

    #@d
    goto :goto_3f

    #@e
    .line 293
    :pswitch_e
    check-cast p1, Ljava/lang/Float;

    #@10
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@13
    move-result p1

    #@14
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@16
    goto :goto_3f

    #@17
    .line 280
    :pswitch_17
    check-cast p1, Ljava/lang/Float;

    #@19
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@1c
    move-result p1

    #@1d
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@1f
    goto :goto_3f

    #@20
    .line 284
    :pswitch_20
    check-cast p1, Ljava/lang/Integer;

    #@22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@25
    move-result p1

    #@26
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    #@28
    goto :goto_3f

    #@29
    .line 287
    :pswitch_29
    check-cast p1, Ljava/lang/String;

    #@2b
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    #@2d
    goto :goto_3f

    #@2e
    .line 290
    :pswitch_2e
    check-cast p1, Ljava/lang/Boolean;

    #@30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@33
    move-result p1

    #@34
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    #@36
    goto :goto_3f

    #@37
    .line 277
    :pswitch_37
    check-cast p1, Ljava/lang/Integer;

    #@39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@3c
    move-result p1

    #@3d
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    #@3f
    :goto_3f
    return-void

    #@40
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2e
        :pswitch_29
        :pswitch_20
        :pswitch_20
        :pswitch_37
        :pswitch_17
        :pswitch_e
    .end packed-switch
.end method

.method public setValue([F)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    #@0
    .line 201
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    const/4 v1, 0x0

    #@b
    packed-switch v0, :pswitch_data_50

    #@e
    goto :goto_4e

    #@f
    .line 220
    :pswitch_f
    aget p1, p1, v1

    #@11
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@13
    goto :goto_4e

    #@14
    .line 207
    :pswitch_14
    aget p1, p1, v1

    #@16
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    #@18
    goto :goto_4e

    #@19
    .line 211
    :pswitch_19
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    #@1f
    const v1, 0xffffff

    #@22
    and-int/2addr v0, v1

    #@23
    const/4 v1, 0x3

    #@24
    .line 212
    aget p1, p1, v1

    #@26
    const/high16 v1, 0x437f0000    # 255.0f

    #@28
    mul-float/2addr p1, v1

    #@29
    float-to-int p1, p1

    #@2a
    invoke-static {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->clamp(I)I

    #@2d
    move-result p1

    #@2e
    shl-int/lit8 p1, p1, 0x18

    #@30
    or-int/2addr p1, v0

    #@31
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    #@33
    goto :goto_4e

    #@34
    .line 215
    :pswitch_34
    new-instance p1, Ljava/lang/RuntimeException;

    #@36
    const-string v0, "Color does not have a single color to interpolate"

    #@38
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3b
    throw p1

    #@3c
    .line 217
    :pswitch_3c
    aget p1, p1, v1

    #@3e
    float-to-double v2, p1

    #@3f
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    #@41
    cmpl-double p1, v2, v4

    #@43
    if-lez p1, :cond_46

    #@45
    const/4 v1, 0x1

    #@46
    :cond_46
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    #@48
    goto :goto_4e

    #@49
    .line 204
    :pswitch_49
    aget p1, p1, v1

    #@4b
    float-to-int p1, p1

    #@4c
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    #@4e
    :goto_4e
    return-void

    #@4f
    nop

    #@50
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_49
        :pswitch_3c
        :pswitch_34
        :pswitch_19
        :pswitch_19
        :pswitch_49
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method

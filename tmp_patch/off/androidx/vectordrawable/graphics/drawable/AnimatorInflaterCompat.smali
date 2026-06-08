.class public Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final MAX_NUM_POINTS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 501
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object v4

    #@4
    const/4 v5, 0x0

    #@5
    const/4 v6, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move-object v2, p2

    #@9
    move-object v3, p3

    #@a
    move v7, p4

    #@b
    invoke-static/range {v0 .. v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    move-object/from16 v8, p1

    #@2
    move-object/from16 v9, p2

    #@4
    move-object/from16 v10, p3

    #@6
    move-object/from16 v11, p5

    #@8
    .line 514
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@b
    move-result v12

    #@c
    const/4 v0, 0x0

    #@d
    move-object v13, v0

    #@e
    .line 516
    :cond_e
    :goto_e
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x3

    #@13
    const/4 v14, 0x0

    #@14
    if-ne v1, v2, :cond_1c

    #@16
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@19
    move-result v2

    #@1a
    if-le v2, v12, :cond_de

    #@1c
    :cond_1c
    const/4 v2, 0x1

    #@1d
    if-eq v1, v2, :cond_de

    #@1f
    const/4 v3, 0x2

    #@20
    if-eq v1, v3, :cond_23

    #@22
    goto :goto_e

    #@23
    .line 523
    :cond_23
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    const-string v3, "objectAnimator"

    #@29
    .line 526
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_43

    #@2f
    move-object/from16 v0, p0

    #@31
    move-object/from16 v1, p1

    #@33
    move-object/from16 v2, p2

    #@35
    move-object/from16 v3, p4

    #@37
    move/from16 v4, p7

    #@39
    move-object/from16 v5, p3

    #@3b
    .line 527
    invoke-static/range {v0 .. v5}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;

    #@3e
    move-result-object v0

    #@3f
    :goto_3f
    move-object/from16 v3, p0

    #@41
    goto/16 :goto_b5

    #@43
    :cond_43
    const-string v3, "animator"

    #@45
    .line 528
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_5d

    #@4b
    const/4 v4, 0x0

    #@4c
    move-object/from16 v0, p0

    #@4e
    move-object/from16 v1, p1

    #@50
    move-object/from16 v2, p2

    #@52
    move-object/from16 v3, p4

    #@54
    move/from16 v5, p7

    #@56
    move-object/from16 v6, p3

    #@58
    .line 529
    invoke-static/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    #@5b
    move-result-object v0

    #@5c
    goto :goto_3f

    #@5d
    :cond_5d
    const-string v3, "set"

    #@5f
    .line 530
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v3

    #@63
    if-eqz v3, :cond_96

    #@65
    .line 531
    new-instance v15, Landroid/animation/AnimatorSet;

    #@67
    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    #@6a
    .line 532
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    #@6c
    move-object/from16 v7, p4

    #@6e
    invoke-static {v8, v9, v7, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@71
    move-result-object v6

    #@72
    const-string v0, "ordering"

    #@74
    .line 535
    invoke-static {v6, v10, v0, v14, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@77
    move-result v16

    #@78
    .line 538
    move-object v0, v15

    #@79
    check-cast v0, Landroid/animation/AnimatorSet;

    #@7b
    move-object/from16 v0, p0

    #@7d
    move-object/from16 v1, p1

    #@7f
    move-object/from16 v2, p2

    #@81
    move-object/from16 v3, p3

    #@83
    move-object/from16 v4, p4

    #@85
    move-object v5, v15

    #@86
    move-object/from16 v17, v6

    #@88
    move/from16 v6, v16

    #@8a
    move/from16 v7, p7

    #@8c
    invoke-static/range {v0 .. v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    #@8f
    .line 540
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    #@92
    move-object/from16 v3, p0

    #@94
    move-object v0, v15

    #@95
    goto :goto_b5

    #@96
    :cond_96
    const-string v3, "propertyValuesHolder"

    #@98
    .line 541
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v1

    #@9c
    if-eqz v1, :cond_c5

    #@9e
    .line 543
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@a1
    move-result-object v1

    #@a2
    move-object/from16 v3, p0

    #@a4
    .line 542
    invoke-static {v3, v8, v9, v10, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    #@a7
    move-result-object v1

    #@a8
    if-eqz v1, :cond_b4

    #@aa
    .line 544
    instance-of v4, v0, Landroid/animation/ValueAnimator;

    #@ac
    if-eqz v4, :cond_b4

    #@ae
    .line 545
    move-object v4, v0

    #@af
    check-cast v4, Landroid/animation/ValueAnimator;

    #@b1
    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@b4
    :cond_b4
    move v14, v2

    #@b5
    :goto_b5
    if-eqz v11, :cond_e

    #@b7
    if-nez v14, :cond_e

    #@b9
    if-nez v13, :cond_c0

    #@bb
    .line 554
    new-instance v13, Ljava/util/ArrayList;

    #@bd
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@c0
    .line 556
    :cond_c0
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c3
    goto/16 :goto_e

    #@c5
    .line 549
    :cond_c5
    new-instance v0, Ljava/lang/RuntimeException;

    #@c7
    new-instance v1, Ljava/lang/StringBuilder;

    #@c9
    const-string v2, "Unknown animator name: "

    #@cb
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@ce
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@d1
    move-result-object v2

    #@d2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v1

    #@da
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@dd
    throw v0

    #@de
    :cond_de
    if-eqz v11, :cond_107

    #@e0
    if-eqz v13, :cond_107

    #@e2
    .line 560
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@e5
    move-result v1

    #@e6
    new-array v1, v1, [Landroid/animation/Animator;

    #@e8
    .line 562
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@eb
    move-result-object v2

    #@ec
    :goto_ec
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@ef
    move-result v3

    #@f0
    if-eqz v3, :cond_fe

    #@f2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f5
    move-result-object v3

    #@f6
    check-cast v3, Landroid/animation/Animator;

    #@f8
    add-int/lit8 v4, v14, 0x1

    #@fa
    .line 563
    aput-object v3, v1, v14

    #@fc
    move v14, v4

    #@fd
    goto :goto_ec

    #@fe
    :cond_fe
    if-nez p6, :cond_104

    #@100
    .line 566
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@103
    goto :goto_107

    #@104
    .line 568
    :cond_104
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    #@107
    :cond_107
    :goto_107
    return-object v0
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .registers 4

    #@0
    .line 779
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@6
    if-ne v0, v1, :cond_d

    #@8
    .line 780
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    #@b
    move-result-object p0

    #@c
    goto :goto_1e

    #@d
    .line 781
    :cond_d
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    #@10
    move-result-object p0

    #@11
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@13
    if-ne p0, v0, :cond_1a

    #@15
    .line 782
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    #@18
    move-result-object p0

    #@19
    goto :goto_1e

    #@1a
    .line 783
    :cond_1a
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    #@1d
    move-result-object p0

    #@1e
    :goto_1e
    return-object p0
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .registers 6

    #@0
    sub-int v0, p3, p2

    #@2
    add-int/lit8 v0, v0, 0x2

    #@4
    int-to-float v0, v0

    #@5
    div-float/2addr p1, v0

    #@6
    :goto_6
    if-gt p2, p3, :cond_19

    #@8
    .line 809
    aget-object v0, p0, p2

    #@a
    add-int/lit8 v1, p2, -0x1

    #@c
    aget-object v1, p0, v1

    #@e
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    #@11
    move-result v1

    #@12
    add-float/2addr v1, p1

    #@13
    invoke-virtual {v0, v1}, Landroid/animation/Keyframe;->setFraction(F)V

    #@16
    add-int/lit8 p2, p2, 0x1

    #@18
    goto :goto_6

    #@19
    :cond_19
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    #@0
    if-eqz p0, :cond_5b

    #@2
    .line 673
    array-length v0, p0

    #@3
    if-nez v0, :cond_6

    #@5
    goto :goto_5b

    #@6
    :cond_6
    const-string v0, "AnimatorInflater"

    #@8
    .line 676
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 677
    array-length p1, p0

    #@c
    const/4 v1, 0x0

    #@d
    :goto_d
    if-ge v1, p1, :cond_5b

    #@f
    .line 679
    aget-object v2, p0, v1

    #@11
    check-cast v2, Landroid/animation/Keyframe;

    #@13
    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    const-string v4, "Keyframe "

    #@17
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    const-string v4, ": fraction "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    .line 681
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    #@27
    move-result v4

    #@28
    const/4 v5, 0x0

    #@29
    cmpg-float v4, v4, v5

    #@2b
    const-string v5, "null"

    #@2d
    if-gez v4, :cond_31

    #@2f
    move-object v4, v5

    #@30
    goto :goto_39

    #@31
    :cond_31
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    #@34
    move-result v4

    #@35
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@38
    move-result-object v4

    #@39
    :goto_39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    const-string v4, ", , value : "

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    .line 682
    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_4d

    #@49
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@4c
    move-result-object v5

    #@4d
    :cond_4d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 680
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_d

    #@5b
    :cond_5b
    :goto_5b
    return-void
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .registers 16

    #@0
    .line 207
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-eqz v0, :cond_a

    #@8
    move v3, v1

    #@9
    goto :goto_b

    #@a
    :cond_a
    move v3, v2

    #@b
    :goto_b
    if-eqz v3, :cond_10

    #@d
    .line 209
    iget v0, v0, Landroid/util/TypedValue;->type:I

    #@f
    goto :goto_11

    #@10
    :cond_10
    move v0, v2

    #@11
    .line 210
    :goto_11
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@14
    move-result-object v4

    #@15
    if-eqz v4, :cond_19

    #@17
    move v5, v1

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move v5, v2

    #@1a
    :goto_1a
    if-eqz v5, :cond_1f

    #@1c
    .line 212
    iget v4, v4, Landroid/util/TypedValue;->type:I

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v4, v2

    #@20
    :goto_20
    const/4 v6, 0x4

    #@21
    const/4 v7, 0x3

    #@22
    if-ne p1, v6, :cond_37

    #@24
    if-eqz v3, :cond_2c

    #@26
    .line 216
    invoke-static {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    #@29
    move-result p1

    #@2a
    if-nez p1, :cond_34

    #@2c
    :cond_2c
    if-eqz v5, :cond_36

    #@2e
    invoke-static {v4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    #@31
    move-result p1

    #@32
    if-eqz p1, :cond_36

    #@34
    :cond_34
    move p1, v7

    #@35
    goto :goto_37

    #@36
    :cond_36
    move p1, v2

    #@37
    :cond_37
    :goto_37
    if-nez p1, :cond_3b

    #@39
    move v6, v1

    #@3a
    goto :goto_3c

    #@3b
    :cond_3b
    move v6, v2

    #@3c
    :goto_3c
    const/4 v8, 0x0

    #@3d
    const/4 v9, 0x2

    #@3e
    if-ne p1, v9, :cond_a9

    #@40
    .line 228
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@43
    move-result-object p1

    #@44
    .line 229
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@47
    move-result-object p0

    #@48
    .line 232
    invoke-static {p1}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    #@4b
    move-result-object p2

    #@4c
    .line 234
    invoke-static {p0}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    #@4f
    move-result-object p3

    #@50
    if-nez p2, :cond_54

    #@52
    if-eqz p3, :cond_167

    #@54
    :cond_54
    if-eqz p2, :cond_98

    #@56
    .line 237
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    #@58
    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    #@5b
    if-eqz p3, :cond_8d

    #@5d
    .line 239
    invoke-static {p2, p3}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    #@60
    move-result v3

    #@61
    if-eqz v3, :cond_6e

    #@63
    new-array p0, v9, [Ljava/lang/Object;

    #@65
    aput-object p2, p0, v2

    #@67
    aput-object p3, p0, v1

    #@69
    .line 243
    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@6c
    move-result-object p0

    #@6d
    goto :goto_95

    #@6e
    .line 240
    :cond_6e
    new-instance p2, Landroid/view/InflateException;

    #@70
    new-instance p3, Ljava/lang/StringBuilder;

    #@72
    const-string p4, " Can\'t morph from "

    #@74
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@77
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object p1

    #@7b
    const-string p3, " to "

    #@7d
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object p1

    #@81
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object p0

    #@85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object p0

    #@89
    invoke-direct {p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@8c
    throw p2

    #@8d
    :cond_8d
    new-array p0, v1, [Ljava/lang/Object;

    #@8f
    aput-object p2, p0, v2

    #@91
    .line 246
    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@94
    move-result-object p0

    #@95
    :goto_95
    move-object v8, p0

    #@96
    goto/16 :goto_167

    #@98
    :cond_98
    if-eqz p3, :cond_167

    #@9a
    .line 250
    new-instance p0, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    #@9c
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    #@9f
    new-array p1, v1, [Ljava/lang/Object;

    #@a1
    aput-object p3, p1, v2

    #@a3
    .line 251
    invoke-static {p4, p0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@a6
    move-result-object v8

    #@a7
    goto/16 :goto_167

    #@a9
    :cond_a9
    if-ne p1, v7, :cond_b0

    #@ab
    .line 260
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->getInstance()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    #@ae
    move-result-object p1

    #@af
    goto :goto_b1

    #@b0
    :cond_b0
    move-object p1, v8

    #@b1
    :goto_b1
    const/4 v7, 0x5

    #@b2
    const/4 v10, 0x0

    #@b3
    if-eqz v6, :cond_f9

    #@b5
    if-eqz v3, :cond_e3

    #@b7
    if-ne v0, v7, :cond_be

    #@b9
    .line 267
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@bc
    move-result p2

    #@bd
    goto :goto_c2

    #@be
    .line 269
    :cond_be
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@c1
    move-result p2

    #@c2
    :goto_c2
    if-eqz v5, :cond_da

    #@c4
    if-ne v4, v7, :cond_cb

    #@c6
    .line 273
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@c9
    move-result p0

    #@ca
    goto :goto_cf

    #@cb
    .line 275
    :cond_cb
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@ce
    move-result p0

    #@cf
    :goto_cf
    new-array p3, v9, [F

    #@d1
    aput p2, p3, v2

    #@d3
    aput p0, p3, v1

    #@d5
    .line 277
    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@d8
    move-result-object p0

    #@d9
    goto :goto_f6

    #@da
    :cond_da
    new-array p0, v1, [F

    #@dc
    aput p2, p0, v2

    #@de
    .line 280
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@e1
    move-result-object p0

    #@e2
    goto :goto_f6

    #@e3
    :cond_e3
    if-ne v4, v7, :cond_ea

    #@e5
    .line 284
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@e8
    move-result p0

    #@e9
    goto :goto_ee

    #@ea
    .line 286
    :cond_ea
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@ed
    move-result p0

    #@ee
    :goto_ee
    new-array p2, v1, [F

    #@f0
    aput p0, p2, v2

    #@f2
    .line 288
    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@f5
    move-result-object p0

    #@f6
    :goto_f6
    move-object v8, p0

    #@f7
    goto/16 :goto_160

    #@f9
    :cond_f9
    if-eqz v3, :cond_13f

    #@fb
    if-ne v0, v7, :cond_103

    #@fd
    .line 295
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@100
    move-result p2

    #@101
    float-to-int p2, p2

    #@102
    goto :goto_112

    #@103
    .line 296
    :cond_103
    invoke-static {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    #@106
    move-result v0

    #@107
    if-eqz v0, :cond_10e

    #@109
    .line 297
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@10c
    move-result p2

    #@10d
    goto :goto_112

    #@10e
    .line 299
    :cond_10e
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@111
    move-result p2

    #@112
    :goto_112
    if-eqz v5, :cond_136

    #@114
    if-ne v4, v7, :cond_11c

    #@116
    .line 303
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@119
    move-result p0

    #@11a
    float-to-int p0, p0

    #@11b
    goto :goto_12b

    #@11c
    .line 304
    :cond_11c
    invoke-static {v4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    #@11f
    move-result v0

    #@120
    if-eqz v0, :cond_127

    #@122
    .line 305
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@125
    move-result p0

    #@126
    goto :goto_12b

    #@127
    .line 307
    :cond_127
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@12a
    move-result p0

    #@12b
    :goto_12b
    new-array p3, v9, [I

    #@12d
    aput p2, p3, v2

    #@12f
    aput p0, p3, v1

    #@131
    .line 309
    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@134
    move-result-object v8

    #@135
    goto :goto_160

    #@136
    :cond_136
    new-array p0, v1, [I

    #@138
    aput p2, p0, v2

    #@13a
    .line 311
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@13d
    move-result-object v8

    #@13e
    goto :goto_160

    #@13f
    :cond_13f
    if-eqz v5, :cond_160

    #@141
    if-ne v4, v7, :cond_149

    #@143
    .line 316
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@146
    move-result p0

    #@147
    float-to-int p0, p0

    #@148
    goto :goto_158

    #@149
    .line 317
    :cond_149
    invoke-static {v4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    #@14c
    move-result p2

    #@14d
    if-eqz p2, :cond_154

    #@14f
    .line 318
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@152
    move-result p0

    #@153
    goto :goto_158

    #@154
    .line 320
    :cond_154
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@157
    move-result p0

    #@158
    :goto_158
    new-array p2, v1, [I

    #@15a
    aput p0, p2, v2

    #@15c
    .line 322
    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@15f
    move-result-object v8

    #@160
    :cond_160
    :goto_160
    if-eqz v8, :cond_167

    #@162
    if-eqz p1, :cond_167

    #@164
    .line 327
    invoke-virtual {v8, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@167
    :cond_167
    :goto_167
    return-object v8
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .registers 6

    #@0
    .line 655
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x1

    #@5
    const/4 v1, 0x0

    #@6
    if-eqz p1, :cond_a

    #@8
    move v2, v0

    #@9
    goto :goto_b

    #@a
    :cond_a
    move v2, v1

    #@b
    :goto_b
    if-eqz v2, :cond_10

    #@d
    .line 657
    iget p1, p1, Landroid/util/TypedValue;->type:I

    #@f
    goto :goto_11

    #@10
    :cond_10
    move p1, v1

    #@11
    .line 658
    :goto_11
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@14
    move-result-object p0

    #@15
    if-eqz p0, :cond_18

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v0, v1

    #@19
    :goto_19
    if-eqz v0, :cond_1e

    #@1b
    .line 660
    iget p0, p0, Landroid/util/TypedValue;->type:I

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    move p0, v1

    #@1f
    :goto_1f
    if-eqz v2, :cond_27

    #@21
    .line 664
    invoke-static {p1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    #@24
    move-result p1

    #@25
    if-nez p1, :cond_2f

    #@27
    :cond_27
    if-eqz v0, :cond_30

    #@29
    invoke-static {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    #@2c
    move-result p0

    #@2d
    if-eqz p0, :cond_30

    #@2f
    :cond_2f
    const/4 v1, 0x3

    #@30
    :cond_30
    return v1
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 5

    #@0
    .line 636
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    #@2
    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p0

    #@6
    const-string p1, "value"

    #@8
    const/4 p2, 0x0

    #@9
    .line 639
    invoke-static {p0, p3, p1, p2}, Landroidx/core/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    #@c
    move-result-object p1

    #@d
    if-eqz p1, :cond_11

    #@f
    const/4 p3, 0x1

    #@10
    goto :goto_12

    #@11
    :cond_11
    move p3, p2

    #@12
    :goto_12
    if-eqz p3, :cond_1d

    #@14
    .line 644
    iget p1, p1, Landroid/util/TypedValue;->type:I

    #@16
    invoke-static {p1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    #@19
    move-result p1

    #@1a
    if-eqz p1, :cond_1d

    #@1c
    const/4 p2, 0x3

    #@1d
    .line 649
    :cond_1d
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@20
    return p2
.end method

.method private static isColorType(I)Z
    .registers 2

    #@0
    const/16 v0, 0x1c

    #@2
    if-lt p0, v0, :cond_a

    #@4
    const/16 v0, 0x1f

    #@6
    if-gt p0, v0, :cond_a

    #@8
    const/4 p0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p0, 0x0

    #@b
    :goto_b
    return p0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 101
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    .line 119
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    const-string v0, "Can\'t load animation resource ID #0x"

    #@2
    const/4 v1, 0x0

    #@3
    .line 131
    :try_start_3
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    #@6
    move-result-object v1

    #@7
    .line 132
    invoke-static {p0, p1, p2, v1, p4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    #@a
    move-result-object p0
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_b} :catch_2e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_13
    .catchall {:try_start_3 .. :try_end_b} :catchall_11

    #@b
    if-eqz v1, :cond_10

    #@d
    .line 147
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    #@10
    :cond_10
    return-object p0

    #@11
    :catchall_11
    move-exception p0

    #@12
    goto :goto_49

    #@13
    :catch_13
    move-exception p0

    #@14
    .line 141
    :try_start_14
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    #@16
    new-instance p2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    .line 143
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object p3

    #@1f
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object p2

    #@23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object p2

    #@27
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@2a
    .line 144
    invoke-virtual {p1, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@2d
    .line 145
    throw p1

    #@2e
    :catch_2e
    move-exception p0

    #@2f
    .line 135
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    #@31
    new-instance p2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@36
    .line 137
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@39
    move-result-object p3

    #@3a
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p2

    #@3e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object p2

    #@42
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@45
    .line 138
    invoke-virtual {p1, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@48
    .line 139
    throw p1
    :try_end_49
    .catchall {:try_start_14 .. :try_end_49} :catchall_11

    #@49
    :goto_49
    if-eqz v1, :cond_4e

    #@4b
    .line 147
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    #@4e
    .line 148
    :cond_4e
    throw p0
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 890
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR:[I

    #@2
    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 892
    sget-object v1, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    #@8
    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object p1

    #@c
    if-nez p4, :cond_13

    #@e
    .line 896
    new-instance p4, Landroid/animation/ValueAnimator;

    #@10
    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    #@13
    .line 899
    :cond_13
    invoke-static {p4, v0, p1, p5, p6}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V

    #@16
    const-string p2, "interpolator"

    #@18
    const/4 p3, 0x0

    #@19
    .line 902
    invoke-static {v0, p6, p2, p3, p3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@1c
    move-result p2

    #@1d
    if-lez p2, :cond_26

    #@1f
    .line 905
    invoke-static {p0, p2}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@22
    move-result-object p0

    #@23
    .line 906
    invoke-virtual {p4, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@26
    .line 909
    :cond_26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    if-eqz p1, :cond_2e

    #@2b
    .line 911
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@2e
    :cond_2e
    return-object p4
.end method

.method private static loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 818
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    #@2
    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    const/high16 p2, -0x40800000    # -1.0f

    #@8
    const-string p3, "fraction"

    #@a
    const/4 v0, 0x3

    #@b
    .line 823
    invoke-static {p1, p5, p3, v0, p2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@e
    move-result p2

    #@f
    const-string p3, "value"

    #@11
    const/4 v1, 0x0

    #@12
    .line 826
    invoke-static {p1, p5, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    #@15
    move-result-object v2

    #@16
    const/4 v3, 0x1

    #@17
    if-eqz v2, :cond_1b

    #@19
    move v4, v3

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move v4, v1

    #@1c
    :goto_1c
    const/4 v5, 0x4

    #@1d
    if-ne p4, v5, :cond_2c

    #@1f
    if-eqz v4, :cond_2b

    #@21
    .line 832
    iget p4, v2, Landroid/util/TypedValue;->type:I

    #@23
    invoke-static {p4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    #@26
    move-result p4

    #@27
    if-eqz p4, :cond_2b

    #@29
    move p4, v0

    #@2a
    goto :goto_2c

    #@2b
    :cond_2b
    move p4, v1

    #@2c
    :cond_2c
    :goto_2c
    if-eqz v4, :cond_49

    #@2e
    if-eqz p4, :cond_3f

    #@30
    if-eq p4, v3, :cond_36

    #@32
    if-eq p4, v0, :cond_36

    #@34
    const/4 p2, 0x0

    #@35
    goto :goto_54

    #@36
    .line 848
    :cond_36
    invoke-static {p1, p5, p3, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@39
    move-result p3

    #@3a
    .line 850
    invoke-static {p2, p3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    #@3d
    move-result-object p2

    #@3e
    goto :goto_54

    #@3f
    :cond_3f
    const/4 p4, 0x0

    #@40
    .line 842
    invoke-static {p1, p5, p3, v1, p4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@43
    move-result p3

    #@44
    .line 844
    invoke-static {p2, p3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    #@47
    move-result-object p2

    #@48
    goto :goto_54

    #@49
    :cond_49
    if-nez p4, :cond_50

    #@4b
    .line 854
    invoke-static {p2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    #@4e
    move-result-object p2

    #@4f
    goto :goto_54

    #@50
    .line 855
    :cond_50
    invoke-static {p2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    #@53
    move-result-object p2

    #@54
    :goto_54
    const-string p3, "interpolator"

    #@56
    .line 858
    invoke-static {p1, p5, p3, v3, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@59
    move-result p3

    #@5a
    if-lez p3, :cond_63

    #@5c
    .line 861
    invoke-static {p0, p3}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@5f
    move-result-object p0

    #@60
    .line 862
    invoke-virtual {p2, p0}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@63
    .line 864
    :cond_63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@66
    return-object p2
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 872
    new-instance v7, Landroid/animation/ObjectAnimator;

    #@2
    invoke-direct {v7}, Landroid/animation/ObjectAnimator;-><init>()V

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v4, v7

    #@a
    move v5, p4

    #@b
    move-object v6, p5

    #@c
    .line 874
    invoke-static/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    #@f
    return-object v7
.end method

.method private static loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    move-object v1, v0

    #@2
    .line 696
    :cond_2
    :goto_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@5
    move-result v2

    #@6
    const/4 v3, 0x3

    #@7
    if-eq v2, v3, :cond_40

    #@9
    const/4 v4, 0x1

    #@a
    if-eq v2, v4, :cond_40

    #@c
    .line 698
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    const-string v3, "keyframe"

    #@12
    .line 699
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_2

    #@18
    const/4 v2, 0x4

    #@19
    if-ne p5, v2, :cond_23

    #@1b
    .line 701
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@1e
    move-result-object p5

    #@1f
    invoke-static {p1, p2, p5, p3}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I

    #@22
    move-result p5

    #@23
    .line 704
    :cond_23
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@26
    move-result-object v5

    #@27
    move-object v2, p0

    #@28
    move-object v3, p1

    #@29
    move-object v4, p2

    #@2a
    move v6, p5

    #@2b
    move-object v7, p3

    #@2c
    invoke-static/range {v2 .. v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;

    #@2f
    move-result-object v2

    #@30
    if-eqz v2, :cond_3c

    #@32
    if-nez v1, :cond_39

    #@34
    .line 708
    new-instance v1, Ljava/util/ArrayList;

    #@36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@39
    .line 710
    :cond_39
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 712
    :cond_3c
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@3f
    goto :goto_2

    #@40
    :cond_40
    if-eqz v1, :cond_e9

    #@42
    .line 717
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@45
    move-result p0

    #@46
    if-lez p0, :cond_e9

    #@48
    const/4 p1, 0x0

    #@49
    .line 723
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object p2

    #@4d
    check-cast p2, Landroid/animation/Keyframe;

    #@4f
    add-int/lit8 p3, p0, -0x1

    #@51
    .line 724
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object p3

    #@55
    check-cast p3, Landroid/animation/Keyframe;

    #@57
    .line 725
    invoke-virtual {p3}, Landroid/animation/Keyframe;->getFraction()F

    #@5a
    move-result v0

    #@5b
    const/high16 v2, 0x3f800000    # 1.0f

    #@5d
    cmpg-float v4, v0, v2

    #@5f
    const/4 v5, 0x0

    #@60
    if-gez v4, :cond_77

    #@62
    cmpg-float v0, v0, v5

    #@64
    if-gez v0, :cond_6a

    #@66
    .line 728
    invoke-virtual {p3, v2}, Landroid/animation/Keyframe;->setFraction(F)V

    #@69
    goto :goto_77

    #@6a
    .line 730
    :cond_6a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6d
    move-result v0

    #@6e
    invoke-static {p3, v2}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    #@71
    move-result-object p3

    #@72
    invoke-virtual {v1, v0, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@75
    add-int/lit8 p0, p0, 0x1

    #@77
    .line 734
    :cond_77
    :goto_77
    invoke-virtual {p2}, Landroid/animation/Keyframe;->getFraction()F

    #@7a
    move-result p3

    #@7b
    cmpl-float v0, p3, v5

    #@7d
    if-eqz v0, :cond_90

    #@7f
    cmpg-float p3, p3, v5

    #@81
    if-gez p3, :cond_87

    #@83
    .line 737
    invoke-virtual {p2, v5}, Landroid/animation/Keyframe;->setFraction(F)V

    #@86
    goto :goto_90

    #@87
    .line 739
    :cond_87
    invoke-static {p2, v5}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    #@8a
    move-result-object p2

    #@8b
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@8e
    add-int/lit8 p0, p0, 0x1

    #@90
    .line 743
    :cond_90
    :goto_90
    new-array p2, p0, [Landroid/animation/Keyframe;

    #@92
    .line 744
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@95
    :goto_95
    if-ge p1, p0, :cond_dc

    #@97
    .line 746
    aget-object p3, p2, p1

    #@99
    .line 747
    invoke-virtual {p3}, Landroid/animation/Keyframe;->getFraction()F

    #@9c
    move-result v0

    #@9d
    cmpg-float v0, v0, v5

    #@9f
    if-gez v0, :cond_d9

    #@a1
    if-nez p1, :cond_a7

    #@a3
    .line 749
    invoke-virtual {p3, v5}, Landroid/animation/Keyframe;->setFraction(F)V

    #@a6
    goto :goto_d9

    #@a7
    :cond_a7
    add-int/lit8 v0, p0, -0x1

    #@a9
    if-ne p1, v0, :cond_af

    #@ab
    .line 751
    invoke-virtual {p3, v2}, Landroid/animation/Keyframe;->setFraction(F)V

    #@ae
    goto :goto_d9

    #@af
    :cond_af
    add-int/lit8 p3, p1, 0x1

    #@b1
    move v1, p1

    #@b2
    :goto_b2
    if-ge p3, v0, :cond_c5

    #@b4
    .line 758
    aget-object v4, p2, p3

    #@b6
    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    #@b9
    move-result v4

    #@ba
    cmpl-float v4, v4, v5

    #@bc
    if-ltz v4, :cond_bf

    #@be
    goto :goto_c5

    #@bf
    :cond_bf
    add-int/lit8 v1, p3, 0x1

    #@c1
    move v8, v1

    #@c2
    move v1, p3

    #@c3
    move p3, v8

    #@c4
    goto :goto_b2

    #@c5
    :cond_c5
    :goto_c5
    add-int/lit8 p3, v1, 0x1

    #@c7
    .line 763
    aget-object p3, p2, p3

    #@c9
    invoke-virtual {p3}, Landroid/animation/Keyframe;->getFraction()F

    #@cc
    move-result p3

    #@cd
    add-int/lit8 v0, p1, -0x1

    #@cf
    aget-object v0, p2, v0

    #@d1
    .line 764
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    #@d4
    move-result v0

    #@d5
    sub-float/2addr p3, v0

    #@d6
    .line 765
    invoke-static {p2, p3, p1, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    #@d9
    :cond_d9
    :goto_d9
    add-int/lit8 p1, p1, 0x1

    #@db
    goto :goto_95

    #@dc
    .line 769
    :cond_dc
    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    #@df
    move-result-object v0

    #@e0
    if-ne p5, v3, :cond_e9

    #@e2
    .line 771
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->getInstance()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    #@e5
    move-result-object p0

    #@e6
    invoke-virtual {v0, p0}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@e9
    :cond_e9
    return-object v0
.end method

.method private static loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    move-object/from16 v6, p3

    #@2
    const/4 v7, 0x0

    #@3
    move-object v8, v7

    #@4
    .line 579
    :goto_4
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@7
    move-result v0

    #@8
    const/4 v9, 0x0

    #@9
    const/4 v1, 0x3

    #@a
    if-eq v0, v1, :cond_6d

    #@c
    const/4 v10, 0x1

    #@d
    if-eq v0, v10, :cond_6d

    #@f
    const/4 v2, 0x2

    #@10
    if-eq v0, v2, :cond_16

    #@12
    .line 583
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@15
    goto :goto_4

    #@16
    .line 587
    :cond_16
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    const-string v3, "propertyValuesHolder"

    #@1c
    .line 589
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_63

    #@22
    .line 590
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    #@24
    move-object/from16 v11, p1

    #@26
    move-object/from16 v12, p2

    #@28
    move-object/from16 v13, p4

    #@2a
    invoke-static {v11, v12, v13, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2d
    move-result-object v14

    #@2e
    const-string v0, "propertyName"

    #@30
    .line 593
    invoke-static {v14, v6, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    #@33
    move-result-object v15

    #@34
    const-string v0, "valueType"

    #@36
    const/4 v1, 0x4

    #@37
    .line 595
    invoke-static {v14, v6, v0, v2, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@3a
    move-result v5

    #@3b
    move-object/from16 v0, p0

    #@3d
    move-object/from16 v1, p1

    #@3f
    move-object/from16 v2, p2

    #@41
    move-object/from16 v3, p3

    #@43
    move-object v4, v15

    #@44
    move/from16 v16, v5

    #@46
    .line 599
    invoke-static/range {v0 .. v5}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    #@49
    move-result-object v0

    #@4a
    if-nez v0, :cond_52

    #@4c
    move/from16 v1, v16

    #@4e
    .line 602
    invoke-static {v14, v1, v9, v10, v15}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    #@51
    move-result-object v0

    #@52
    :cond_52
    if-eqz v0, :cond_5f

    #@54
    if-nez v8, :cond_5c

    #@56
    .line 609
    new-instance v1, Ljava/util/ArrayList;

    #@58
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5b
    move-object v8, v1

    #@5c
    .line 611
    :cond_5c
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    .line 613
    :cond_5f
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    #@62
    goto :goto_69

    #@63
    :cond_63
    move-object/from16 v11, p1

    #@65
    move-object/from16 v12, p2

    #@67
    move-object/from16 v13, p4

    #@69
    .line 616
    :goto_69
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@6c
    goto :goto_4

    #@6d
    :cond_6d
    if-eqz v8, :cond_82

    #@6f
    .line 621
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@72
    move-result v0

    #@73
    .line 622
    new-array v7, v0, [Landroid/animation/PropertyValuesHolder;

    #@75
    :goto_75
    if-ge v9, v0, :cond_82

    #@77
    .line 624
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v1

    #@7b
    check-cast v1, Landroid/animation/PropertyValuesHolder;

    #@7d
    aput-object v1, v7, v9

    #@7f
    add-int/lit8 v9, v9, 0x1

    #@81
    goto :goto_75

    #@82
    :cond_82
    return-object v7
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    .registers 16

    #@0
    const/16 v0, 0x12c

    #@2
    const-string v1, "duration"

    #@4
    const/4 v2, 0x1

    #@5
    .line 345
    invoke-static {p1, p4, v1, v2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@8
    move-result v0

    #@9
    int-to-long v0, v0

    #@a
    const-string v3, "startOffset"

    #@c
    const/4 v4, 0x2

    #@d
    const/4 v5, 0x0

    #@e
    .line 347
    invoke-static {p1, p4, v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@11
    move-result v3

    #@12
    int-to-long v3, v3

    #@13
    const-string v6, "valueType"

    #@15
    const/4 v7, 0x7

    #@16
    const/4 v8, 0x4

    #@17
    .line 349
    invoke-static {p1, p4, v6, v7, v8}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@1a
    move-result v6

    #@1b
    const-string v7, "valueFrom"

    #@1d
    .line 353
    invoke-static {p4, v7}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_42

    #@23
    const-string v7, "valueTo"

    #@25
    .line 354
    invoke-static {p4, v7}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_42

    #@2b
    const/4 v7, 0x6

    #@2c
    const/4 v9, 0x5

    #@2d
    if-ne v6, v8, :cond_33

    #@2f
    .line 356
    invoke-static {p1, v9, v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    #@32
    move-result v6

    #@33
    :cond_33
    const-string v10, ""

    #@35
    .line 360
    invoke-static {p1, v6, v9, v7, v10}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    #@38
    move-result-object v7

    #@39
    if-eqz v7, :cond_42

    #@3b
    new-array v9, v2, [Landroid/animation/PropertyValuesHolder;

    #@3d
    aput-object v7, v9, v5

    #@3f
    .line 364
    invoke-virtual {p0, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@42
    .line 367
    :cond_42
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@45
    .line 368
    invoke-virtual {p0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    #@48
    const-string v0, "repeatCount"

    #@4a
    const/4 v1, 0x3

    #@4b
    .line 370
    invoke-static {p1, p4, v0, v1, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@4e
    move-result v0

    #@4f
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    #@52
    const-string v0, "repeatMode"

    #@54
    .line 372
    invoke-static {p1, p4, v0, v8, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@57
    move-result p1

    #@58
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    #@5b
    if-eqz p2, :cond_60

    #@5d
    .line 376
    invoke-static {p0, p2, v6, p3, p4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V

    #@60
    :cond_60
    return-void
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V
    .registers 10

    #@0
    .line 390
    check-cast p0, Landroid/animation/ObjectAnimator;

    #@2
    const-string v0, "pathData"

    #@4
    const/4 v1, 0x1

    #@5
    .line 391
    invoke-static {p1, p4, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_49

    #@b
    const-string v1, "propertyXName"

    #@d
    const/4 v2, 0x2

    #@e
    .line 403
    invoke-static {p1, p4, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    const-string v3, "propertyYName"

    #@14
    const/4 v4, 0x3

    #@15
    .line 405
    invoke-static {p1, p4, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    #@18
    move-result-object p4

    #@19
    if-eq p2, v2, :cond_1c

    #@1b
    const/4 v2, 0x4

    #@1c
    :cond_1c
    if-nez v1, :cond_3e

    #@1e
    if-eqz p4, :cond_21

    #@20
    goto :goto_3e

    #@21
    .line 415
    :cond_21
    new-instance p0, Landroid/view/InflateException;

    #@23
    new-instance p2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p1

    #@30
    const-string p2, " propertyXName or propertyYName is needed for PathData"

    #@32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object p1

    #@36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object p1

    #@3a
    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@3d
    throw p0

    #@3e
    .line 418
    :cond_3e
    :goto_3e
    invoke-static {v0}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    #@41
    move-result-object p1

    #@42
    const/high16 p2, 0x3f000000    # 0.5f

    #@44
    mul-float/2addr p3, p2

    #@45
    .line 419
    invoke-static {p1, p0, p3, v1, p4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V

    #@48
    goto :goto_53

    #@49
    :cond_49
    const-string p2, "propertyName"

    #@4b
    const/4 p3, 0x0

    #@4c
    .line 423
    invoke-static {p1, p4, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    #@4f
    move-result-object p1

    #@50
    .line 425
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    #@53
    :goto_53
    return-void
.end method

.method private static setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    .registers 22

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move-object/from16 v2, p3

    #@6
    move-object/from16 v3, p4

    #@8
    .line 436
    new-instance v4, Landroid/graphics/PathMeasure;

    #@a
    const/4 v5, 0x0

    #@b
    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    #@e
    .line 440
    new-instance v6, Ljava/util/ArrayList;

    #@10
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@13
    const/4 v7, 0x0

    #@14
    .line 441
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    move v8, v7

    #@1c
    .line 443
    :cond_1c
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    #@1f
    move-result v9

    #@20
    add-float/2addr v8, v9

    #@21
    .line 445
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@24
    move-result-object v9

    #@25
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 447
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    #@2b
    move-result v9

    #@2c
    if-nez v9, :cond_1c

    #@2e
    .line 450
    new-instance v4, Landroid/graphics/PathMeasure;

    #@30
    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    #@33
    div-float v0, v8, p2

    #@35
    float-to-int v0, v0

    #@36
    const/4 v9, 0x1

    #@37
    add-int/2addr v0, v9

    #@38
    const/16 v10, 0x64

    #@3a
    .line 452
    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    #@3d
    move-result v0

    #@3e
    .line 454
    new-array v10, v0, [F

    #@40
    .line 455
    new-array v11, v0, [F

    #@42
    const/4 v12, 0x2

    #@43
    new-array v13, v12, [F

    #@45
    add-int/lit8 v14, v0, -0x1

    #@47
    int-to-float v14, v14

    #@48
    div-float/2addr v8, v14

    #@49
    move v14, v5

    #@4a
    move v15, v14

    #@4b
    :goto_4b
    const/4 v12, 0x0

    #@4c
    if-ge v14, v0, :cond_85

    #@4e
    .line 466
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@51
    move-result-object v16

    #@52
    check-cast v16, Ljava/lang/Float;

    #@54
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    #@57
    move-result v16

    #@58
    sub-float v9, v7, v16

    #@5a
    invoke-virtual {v4, v9, v13, v12}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@5d
    aget v9, v13, v5

    #@5f
    .line 469
    aput v9, v10, v14

    #@61
    const/4 v9, 0x1

    #@62
    aget v12, v13, v9

    #@64
    .line 470
    aput v12, v11, v14

    #@66
    add-float/2addr v7, v8

    #@67
    add-int/lit8 v9, v15, 0x1

    #@69
    .line 472
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@6c
    move-result v12

    #@6d
    if-ge v9, v12, :cond_81

    #@6f
    .line 473
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v12

    #@73
    check-cast v12, Ljava/lang/Float;

    #@75
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    #@78
    move-result v12

    #@79
    cmpl-float v12, v7, v12

    #@7b
    if-lez v12, :cond_81

    #@7d
    .line 475
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    #@80
    move v15, v9

    #@81
    :cond_81
    add-int/lit8 v14, v14, 0x1

    #@83
    const/4 v9, 0x1

    #@84
    goto :goto_4b

    #@85
    :cond_85
    if-eqz v2, :cond_8c

    #@87
    .line 483
    invoke-static {v2, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@8a
    move-result-object v0

    #@8b
    goto :goto_8d

    #@8c
    :cond_8c
    move-object v0, v12

    #@8d
    :goto_8d
    if-eqz v3, :cond_93

    #@8f
    .line 486
    invoke-static {v3, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@92
    move-result-object v12

    #@93
    :cond_93
    if-nez v0, :cond_9e

    #@95
    const/4 v2, 0x1

    #@96
    new-array v0, v2, [Landroid/animation/PropertyValuesHolder;

    #@98
    aput-object v12, v0, v5

    #@9a
    .line 489
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@9d
    goto :goto_b3

    #@9e
    :cond_9e
    const/4 v2, 0x1

    #@9f
    if-nez v12, :cond_a9

    #@a1
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    #@a3
    aput-object v0, v2, v5

    #@a5
    .line 491
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@a8
    goto :goto_b3

    #@a9
    :cond_a9
    const/4 v3, 0x2

    #@aa
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    #@ac
    aput-object v0, v3, v5

    #@ae
    aput-object v12, v3, v2

    #@b0
    .line 493
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@b3
    :goto_b3
    return-void
.end method

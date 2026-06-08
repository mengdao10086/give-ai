.class public Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;
.super Ljava/lang/Object;
.source "AnimationUtilsCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createInterpolatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 109
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result p1

    #@4
    const/4 p2, 0x0

    #@5
    .line 111
    :goto_5
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x3

    #@a
    if-ne v0, v1, :cond_12

    #@c
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@f
    move-result v1

    #@10
    if-le v1, p1, :cond_c8

    #@12
    :cond_12
    const/4 v1, 0x1

    #@13
    if-eq v0, v1, :cond_c8

    #@15
    const/4 v1, 0x2

    #@16
    if-eq v0, v1, :cond_19

    #@18
    goto :goto_5

    #@19
    .line 118
    :cond_19
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@1c
    move-result-object p2

    #@1d
    .line 120
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    const-string v1, "linearInterpolator"

    #@23
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_2f

    #@29
    .line 123
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    #@2b
    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@2e
    goto :goto_5

    #@2f
    :cond_2f
    const-string v1, "accelerateInterpolator"

    #@31
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_3e

    #@37
    .line 125
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@39
    invoke-direct {v0, p0, p2}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3c
    :goto_3c
    move-object p2, v0

    #@3d
    goto :goto_5

    #@3e
    :cond_3e
    const-string v1, "decelerateInterpolator"

    #@40
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_4c

    #@46
    .line 127
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@48
    invoke-direct {v0, p0, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4b
    goto :goto_3c

    #@4c
    :cond_4c
    const-string v1, "accelerateDecelerateInterpolator"

    #@4e
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_5a

    #@54
    .line 129
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@56
    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@59
    goto :goto_5

    #@5a
    :cond_5a
    const-string v1, "cycleInterpolator"

    #@5c
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v1

    #@60
    if-eqz v1, :cond_68

    #@62
    .line 131
    new-instance v0, Landroid/view/animation/CycleInterpolator;

    #@64
    invoke-direct {v0, p0, p2}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@67
    goto :goto_3c

    #@68
    :cond_68
    const-string v1, "anticipateInterpolator"

    #@6a
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v1

    #@6e
    if-eqz v1, :cond_76

    #@70
    .line 133
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    #@72
    invoke-direct {v0, p0, p2}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@75
    goto :goto_3c

    #@76
    :cond_76
    const-string v1, "overshootInterpolator"

    #@78
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v1

    #@7c
    if-eqz v1, :cond_84

    #@7e
    .line 135
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    #@80
    invoke-direct {v0, p0, p2}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@83
    goto :goto_3c

    #@84
    :cond_84
    const-string v1, "anticipateOvershootInterpolator"

    #@86
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v1

    #@8a
    if-eqz v1, :cond_92

    #@8c
    .line 137
    new-instance v0, Landroid/view/animation/AnticipateOvershootInterpolator;

    #@8e
    invoke-direct {v0, p0, p2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@91
    goto :goto_3c

    #@92
    :cond_92
    const-string v1, "bounceInterpolator"

    #@94
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v1

    #@98
    if-eqz v1, :cond_a1

    #@9a
    .line 139
    new-instance p2, Landroid/view/animation/BounceInterpolator;

    #@9c
    invoke-direct {p2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    #@9f
    goto/16 :goto_5

    #@a1
    :cond_a1
    const-string v1, "pathInterpolator"

    #@a3
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v0

    #@a7
    if-eqz v0, :cond_af

    #@a9
    .line 141
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;

    #@ab
    invoke-direct {v0, p0, p2, p3}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    #@ae
    goto :goto_3c

    #@af
    .line 143
    :cond_af
    new-instance p0, Ljava/lang/RuntimeException;

    #@b1
    new-instance p1, Ljava/lang/StringBuilder;

    #@b3
    const-string p2, "Unknown interpolator name: "

    #@b5
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b8
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@bb
    move-result-object p2

    #@bc
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object p1

    #@c0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object p1

    #@c4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c7
    throw p0

    #@c8
    :cond_c8
    return-object p2
.end method

.method public static loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 68
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

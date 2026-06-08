.class public Landroidx/transition/TransitionInflater;
.super Ljava/lang/Object;
.source "TransitionInflater.java"


# static fields
.field private static final CONSTRUCTORS:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    const/4 v1, 0x0

    #@4
    .line 44
    const-class v2, Landroid/content/Context;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    const-class v2, Landroid/util/AttributeSet;

    #@b
    aput-object v2, v0, v1

    #@d
    sput-object v0, Landroidx/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    #@f
    .line 46
    new-instance v0, Landroidx/collection/ArrayMap;

    #@11
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    #@14
    sput-object v0, Landroidx/transition/TransitionInflater;->CONSTRUCTORS:Landroidx/collection/ArrayMap;

    #@16
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@5
    return-void
.end method

.method private createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AttributeSet;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "class"

    #@3
    .line 194
    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_64

    #@9
    .line 201
    :try_start_9
    sget-object p3, Landroidx/transition/TransitionInflater;->CONSTRUCTORS:Landroidx/collection/ArrayMap;

    #@b
    monitor-enter p3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_44

    #@c
    .line 202
    :try_start_c
    invoke-virtual {p3, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/reflect/Constructor;

    #@12
    const/4 v2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    if-nez v1, :cond_32

    #@16
    .line 205
    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@1b
    move-result-object v4

    #@1c
    invoke-static {v0, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@1f
    move-result-object v4

    #@20
    .line 206
    invoke-virtual {v4, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@23
    move-result-object v4

    #@24
    if-eqz v4, :cond_32

    #@26
    .line 208
    sget-object v1, Landroidx/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    #@28
    invoke-virtual {v4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@2b
    move-result-object v1

    #@2c
    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@2f
    .line 210
    invoke-virtual {p3, v0, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    :cond_32
    const/4 v4, 0x2

    #@33
    new-array v4, v4, [Ljava/lang/Object;

    #@35
    .line 214
    iget-object v5, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@37
    aput-object v5, v4, v3

    #@39
    aput-object p1, v4, v2

    #@3b
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object p1

    #@3f
    monitor-exit p3

    #@40
    return-object p1

    #@41
    :catchall_41
    move-exception p1

    #@42
    .line 215
    monitor-exit p3
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_41

    #@43
    :try_start_43
    throw p1
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_44} :catch_44

    #@44
    :catch_44
    move-exception p1

    #@45
    .line 217
    new-instance p3, Landroid/view/InflateException;

    #@47
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    const-string v2, "Could not instantiate "

    #@4b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object p2

    #@52
    const-string v1, " class "

    #@54
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object p2

    #@58
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object p2

    #@5c
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object p2

    #@60
    invoke-direct {p3, p2, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@63
    throw p3

    #@64
    .line 197
    :cond_64
    new-instance p1, Landroid/view/InflateException;

    #@66
    new-instance p2, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object p2

    #@6f
    const-string p3, " tag must have a \'class\' attribute"

    #@71
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object p2

    #@75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object p2

    #@79
    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@7c
    throw p1
.end method

.method private createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)Landroidx/transition/Transition;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 121
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v0

    #@4
    .line 123
    instance-of v1, p3, Landroidx/transition/TransitionSet;

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v1, :cond_d

    #@9
    move-object v1, p3

    #@a
    check-cast v1, Landroidx/transition/TransitionSet;

    #@c
    goto :goto_e

    #@d
    :cond_d
    move-object v1, v2

    #@e
    :goto_e
    move-object v3, v2

    #@f
    .line 126
    :cond_f
    :goto_f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@12
    move-result v4

    #@13
    const/4 v5, 0x3

    #@14
    if-ne v4, v5, :cond_1c

    #@16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@19
    move-result v5

    #@1a
    if-le v5, v0, :cond_17b

    #@1c
    :cond_1c
    const/4 v5, 0x1

    #@1d
    if-eq v4, v5, :cond_17b

    #@1f
    const/4 v5, 0x2

    #@20
    if-eq v4, v5, :cond_23

    #@22
    goto :goto_f

    #@23
    .line 133
    :cond_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    const-string v5, "fade"

    #@29
    .line 134
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_38

    #@2f
    .line 135
    new-instance v3, Landroidx/transition/Fade;

    #@31
    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@33
    invoke-direct {v3, v4, p2}, Landroidx/transition/Fade;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@36
    goto/16 :goto_13c

    #@38
    :cond_38
    const-string v5, "changeBounds"

    #@3a
    .line 136
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v5

    #@3e
    if-eqz v5, :cond_49

    #@40
    .line 137
    new-instance v3, Landroidx/transition/ChangeBounds;

    #@42
    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@44
    invoke-direct {v3, v4, p2}, Landroidx/transition/ChangeBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@47
    goto/16 :goto_13c

    #@49
    :cond_49
    const-string v5, "slide"

    #@4b
    .line 138
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v5

    #@4f
    if-eqz v5, :cond_5a

    #@51
    .line 139
    new-instance v3, Landroidx/transition/Slide;

    #@53
    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@55
    invoke-direct {v3, v4, p2}, Landroidx/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@58
    goto/16 :goto_13c

    #@5a
    :cond_5a
    const-string v5, "explode"

    #@5c
    .line 140
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v5

    #@60
    if-eqz v5, :cond_6b

    #@62
    .line 141
    new-instance v3, Landroidx/transition/Explode;

    #@64
    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@66
    invoke-direct {v3, v4, p2}, Landroidx/transition/Explode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@69
    goto/16 :goto_13c

    #@6b
    :cond_6b
    const-string v5, "changeImageTransform"

    #@6d
    .line 142
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v5

    #@71
    if-eqz v5, :cond_7c

    #@73
    .line 143
    new-instance v3, Landroidx/transition/ChangeImageTransform;

    #@75
    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@77
    invoke-direct {v3, v4, p2}, Landroidx/transition/ChangeImageTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@7a
    goto/16 :goto_13c

    #@7c
    :cond_7c
    const-string v5, "changeTransform"

    #@7e
    .line 144
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v5

    #@82
    if-eqz v5, :cond_8d

    #@84
    .line 145
    new-instance v3, Landroidx/transition/ChangeTransform;

    #@86
    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@88
    invoke-direct {v3, v4, p2}, Landroidx/transition/ChangeTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@8b
    goto/16 :goto_13c

    #@8d
    :cond_8d
    const-string v5, "changeClipBounds"

    #@8f
    .line 146
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v5

    #@93
    if-eqz v5, :cond_9e

    #@95
    .line 147
    new-instance v3, Landroidx/transition/ChangeClipBounds;

    #@97
    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@99
    invoke-direct {v3, v4, p2}, Landroidx/transition/ChangeClipBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9c
    goto/16 :goto_13c

    #@9e
    :cond_9e
    const-string v5, "autoTransition"

    #@a0
    .line 148
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v5

    #@a4
    if-eqz v5, :cond_af

    #@a6
    .line 149
    new-instance v3, Landroidx/transition/AutoTransition;

    #@a8
    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@aa
    invoke-direct {v3, v4, p2}, Landroidx/transition/AutoTransition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@ad
    goto/16 :goto_13c

    #@af
    :cond_af
    const-string v5, "changeScroll"

    #@b1
    .line 150
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v5

    #@b5
    if-eqz v5, :cond_c0

    #@b7
    .line 151
    new-instance v3, Landroidx/transition/ChangeScroll;

    #@b9
    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@bb
    invoke-direct {v3, v4, p2}, Landroidx/transition/ChangeScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@be
    goto/16 :goto_13c

    #@c0
    :cond_c0
    const-string v5, "transitionSet"

    #@c2
    .line 152
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c5
    move-result v5

    #@c6
    if-eqz v5, :cond_d0

    #@c8
    .line 153
    new-instance v3, Landroidx/transition/TransitionSet;

    #@ca
    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@cc
    invoke-direct {v3, v4, p2}, Landroidx/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@cf
    goto :goto_13c

    #@d0
    :cond_d0
    const-string v5, "transition"

    #@d2
    .line 154
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v6

    #@d6
    if-eqz v6, :cond_e1

    #@d8
    .line 155
    const-class v3, Landroidx/transition/Transition;

    #@da
    invoke-direct {p0, p2, v3, v5}, Landroidx/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    #@dd
    move-result-object v3

    #@de
    check-cast v3, Landroidx/transition/Transition;

    #@e0
    goto :goto_13c

    #@e1
    :cond_e1
    const-string v5, "targets"

    #@e3
    .line 156
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e6
    move-result v5

    #@e7
    if-eqz v5, :cond_ed

    #@e9
    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroidx/transition/TransitionInflater;->getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)V

    #@ec
    goto :goto_13c

    #@ed
    :cond_ed
    const-string v5, "arcMotion"

    #@ef
    .line 158
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f2
    move-result v5

    #@f3
    if-eqz v5, :cond_10a

    #@f5
    if-eqz p3, :cond_102

    #@f7
    .line 162
    new-instance v4, Landroidx/transition/ArcMotion;

    #@f9
    iget-object v5, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@fb
    invoke-direct {v4, v5, p2}, Landroidx/transition/ArcMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@fe
    invoke-virtual {p3, v4}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    #@101
    goto :goto_13c

    #@102
    .line 160
    :cond_102
    new-instance p1, Ljava/lang/RuntimeException;

    #@104
    const-string p2, "Invalid use of arcMotion element"

    #@106
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@109
    throw p1

    #@10a
    :cond_10a
    const-string v5, "pathMotion"

    #@10c
    .line 163
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10f
    move-result v6

    #@110
    if-eqz v6, :cond_128

    #@112
    if-eqz p3, :cond_120

    #@114
    .line 167
    const-class v4, Landroidx/transition/PathMotion;

    #@116
    invoke-direct {p0, p2, v4, v5}, Landroidx/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    #@119
    move-result-object v4

    #@11a
    check-cast v4, Landroidx/transition/PathMotion;

    #@11c
    invoke-virtual {p3, v4}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    #@11f
    goto :goto_13c

    #@120
    .line 165
    :cond_120
    new-instance p1, Ljava/lang/RuntimeException;

    #@122
    const-string p2, "Invalid use of pathMotion element"

    #@124
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@127
    throw p1

    #@128
    :cond_128
    const-string v5, "patternPathMotion"

    #@12a
    .line 169
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12d
    move-result v4

    #@12e
    if-eqz v4, :cond_162

    #@130
    if-eqz p3, :cond_15a

    #@132
    .line 173
    new-instance v4, Landroidx/transition/PatternPathMotion;

    #@134
    iget-object v5, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@136
    invoke-direct {v4, v5, p2}, Landroidx/transition/PatternPathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@139
    invoke-virtual {p3, v4}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    #@13c
    :goto_13c
    if-eqz v3, :cond_f

    #@13e
    .line 178
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    #@141
    move-result v4

    #@142
    if-nez v4, :cond_147

    #@144
    .line 179
    invoke-direct {p0, p1, p2, v3}, Landroidx/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)Landroidx/transition/Transition;

    #@147
    :cond_147
    if-eqz v1, :cond_14e

    #@149
    .line 182
    invoke-virtual {v1, v3}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    #@14c
    goto/16 :goto_e

    #@14e
    :cond_14e
    if-nez p3, :cond_152

    #@150
    goto/16 :goto_f

    #@152
    .line 185
    :cond_152
    new-instance p1, Landroid/view/InflateException;

    #@154
    const-string p2, "Could not add transition to another transition."

    #@156
    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@159
    throw p1

    #@15a
    .line 171
    :cond_15a
    new-instance p1, Ljava/lang/RuntimeException;

    #@15c
    const-string p2, "Invalid use of patternPathMotion element"

    #@15e
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@161
    throw p1

    #@162
    .line 175
    :cond_162
    new-instance p2, Ljava/lang/RuntimeException;

    #@164
    new-instance p3, Ljava/lang/StringBuilder;

    #@166
    const-string v0, "Unknown scene name: "

    #@168
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@16e
    move-result-object p1

    #@16f
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object p1

    #@173
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@176
    move-result-object p1

    #@177
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@17a
    throw p2

    #@17b
    :cond_17b
    return-object v3
.end method

.method private createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroidx/transition/TransitionManager;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 288
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    .line 291
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v2

    #@9
    const/4 v3, 0x3

    #@a
    if-ne v2, v3, :cond_12

    #@c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@f
    move-result v3

    #@10
    if-le v3, v0, :cond_52

    #@12
    :cond_12
    const/4 v3, 0x1

    #@13
    if-eq v2, v3, :cond_52

    #@15
    const/4 v3, 0x2

    #@16
    if-eq v2, v3, :cond_19

    #@18
    goto :goto_5

    #@19
    .line 298
    :cond_19
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    const-string v3, "transitionManager"

    #@1f
    .line 299
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_2b

    #@25
    .line 300
    new-instance v1, Landroidx/transition/TransitionManager;

    #@27
    invoke-direct {v1}, Landroidx/transition/TransitionManager;-><init>()V

    #@2a
    goto :goto_5

    #@2b
    :cond_2b
    const-string v3, "transition"

    #@2d
    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_39

    #@33
    if-eqz v1, :cond_39

    #@35
    .line 302
    invoke-direct {p0, p2, p1, p3, v1}, Landroidx/transition/TransitionInflater;->loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroidx/transition/TransitionManager;)V

    #@38
    goto :goto_5

    #@39
    .line 304
    :cond_39
    new-instance p2, Ljava/lang/RuntimeException;

    #@3b
    new-instance p3, Ljava/lang/StringBuilder;

    #@3d
    const-string v0, "Unknown scene name: "

    #@3f
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@42
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@45
    move-result-object p1

    #@46
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object p1

    #@4a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object p1

    #@4e
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@51
    throw p2

    #@52
    :cond_52
    return-object v1
.end method

.method public static from(Landroid/content/Context;)Landroidx/transition/TransitionInflater;
    .registers 2

    #@0
    .line 58
    new-instance v0, Landroidx/transition/TransitionInflater;

    #@2
    invoke-direct {v0, p0}, Landroidx/transition/TransitionInflater;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method private getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 229
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v0

    #@4
    .line 231
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x3

    #@9
    if-ne v1, v2, :cond_11

    #@b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@e
    move-result v3

    #@f
    if-le v3, v0, :cond_b4

    #@11
    :cond_11
    const/4 v3, 0x1

    #@12
    if-eq v1, v3, :cond_b4

    #@14
    const/4 v4, 0x2

    #@15
    if-eq v1, v4, :cond_18

    #@17
    goto :goto_4

    #@18
    .line 238
    :cond_18
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    const-string v5, "target"

    #@1e
    .line 239
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_9b

    #@24
    .line 240
    iget-object v1, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@26
    sget-object v5, Landroidx/transition/Styleable;->TRANSITION_TARGET:[I

    #@28
    invoke-virtual {v1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2b
    move-result-object v1

    #@2c
    const-string v5, "targetId"

    #@2e
    const/4 v6, 0x0

    #@2f
    .line 241
    invoke-static {v1, p1, v5, v3, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_39

    #@35
    .line 245
    invoke-virtual {p3, v5}, Landroidx/transition/Transition;->addTarget(I)Landroidx/transition/Transition;

    #@38
    goto :goto_7e

    #@39
    :cond_39
    const-string v5, "excludeId"

    #@3b
    .line 246
    invoke-static {v1, p1, v5, v4, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_45

    #@41
    .line 248
    invoke-virtual {p3, v4, v3}, Landroidx/transition/Transition;->excludeTarget(IZ)Landroidx/transition/Transition;

    #@44
    goto :goto_7e

    #@45
    :cond_45
    const-string v4, "targetName"

    #@47
    const/4 v5, 0x4

    #@48
    .line 249
    invoke-static {v1, p1, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    if-eqz v4, :cond_52

    #@4e
    .line 251
    invoke-virtual {p3, v4}, Landroidx/transition/Transition;->addTarget(Ljava/lang/String;)Landroidx/transition/Transition;

    #@51
    goto :goto_7e

    #@52
    :cond_52
    const-string v4, "excludeName"

    #@54
    const/4 v5, 0x5

    #@55
    .line 252
    invoke-static {v1, p1, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    if-eqz v4, :cond_5f

    #@5b
    .line 254
    invoke-virtual {p3, v4, v3}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;

    #@5e
    goto :goto_7e

    #@5f
    :cond_5f
    const-string v4, "excludeClass"

    #@61
    .line 256
    invoke-static {v1, p1, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    if-eqz v2, :cond_6f

    #@67
    .line 260
    :try_start_67
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6a
    move-result-object v4

    #@6b
    .line 261
    invoke-virtual {p3, v4, v3}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;

    #@6e
    goto :goto_7e

    #@6f
    :cond_6f
    const-string v3, "targetClass"

    #@71
    .line 262
    invoke-static {v1, p1, v3, v6}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    if-eqz v2, :cond_7e

    #@77
    .line 264
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@7a
    move-result-object v3

    #@7b
    .line 265
    invoke-virtual {p3, v3}, Landroidx/transition/Transition;->addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    :try_end_7e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_67 .. :try_end_7e} :catch_82

    #@7e
    .line 272
    :cond_7e
    :goto_7e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@81
    goto :goto_4

    #@82
    :catch_82
    move-exception p1

    #@83
    .line 268
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@86
    .line 269
    new-instance p2, Ljava/lang/RuntimeException;

    #@88
    new-instance p3, Ljava/lang/StringBuilder;

    #@8a
    const-string v0, "Could not create "

    #@8c
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8f
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object p3

    #@93
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object p3

    #@97
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9a
    throw p2

    #@9b
    .line 274
    :cond_9b
    new-instance p2, Ljava/lang/RuntimeException;

    #@9d
    new-instance p3, Ljava/lang/StringBuilder;

    #@9f
    const-string v0, "Unknown scene name: "

    #@a1
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@a7
    move-result-object p1

    #@a8
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object p1

    #@ac
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object p1

    #@b0
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b3
    throw p2

    #@b4
    :cond_b4
    return-void
.end method

.method private loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroidx/transition/TransitionManager;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .line 315
    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@2
    sget-object v1, Landroidx/transition/Styleable;->TRANSITION_MANAGER:[I

    #@4
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object p1

    #@8
    const-string v0, "transition"

    #@a
    const/4 v1, 0x2

    #@b
    const/4 v2, -0x1

    #@c
    .line 316
    invoke-static {p1, p2, v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@f
    move-result v0

    #@10
    const-string v1, "fromScene"

    #@12
    const/4 v3, 0x0

    #@13
    .line 318
    invoke-static {p1, p2, v1, v3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@16
    move-result v1

    #@17
    const/4 v3, 0x0

    #@18
    if-gez v1, :cond_1c

    #@1a
    move-object v1, v3

    #@1b
    goto :goto_22

    #@1c
    .line 320
    :cond_1c
    iget-object v4, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@1e
    invoke-static {p3, v1, v4}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    #@21
    move-result-object v1

    #@22
    :goto_22
    const-string v4, "toScene"

    #@24
    const/4 v5, 0x1

    #@25
    .line 322
    invoke-static {p1, p2, v4, v5, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@28
    move-result p2

    #@29
    if-gez p2, :cond_2c

    #@2b
    goto :goto_32

    #@2c
    .line 324
    :cond_2c
    iget-object v2, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@2e
    invoke-static {p3, p2, v2}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    #@31
    move-result-object v3

    #@32
    :goto_32
    if-ltz v0, :cond_5b

    #@34
    .line 327
    invoke-virtual {p0, v0}, Landroidx/transition/TransitionInflater;->inflateTransition(I)Landroidx/transition/Transition;

    #@37
    move-result-object p2

    #@38
    if-eqz p2, :cond_5b

    #@3a
    if-eqz v3, :cond_46

    #@3c
    if-nez v1, :cond_42

    #@3e
    .line 333
    invoke-virtual {p4, v3, p2}, Landroidx/transition/TransitionManager;->setTransition(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    #@41
    goto :goto_5b

    #@42
    .line 335
    :cond_42
    invoke-virtual {p4, v1, v3, p2}, Landroidx/transition/TransitionManager;->setTransition(Landroidx/transition/Scene;Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    #@45
    goto :goto_5b

    #@46
    .line 330
    :cond_46
    new-instance p1, Ljava/lang/RuntimeException;

    #@48
    new-instance p2, Ljava/lang/StringBuilder;

    #@4a
    const-string p3, "No toScene for transition ID "

    #@4c
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4f
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object p2

    #@53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object p2

    #@57
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5a
    throw p1

    #@5b
    .line 339
    :cond_5b
    :goto_5b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@5e
    return-void
.end method


# virtual methods
.method public inflateTransition(I)Landroidx/transition/Transition;
    .registers 6

    #@0
    .line 70
    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@9
    move-result-object p1

    #@a
    .line 72
    :try_start_a
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@d
    move-result-object v0

    #@e
    const/4 v1, 0x0

    #@f
    invoke-direct {p0, p1, v0, v1}, Landroidx/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)Landroidx/transition/Transition;

    #@12
    move-result-object v0
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_13} :catch_3f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_19
    .catchall {:try_start_a .. :try_end_13} :catchall_17

    #@13
    .line 79
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    #@16
    return-object v0

    #@17
    :catchall_17
    move-exception v0

    #@18
    goto :goto_4a

    #@19
    :catch_19
    move-exception v0

    #@1a
    .line 76
    :try_start_1a
    new-instance v1, Landroid/view/InflateException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    .line 77
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    const-string v3, ": "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3e
    throw v1

    #@3f
    :catch_3f
    move-exception v0

    #@40
    .line 74
    new-instance v1, Landroid/view/InflateException;

    #@42
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@49
    throw v1
    :try_end_4a
    .catchall {:try_start_1a .. :try_end_4a} :catchall_17

    #@4a
    .line 79
    :goto_4a
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    #@4d
    .line 80
    throw v0
.end method

.method public inflateTransitionManager(ILandroid/view/ViewGroup;)Landroidx/transition/TransitionManager;
    .registers 6

    #@0
    .line 92
    iget-object v0, p0, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@9
    move-result-object p1

    #@a
    .line 94
    :try_start_a
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@d
    move-result-object v0

    #@e
    invoke-direct {p0, p1, v0, p2}, Landroidx/transition/TransitionInflater;->createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroidx/transition/TransitionManager;

    #@11
    move-result-object p2
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_12} :catch_41
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_18
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    #@12
    .line 106
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    #@15
    return-object p2

    #@16
    :catchall_16
    move-exception p2

    #@17
    goto :goto_4f

    #@18
    :catch_18
    move-exception p2

    #@19
    .line 100
    :try_start_19
    new-instance v0, Landroid/view/InflateException;

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    .line 101
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string v2, ": "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 102
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@3d
    .line 103
    invoke-virtual {v0, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@40
    .line 104
    throw v0

    #@41
    :catch_41
    move-exception p2

    #@42
    .line 96
    new-instance v0, Landroid/view/InflateException;

    #@44
    invoke-virtual {p2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@4b
    .line 97
    invoke-virtual {v0, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@4e
    .line 98
    throw v0
    :try_end_4f
    .catchall {:try_start_19 .. :try_end_4f} :catchall_16

    #@4f
    .line 106
    :goto_4f
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    #@52
    .line 107
    throw p2
.end method

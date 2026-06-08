.class public Landroidx/constraintlayout/motion/widget/KeyFrames;
.super Ljava/lang/Object;
.source "KeyFrames.java"


# static fields
.field private static final CUSTOM_ATTRIBUTE:Ljava/lang/String; = "CustomAttribute"

.field private static final CUSTOM_METHOD:Ljava/lang/String; = "CustomMethod"

.field private static final TAG:Ljava/lang/String; = "KeyFrames"

.field public static final UNSET:I = -0x1

.field static sKeyMakers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mFramesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    .line 45
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyFrames;->sKeyMakers:Ljava/util/HashMap;

    #@7
    :try_start_7
    const-string v1, "KeyAttribute"

    #@9
    .line 50
    const-class v2, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    #@b
    const/4 v3, 0x0

    #@c
    new-array v4, v3, [Ljava/lang/Class;

    #@e
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 51
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyFrames;->sKeyMakers:Ljava/util/HashMap;

    #@17
    const-string v1, "KeyPosition"

    #@19
    const-class v2, Landroidx/constraintlayout/motion/widget/KeyPosition;

    #@1b
    new-array v4, v3, [Ljava/lang/Class;

    #@1d
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 52
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyFrames;->sKeyMakers:Ljava/util/HashMap;

    #@26
    const-string v1, "KeyCycle"

    #@28
    const-class v2, Landroidx/constraintlayout/motion/widget/KeyCycle;

    #@2a
    new-array v4, v3, [Ljava/lang/Class;

    #@2c
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 53
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyFrames;->sKeyMakers:Ljava/util/HashMap;

    #@35
    const-string v1, "KeyTimeCycle"

    #@37
    const-class v2, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    #@39
    new-array v4, v3, [Ljava/lang/Class;

    #@3b
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 54
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyFrames;->sKeyMakers:Ljava/util/HashMap;

    #@44
    const-string v1, "KeyTrigger"

    #@46
    const-class v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    #@48
    new-array v3, v3, [Ljava/lang/Class;

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_51} :catch_52

    #@51
    goto :goto_5a

    #@52
    :catch_52
    move-exception v0

    #@53
    const-string v1, "KeyFrames"

    #@55
    const-string v2, "unable to load"

    #@57
    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5a
    :goto_5a
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    #@a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    #@0
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    #@a
    .line 77
    :try_start_a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x0

    #@f
    :goto_f
    const/4 v2, 0x1

    #@10
    if-eq v0, v2, :cond_b5

    #@12
    const/4 v2, 0x2

    #@13
    if-eq v0, v2, :cond_27

    #@15
    const/4 v2, 0x3

    #@16
    if-eq v0, v2, :cond_1a

    #@18
    goto/16 :goto_a6

    #@1a
    :cond_1a
    const-string v0, "KeyFrameSet"

    #@1c
    .line 110
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_a6

    #@26
    return-void

    #@27
    .line 84
    :cond_27
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 86
    sget-object v2, Landroidx/constraintlayout/motion/widget/KeyFrames;->sKeyMakers:Ljava/util/HashMap;

    #@2d
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@30
    move-result v2
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_31} :catch_b1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_31} :catch_ac

    #@31
    if-eqz v2, :cond_7f

    #@33
    .line 88
    :try_start_33
    sget-object v2, Landroidx/constraintlayout/motion/widget/KeyFrames;->sKeyMakers:Ljava/util/HashMap;

    #@35
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    check-cast v2, Ljava/lang/reflect/Constructor;

    #@3b
    if-eqz v2, :cond_53

    #@3d
    const/4 v0, 0x0

    #@3e
    new-array v0, v0, [Ljava/lang/Object;

    #@40
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Landroidx/constraintlayout/motion/widget/Key;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_46} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_46} :catch_b1
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_46} :catch_ac

    #@46
    .line 91
    :try_start_46
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/Key;->load(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4d
    .line 92
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_50} :catch_51
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_50} :catch_b1
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_50} :catch_ac

    #@50
    goto :goto_7d

    #@51
    :catch_51
    move-exception v1

    #@52
    goto :goto_76

    #@53
    .line 94
    :cond_53
    :try_start_53
    new-instance v2, Ljava/lang/NullPointerException;

    #@55
    new-instance v3, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string v4, "Keymaker for "

    #@5c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    const-string v3, " not found"

    #@66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@71
    throw v2
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_72} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_72} :catch_b1
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_72} :catch_ac

    #@72
    :catch_72
    move-exception v0

    #@73
    move-object v5, v1

    #@74
    move-object v1, v0

    #@75
    move-object v0, v5

    #@76
    :goto_76
    :try_start_76
    const-string v2, "KeyFrames"

    #@78
    const-string v3, "unable to create "

    #@7a
    .line 97
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7d
    :goto_7d
    move-object v1, v0

    #@7e
    goto :goto_a6

    #@7f
    :cond_7f
    const-string v2, "CustomAttribute"

    #@81
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@84
    move-result v2

    #@85
    if-eqz v2, :cond_93

    #@87
    if-eqz v1, :cond_a6

    #@89
    .line 100
    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    #@8b
    if-eqz v0, :cond_a6

    #@8d
    .line 101
    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    #@8f
    invoke-static {p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    #@92
    goto :goto_a6

    #@93
    :cond_93
    const-string v2, "CustomMethod"

    #@95
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@98
    move-result v0

    #@99
    if-eqz v0, :cond_a6

    #@9b
    if-eqz v1, :cond_a6

    #@9d
    .line 104
    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    #@9f
    if-eqz v0, :cond_a6

    #@a1
    .line 105
    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    #@a3
    invoke-static {p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    #@a6
    .line 79
    :cond_a6
    :goto_a6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a9
    move-result v0
    :try_end_aa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_76 .. :try_end_aa} :catch_b1
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_aa} :catch_ac

    #@aa
    goto/16 :goto_f

    #@ac
    :catch_ac
    move-exception p1

    #@ad
    .line 121
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@b0
    goto :goto_b5

    #@b1
    :catch_b1
    move-exception p1

    #@b2
    .line 119
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    #@b5
    :cond_b5
    :goto_b5
    return-void
.end method

.method static name(ILandroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "context"
        }
    .end annotation

    #@0
    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method


# virtual methods
.method public addAllFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionController"
        }
    .end annotation

    #@0
    .line 130
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    #@2
    const/4 v1, -0x1

    #@3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/ArrayList;

    #@d
    if-eqz v0, :cond_12

    #@f
    .line 132
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->addKeys(Ljava/util/ArrayList;)V

    #@12
    :cond_12
    return-void
.end method

.method public addFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionController"
        }
    .end annotation

    #@0
    .line 137
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    #@2
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/ArrayList;

    #@e
    if-eqz v0, :cond_13

    #@10
    .line 139
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->addKeys(Ljava/util/ArrayList;)V

    #@13
    .line 141
    :cond_13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    #@15
    const/4 v1, -0x1

    #@16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/util/ArrayList;

    #@20
    if-eqz v0, :cond_46

    #@22
    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v0

    #@26
    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_46

    #@2c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroidx/constraintlayout/motion/widget/Key;

    #@32
    .line 145
    iget-object v2, p1, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    #@34
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@3a
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    #@3c
    .line 146
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/Key;->matches(Ljava/lang/String;)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_26

    #@42
    .line 147
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    #@45
    goto :goto_26

    #@46
    :cond_46
    return-void
.end method

.method public addKey(Landroidx/constraintlayout/motion/widget/Key;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    #@0
    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    #@2
    iget v1, p1, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1e

    #@e
    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    #@10
    iget v1, p1, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    #@12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v1

    #@16
    new-instance v2, Ljava/util/ArrayList;

    #@18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 65
    :cond_1e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    #@20
    iget v1, p1, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    #@22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Ljava/util/ArrayList;

    #@2c
    if-eqz v0, :cond_31

    #@2e
    .line 67
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    :cond_31
    return-void
.end method

.method public getKeyFramesForView(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;"
        }
    .end annotation

    #@0
    .line 164
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Ljava/util/ArrayList;

    #@c
    return-object p1
.end method

.method public getKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 160
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

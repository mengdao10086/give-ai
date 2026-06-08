.class public Landroidx/constraintlayout/helper/widget/MotionEffect;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "MotionEffect.java"


# static fields
.field public static final AUTO:I = -0x1

.field public static final EAST:I = 0x2

.field public static final NORTH:I = 0x0

.field public static final SOUTH:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FadeMove"

.field private static final UNSET:I = -0x1

.field public static final WEST:I = 0x3


# instance fields
.field private fadeMove:I

.field private motionEffectAlpha:F

.field private motionEffectEnd:I

.field private motionEffectStart:I

.field private motionEffectStrictMove:Z

.field private motionEffectTranslationX:I

.field private motionEffectTranslationY:I

.field private viewTransitionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    #@0
    .line 72
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    #@3
    const p1, 0x3dcccccd    # 0.1f

    #@6
    .line 60
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    #@8
    const/16 p1, 0x31

    #@a
    .line 61
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    #@c
    const/16 p1, 0x32

    #@e
    .line 62
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@10
    const/4 p1, 0x0

    #@11
    .line 63
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    #@13
    .line 64
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    #@15
    const/4 p1, 0x1

    #@16
    .line 65
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    #@18
    const/4 p1, -0x1

    #@19
    .line 67
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    #@1b
    .line 69
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    #@1d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    .line 76
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const v0, 0x3dcccccd    # 0.1f

    #@6
    .line 60
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    #@8
    const/16 v0, 0x31

    #@a
    .line 61
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    #@c
    const/16 v0, 0x32

    #@e
    .line 62
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@10
    const/4 v0, 0x0

    #@11
    .line 63
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    #@13
    .line 64
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    #@15
    const/4 v0, 0x1

    #@16
    .line 65
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    #@18
    const/4 v0, -0x1

    #@19
    .line 67
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    #@1b
    .line 69
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    #@1d
    .line 77
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    #@0
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const p3, 0x3dcccccd    # 0.1f

    #@6
    .line 60
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    #@8
    const/16 p3, 0x31

    #@a
    .line 61
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    #@c
    const/16 p3, 0x32

    #@e
    .line 62
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@10
    const/4 p3, 0x0

    #@11
    .line 63
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    #@13
    .line 64
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    #@15
    const/4 p3, 0x1

    #@16
    .line 65
    iput-boolean p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    #@18
    const/4 p3, -0x1

    #@19
    .line 67
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    #@1b
    .line 69
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    #@1d
    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@20
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_a9

    #@2
    .line 87
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect:[I

    #@4
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object p1

    #@8
    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@b
    move-result p2

    #@c
    const/4 v0, 0x0

    #@d
    move v1, v0

    #@e
    :goto_e
    if-ge v1, p2, :cond_95

    #@10
    .line 90
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@13
    move-result v2

    #@14
    .line 91
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_start:I

    #@16
    const/16 v4, 0x63

    #@18
    if-ne v2, v3, :cond_2d

    #@1a
    .line 92
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    #@1c
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1f
    move-result v2

    #@20
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    #@22
    .line 93
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@25
    move-result v2

    #@26
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@29
    move-result v2

    #@2a
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    #@2c
    goto :goto_91

    #@2d
    .line 94
    :cond_2d
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_end:I

    #@2f
    if-ne v2, v3, :cond_44

    #@31
    .line 95
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@33
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@36
    move-result v2

    #@37
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@39
    .line 96
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@3c
    move-result v2

    #@3d
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@40
    move-result v2

    #@41
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@43
    goto :goto_91

    #@44
    .line 97
    :cond_44
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_translationX:I

    #@46
    if-ne v2, v3, :cond_51

    #@48
    .line 98
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    #@4a
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@4d
    move-result v2

    #@4e
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    #@50
    goto :goto_91

    #@51
    .line 99
    :cond_51
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_translationY:I

    #@53
    if-ne v2, v3, :cond_5e

    #@55
    .line 100
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    #@57
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@5a
    move-result v2

    #@5b
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    #@5d
    goto :goto_91

    #@5e
    .line 101
    :cond_5e
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_alpha:I

    #@60
    if-ne v2, v3, :cond_6b

    #@62
    .line 102
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    #@64
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@67
    move-result v2

    #@68
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    #@6a
    goto :goto_91

    #@6b
    .line 103
    :cond_6b
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_move:I

    #@6d
    if-ne v2, v3, :cond_78

    #@6f
    .line 104
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    #@71
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@74
    move-result v2

    #@75
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    #@77
    goto :goto_91

    #@78
    .line 105
    :cond_78
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_strict:I

    #@7a
    if-ne v2, v3, :cond_85

    #@7c
    .line 106
    iget-boolean v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    #@7e
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@81
    move-result v2

    #@82
    iput-boolean v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    #@84
    goto :goto_91

    #@85
    .line 107
    :cond_85
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_viewTransition:I

    #@87
    if-ne v2, v3, :cond_91

    #@89
    .line 108
    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    #@8b
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@8e
    move-result v2

    #@8f
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    #@91
    :cond_91
    :goto_91
    add-int/lit8 v1, v1, 0x1

    #@93
    goto/16 :goto_e

    #@95
    .line 111
    :cond_95
    iget p2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    #@97
    iget v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@99
    if-ne p2, v0, :cond_a6

    #@9b
    if-lez p2, :cond_a2

    #@9d
    add-int/lit8 p2, p2, -0x1

    #@9f
    .line 113
    iput p2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    #@a1
    goto :goto_a6

    #@a2
    :cond_a2
    add-int/lit8 v0, v0, 0x1

    #@a4
    .line 115
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@a6
    .line 118
    :cond_a6
    :goto_a6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@a9
    :cond_a9
    return-void
.end method


# virtual methods
.method public isDecorator()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "controllerMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/motion/widget/MotionLayout;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/MotionController;",
            ">;)V"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    .line 129
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/helper/widget/MotionEffect;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@a
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    #@d
    move-result-object v2

    #@e
    if-nez v2, :cond_2d

    #@10
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string v2, " views = null"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    const-string v2, "FadeMove"

    #@29
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    return-void

    #@2d
    .line 138
    :cond_2d
    new-instance v3, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    #@2f
    invoke-direct {v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    #@32
    .line 139
    new-instance v4, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    #@34
    invoke-direct {v4}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    #@37
    .line 140
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    #@39
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3c
    move-result-object v5

    #@3d
    const-string v6, "alpha"

    #@3f
    invoke-virtual {v3, v6, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@42
    .line 141
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    #@44
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v4, v6, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@4b
    .line 142
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    #@4d
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    #@50
    .line 143
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@52
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    #@55
    .line 144
    new-instance v5, Landroidx/constraintlayout/motion/widget/KeyPosition;

    #@57
    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    #@5a
    .line 145
    iget v6, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    #@5c
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setFramePosition(I)V

    #@5f
    const/4 v6, 0x0

    #@60
    .line 146
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setType(I)V

    #@63
    .line 147
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v7

    #@67
    const-string v8, "percentX"

    #@69
    invoke-virtual {v5, v8, v7}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@6c
    .line 148
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v7

    #@70
    const-string v9, "percentY"

    #@72
    invoke-virtual {v5, v9, v7}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@75
    .line 149
    new-instance v7, Landroidx/constraintlayout/motion/widget/KeyPosition;

    #@77
    invoke-direct {v7}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    #@7a
    .line 150
    iget v10, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@7c
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setFramePosition(I)V

    #@7f
    .line 151
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setType(I)V

    #@82
    const/4 v10, 0x1

    #@83
    .line 152
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@86
    move-result-object v11

    #@87
    invoke-virtual {v7, v8, v11}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@8a
    .line 153
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v7, v9, v8}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@91
    .line 157
    iget v8, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    #@93
    const/4 v9, 0x0

    #@94
    if-lez v8, :cond_be

    #@96
    .line 158
    new-instance v8, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    #@98
    invoke-direct {v8}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    #@9b
    .line 159
    new-instance v11, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    #@9d
    invoke-direct {v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    #@a0
    .line 160
    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    #@a2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a5
    move-result-object v12

    #@a6
    const-string v13, "translationX"

    #@a8
    invoke-virtual {v8, v13, v12}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@ab
    .line 161
    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@ad
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    #@b0
    .line 162
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b3
    move-result-object v12

    #@b4
    invoke-virtual {v11, v13, v12}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@b7
    .line 163
    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@b9
    sub-int/2addr v12, v10

    #@ba
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    #@bd
    goto :goto_c0

    #@be
    :cond_be
    move-object v8, v9

    #@bf
    move-object v11, v8

    #@c0
    .line 168
    :goto_c0
    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    #@c2
    if-lez v12, :cond_ec

    #@c4
    .line 169
    new-instance v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    #@c6
    invoke-direct {v9}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    #@c9
    .line 170
    new-instance v12, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    #@cb
    invoke-direct {v12}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    #@ce
    .line 171
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    #@d0
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d3
    move-result-object v13

    #@d4
    const-string v14, "translationY"

    #@d6
    invoke-virtual {v9, v14, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@d9
    .line 172
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@db
    invoke-virtual {v9, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    #@de
    .line 173
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e1
    move-result-object v13

    #@e2
    invoke-virtual {v12, v14, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@e5
    .line 174
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    #@e7
    sub-int/2addr v13, v10

    #@e8
    invoke-virtual {v12, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    #@eb
    goto :goto_ed

    #@ec
    :cond_ec
    move-object v12, v9

    #@ed
    .line 177
    :goto_ed
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    #@ef
    const/4 v15, -0x1

    #@f0
    const/16 v17, 0x0

    #@f2
    if-ne v13, v15, :cond_156

    #@f4
    const/4 v13, 0x4

    #@f5
    new-array v15, v13, [I

    #@f7
    move v13, v6

    #@f8
    .line 181
    :goto_f8
    array-length v14, v2

    #@f9
    if-ge v13, v14, :cond_145

    #@fb
    .line 182
    aget-object v14, v2, v13

    #@fd
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@100
    move-result-object v14

    #@101
    check-cast v14, Landroidx/constraintlayout/motion/widget/MotionController;

    #@103
    if-nez v14, :cond_106

    #@105
    goto :goto_142

    #@106
    .line 186
    :cond_106
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    #@109
    move-result v19

    #@10a
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartX()F

    #@10d
    move-result v20

    #@10e
    sub-float v19, v19, v20

    #@110
    .line 187
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    #@113
    move-result v20

    #@114
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartY()F

    #@117
    move-result v14

    #@118
    sub-float v20, v20, v14

    #@11a
    cmpg-float v14, v20, v17

    #@11c
    if-gez v14, :cond_123

    #@11e
    aget v14, v15, v10

    #@120
    add-int/2addr v14, v10

    #@121
    aput v14, v15, v10

    #@123
    :cond_123
    cmpl-float v14, v20, v17

    #@125
    if-lez v14, :cond_12c

    #@127
    aget v14, v15, v6

    #@129
    add-int/2addr v14, v10

    #@12a
    aput v14, v15, v6

    #@12c
    :cond_12c
    cmpl-float v14, v19, v17

    #@12e
    if-lez v14, :cond_137

    #@130
    const/4 v14, 0x3

    #@131
    aget v18, v15, v14

    #@133
    add-int/lit8 v18, v18, 0x1

    #@135
    aput v18, v15, v14

    #@137
    :cond_137
    cmpg-float v14, v19, v17

    #@139
    if-gez v14, :cond_142

    #@13b
    const/4 v14, 0x2

    #@13c
    aget v16, v15, v14

    #@13e
    add-int/lit8 v16, v16, 0x1

    #@140
    aput v16, v15, v14

    #@142
    :cond_142
    :goto_142
    add-int/lit8 v13, v13, 0x1

    #@144
    goto :goto_f8

    #@145
    :cond_145
    aget v13, v15, v6

    #@147
    move v14, v13

    #@148
    move v13, v6

    #@149
    move v6, v10

    #@14a
    :goto_14a
    const/4 v10, 0x4

    #@14b
    if-ge v6, v10, :cond_156

    #@14d
    .line 198
    aget v10, v15, v6

    #@14f
    if-ge v14, v10, :cond_153

    #@151
    move v13, v6

    #@152
    move v14, v10

    #@153
    :cond_153
    add-int/lit8 v6, v6, 0x1

    #@155
    goto :goto_14a

    #@156
    :cond_156
    const/4 v6, 0x0

    #@157
    .line 205
    :goto_157
    array-length v10, v2

    #@158
    if-ge v6, v10, :cond_1f5

    #@15a
    .line 206
    aget-object v10, v2, v6

    #@15c
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15f
    move-result-object v10

    #@160
    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

    #@162
    if-nez v10, :cond_169

    #@164
    :cond_164
    move-object/from16 v1, p1

    #@166
    const/4 v15, -0x1

    #@167
    goto/16 :goto_1ef

    #@169
    .line 210
    :cond_169
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    #@16c
    move-result v14

    #@16d
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartX()F

    #@170
    move-result v15

    #@171
    sub-float/2addr v14, v15

    #@172
    .line 211
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    #@175
    move-result v15

    #@176
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartY()F

    #@179
    move-result v20

    #@17a
    sub-float v15, v15, v20

    #@17c
    if-nez v13, :cond_18f

    #@17e
    cmpl-float v15, v15, v17

    #@180
    if-lez v15, :cond_18d

    #@182
    .line 218
    iget-boolean v15, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    #@184
    if-eqz v15, :cond_18a

    #@186
    cmpl-float v14, v14, v17

    #@188
    if-nez v14, :cond_18d

    #@18a
    :cond_18a
    :goto_18a
    const/4 v1, 0x3

    #@18b
    :cond_18b
    :goto_18b
    const/4 v14, 0x0

    #@18c
    goto :goto_1c0

    #@18d
    :cond_18d
    const/4 v1, 0x3

    #@18e
    goto :goto_1bf

    #@18f
    :cond_18f
    const/4 v1, 0x1

    #@190
    if-ne v13, v1, :cond_19f

    #@192
    cmpg-float v15, v15, v17

    #@194
    if-gez v15, :cond_18d

    #@196
    .line 222
    iget-boolean v15, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    #@198
    if-eqz v15, :cond_18a

    #@19a
    cmpl-float v14, v14, v17

    #@19c
    if-nez v14, :cond_18d

    #@19e
    goto :goto_18a

    #@19f
    :cond_19f
    const/4 v1, 0x2

    #@1a0
    if-ne v13, v1, :cond_1af

    #@1a2
    cmpg-float v14, v14, v17

    #@1a4
    if-gez v14, :cond_18d

    #@1a6
    .line 226
    iget-boolean v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    #@1a8
    if-eqz v14, :cond_18a

    #@1aa
    cmpl-float v14, v15, v17

    #@1ac
    if-nez v14, :cond_18d

    #@1ae
    goto :goto_18a

    #@1af
    :cond_1af
    const/4 v1, 0x3

    #@1b0
    if-ne v13, v1, :cond_1bf

    #@1b2
    cmpl-float v14, v14, v17

    #@1b4
    if-lez v14, :cond_1bf

    #@1b6
    .line 230
    iget-boolean v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    #@1b8
    if-eqz v14, :cond_18b

    #@1ba
    cmpl-float v14, v15, v17

    #@1bc
    if-nez v14, :cond_1bf

    #@1be
    goto :goto_18b

    #@1bf
    :cond_1bf
    :goto_1bf
    const/4 v14, 0x1

    #@1c0
    :goto_1c0
    if-eqz v14, :cond_164

    #@1c2
    .line 236
    iget v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    #@1c4
    const/4 v15, -0x1

    #@1c5
    if-ne v14, v15, :cond_1ea

    #@1c7
    .line 237
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    #@1ca
    .line 238
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    #@1cd
    .line 239
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    #@1d0
    .line 240
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    #@1d3
    .line 241
    iget v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    #@1d5
    if-lez v14, :cond_1dd

    #@1d7
    .line 242
    invoke-virtual {v10, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    #@1da
    .line 243
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    #@1dd
    .line 245
    :cond_1dd
    iget v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    #@1df
    if-lez v14, :cond_1e7

    #@1e1
    .line 246
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    #@1e4
    .line 247
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    #@1e7
    :cond_1e7
    move-object/from16 v1, p1

    #@1e9
    goto :goto_1ef

    #@1ea
    :cond_1ea
    move-object/from16 v1, p1

    #@1ec
    .line 250
    invoke-virtual {v1, v14, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z

    #@1ef
    :goto_1ef
    add-int/lit8 v6, v6, 0x1

    #@1f1
    move-object/from16 v1, p2

    #@1f3
    goto/16 :goto_157

    #@1f5
    :cond_1f5
    return-void
.end method

.class public Landroidx/constraintlayout/core/state/WidgetFrame;
.super Ljava/lang/Object;
.source "WidgetFrame.java"


# static fields
.field private static final OLD_SYSTEM:Z = true

.field public static phone_orientation:F = NaNf


# instance fields
.field public alpha:F

.field public bottom:I

.field public interpolatedPos:F

.field public left:I

.field public final mCustom:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public pivotX:F

.field public pivotY:F

.field public right:I

.field public rotationX:F

.field public rotationY:F

.field public rotationZ:F

.field public scaleX:F

.field public scaleY:F

.field public top:I

.field public translationX:F

.field public translationY:F

.field public translationZ:F

.field public visibility:I

.field public widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@6
    const/4 v1, 0x0

    #@7
    .line 35
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@9
    .line 36
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@b
    .line 37
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@d
    .line 38
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@f
    const/high16 v2, 0x7fc00000    # Float.NaN

    #@11
    .line 42
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@13
    .line 43
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@15
    .line 45
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@17
    .line 46
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@19
    .line 47
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@1b
    .line 49
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@1d
    .line 50
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@1f
    .line 51
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@21
    .line 54
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@23
    .line 55
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@25
    .line 57
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    #@27
    .line 58
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolatedPos:F

    #@29
    .line 60
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    #@2b
    .line 62
    new-instance v1, Ljava/util/HashMap;

    #@2d
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@30
    iput-object v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@32
    .line 64
    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->name:Ljava/lang/String;

    #@34
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V
    .registers 5

    #@0
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@6
    const/4 v1, 0x0

    #@7
    .line 35
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@9
    .line 36
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@b
    .line 37
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@d
    .line 38
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@f
    const/high16 v2, 0x7fc00000    # Float.NaN

    #@11
    .line 42
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@13
    .line 43
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@15
    .line 45
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@17
    .line 46
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@19
    .line 47
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@1b
    .line 49
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@1d
    .line 50
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@1f
    .line 51
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@21
    .line 54
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@23
    .line 55
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@25
    .line 57
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    #@27
    .line 58
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolatedPos:F

    #@29
    .line 60
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    #@2b
    .line 62
    new-instance v1, Ljava/util/HashMap;

    #@2d
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@30
    iput-object v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@32
    .line 64
    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->name:Ljava/lang/String;

    #@34
    .line 82
    iget-object v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@36
    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@38
    .line 83
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@3a
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@3c
    .line 84
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@3e
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@40
    .line 85
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@42
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@44
    .line 86
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@46
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@48
    .line 87
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/WidgetFrame;->updateAttributes(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    #@4b
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 5

    #@0
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@6
    const/4 v1, 0x0

    #@7
    .line 35
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@9
    .line 36
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@b
    .line 37
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@d
    .line 38
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@f
    const/high16 v2, 0x7fc00000    # Float.NaN

    #@11
    .line 42
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@13
    .line 43
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@15
    .line 45
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@17
    .line 46
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@19
    .line 47
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@1b
    .line 49
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@1d
    .line 50
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@1f
    .line 51
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@21
    .line 54
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@23
    .line 55
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@25
    .line 57
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    #@27
    .line 58
    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolatedPos:F

    #@29
    .line 60
    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    #@2b
    .line 62
    new-instance v1, Ljava/util/HashMap;

    #@2d
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@30
    iput-object v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@32
    .line 64
    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->name:Ljava/lang/String;

    #@34
    .line 78
    iput-object p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@36
    return-void
.end method

.method private static add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V
    .registers 4

    #@0
    .line 561
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 564
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    const-string p1, ": "

    #@c
    .line 565
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 566
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@12
    const-string p1, ",\n"

    #@14
    .line 567
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    return-void
.end method

.method private static add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 3

    #@0
    .line 554
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    const-string p1, ": "

    #@5
    .line 555
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    .line 556
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b
    const-string p1, ",\n"

    #@d
    .line 557
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    return-void
.end method

.method private static interpolate(FFFF)F
    .registers 6

    #@0
    .line 254
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    .line 255
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@7
    move-result v1

    #@8
    if-eqz v0, :cond_f

    #@a
    if-eqz v1, :cond_f

    #@c
    const/high16 p0, 0x7fc00000    # Float.NaN

    #@e
    return p0

    #@f
    :cond_f
    if-eqz v0, :cond_12

    #@11
    move p0, p2

    #@12
    :cond_12
    if-eqz v1, :cond_15

    #@14
    move p1, p2

    #@15
    :cond_15
    sub-float/2addr p1, p0

    #@16
    mul-float/2addr p3, p1

    #@17
    add-float/2addr p0, p3

    #@18
    return p0
.end method

.method public static interpolate(IILandroidx/constraintlayout/core/state/WidgetFrame;Landroidx/constraintlayout/core/state/WidgetFrame;Landroidx/constraintlayout/core/state/WidgetFrame;Landroidx/constraintlayout/core/state/Transition;F)V
    .registers 29

    #@0
    move/from16 v0, p0

    #@2
    move/from16 v1, p1

    #@4
    move-object/from16 v2, p2

    #@6
    move-object/from16 v3, p3

    #@8
    move-object/from16 v4, p4

    #@a
    move-object/from16 v5, p5

    #@c
    move/from16 v6, p6

    #@e
    const/high16 v7, 0x42c80000    # 100.0f

    #@10
    mul-float/2addr v7, v6

    #@11
    float-to-int v8, v7

    #@12
    .line 126
    iget v9, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@14
    .line 127
    iget v10, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@16
    .line 128
    iget v11, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@18
    .line 129
    iget v12, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@1a
    .line 130
    iget v13, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@1c
    sub-int/2addr v13, v9

    #@1d
    .line 131
    iget v14, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@1f
    sub-int/2addr v14, v10

    #@20
    .line 132
    iget v15, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@22
    sub-int/2addr v15, v11

    #@23
    move/from16 v16, v13

    #@25
    .line 133
    iget v13, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@27
    sub-int/2addr v13, v12

    #@28
    move/from16 v17, v14

    #@2a
    .line 137
    iget v14, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    #@2c
    .line 138
    iget v6, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    #@2e
    move/from16 v18, v7

    #@30
    .line 140
    iget v7, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    #@32
    const/high16 v19, 0x40000000    # 2.0f

    #@34
    const/16 v1, 0x8

    #@36
    if-ne v7, v1, :cond_56

    #@38
    int-to-float v7, v9

    #@39
    int-to-float v9, v15

    #@3a
    div-float v9, v9, v19

    #@3c
    sub-float/2addr v7, v9

    #@3d
    float-to-int v9, v7

    #@3e
    int-to-float v7, v10

    #@3f
    int-to-float v10, v13

    #@40
    div-float v10, v10, v19

    #@42
    sub-float/2addr v7, v10

    #@43
    float-to-int v10, v7

    #@44
    .line 146
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    #@47
    move-result v7

    #@48
    move/from16 v17, v9

    #@4a
    if-eqz v7, :cond_51

    #@4c
    move v14, v13

    #@4d
    move v7, v15

    #@4e
    const/16 v16, 0x0

    #@50
    goto :goto_5e

    #@51
    :cond_51
    move/from16 v16, v14

    #@53
    move v7, v15

    #@54
    move v14, v13

    #@55
    goto :goto_5e

    #@56
    :cond_56
    move/from16 v7, v16

    #@58
    move/from16 v16, v14

    #@5a
    move/from16 v14, v17

    #@5c
    move/from16 v17, v9

    #@5e
    .line 152
    :goto_5e
    iget v9, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    #@60
    if-ne v9, v1, :cond_77

    #@62
    int-to-float v1, v11

    #@63
    int-to-float v9, v7

    #@64
    div-float v9, v9, v19

    #@66
    sub-float/2addr v1, v9

    #@67
    float-to-int v11, v1

    #@68
    int-to-float v1, v12

    #@69
    int-to-float v9, v14

    #@6a
    div-float v9, v9, v19

    #@6c
    sub-float/2addr v1, v9

    #@6d
    float-to-int v12, v1

    #@6e
    .line 158
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    #@71
    move-result v1

    #@72
    move v15, v7

    #@73
    move v13, v14

    #@74
    if-eqz v1, :cond_77

    #@76
    const/4 v6, 0x0

    #@77
    .line 164
    :cond_77
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    #@7a
    move-result v1

    #@7b
    if-eqz v1, :cond_85

    #@7d
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    #@80
    move-result v1

    #@81
    if-nez v1, :cond_85

    #@83
    const/high16 v16, 0x3f800000    # 1.0f

    #@85
    .line 167
    :cond_85
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    #@88
    move-result v1

    #@89
    if-nez v1, :cond_93

    #@8b
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    #@8e
    move-result v1

    #@8f
    if-eqz v1, :cond_93

    #@91
    const/high16 v6, 0x3f800000    # 1.0f

    #@93
    .line 171
    :cond_93
    iget v1, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    #@95
    const/4 v9, 0x4

    #@96
    if-ne v1, v9, :cond_9c

    #@98
    move/from16 v16, v6

    #@9a
    const/4 v1, 0x0

    #@9b
    goto :goto_a0

    #@9c
    :cond_9c
    move/from16 v1, v16

    #@9e
    move/from16 v16, v6

    #@a0
    .line 175
    :goto_a0
    iget v6, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    #@a2
    if-ne v6, v9, :cond_a6

    #@a4
    const/4 v6, 0x0

    #@a5
    goto :goto_a8

    #@a6
    :cond_a6
    move/from16 v6, v16

    #@a8
    .line 179
    :goto_a8
    iget-object v9, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@aa
    const/16 v16, 0x0

    #@ac
    if-eqz v9, :cond_105

    #@ae
    invoke-virtual/range {p5 .. p5}, Landroidx/constraintlayout/core/state/Transition;->hasPositionKeyframes()Z

    #@b1
    move-result v9

    #@b2
    if-eqz v9, :cond_105

    #@b4
    .line 180
    iget-object v9, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@b6
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@b8
    invoke-virtual {v5, v9, v8}, Landroidx/constraintlayout/core/state/Transition;->findPreviousPosition(Ljava/lang/String;I)Landroidx/constraintlayout/core/state/Transition$KeyPosition;

    #@bb
    move-result-object v9

    #@bc
    move/from16 v21, v10

    #@be
    .line 181
    iget-object v10, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@c0
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@c2
    invoke-virtual {v5, v10, v8}, Landroidx/constraintlayout/core/state/Transition;->findNextPosition(Ljava/lang/String;I)Landroidx/constraintlayout/core/state/Transition$KeyPosition;

    #@c5
    move-result-object v5

    #@c6
    if-ne v9, v5, :cond_c9

    #@c8
    const/4 v5, 0x0

    #@c9
    :cond_c9
    if-eqz v9, :cond_e1

    #@cb
    .line 190
    iget v8, v9, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->x:F

    #@cd
    int-to-float v10, v0

    #@ce
    mul-float/2addr v8, v10

    #@cf
    float-to-int v8, v8

    #@d0
    .line 191
    iget v10, v9, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->y:F

    #@d2
    move/from16 v17, v8

    #@d4
    move/from16 v20, v11

    #@d6
    move/from16 v8, p1

    #@d8
    int-to-float v11, v8

    #@d9
    mul-float/2addr v10, v11

    #@da
    float-to-int v10, v10

    #@db
    .line 192
    iget v9, v9, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->frame:I

    #@dd
    move/from16 v21, v10

    #@df
    move v10, v9

    #@e0
    goto :goto_e7

    #@e1
    :cond_e1
    move/from16 v8, p1

    #@e3
    move/from16 v20, v11

    #@e5
    move/from16 v10, v16

    #@e7
    :goto_e7
    move/from16 v9, v17

    #@e9
    if-eqz v5, :cond_fa

    #@eb
    .line 195
    iget v11, v5, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->x:F

    #@ed
    int-to-float v0, v0

    #@ee
    mul-float/2addr v11, v0

    #@ef
    float-to-int v0, v11

    #@f0
    .line 196
    iget v11, v5, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->y:F

    #@f2
    int-to-float v8, v8

    #@f3
    mul-float/2addr v11, v8

    #@f4
    float-to-int v8, v11

    #@f5
    .line 197
    iget v5, v5, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->frame:I

    #@f7
    move v11, v0

    #@f8
    move v12, v8

    #@f9
    goto :goto_fe

    #@fa
    :cond_fa
    const/16 v5, 0x64

    #@fc
    move/from16 v11, v20

    #@fe
    :goto_fe
    int-to-float v0, v10

    #@ff
    sub-float v0, v18, v0

    #@101
    sub-int/2addr v5, v10

    #@102
    int-to-float v5, v5

    #@103
    div-float/2addr v0, v5

    #@104
    goto :goto_10f

    #@105
    :cond_105
    move/from16 v21, v10

    #@107
    move/from16 v20, v11

    #@109
    move/from16 v0, p6

    #@10b
    move/from16 v9, v17

    #@10d
    move/from16 v11, v20

    #@10f
    :goto_10f
    move/from16 v10, v21

    #@111
    .line 203
    iget-object v5, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@113
    iput-object v5, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@115
    int-to-float v5, v9

    #@116
    sub-int/2addr v11, v9

    #@117
    int-to-float v8, v11

    #@118
    mul-float/2addr v8, v0

    #@119
    add-float/2addr v5, v8

    #@11a
    float-to-int v5, v5

    #@11b
    .line 205
    iput v5, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@11d
    int-to-float v8, v10

    #@11e
    sub-int/2addr v12, v10

    #@11f
    int-to-float v9, v12

    #@120
    mul-float/2addr v0, v9

    #@121
    add-float/2addr v8, v0

    #@122
    float-to-int v0, v8

    #@123
    .line 206
    iput v0, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@125
    move/from16 v8, p6

    #@127
    const/high16 v9, 0x3f800000    # 1.0f

    #@129
    sub-float v10, v9, v8

    #@12b
    int-to-float v7, v7

    #@12c
    mul-float/2addr v7, v10

    #@12d
    int-to-float v9, v15

    #@12e
    mul-float/2addr v9, v8

    #@12f
    add-float/2addr v7, v9

    #@130
    float-to-int v7, v7

    #@131
    int-to-float v9, v14

    #@132
    mul-float/2addr v10, v9

    #@133
    int-to-float v9, v13

    #@134
    mul-float/2addr v9, v8

    #@135
    add-float/2addr v10, v9

    #@136
    float-to-int v9, v10

    #@137
    add-int/2addr v5, v7

    #@138
    .line 209
    iput v5, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@13a
    add-int/2addr v0, v9

    #@13b
    .line 210
    iput v0, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@13d
    .line 212
    iget v0, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@13f
    iget v5, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@141
    const/high16 v7, 0x3f000000    # 0.5f

    #@143
    invoke-static {v0, v5, v7, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(FFFF)F

    #@146
    move-result v0

    #@147
    iput v0, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@149
    .line 213
    iget v0, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@14b
    iget v5, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@14d
    invoke-static {v0, v5, v7, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(FFFF)F

    #@150
    move-result v0

    #@151
    iput v0, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@153
    .line 215
    iget v0, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@155
    iget v5, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@157
    const/4 v7, 0x0

    #@158
    invoke-static {v0, v5, v7, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(FFFF)F

    #@15b
    move-result v0

    #@15c
    iput v0, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@15e
    .line 216
    iget v0, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@160
    iget v5, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@162
    invoke-static {v0, v5, v7, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(FFFF)F

    #@165
    move-result v0

    #@166
    iput v0, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@168
    .line 217
    iget v0, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@16a
    iget v5, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@16c
    invoke-static {v0, v5, v7, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(FFFF)F

    #@16f
    move-result v0

    #@170
    iput v0, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@172
    .line 219
    iget v0, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@174
    iget v5, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@176
    const/high16 v7, 0x3f800000    # 1.0f

    #@178
    invoke-static {v0, v5, v7, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(FFFF)F

    #@17b
    move-result v0

    #@17c
    iput v0, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@17e
    .line 220
    iget v0, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@180
    iget v5, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@182
    invoke-static {v0, v5, v7, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(FFFF)F

    #@185
    move-result v0

    #@186
    iput v0, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@188
    .line 222
    iget v0, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@18a
    iget v5, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@18c
    const/4 v7, 0x0

    #@18d
    invoke-static {v0, v5, v7, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(FFFF)F

    #@190
    move-result v0

    #@191
    iput v0, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@193
    .line 223
    iget v0, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@195
    iget v5, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@197
    invoke-static {v0, v5, v7, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(FFFF)F

    #@19a
    move-result v0

    #@19b
    iput v0, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@19d
    .line 224
    iget v0, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@19f
    iget v5, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@1a1
    invoke-static {v0, v5, v7, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(FFFF)F

    #@1a4
    move-result v0

    #@1a5
    iput v0, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@1a7
    const/high16 v0, 0x3f800000    # 1.0f

    #@1a9
    .line 226
    invoke-static {v1, v6, v0, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(FFFF)F

    #@1ac
    move-result v0

    #@1ad
    iput v0, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    #@1af
    .line 228
    iget-object v0, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@1b1
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@1b4
    move-result-object v0

    #@1b5
    .line 229
    iget-object v1, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@1b7
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    #@1ba
    .line 230
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1bd
    move-result-object v0

    #@1be
    :goto_1be
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1c1
    move-result v1

    #@1c2
    if-eqz v1, :cond_22d

    #@1c4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c7
    move-result-object v1

    #@1c8
    check-cast v1, Ljava/lang/String;

    #@1ca
    .line 231
    iget-object v5, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@1cc
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@1cf
    move-result v5

    #@1d0
    if-eqz v5, :cond_22b

    #@1d2
    .line 232
    iget-object v5, v3, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@1d4
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d7
    move-result-object v5

    #@1d8
    check-cast v5, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@1da
    .line 233
    iget-object v6, v4, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@1dc
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1df
    move-result-object v6

    #@1e0
    check-cast v6, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@1e2
    .line 234
    new-instance v7, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@1e4
    invoke-direct {v7, v5}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Landroidx/constraintlayout/core/motion/CustomVariable;)V

    #@1e7
    .line 235
    iget-object v9, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@1e9
    invoke-virtual {v9, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ec
    .line 236
    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    #@1ef
    move-result v1

    #@1f0
    const/4 v9, 0x1

    #@1f1
    if-ne v1, v9, :cond_208

    #@1f3
    .line 237
    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    #@1f6
    move-result v1

    #@1f7
    invoke-virtual {v6}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    #@1fa
    move-result v5

    #@1fb
    const/4 v6, 0x0

    #@1fc
    invoke-static {v1, v5, v6, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(FFFF)F

    #@1ff
    move-result v1

    #@200
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@203
    move-result-object v1

    #@204
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->setValue(Ljava/lang/Object;)V

    #@207
    goto :goto_22b

    #@208
    .line 239
    :cond_208
    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    #@20b
    move-result v1

    #@20c
    .line 240
    new-array v9, v1, [F

    #@20e
    .line 241
    new-array v10, v1, [F

    #@210
    .line 242
    invoke-virtual {v5, v9}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValuesToInterpolate([F)V

    #@213
    .line 243
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValuesToInterpolate([F)V

    #@216
    move/from16 v5, v16

    #@218
    :goto_218
    if-ge v5, v1, :cond_22b

    #@21a
    .line 245
    aget v6, v9, v5

    #@21c
    aget v11, v10, v5

    #@21e
    const/4 v12, 0x0

    #@21f
    invoke-static {v6, v11, v12, v8}, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolate(FFFF)F

    #@222
    move-result v6

    #@223
    aput v6, v9, v5

    #@225
    .line 246
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/core/motion/CustomVariable;->setValue([F)V

    #@228
    add-int/lit8 v5, v5, 0x1

    #@22a
    goto :goto_218

    #@22b
    :cond_22b
    :goto_22b
    const/4 v12, 0x0

    #@22c
    goto :goto_1be

    #@22d
    :cond_22d
    return-void
.end method

.method private serializeAnchor(Ljava/lang/StringBuilder;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .registers 5

    #@0
    .line 536
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_4c

    #@8
    .line 537
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a
    if-nez v1, :cond_d

    #@c
    goto :goto_4c

    #@d
    :cond_d
    const-string v1, "Anchor"

    #@f
    .line 540
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 541
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    #@15
    move-result-object p2

    #@16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    const-string p2, ": [\'"

    #@1b
    .line 542
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 543
    iget-object p2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@20
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@23
    move-result-object p2

    #@24
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@26
    if-nez p2, :cond_2a

    #@28
    const-string p2, "#PARENT"

    #@2a
    .line 544
    :cond_2a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    const-string p2, "\', \'"

    #@2f
    .line 545
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 546
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@34
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 547
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 548
    iget p2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    const-string p2, "\'],\n"

    #@49
    .line 549
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    :cond_4c
    :goto_4c
    return-void
.end method


# virtual methods
.method public addCustomColor(Ljava/lang/String;I)V
    .registers 4

    #@0
    const/16 v0, 0x386

    #@2
    .line 299
    invoke-virtual {p0, p1, v0, p2}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;II)V

    #@5
    return-void
.end method

.method public addCustomFloat(Ljava/lang/String;F)V
    .registers 4

    #@0
    const/16 v0, 0x385

    #@2
    .line 310
    invoke-virtual {p0, p1, v0, p2}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    #@5
    return-void
.end method

.method public centerX()F
    .registers 4

    #@0
    .line 269
    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@2
    int-to-float v1, v0

    #@3
    iget v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@5
    sub-int/2addr v2, v0

    #@6
    int-to-float v0, v2

    #@7
    const/high16 v2, 0x40000000    # 2.0f

    #@9
    div-float/2addr v0, v2

    #@a
    add-float/2addr v1, v0

    #@b
    return v1
.end method

.method public centerY()F
    .registers 4

    #@0
    .line 273
    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@2
    int-to-float v1, v0

    #@3
    iget v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@5
    sub-int/2addr v2, v0

    #@6
    int-to-float v0, v2

    #@7
    const/high16 v2, 0x40000000    # 2.0f

    #@9
    div-float/2addr v0, v2

    #@a
    add-float/2addr v1, v0

    #@b
    return v1
.end method

.method public getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;
    .registers 3

    #@0
    .line 353
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@8
    return-object p1
.end method

.method public getCustomAttributeNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 357
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCustomColor(Ljava/lang/String;)I
    .registers 3

    #@0
    .line 303
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_15

    #@8
    .line 304
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@10
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->getColorValue()I

    #@13
    move-result p1

    #@14
    return p1

    #@15
    :cond_15
    const/16 p1, -0x5578

    #@17
    return p1
.end method

.method public getCustomFloat(Ljava/lang/String;)F
    .registers 3

    #@0
    .line 314
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_15

    #@8
    .line 315
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@10
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->getFloatValue()F

    #@13
    move-result p1

    #@14
    return p1

    #@15
    :cond_15
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@17
    return p1
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    .line 424
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    if-nez v0, :cond_7

    #@4
    const-string v0, "unknown"

    #@6
    return-object v0

    #@7
    .line 427
    :cond_7
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@9
    return-object v0
.end method

.method public height()I
    .registers 3

    #@0
    .line 71
    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@2
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@4
    sub-int/2addr v0, v1

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isDefaultTransform()Z
    .registers 2

    #@0
    .line 113
    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_4a

    #@8
    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@a
    .line 114
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_4a

    #@10
    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@12
    .line 115
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_4a

    #@18
    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@1a
    .line 116
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_4a

    #@20
    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@22
    .line 117
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_4a

    #@28
    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@2a
    .line 118
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_4a

    #@30
    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@32
    .line 119
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_4a

    #@38
    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@3a
    .line 120
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_4a

    #@40
    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    #@42
    .line 121
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_4a

    #@48
    const/4 v0, 0x1

    #@49
    goto :goto_4b

    #@4a
    :cond_4a
    const/4 v0, 0x0

    #@4b
    :goto_4b
    return v0
.end method

.method logv(Ljava/lang/String;)V
    .registers 6

    #@0
    .line 593
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x1

    #@a
    aget-object v0, v0, v1

    #@c
    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, ".("

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, ":"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@24
    move-result v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string v2, ") "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    const-string v1, " "

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@4d
    move-result v2

    #@4e
    rem-int/lit16 v2, v2, 0x3e8

    #@50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    .line 596
    iget-object v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@5a
    if-eqz v2, :cond_7c

    #@5c
    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    const-string v2, "/"

    #@67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    iget-object v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@6d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@70
    move-result v2

    #@71
    rem-int/lit16 v2, v2, 0x3e8

    #@73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    goto :goto_8f

    #@7c
    .line 599
    :cond_7c
    new-instance v2, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    const-string v2, "/NULL"

    #@87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v0

    #@8f
    .line 602
    :goto_8f
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@91
    new-instance v3, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object p1

    #@a2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object p1

    #@a6
    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a9
    return-void
.end method

.method parseCustom(Landroidx/constraintlayout/core/parser/CLElement;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 431
    check-cast p1, Landroidx/constraintlayout/core/parser/CLObject;

    #@2
    .line 432
    invoke-virtual {p1}, Landroidx/constraintlayout/core/parser/CLObject;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_55

    #@9
    .line 434
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/parser/CLObject;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    #@c
    move-result-object v2

    #@d
    .line 435
    check-cast v2, Landroidx/constraintlayout/core/parser/CLKey;

    #@f
    .line 436
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@12
    .line 437
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    #@15
    move-result-object v3

    #@16
    .line 438
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    const-string v5, "#[0-9a-fA-F]+"

    #@1c
    .line 439
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_37

    #@22
    const/4 v3, 0x1

    #@23
    .line 440
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    const/16 v4, 0x10

    #@29
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@2c
    move-result v3

    #@2d
    .line 441
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    const/16 v4, 0x386

    #@33
    invoke-virtual {p0, v2, v4, v3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;II)V

    #@36
    goto :goto_52

    #@37
    .line 442
    :cond_37
    instance-of v5, v3, Landroidx/constraintlayout/core/parser/CLNumber;

    #@39
    if-eqz v5, :cond_49

    #@3b
    .line 443
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    const/16 v4, 0x385

    #@41
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@44
    move-result v3

    #@45
    invoke-virtual {p0, v2, v4, v3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    #@48
    goto :goto_52

    #@49
    .line 445
    :cond_49
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    const/16 v3, 0x387

    #@4f
    invoke-virtual {p0, v2, v3, v4}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V

    #@52
    :goto_52
    add-int/lit8 v1, v1, 0x1

    #@54
    goto :goto_7

    #@55
    :cond_55
    return-void
.end method

.method printCustomAttributes()V
    .registers 7

    #@0
    .line 574
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x1

    #@a
    aget-object v0, v0, v1

    #@c
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, ".("

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, ":"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@24
    move-result v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string v2, ") "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    const-string v1, " "

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@4d
    move-result v2

    #@4e
    rem-int/lit16 v2, v2, 0x3e8

    #@50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    .line 577
    iget-object v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@5a
    if-eqz v2, :cond_80

    #@5c
    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    const-string v2, "/"

    #@67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    iget-object v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@6d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@70
    move-result v2

    #@71
    rem-int/lit16 v2, v2, 0x3e8

    #@73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v0

    #@7f
    goto :goto_93

    #@80
    .line 580
    :cond_80
    new-instance v1, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    const-string v1, "/NULL "

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v0

    #@93
    .line 582
    :goto_93
    iget-object v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@95
    if-eqz v1, :cond_ce

    #@97
    .line 583
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@9a
    move-result-object v1

    #@9b
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9e
    move-result-object v1

    #@9f
    :goto_9f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a2
    move-result v2

    #@a3
    if-eqz v2, :cond_ce

    #@a5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a8
    move-result-object v2

    #@a9
    check-cast v2, Ljava/lang/String;

    #@ab
    .line 584
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ad
    new-instance v4, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v4

    #@b6
    iget-object v5, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@b8
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@bb
    move-result-object v2

    #@bc
    check-cast v2, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@be
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->toString()Ljava/lang/String;

    #@c1
    move-result-object v2

    #@c2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v2

    #@c6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v2

    #@ca
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@cd
    goto :goto_9f

    #@ce
    :cond_ce
    return-void
.end method

.method public serialize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 453
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/state/WidgetFrame;->serialize(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public serialize(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .registers 9

    #@0
    const-string v0, "{\n"

    #@2
    .line 465
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    const-string v0, "left"

    #@7
    .line 466
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@9
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    #@c
    const-string v0, "top"

    #@e
    .line 467
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@10
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    #@13
    const-string v0, "right"

    #@15
    .line 468
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@17
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    #@1a
    const-string v0, "bottom"

    #@1c
    .line 469
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@1e
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    #@21
    const-string v0, "pivotX"

    #@23
    .line 470
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@25
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@28
    const-string v0, "pivotY"

    #@2a
    .line 471
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@2c
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@2f
    const-string v0, "rotationX"

    #@31
    .line 472
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@33
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@36
    const-string v0, "rotationY"

    #@38
    .line 473
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@3a
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@3d
    const-string v0, "rotationZ"

    #@3f
    .line 474
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@41
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@44
    const-string v0, "translationX"

    #@46
    .line 475
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@48
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@4b
    const-string v0, "translationY"

    #@4d
    .line 476
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@4f
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@52
    const-string v0, "translationZ"

    #@54
    .line 477
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@56
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@59
    const-string v0, "scaleX"

    #@5b
    .line 478
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@5d
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@60
    const-string v0, "scaleY"

    #@62
    .line 479
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@64
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@67
    const-string v0, "alpha"

    #@69
    .line 480
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    #@6b
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@6e
    const-string v0, "visibility"

    #@70
    .line 481
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    #@72
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    #@75
    const-string v0, "interpolatedPos"

    #@77
    .line 482
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolatedPos:F

    #@79
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@7c
    .line 483
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@7e
    if-eqz v0, :cond_90

    #@80
    .line 484
    invoke-static {}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->values()[Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@83
    move-result-object v0

    #@84
    array-length v1, v0

    #@85
    const/4 v2, 0x0

    #@86
    :goto_86
    if-ge v2, v1, :cond_90

    #@88
    aget-object v3, v0, v2

    #@8a
    .line 485
    invoke-direct {p0, p1, v3}, Landroidx/constraintlayout/core/state/WidgetFrame;->serializeAnchor(Ljava/lang/StringBuilder;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@8d
    add-int/lit8 v2, v2, 0x1

    #@8f
    goto :goto_86

    #@90
    :cond_90
    const-string v0, "phone_orientation"

    #@92
    if-eqz p2, :cond_99

    #@94
    .line 489
    sget v1, Landroidx/constraintlayout/core/state/WidgetFrame;->phone_orientation:F

    #@96
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@99
    :cond_99
    if-eqz p2, :cond_a0

    #@9b
    .line 492
    sget p2, Landroidx/constraintlayout/core/state/WidgetFrame;->phone_orientation:F

    #@9d
    invoke-static {p1, v0, p2}, Landroidx/constraintlayout/core/state/WidgetFrame;->add(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    #@a0
    .line 495
    :cond_a0
    iget-object p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@a2
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    #@a5
    move-result p2

    #@a6
    const-string v0, "}\n"

    #@a8
    if-eqz p2, :cond_12a

    #@aa
    const-string p2, "custom : {\n"

    #@ac
    .line 496
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    .line 497
    iget-object p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@b1
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@b4
    move-result-object p2

    #@b5
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b8
    move-result-object p2

    #@b9
    :goto_b9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@bc
    move-result v1

    #@bd
    if-eqz v1, :cond_127

    #@bf
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c2
    move-result-object v1

    #@c3
    check-cast v1, Ljava/lang/String;

    #@c5
    .line 498
    iget-object v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@c7
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ca
    move-result-object v2

    #@cb
    check-cast v2, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@cd
    .line 499
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    const-string v1, ": "

    #@d2
    .line 500
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    .line 501
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->getType()I

    #@d8
    move-result v1

    #@d9
    const-string v3, ",\n"

    #@db
    const-string v4, "\',\n"

    #@dd
    const-string v5, "\'"

    #@df
    packed-switch v1, :pswitch_data_12e

    #@e2
    goto :goto_b9

    #@e3
    .line 522
    :pswitch_e3
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    .line 523
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->getBooleanValue()Z

    #@e9
    move-result v1

    #@ea
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ed
    .line 524
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    goto :goto_b9

    #@f1
    .line 517
    :pswitch_f1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    .line 518
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->getStringValue()Ljava/lang/String;

    #@f7
    move-result-object v1

    #@f8
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    .line 519
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    goto :goto_b9

    #@ff
    .line 512
    :pswitch_ff
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    .line 513
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->getIntegerValue()I

    #@105
    move-result v1

    #@106
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->colorString(I)Ljava/lang/String;

    #@109
    move-result-object v1

    #@10a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    .line 514
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    goto :goto_b9

    #@111
    .line 508
    :pswitch_111
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->getFloatValue()F

    #@114
    move-result v1

    #@115
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@118
    .line 509
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    goto :goto_b9

    #@11c
    .line 503
    :pswitch_11c
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->getIntegerValue()I

    #@11f
    move-result v1

    #@120
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@123
    .line 504
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    goto :goto_b9

    #@127
    .line 528
    :cond_127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    .line 531
    :cond_12a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    return-object p1

    #@12e
    :pswitch_data_12e
    .packed-switch 0x384
        :pswitch_11c
        :pswitch_111
        :pswitch_ff
        :pswitch_f1
        :pswitch_e3
        :pswitch_111
    .end packed-switch
.end method

.method public setCustomAttribute(Ljava/lang/String;IF)V
    .registers 6

    #@0
    .line 321
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_14

    #@8
    .line 322
    iget-object p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@a
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@10
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;->setFloatValue(F)V

    #@13
    goto :goto_1e

    #@14
    .line 324
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@16
    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@18
    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IF)V

    #@1b
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    :goto_1e
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;II)V
    .registers 6

    #@0
    .line 329
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_14

    #@8
    .line 330
    iget-object p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@a
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@10
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;->setIntValue(I)V

    #@13
    goto :goto_1e

    #@14
    .line 332
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@16
    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@18
    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;II)V

    #@1b
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    :goto_1e
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    #@0
    .line 345
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_14

    #@8
    .line 346
    iget-object p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@a
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@10
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;->setStringValue(Ljava/lang/String;)V

    #@13
    goto :goto_1e

    #@14
    .line 348
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@16
    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@18
    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1b
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    :goto_1e
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;IZ)V
    .registers 6

    #@0
    .line 337
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_14

    #@8
    .line 338
    iget-object p2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@a
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@10
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;->setBooleanValue(Z)V

    #@13
    goto :goto_1e

    #@14
    .line 340
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@16
    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@18
    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IZ)V

    #@1b
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    :goto_1e
    return-void
.end method

.method public setCustomValue(Landroidx/constraintlayout/core/motion/CustomAttribute;[F)V
    .registers 3

    #@0
    return-void
.end method

.method public setValue(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x1

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, -0x1

    #@a
    sparse-switch v0, :sswitch_data_174

    #@d
    goto/16 :goto_f2

    #@f
    :sswitch_f
    const-string v0, "interpolatedPos"

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result p1

    #@15
    if-nez p1, :cond_19

    #@17
    goto/16 :goto_f2

    #@19
    :cond_19
    const/16 v3, 0x11

    #@1b
    goto/16 :goto_f2

    #@1d
    :sswitch_1d
    const-string v0, "right"

    #@1f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result p1

    #@23
    if-nez p1, :cond_27

    #@25
    goto/16 :goto_f2

    #@27
    :cond_27
    const/16 v3, 0x10

    #@29
    goto/16 :goto_f2

    #@2b
    :sswitch_2b
    const-string v0, "alpha"

    #@2d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result p1

    #@31
    if-nez p1, :cond_35

    #@33
    goto/16 :goto_f2

    #@35
    :cond_35
    const/16 v3, 0xf

    #@37
    goto/16 :goto_f2

    #@39
    :sswitch_39
    const-string v0, "left"

    #@3b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result p1

    #@3f
    if-nez p1, :cond_43

    #@41
    goto/16 :goto_f2

    #@43
    :cond_43
    const/16 v3, 0xe

    #@45
    goto/16 :goto_f2

    #@47
    :sswitch_47
    const-string v0, "top"

    #@49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result p1

    #@4d
    if-nez p1, :cond_51

    #@4f
    goto/16 :goto_f2

    #@51
    :cond_51
    const/16 v3, 0xd

    #@53
    goto/16 :goto_f2

    #@55
    :sswitch_55
    const-string v0, "scaleY"

    #@57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result p1

    #@5b
    if-nez p1, :cond_5f

    #@5d
    goto/16 :goto_f2

    #@5f
    :cond_5f
    const/16 v3, 0xc

    #@61
    goto/16 :goto_f2

    #@63
    :sswitch_63
    const-string v0, "scaleX"

    #@65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result p1

    #@69
    if-nez p1, :cond_6d

    #@6b
    goto/16 :goto_f2

    #@6d
    :cond_6d
    const/16 v3, 0xb

    #@6f
    goto/16 :goto_f2

    #@71
    :sswitch_71
    const-string v0, "pivotY"

    #@73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result p1

    #@77
    if-nez p1, :cond_7b

    #@79
    goto/16 :goto_f2

    #@7b
    :cond_7b
    const/16 v3, 0xa

    #@7d
    goto/16 :goto_f2

    #@7f
    :sswitch_7f
    const-string v0, "pivotX"

    #@81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result p1

    #@85
    if-nez p1, :cond_89

    #@87
    goto/16 :goto_f2

    #@89
    :cond_89
    const/16 v3, 0x9

    #@8b
    goto/16 :goto_f2

    #@8d
    :sswitch_8d
    const-string v0, "translationZ"

    #@8f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result p1

    #@93
    if-nez p1, :cond_97

    #@95
    goto/16 :goto_f2

    #@97
    :cond_97
    const/16 v3, 0x8

    #@99
    goto/16 :goto_f2

    #@9b
    :sswitch_9b
    const-string v0, "translationY"

    #@9d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result p1

    #@a1
    if-nez p1, :cond_a4

    #@a3
    goto :goto_f2

    #@a4
    :cond_a4
    const/4 v3, 0x7

    #@a5
    goto :goto_f2

    #@a6
    :sswitch_a6
    const-string v0, "translationX"

    #@a8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ab
    move-result p1

    #@ac
    if-nez p1, :cond_af

    #@ae
    goto :goto_f2

    #@af
    :cond_af
    const/4 v3, 0x6

    #@b0
    goto :goto_f2

    #@b1
    :sswitch_b1
    const-string v0, "rotationZ"

    #@b3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b6
    move-result p1

    #@b7
    if-nez p1, :cond_ba

    #@b9
    goto :goto_f2

    #@ba
    :cond_ba
    const/4 v3, 0x5

    #@bb
    goto :goto_f2

    #@bc
    :sswitch_bc
    const-string v0, "rotationY"

    #@be
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result p1

    #@c2
    if-nez p1, :cond_c5

    #@c4
    goto :goto_f2

    #@c5
    :cond_c5
    const/4 v3, 0x4

    #@c6
    goto :goto_f2

    #@c7
    :sswitch_c7
    const-string v0, "rotationX"

    #@c9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result p1

    #@cd
    if-nez p1, :cond_d0

    #@cf
    goto :goto_f2

    #@d0
    :cond_d0
    const/4 v3, 0x3

    #@d1
    goto :goto_f2

    #@d2
    :sswitch_d2
    const-string v0, "custom"

    #@d4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d7
    move-result p1

    #@d8
    if-nez p1, :cond_db

    #@da
    goto :goto_f2

    #@db
    :cond_db
    const/4 v3, 0x2

    #@dc
    goto :goto_f2

    #@dd
    :sswitch_dd
    const-string v0, "bottom"

    #@df
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e2
    move-result p1

    #@e3
    if-nez p1, :cond_e6

    #@e5
    goto :goto_f2

    #@e6
    :cond_e6
    move v3, v1

    #@e7
    goto :goto_f2

    #@e8
    :sswitch_e8
    const-string v0, "phone_orientation"

    #@ea
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ed
    move-result p1

    #@ee
    if-nez p1, :cond_f1

    #@f0
    goto :goto_f2

    #@f1
    :cond_f1
    move v3, v2

    #@f2
    :goto_f2
    packed-switch v3, :pswitch_data_1be

    #@f5
    return v2

    #@f6
    .line 396
    :pswitch_f6
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@f9
    move-result p1

    #@fa
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolatedPos:F

    #@fc
    goto/16 :goto_173

    #@fe
    .line 408
    :pswitch_fe
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    #@101
    move-result p1

    #@102
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@104
    goto/16 :goto_173

    #@106
    .line 393
    :pswitch_106
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@109
    move-result p1

    #@10a
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    #@10c
    goto/16 :goto_173

    #@10e
    .line 405
    :pswitch_10e
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    #@111
    move-result p1

    #@112
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@114
    goto :goto_173

    #@115
    .line 402
    :pswitch_115
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    #@118
    move-result p1

    #@119
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@11b
    goto :goto_173

    #@11c
    .line 390
    :pswitch_11c
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@11f
    move-result p1

    #@120
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@122
    goto :goto_173

    #@123
    .line 387
    :pswitch_123
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@126
    move-result p1

    #@127
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@129
    goto :goto_173

    #@12a
    .line 366
    :pswitch_12a
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@12d
    move-result p1

    #@12e
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@130
    goto :goto_173

    #@131
    .line 363
    :pswitch_131
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@134
    move-result p1

    #@135
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@137
    goto :goto_173

    #@138
    .line 384
    :pswitch_138
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@13b
    move-result p1

    #@13c
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@13e
    goto :goto_173

    #@13f
    .line 381
    :pswitch_13f
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@142
    move-result p1

    #@143
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@145
    goto :goto_173

    #@146
    .line 378
    :pswitch_146
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@149
    move-result p1

    #@14a
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@14c
    goto :goto_173

    #@14d
    .line 375
    :pswitch_14d
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@150
    move-result p1

    #@151
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@153
    goto :goto_173

    #@154
    .line 372
    :pswitch_154
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@157
    move-result p1

    #@158
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@15a
    goto :goto_173

    #@15b
    .line 369
    :pswitch_15b
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@15e
    move-result p1

    #@15f
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@161
    goto :goto_173

    #@162
    .line 414
    :pswitch_162
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/state/WidgetFrame;->parseCustom(Landroidx/constraintlayout/core/parser/CLElement;)V

    #@165
    goto :goto_173

    #@166
    .line 411
    :pswitch_166
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    #@169
    move-result p1

    #@16a
    iput p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@16c
    goto :goto_173

    #@16d
    .line 399
    :pswitch_16d
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@170
    move-result p1

    #@171
    sput p1, Landroidx/constraintlayout/core/state/WidgetFrame;->phone_orientation:F

    #@173
    :goto_173
    return v1

    #@174
    :sswitch_data_174
    .sparse-switch
        -0x702c2381 -> :sswitch_e8
        -0x527265d5 -> :sswitch_dd
        -0x5069748f -> :sswitch_d2
        -0x4a771f66 -> :sswitch_c7
        -0x4a771f65 -> :sswitch_bc
        -0x4a771f64 -> :sswitch_b1
        -0x490b9c39 -> :sswitch_a6
        -0x490b9c38 -> :sswitch_9b
        -0x490b9c37 -> :sswitch_8d
        -0x3ae243aa -> :sswitch_7f
        -0x3ae243a9 -> :sswitch_71
        -0x3621dfb2 -> :sswitch_63
        -0x3621dfb1 -> :sswitch_55
        0x1c155 -> :sswitch_47
        0x32a007 -> :sswitch_39
        0x589b15e -> :sswitch_2b
        0x677c21c -> :sswitch_1d
        0x26511fd1 -> :sswitch_f
    .end sparse-switch

    #@1be
    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_16d
        :pswitch_166
        :pswitch_162
        :pswitch_15b
        :pswitch_154
        :pswitch_14d
        :pswitch_146
        :pswitch_13f
        :pswitch_138
        :pswitch_131
        :pswitch_12a
        :pswitch_123
        :pswitch_11c
        :pswitch_115
        :pswitch_10e
        :pswitch_106
        :pswitch_fe
        :pswitch_f6
    .end packed-switch
.end method

.method public update()Landroidx/constraintlayout/core/state/WidgetFrame;
    .registers 2

    #@0
    .line 277
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    if-eqz v0, :cond_29

    #@4
    .line 278
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getLeft()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@a
    .line 279
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getTop()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    #@12
    .line 280
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@14
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@1a
    .line 281
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    #@22
    .line 282
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@24
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@26
    .line 283
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/WidgetFrame;->updateAttributes(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    #@29
    :cond_29
    return-object p0
.end method

.method public update(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroidx/constraintlayout/core/state/WidgetFrame;
    .registers 2

    #@0
    if-nez p1, :cond_3

    #@2
    return-object p0

    #@3
    .line 293
    :cond_3
    iput-object p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@5
    .line 294
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/WidgetFrame;->update()Landroidx/constraintlayout/core/state/WidgetFrame;

    #@8
    return-object p0
.end method

.method public updateAttributes(Landroidx/constraintlayout/core/state/WidgetFrame;)V
    .registers 5

    #@0
    .line 91
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@2
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    #@4
    .line 92
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@6
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    #@8
    .line 93
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@a
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    #@c
    .line 94
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@e
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    #@10
    .line 95
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@12
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    #@14
    .line 96
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@16
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    #@18
    .line 97
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@1a
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    #@1c
    .line 98
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@1e
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    #@20
    .line 99
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@22
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    #@24
    .line 100
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@26
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    #@28
    .line 101
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    #@2a
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    #@2c
    .line 102
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    #@2e
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    #@30
    .line 104
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@32
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@35
    if-eqz p1, :cond_5b

    #@37
    .line 106
    iget-object p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@39
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@3c
    move-result-object p1

    #@3d
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object p1

    #@41
    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_5b

    #@47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@4d
    .line 107
    iget-object v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    #@4f
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->getName()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->copy()Landroidx/constraintlayout/core/motion/CustomVariable;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    goto :goto_41

    #@5b
    :cond_5b
    return-void
.end method

.method public width()I
    .registers 3

    #@0
    .line 67
    iget v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    #@2
    iget v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    #@4
    sub-int/2addr v0, v1

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v0

    #@a
    return v0
.end method

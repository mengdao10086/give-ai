.class public Landroidx/transition/SidePropagation;
.super Landroidx/transition/VisibilityPropagation;
.source "SidePropagation.java"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 34
    invoke-direct {p0}, Landroidx/transition/VisibilityPropagation;-><init>()V

    #@3
    const/high16 v0, 0x40400000    # 3.0f

    #@5
    .line 36
    iput v0, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    #@7
    const/16 v0, 0x50

    #@9
    .line 37
    iput v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    #@b
    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .registers 16

    #@0
    .line 125
    iget v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    #@2
    const v1, 0x800003

    #@5
    const/4 v2, 0x5

    #@6
    const/4 v3, 0x3

    #@7
    const/4 v4, 0x0

    #@8
    const/4 v5, 0x1

    #@9
    if-ne v0, v1, :cond_19

    #@b
    .line 126
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@e
    move-result p1

    #@f
    if-ne p1, v5, :cond_12

    #@11
    goto :goto_13

    #@12
    :cond_12
    move v5, v4

    #@13
    :goto_13
    if-eqz v5, :cond_17

    #@15
    :cond_15
    move v0, v2

    #@16
    goto :goto_29

    #@17
    :cond_17
    :goto_17
    move v0, v3

    #@18
    goto :goto_29

    #@19
    :cond_19
    const v1, 0x800005

    #@1c
    if-ne v0, v1, :cond_29

    #@1e
    .line 130
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@21
    move-result p1

    #@22
    if-ne p1, v5, :cond_25

    #@24
    goto :goto_26

    #@25
    :cond_25
    move v5, v4

    #@26
    :goto_26
    if-eqz v5, :cond_15

    #@28
    goto :goto_17

    #@29
    :cond_29
    :goto_29
    if-eq v0, v3, :cond_51

    #@2b
    if-eq v0, v2, :cond_48

    #@2d
    const/16 p1, 0x30

    #@2f
    if-eq v0, p1, :cond_3f

    #@31
    const/16 p1, 0x50

    #@33
    if-eq v0, p1, :cond_36

    #@35
    goto :goto_59

    #@36
    :cond_36
    sub-int/2addr p3, p7

    #@37
    sub-int/2addr p4, p2

    #@38
    .line 148
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    #@3b
    move-result p1

    #@3c
    add-int v4, p3, p1

    #@3e
    goto :goto_59

    #@3f
    :cond_3f
    sub-int/2addr p9, p3

    #@40
    sub-int/2addr p4, p2

    #@41
    .line 142
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    #@44
    move-result p1

    #@45
    add-int v4, p9, p1

    #@47
    goto :goto_59

    #@48
    :cond_48
    sub-int/2addr p2, p6

    #@49
    sub-int/2addr p5, p3

    #@4a
    .line 145
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    #@4d
    move-result p1

    #@4e
    add-int v4, p2, p1

    #@50
    goto :goto_59

    #@51
    :cond_51
    sub-int/2addr p8, p2

    #@52
    sub-int/2addr p5, p3

    #@53
    .line 139
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    #@56
    move-result p1

    #@57
    add-int v4, p8, p1

    #@59
    :goto_59
    return v4
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .registers 4

    #@0
    .line 155
    iget v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_17

    #@5
    const/4 v1, 0x5

    #@6
    if-eq v0, v1, :cond_17

    #@8
    const v1, 0x800003

    #@b
    if-eq v0, v1, :cond_17

    #@d
    const v1, 0x800005

    #@10
    if-eq v0, v1, :cond_17

    #@12
    .line 162
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    #@15
    move-result p1

    #@16
    return p1

    #@17
    .line 160
    :cond_17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    #@1a
    move-result p1

    #@1b
    return p1
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .registers 21

    #@0
    move-object/from16 v10, p0

    #@2
    move-object/from16 v0, p3

    #@4
    const-wide/16 v11, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    if-nez p4, :cond_b

    #@a
    return-wide v11

    #@b
    .line 80
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x1

    #@10
    if-eqz p4, :cond_1d

    #@12
    .line 82
    invoke-virtual {v10, v0}, Landroidx/transition/SidePropagation;->getViewVisibility(Landroidx/transition/TransitionValues;)I

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_19

    #@18
    goto :goto_1d

    #@19
    :cond_19
    move-object/from16 v0, p4

    #@1b
    move v13, v2

    #@1c
    goto :goto_1f

    #@1d
    :cond_1d
    :goto_1d
    const/4 v3, -0x1

    #@1e
    move v13, v3

    #@1f
    .line 89
    :goto_1f
    invoke-virtual {v10, v0}, Landroidx/transition/SidePropagation;->getViewX(Landroidx/transition/TransitionValues;)I

    #@22
    move-result v3

    #@23
    .line 90
    invoke-virtual {v10, v0}, Landroidx/transition/SidePropagation;->getViewY(Landroidx/transition/TransitionValues;)I

    #@26
    move-result v4

    #@27
    const/4 v0, 0x2

    #@28
    new-array v5, v0, [I

    #@2a
    move-object/from16 v14, p1

    #@2c
    .line 93
    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@2f
    const/4 v6, 0x0

    #@30
    aget v6, v5, v6

    #@32
    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    #@35
    move-result v7

    #@36
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    #@39
    move-result v7

    #@3a
    add-int/2addr v6, v7

    #@3b
    aget v2, v5, v2

    #@3d
    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    #@40
    move-result v5

    #@41
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@44
    move-result v5

    #@45
    add-int v7, v2, v5

    #@47
    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    #@4a
    move-result v2

    #@4b
    add-int v8, v6, v2

    #@4d
    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    #@50
    move-result v2

    #@51
    add-int v9, v7, v2

    #@53
    if-eqz v1, :cond_60

    #@55
    .line 102
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    #@58
    move-result v0

    #@59
    .line 103
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    #@5c
    move-result v1

    #@5d
    move v5, v0

    #@5e
    move v15, v1

    #@5f
    goto :goto_68

    #@60
    :cond_60
    add-int v1, v6, v8

    #@62
    .line 105
    div-int/2addr v1, v0

    #@63
    add-int v2, v7, v9

    #@65
    .line 106
    div-int/2addr v2, v0

    #@66
    move v5, v1

    #@67
    move v15, v2

    #@68
    :goto_68
    move-object/from16 v0, p0

    #@6a
    move-object/from16 v1, p1

    #@6c
    move v2, v3

    #@6d
    move v3, v4

    #@6e
    move v4, v5

    #@6f
    move v5, v15

    #@70
    .line 109
    invoke-direct/range {v0 .. v9}, Landroidx/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    #@73
    move-result v0

    #@74
    int-to-float v0, v0

    #@75
    .line 111
    invoke-direct/range {p0 .. p1}, Landroidx/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    #@78
    move-result v1

    #@79
    int-to-float v1, v1

    #@7a
    div-float/2addr v0, v1

    #@7b
    .line 114
    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getDuration()J

    #@7e
    move-result-wide v1

    #@7f
    cmp-long v3, v1, v11

    #@81
    if-gez v3, :cond_85

    #@83
    const-wide/16 v1, 0x12c

    #@85
    :cond_85
    int-to-long v3, v13

    #@86
    mul-long/2addr v1, v3

    #@87
    long-to-float v1, v1

    #@88
    .line 119
    iget v2, v10, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    #@8a
    div-float/2addr v1, v2

    #@8b
    mul-float/2addr v1, v0

    #@8c
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@8f
    move-result v0

    #@90
    int-to-long v0, v0

    #@91
    return-wide v0
.end method

.method public setPropagationSpeed(F)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p1, v0

    #@3
    if-eqz v0, :cond_8

    #@5
    .line 70
    iput p1, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    #@7
    return-void

    #@8
    .line 68
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string v0, "propagationSpeed may not be 0"

    #@c
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw p1
.end method

.method public setSide(I)V
    .registers 2

    #@0
    .line 51
    iput p1, p0, Landroidx/transition/SidePropagation;->mSide:I

    #@2
    return-void
.end method

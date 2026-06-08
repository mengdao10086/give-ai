.class public Landroidx/constraintlayout/helper/widget/CircularFlow;
.super Landroidx/constraintlayout/widget/VirtualLayout;
.source "CircularFlow.java"


# static fields
.field private static DEFAULT_ANGLE:F = 0.0f

.field private static DEFAULT_RADIUS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CircularFlow"


# instance fields
.field private mAngles:[F

.field mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCountAngle:I

.field private mCountRadius:I

.field private mRadius:[I

.field private mReferenceAngles:Ljava/lang/String;

.field private mReferenceDefaultAngle:Ljava/lang/Float;

.field private mReferenceDefaultRadius:Ljava/lang/Integer;

.field private mReferenceRadius:Ljava/lang/String;

.field mViewCenter:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

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
    .line 111
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
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
    .line 115
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
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
    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    return-void
.end method

.method private addAngle(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angleString"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_34

    #@2
    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_34

    #@9
    .line 431
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->myContext:Landroid/content/Context;

    #@b
    if-nez v0, :cond_e

    #@d
    return-void

    #@e
    .line 434
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@10
    if-nez v0, :cond_13

    #@12
    return-void

    #@13
    .line 438
    :cond_13
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    array-length v2, v0

    #@18
    if-le v1, v2, :cond_23

    #@1a
    .line 439
    array-length v1, v0

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@23
    .line 441
    :cond_23
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@25
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@27
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2a
    move-result p1

    #@2b
    int-to-float p1, p1

    #@2c
    aput p1, v0, v1

    #@2e
    .line 442
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@30
    add-int/lit8 p1, p1, 0x1

    #@32
    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@34
    :cond_34
    :goto_34
    return-void
.end method

.method private addRadius(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radiusString"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_42

    #@2
    .line 449
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_42

    #@9
    .line 452
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->myContext:Landroid/content/Context;

    #@b
    if-nez v0, :cond_e

    #@d
    return-void

    #@e
    .line 455
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@10
    if-nez v0, :cond_13

    #@12
    return-void

    #@13
    .line 459
    :cond_13
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    array-length v2, v0

    #@18
    if-le v1, v2, :cond_23

    #@1a
    .line 460
    array-length v1, v0

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@23
    .line 463
    :cond_23
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@25
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@27
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2a
    move-result p1

    #@2b
    int-to-float p1, p1

    #@2c
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->myContext:Landroid/content/Context;

    #@2e
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@35
    move-result-object v2

    #@36
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    #@38
    mul-float/2addr p1, v2

    #@39
    float-to-int p1, p1

    #@3a
    aput p1, v0, v1

    #@3c
    .line 464
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@3e
    add-int/lit8 p1, p1, 0x1

    #@40
    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@42
    :cond_42
    :goto_42
    return-void
.end method

.method private anchorReferences()V
    .registers 10

    #@0
    .line 182
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@6
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@8
    const/4 v0, 0x0

    #@9
    .line 183
    :goto_9
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCount:I

    #@b
    if-ge v0, v1, :cond_da

    #@d
    .line 184
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@f
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mIds:[I

    #@11
    aget v2, v2, v0

    #@13
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    #@16
    move-result-object v1

    #@17
    if-nez v1, :cond_1b

    #@19
    goto/16 :goto_d6

    #@1b
    .line 188
    :cond_1b
    sget v2, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_RADIUS:I

    #@1d
    .line 189
    sget v3, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_ANGLE:F

    #@1f
    .line 191
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@21
    const-string v5, "CircularFlow"

    #@23
    const/4 v6, 0x1

    #@24
    if-eqz v4, :cond_2c

    #@26
    array-length v7, v4

    #@27
    if-ge v0, v7, :cond_2c

    #@29
    .line 192
    aget v2, v4, v0

    #@2b
    goto :goto_72

    #@2c
    .line 193
    :cond_2c
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    #@2e
    if-eqz v4, :cond_50

    #@30
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@33
    move-result v4

    #@34
    const/4 v7, -0x1

    #@35
    if-eq v4, v7, :cond_50

    #@37
    .line 194
    iget v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@39
    add-int/2addr v4, v6

    #@3a
    iput v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@3c
    .line 195
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@3e
    if-nez v4, :cond_44

    #@40
    new-array v4, v6, [I

    #@42
    .line 196
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@44
    .line 198
    :cond_44
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    #@47
    move-result-object v4

    #@48
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@4a
    .line 199
    iget v7, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@4c
    sub-int/2addr v7, v6

    #@4d
    aput v2, v4, v7

    #@4f
    goto :goto_72

    #@50
    .line 201
    :cond_50
    new-instance v4, Ljava/lang/StringBuilder;

    #@52
    const-string v7, "Added radius to view with id: "

    #@54
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@57
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mMap:Ljava/util/HashMap;

    #@59
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    #@5c
    move-result v8

    #@5d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v8

    #@61
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v7

    #@65
    check-cast v7, Ljava/lang/String;

    #@67
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 204
    :goto_72
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@74
    if-eqz v4, :cond_7c

    #@76
    array-length v7, v4

    #@77
    if-ge v0, v7, :cond_7c

    #@79
    .line 205
    aget v3, v4, v0

    #@7b
    goto :goto_c5

    #@7c
    .line 206
    :cond_7c
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    #@7e
    if-eqz v4, :cond_a3

    #@80
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    #@83
    move-result v4

    #@84
    const/high16 v7, -0x40800000    # -1.0f

    #@86
    cmpl-float v4, v4, v7

    #@88
    if-eqz v4, :cond_a3

    #@8a
    .line 207
    iget v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@8c
    add-int/2addr v4, v6

    #@8d
    iput v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@8f
    .line 208
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@91
    if-nez v4, :cond_97

    #@93
    new-array v4, v6, [F

    #@95
    .line 209
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@97
    .line 211
    :cond_97
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    #@9a
    move-result-object v4

    #@9b
    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@9d
    .line 212
    iget v5, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@9f
    sub-int/2addr v5, v6

    #@a0
    aput v3, v4, v5

    #@a2
    goto :goto_c5

    #@a3
    .line 214
    :cond_a3
    new-instance v4, Ljava/lang/StringBuilder;

    #@a5
    const-string v6, "Added angle to view with id: "

    #@a7
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@aa
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mMap:Ljava/util/HashMap;

    #@ac
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    #@af
    move-result v7

    #@b0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b3
    move-result-object v7

    #@b4
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    move-result-object v6

    #@b8
    check-cast v6, Ljava/lang/String;

    #@ba
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v4

    #@be
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v4

    #@c2
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c5
    .line 216
    :goto_c5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c8
    move-result-object v4

    #@c9
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@cb
    .line 217
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    #@cd
    .line 218
    iget v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mViewCenter:I

    #@cf
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    #@d1
    .line 219
    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    #@d3
    .line 220
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@d6
    :goto_d6
    add-int/lit8 v0, v0, 0x1

    #@d8
    goto/16 :goto_9

    #@da
    .line 222
    :cond_da
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->applyLayoutFeatures()V

    #@dd
    return-void
.end method

.method private removeAngle([FI)[F
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "angles",
            "index"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_d

    #@2
    if-ltz p2, :cond_d

    #@4
    .line 362
    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@6
    if-lt p2, v0, :cond_9

    #@8
    goto :goto_d

    #@9
    .line 368
    :cond_9
    invoke-static {p1, p2}, Landroidx/constraintlayout/helper/widget/CircularFlow;->removeElementFromArray([FI)[F

    #@c
    move-result-object p1

    #@d
    :cond_d
    :goto_d
    return-object p1
.end method

.method public static removeElementFromArray([FI)[F
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "index"
        }
    .end annotation

    #@0
    .line 480
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, -0x1

    #@3
    new-array v0, v0, [F

    #@5
    const/4 v1, 0x0

    #@6
    move v2, v1

    #@7
    .line 482
    :goto_7
    array-length v3, p0

    #@8
    if-ge v1, v3, :cond_17

    #@a
    if-ne v1, p1, :cond_d

    #@c
    goto :goto_14

    #@d
    :cond_d
    add-int/lit8 v3, v2, 0x1

    #@f
    .line 486
    aget v4, p0, v1

    #@11
    aput v4, v0, v2

    #@13
    move v2, v3

    #@14
    :goto_14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_7

    #@17
    :cond_17
    return-object v0
.end method

.method public static removeElementFromArray([II)[I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "index"
        }
    .end annotation

    #@0
    .line 468
    array-length v0, p0

    #@1
    add-int/lit8 v0, v0, -0x1

    #@3
    new-array v0, v0, [I

    #@5
    const/4 v1, 0x0

    #@6
    move v2, v1

    #@7
    .line 470
    :goto_7
    array-length v3, p0

    #@8
    if-ge v1, v3, :cond_17

    #@a
    if-ne v1, p1, :cond_d

    #@c
    goto :goto_14

    #@d
    :cond_d
    add-int/lit8 v3, v2, 0x1

    #@f
    .line 474
    aget v4, p0, v1

    #@11
    aput v4, v0, v2

    #@13
    move v2, v3

    #@14
    :goto_14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_7

    #@17
    :cond_17
    return-object v0
.end method

.method private removeRadius([II)[I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "radius",
            "index"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_d

    #@2
    if-ltz p2, :cond_d

    #@4
    .line 375
    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@6
    if-lt p2, v0, :cond_9

    #@8
    goto :goto_d

    #@9
    .line 381
    :cond_9
    invoke-static {p1, p2}, Landroidx/constraintlayout/helper/widget/CircularFlow;->removeElementFromArray([II)[I

    #@c
    move-result-object p1

    #@d
    :cond_d
    :goto_d
    return-object p1
.end method

.method private setAngles(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idList"
        }
    .end annotation

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    const/4 v0, 0x0

    #@4
    .line 392
    iput v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@6
    :goto_6
    const/16 v1, 0x2c

    #@8
    .line 394
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    #@b
    move-result v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1b

    #@f
    .line 396
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addAngle(Ljava/lang/String;)V

    #@1a
    return-void

    #@1b
    .line 399
    :cond_1b
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addAngle(Ljava/lang/String;)V

    #@26
    add-int/lit8 v0, v1, 0x1

    #@28
    goto :goto_6
.end method

.method private setRadius(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idList"
        }
    .end annotation

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    const/4 v0, 0x0

    #@4
    .line 412
    iput v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@6
    :goto_6
    const/16 v1, 0x2c

    #@8
    .line 414
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    #@b
    move-result v1

    #@c
    const/4 v2, -0x1

    #@d
    if-ne v1, v2, :cond_1b

    #@f
    .line 416
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addRadius(Ljava/lang/String;)V

    #@1a
    return-void

    #@1b
    .line 419
    :cond_1b
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addRadius(Ljava/lang/String;)V

    #@26
    add-int/lit8 v0, v1, 0x1

    #@28
    goto :goto_6
.end method


# virtual methods
.method public addViewToCircularFlow(Landroid/view/View;IF)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "radius",
            "angle"
        }
    .end annotation

    #@0
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->containsId(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    return-void

    #@b
    .line 238
    :cond_b
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addView(Landroid/view/View;)V

    #@e
    .line 239
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@10
    add-int/lit8 p1, p1, 0x1

    #@12
    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@14
    .line 240
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    #@17
    move-result-object p1

    #@18
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@1a
    .line 241
    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@1c
    add-int/lit8 v0, v0, -0x1

    #@1e
    aput p3, p1, v0

    #@20
    .line 242
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@22
    add-int/lit8 p1, p1, 0x1

    #@24
    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@26
    .line 243
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    #@29
    move-result-object p1

    #@2a
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@2c
    .line 244
    iget p3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@2e
    add-int/lit8 p3, p3, -0x1

    #@30
    int-to-float p2, p2

    #@31
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->myContext:Landroid/content/Context;

    #@33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3a
    move-result-object v0

    #@3b
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@3d
    mul-float/2addr p2, v0

    #@3e
    float-to-int p2, p2

    #@3f
    aput p2, p1, p3

    #@41
    .line 245
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    #@44
    return-void
.end method

.method public getAngles()[F
    .registers 3

    #@0
    .line 128
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@2
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getRadius()[I
    .registers 3

    #@0
    .line 123
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@2
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    #@0
    .line 134
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->init(Landroid/util/AttributeSet;)V

    #@3
    if-eqz p1, :cond_77

    #@5
    .line 136
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    #@b
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@e
    move-result-object p1

    #@f
    .line 137
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@12
    move-result v0

    #@13
    const/4 v1, 0x0

    #@14
    move v2, v1

    #@15
    :goto_15
    if-ge v2, v0, :cond_74

    #@17
    .line 140
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@1a
    move-result v3

    #@1b
    .line 141
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_viewCenter:I

    #@1d
    if-ne v3, v4, :cond_26

    #@1f
    .line 142
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@22
    move-result v3

    #@23
    iput v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mViewCenter:I

    #@25
    goto :goto_71

    #@26
    .line 143
    :cond_26
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_angles:I

    #@28
    if-ne v3, v4, :cond_34

    #@2a
    .line 144
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceAngles:Ljava/lang/String;

    #@30
    .line 145
    invoke-direct {p0, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setAngles(Ljava/lang/String;)V

    #@33
    goto :goto_71

    #@34
    .line 146
    :cond_34
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_radiusInDP:I

    #@36
    if-ne v3, v4, :cond_42

    #@38
    .line 147
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceRadius:Ljava/lang/String;

    #@3e
    .line 148
    invoke-direct {p0, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setRadius(Ljava/lang/String;)V

    #@41
    goto :goto_71

    #@42
    .line 149
    :cond_42
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_defaultAngle:I

    #@44
    if-ne v3, v4, :cond_5a

    #@46
    .line 150
    sget v4, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_ANGLE:F

    #@48
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4b
    move-result v3

    #@4c
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@4f
    move-result-object v3

    #@50
    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    #@52
    .line 151
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    #@55
    move-result v3

    #@56
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultAngle(F)V

    #@59
    goto :goto_71

    #@5a
    .line 152
    :cond_5a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_defaultRadius:I

    #@5c
    if-ne v3, v4, :cond_71

    #@5e
    .line 153
    sget v4, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_RADIUS:I

    #@60
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@63
    move-result v3

    #@64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v3

    #@68
    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    #@6a
    .line 154
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@6d
    move-result v3

    #@6e
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultRadius(I)V

    #@71
    :cond_71
    :goto_71
    add-int/lit8 v2, v2, 0x1

    #@73
    goto :goto_15

    #@74
    .line 157
    :cond_74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@77
    :cond_77
    return-void
.end method

.method public isUpdatable(Landroid/view/View;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->containsId(I)Z

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    if-nez v0, :cond_c

    #@b
    return v1

    #@c
    .line 495
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@f
    move-result p1

    #@10
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->indexFromId(I)I

    #@13
    move-result p1

    #@14
    const/4 v0, -0x1

    #@15
    if-eq p1, v0, :cond_18

    #@17
    const/4 v1, 0x1

    #@18
    :cond_18
    return v1
.end method

.method public onAttachedToWindow()V
    .registers 4

    #@0
    .line 163
    invoke-super {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->onAttachedToWindow()V

    #@3
    .line 164
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceAngles:Ljava/lang/String;

    #@5
    const/4 v1, 0x1

    #@6
    if-eqz v0, :cond_f

    #@8
    new-array v2, v1, [F

    #@a
    .line 165
    iput-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@c
    .line 166
    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setAngles(Ljava/lang/String;)V

    #@f
    .line 168
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceRadius:Ljava/lang/String;

    #@11
    if-eqz v0, :cond_1a

    #@13
    new-array v1, v1, [I

    #@15
    .line 169
    iput-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@17
    .line 170
    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setRadius(Ljava/lang/String;)V

    #@1a
    .line 172
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    #@1c
    if-eqz v0, :cond_25

    #@1e
    .line 173
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@21
    move-result v0

    #@22
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultAngle(F)V

    #@25
    .line 175
    :cond_25
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    #@27
    if-eqz v0, :cond_30

    #@29
    .line 176
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2c
    move-result v0

    #@2d
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultRadius(I)V

    #@30
    .line 178
    :cond_30
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    #@33
    return-void
.end method

.method public removeView(Landroid/view/View;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    .line 337
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->removeView(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_8

    #@7
    return v0

    #@8
    .line 341
    :cond_8
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    #@a
    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    #@d
    .line 342
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@f
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@12
    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@15
    move-result p1

    #@16
    const/16 v2, 0x8

    #@18
    invoke-virtual {v1, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    #@1b
    .line 344
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@1d
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@20
    .line 346
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@22
    array-length v1, p1

    #@23
    if-ge v0, v1, :cond_31

    #@25
    .line 347
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->removeAngle([FI)[F

    #@28
    move-result-object p1

    #@29
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@2b
    .line 348
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@2d
    add-int/lit8 p1, p1, -0x1

    #@2f
    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    #@31
    .line 350
    :cond_31
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@33
    array-length v1, p1

    #@34
    if-ge v0, v1, :cond_42

    #@36
    .line 351
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->removeRadius([II)[I

    #@39
    move-result-object p1

    #@3a
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@3c
    .line 352
    iget p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@3e
    add-int/lit8 p1, p1, -0x1

    #@40
    iput p1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    #@42
    .line 354
    :cond_42
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    #@45
    return v0
.end method

.method public setDefaultAngle(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    #@0
    .line 322
    sput p1, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_ANGLE:F

    #@2
    return-void
.end method

.method public setDefaultRadius(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    #@0
    .line 332
    sput p1, Landroidx/constraintlayout/helper/widget/CircularFlow;->DEFAULT_RADIUS:I

    #@2
    return-void
.end method

.method public updateAngle(Landroid/view/View;F)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "angle"
        }
    .end annotation

    #@0
    .line 277
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->isUpdatable(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1f

    #@6
    .line 278
    new-instance p2, Ljava/lang/StringBuilder;

    #@8
    const-string v0, "It was not possible to update angle to view with id: "

    #@a
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@10
    move-result p1

    #@11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object p1

    #@19
    const-string p2, "CircularFlow"

    #@1b
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    return-void

    #@1f
    .line 281
    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@22
    move-result p1

    #@23
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->indexFromId(I)I

    #@26
    move-result p1

    #@27
    .line 282
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@29
    array-length v0, v0

    #@2a
    if-le p1, v0, :cond_2d

    #@2c
    return-void

    #@2d
    .line 285
    :cond_2d
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@33
    .line 286
    aput p2, v0, p1

    #@35
    .line 287
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    #@38
    return-void
.end method

.method public updateRadius(Landroid/view/View;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "radius"
        }
    .end annotation

    #@0
    .line 256
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->isUpdatable(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1f

    #@6
    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    #@8
    const-string v0, "It was not possible to update radius to view with id: "

    #@a
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@10
    move-result p1

    #@11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object p1

    #@19
    const-string p2, "CircularFlow"

    #@1b
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    return-void

    #@1f
    .line 260
    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@22
    move-result p1

    #@23
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->indexFromId(I)I

    #@26
    move-result p1

    #@27
    .line 261
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@29
    array-length v0, v0

    #@2a
    if-le p1, v0, :cond_2d

    #@2c
    return-void

    #@2d
    .line 264
    :cond_2d
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@33
    int-to-float p2, p2

    #@34
    .line 265
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->myContext:Landroid/content/Context;

    #@36
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3d
    move-result-object v1

    #@3e
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@40
    mul-float/2addr p2, v1

    #@41
    float-to-int p2, p2

    #@42
    aput p2, v0, p1

    #@44
    .line 266
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    #@47
    return-void
.end method

.method public updateReference(Landroid/view/View;IF)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "radius",
            "angle"
        }
    .end annotation

    #@0
    .line 299
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->isUpdatable(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1f

    #@6
    .line 300
    new-instance p2, Ljava/lang/StringBuilder;

    #@8
    const-string p3, "It was not possible to update radius and angle to view with id: "

    #@a
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@10
    move-result p1

    #@11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object p1

    #@19
    const-string p2, "CircularFlow"

    #@1b
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    return-void

    #@1f
    .line 303
    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@22
    move-result p1

    #@23
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->indexFromId(I)I

    #@26
    move-result p1

    #@27
    .line 304
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    #@2a
    move-result-object v0

    #@2b
    array-length v0, v0

    #@2c
    if-le v0, p1, :cond_36

    #@2e
    .line 305
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    #@34
    .line 306
    aput p3, v0, p1

    #@36
    .line 308
    :cond_36
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    #@39
    move-result-object p3

    #@3a
    array-length p3, p3

    #@3b
    if-le p3, p1, :cond_54

    #@3d
    .line 309
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    #@40
    move-result-object p3

    #@41
    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    #@43
    int-to-float p2, p2

    #@44
    .line 310
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->myContext:Landroid/content/Context;

    #@46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@4d
    move-result-object v0

    #@4e
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@50
    mul-float/2addr p2, v0

    #@51
    float-to-int p2, p2

    #@52
    aput p2, p3, p1

    #@54
    .line 312
    :cond_54
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    #@57
    return-void
.end method

.class Landroidx/transition/ChangeTransform$Transforms;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transforms"
.end annotation


# instance fields
.field final mRotationX:F

.field final mRotationY:F

.field final mRotationZ:F

.field final mScaleX:F

.field final mScaleY:F

.field final mTranslationX:F

.field final mTranslationY:F

.field final mTranslationZ:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    #@0
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    #@9
    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    #@f
    .line 472
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    #@15
    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    #@1b
    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    #@21
    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    #@27
    .line 476
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    #@2d
    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    #@30
    move-result p1

    #@31
    iput p1, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    #@33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    .line 487
    instance-of v0, p1, Landroidx/transition/ChangeTransform$Transforms;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 490
    :cond_6
    check-cast p1, Landroidx/transition/ChangeTransform$Transforms;

    #@8
    .line 491
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    #@a
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    #@c
    cmpl-float v0, v0, v2

    #@e
    if-nez v0, :cond_49

    #@10
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    #@12
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    #@14
    cmpl-float v0, v0, v2

    #@16
    if-nez v0, :cond_49

    #@18
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    #@1a
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    #@1c
    cmpl-float v0, v0, v2

    #@1e
    if-nez v0, :cond_49

    #@20
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    #@22
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    #@24
    cmpl-float v0, v0, v2

    #@26
    if-nez v0, :cond_49

    #@28
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    #@2a
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    #@2c
    cmpl-float v0, v0, v2

    #@2e
    if-nez v0, :cond_49

    #@30
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    #@32
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    #@34
    cmpl-float v0, v0, v2

    #@36
    if-nez v0, :cond_49

    #@38
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    #@3a
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    #@3c
    cmpl-float v0, v0, v2

    #@3e
    if-nez v0, :cond_49

    #@40
    iget p1, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    #@42
    iget v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    #@44
    cmpl-float p1, p1, v0

    #@46
    if-nez p1, :cond_49

    #@48
    const/4 v1, 0x1

    #@49
    :cond_49
    return v1
.end method

.method public hashCode()I
    .registers 6

    #@0
    .line 503
    iget v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v2, v0, v1

    #@5
    const/4 v3, 0x0

    #@6
    if-eqz v2, :cond_d

    #@8
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@b
    move-result v0

    #@c
    goto :goto_e

    #@d
    :cond_d
    move v0, v3

    #@e
    :goto_e
    mul-int/lit8 v0, v0, 0x1f

    #@10
    .line 504
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    #@12
    cmpl-float v4, v2, v1

    #@14
    if-eqz v4, :cond_1b

    #@16
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@19
    move-result v2

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move v2, v3

    #@1c
    :goto_1c
    add-int/2addr v0, v2

    #@1d
    mul-int/lit8 v0, v0, 0x1f

    #@1f
    .line 505
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    #@21
    cmpl-float v4, v2, v1

    #@23
    if-eqz v4, :cond_2a

    #@25
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@28
    move-result v2

    #@29
    goto :goto_2b

    #@2a
    :cond_2a
    move v2, v3

    #@2b
    :goto_2b
    add-int/2addr v0, v2

    #@2c
    mul-int/lit8 v0, v0, 0x1f

    #@2e
    .line 506
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    #@30
    cmpl-float v4, v2, v1

    #@32
    if-eqz v4, :cond_39

    #@34
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@37
    move-result v2

    #@38
    goto :goto_3a

    #@39
    :cond_39
    move v2, v3

    #@3a
    :goto_3a
    add-int/2addr v0, v2

    #@3b
    mul-int/lit8 v0, v0, 0x1f

    #@3d
    .line 507
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    #@3f
    cmpl-float v4, v2, v1

    #@41
    if-eqz v4, :cond_48

    #@43
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@46
    move-result v2

    #@47
    goto :goto_49

    #@48
    :cond_48
    move v2, v3

    #@49
    :goto_49
    add-int/2addr v0, v2

    #@4a
    mul-int/lit8 v0, v0, 0x1f

    #@4c
    .line 508
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    #@4e
    cmpl-float v4, v2, v1

    #@50
    if-eqz v4, :cond_57

    #@52
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@55
    move-result v2

    #@56
    goto :goto_58

    #@57
    :cond_57
    move v2, v3

    #@58
    :goto_58
    add-int/2addr v0, v2

    #@59
    mul-int/lit8 v0, v0, 0x1f

    #@5b
    .line 509
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    #@5d
    cmpl-float v4, v2, v1

    #@5f
    if-eqz v4, :cond_66

    #@61
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@64
    move-result v2

    #@65
    goto :goto_67

    #@66
    :cond_66
    move v2, v3

    #@67
    :goto_67
    add-int/2addr v0, v2

    #@68
    mul-int/lit8 v0, v0, 0x1f

    #@6a
    .line 510
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    #@6c
    cmpl-float v1, v2, v1

    #@6e
    if-eqz v1, :cond_74

    #@70
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@73
    move-result v3

    #@74
    :cond_74
    add-int/2addr v0, v3

    #@75
    return v0
.end method

.method public restore(Landroid/view/View;)V
    .registers 11

    #@0
    .line 481
    iget v1, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    #@2
    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    #@4
    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    #@6
    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    #@8
    iget v5, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    #@a
    iget v6, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    #@c
    iget v7, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    #@e
    iget v8, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    #@10
    move-object v0, p1

    #@11
    invoke-static/range {v0 .. v8}, Landroidx/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    #@14
    return-void
.end method

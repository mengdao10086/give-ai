.class public final Lcom/google/android/material/transition/ScaleProvider;
.super Ljava/lang/Object;
.source "ScaleProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/VisibilityAnimatorProvider;


# instance fields
.field private growing:Z

.field private incomingEndScale:F

.field private incomingStartScale:F

.field private outgoingEndScale:F

.field private outgoingStartScale:F

.field private scaleOnDisappear:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 47
    invoke-direct {p0, v0}, Lcom/google/android/material/transition/ScaleProvider;-><init>(Z)V

    #@4
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    #@0
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    .line 38
    iput v0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    #@7
    const v1, 0x3f8ccccd    # 1.1f

    #@a
    .line 39
    iput v1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    #@c
    const v1, 0x3f4ccccd    # 0.8f

    #@f
    .line 40
    iput v1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    #@11
    .line 41
    iput v0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    #@13
    const/4 v0, 0x1

    #@14
    .line 44
    iput-boolean v0, p0, Lcom/google/android/material/transition/ScaleProvider;->scaleOnDisappear:Z

    #@16
    .line 51
    iput-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->growing:Z

    #@18
    return-void
.end method

.method private static createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 12

    #@0
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    #@3
    move-result v0

    #@4
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    #@7
    move-result v1

    #@8
    const/4 v2, 0x2

    #@9
    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    #@b
    .line 174
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    #@d
    new-array v5, v2, [F

    #@f
    mul-float v6, v0, p1

    #@11
    const/4 v7, 0x0

    #@12
    aput v6, v5, v7

    #@14
    mul-float v6, v0, p2

    #@16
    const/4 v8, 0x1

    #@17
    aput v6, v5, v8

    #@19
    .line 177
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    #@1c
    move-result-object v4

    #@1d
    aput-object v4, v3, v7

    #@1f
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    #@21
    new-array v2, v2, [F

    #@23
    mul-float/2addr p1, v1

    #@24
    aput p1, v2, v7

    #@26
    mul-float/2addr p2, v1

    #@27
    aput p2, v2, v8

    #@29
    .line 179
    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    #@2c
    move-result-object p1

    #@2d
    aput-object p1, v3, v8

    #@2f
    .line 175
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@32
    move-result-object p1

    #@33
    .line 181
    new-instance p2, Lcom/google/android/material/transition/ScaleProvider$1;

    #@35
    invoke-direct {p2, p0, v0, v1}, Lcom/google/android/material/transition/ScaleProvider$1;-><init>(Landroid/view/View;FF)V

    #@38
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3b
    return-object p1
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 4

    #@0
    .line 150
    iget-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->growing:Z

    #@2
    if-eqz p1, :cond_d

    #@4
    .line 151
    iget p1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    #@6
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    #@8
    invoke-static {p2, p1, v0}, Lcom/google/android/material/transition/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    #@b
    move-result-object p1

    #@c
    return-object p1

    #@d
    .line 153
    :cond_d
    iget p1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    #@f
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    #@11
    invoke-static {p2, p1, v0}, Lcom/google/android/material/transition/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    #@14
    move-result-object p1

    #@15
    return-object p1
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 4

    #@0
    .line 160
    iget-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->scaleOnDisappear:Z

    #@2
    if-nez p1, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return-object p1

    #@6
    .line 164
    :cond_6
    iget-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->growing:Z

    #@8
    if-eqz p1, :cond_13

    #@a
    .line 165
    iget p1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    #@c
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    #@e
    invoke-static {p2, p1, v0}, Lcom/google/android/material/transition/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    #@11
    move-result-object p1

    #@12
    return-object p1

    #@13
    .line 167
    :cond_13
    iget p1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    #@15
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    #@17
    invoke-static {p2, p1, v0}, Lcom/google/android/material/transition/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    #@1a
    move-result-object p1

    #@1b
    return-object p1
.end method

.method public getIncomingEndScale()F
    .registers 2

    #@0
    .line 136
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    #@2
    return v0
.end method

.method public getIncomingStartScale()F
    .registers 2

    #@0
    .line 120
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    #@2
    return v0
.end method

.method public getOutgoingEndScale()F
    .registers 2

    #@0
    .line 104
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    #@2
    return v0
.end method

.method public getOutgoingStartScale()F
    .registers 2

    #@0
    .line 88
    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    #@2
    return v0
.end method

.method public isGrowing()Z
    .registers 2

    #@0
    .line 56
    iget-boolean v0, p0, Lcom/google/android/material/transition/ScaleProvider;->growing:Z

    #@2
    return v0
.end method

.method public isScaleOnDisappear()Z
    .registers 2

    #@0
    .line 70
    iget-boolean v0, p0, Lcom/google/android/material/transition/ScaleProvider;->scaleOnDisappear:Z

    #@2
    return v0
.end method

.method public setGrowing(Z)V
    .registers 2

    #@0
    .line 61
    iput-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->growing:Z

    #@2
    return-void
.end method

.method public setIncomingEndScale(F)V
    .registers 2

    #@0
    .line 144
    iput p1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    #@2
    return-void
.end method

.method public setIncomingStartScale(F)V
    .registers 2

    #@0
    .line 128
    iput p1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    #@2
    return-void
.end method

.method public setOutgoingEndScale(F)V
    .registers 2

    #@0
    .line 112
    iput p1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    #@2
    return-void
.end method

.method public setOutgoingStartScale(F)V
    .registers 2

    #@0
    .line 96
    iput p1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    #@2
    return-void
.end method

.method public setScaleOnDisappear(Z)V
    .registers 2

    #@0
    .line 80
    iput-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->scaleOnDisappear:Z

    #@2
    return-void
.end method

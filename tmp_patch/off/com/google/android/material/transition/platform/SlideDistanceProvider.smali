.class public final Lcom/google/android/material/transition/platform/SlideDistanceProvider;
.super Ljava/lang/Object;
.source "SlideDistanceProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/SlideDistanceProvider$GravityFlag;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISTANCE:I = -0x1


# instance fields
.field private slideDistance:I

.field private slideEdge:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    #@0
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 64
    iput v0, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideDistance:I

    #@6
    .line 67
    iput p1, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideEdge:I

    #@8
    return-void
.end method

.method private static createTranslationAppearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .registers 7

    #@0
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    #@3
    move-result v0

    #@4
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    #@7
    move-result v1

    #@8
    const/4 v2, 0x3

    #@9
    if-eq p2, v2, :cond_6e

    #@b
    const/4 v2, 0x5

    #@c
    if-eq p2, v2, :cond_66

    #@e
    const/16 v2, 0x30

    #@10
    if-eq p2, v2, :cond_5e

    #@12
    const/16 v2, 0x50

    #@14
    if-eq p2, v2, :cond_57

    #@16
    const v1, 0x800003

    #@19
    if-eq p2, v1, :cond_46

    #@1b
    const v1, 0x800005

    #@1e
    if-ne p2, v1, :cond_31

    #@20
    .line 154
    invoke-static {p0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    #@23
    move-result p0

    #@24
    if-eqz p0, :cond_2a

    #@26
    int-to-float p0, p3

    #@27
    sub-float p0, v0, p0

    #@29
    goto :goto_2c

    #@2a
    :cond_2a
    int-to-float p0, p3

    #@2b
    add-float/2addr p0, v0

    #@2c
    .line 152
    :goto_2c
    invoke-static {p1, p0, v0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    #@2f
    move-result-object p0

    #@30
    return-object p0

    #@31
    .line 158
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@33
    new-instance p1, Ljava/lang/StringBuilder;

    #@35
    const-string p3, "Invalid slide direction: "

    #@37
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p1

    #@3e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object p1

    #@42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw p0

    #@46
    .line 148
    :cond_46
    invoke-static {p0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    #@49
    move-result p0

    #@4a
    if-eqz p0, :cond_4f

    #@4c
    int-to-float p0, p3

    #@4d
    add-float/2addr p0, v0

    #@4e
    goto :goto_52

    #@4f
    :cond_4f
    int-to-float p0, p3

    #@50
    sub-float p0, v0, p0

    #@52
    .line 146
    :goto_52
    invoke-static {p1, p0, v0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    #@55
    move-result-object p0

    #@56
    return-object p0

    #@57
    :cond_57
    int-to-float p0, p3

    #@58
    add-float/2addr p0, v1

    #@59
    .line 144
    invoke-static {p1, p0, v1, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    #@5c
    move-result-object p0

    #@5d
    return-object p0

    #@5e
    :cond_5e
    int-to-float p0, p3

    #@5f
    sub-float p0, v1, p0

    #@61
    .line 140
    invoke-static {p1, p0, v1, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    #@64
    move-result-object p0

    #@65
    return-object p0

    #@66
    :cond_66
    int-to-float p0, p3

    #@67
    sub-float p0, v0, p0

    #@69
    .line 142
    invoke-static {p1, p0, v0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    #@6c
    move-result-object p0

    #@6d
    return-object p0

    #@6e
    :cond_6e
    int-to-float p0, p3

    #@6f
    add-float/2addr p0, v0

    #@70
    .line 138
    invoke-static {p1, p0, v0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    #@73
    move-result-object p0

    #@74
    return-object p0
.end method

.method private static createTranslationDisappearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .registers 7

    #@0
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    #@3
    move-result v0

    #@4
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    #@7
    move-result v1

    #@8
    const/4 v2, 0x3

    #@9
    if-eq p2, v2, :cond_6d

    #@b
    const/4 v2, 0x5

    #@c
    if-eq p2, v2, :cond_66

    #@e
    const/16 v2, 0x30

    #@10
    if-eq p2, v2, :cond_5f

    #@12
    const/16 v2, 0x50

    #@14
    if-eq p2, v2, :cond_57

    #@16
    const v1, 0x800003

    #@19
    if-eq p2, v1, :cond_46

    #@1b
    const v1, 0x800005

    #@1e
    if-ne p2, v1, :cond_31

    #@20
    .line 185
    invoke-static {p0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    #@23
    move-result p0

    #@24
    if-eqz p0, :cond_29

    #@26
    int-to-float p0, p3

    #@27
    add-float/2addr p0, v0

    #@28
    goto :goto_2c

    #@29
    :cond_29
    int-to-float p0, p3

    #@2a
    sub-float p0, v0, p0

    #@2c
    .line 182
    :goto_2c
    invoke-static {p1, v0, p0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    #@2f
    move-result-object p0

    #@30
    return-object p0

    #@31
    .line 188
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@33
    new-instance p1, Ljava/lang/StringBuilder;

    #@35
    const-string p3, "Invalid slide direction: "

    #@37
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p1

    #@3e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object p1

    #@42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw p0

    #@46
    .line 179
    :cond_46
    invoke-static {p0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    #@49
    move-result p0

    #@4a
    if-eqz p0, :cond_50

    #@4c
    int-to-float p0, p3

    #@4d
    sub-float p0, v0, p0

    #@4f
    goto :goto_52

    #@50
    :cond_50
    int-to-float p0, p3

    #@51
    add-float/2addr p0, v0

    #@52
    .line 176
    :goto_52
    invoke-static {p1, v0, p0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    #@55
    move-result-object p0

    #@56
    return-object p0

    #@57
    :cond_57
    int-to-float p0, p3

    #@58
    sub-float p0, v1, p0

    #@5a
    .line 174
    invoke-static {p1, v1, p0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    #@5d
    move-result-object p0

    #@5e
    return-object p0

    #@5f
    :cond_5f
    int-to-float p0, p3

    #@60
    add-float/2addr p0, v1

    #@61
    .line 170
    invoke-static {p1, v1, p0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    #@64
    move-result-object p0

    #@65
    return-object p0

    #@66
    :cond_66
    int-to-float p0, p3

    #@67
    add-float/2addr p0, v0

    #@68
    .line 172
    invoke-static {p1, v0, p0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    #@6b
    move-result-object p0

    #@6c
    return-object p0

    #@6d
    :cond_6d
    int-to-float p0, p3

    #@6e
    sub-float p0, v0, p0

    #@70
    .line 168
    invoke-static {p1, v0, p0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    #@73
    move-result-object p0

    #@74
    return-object p0
.end method

.method private static createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    #@3
    .line 197
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    #@5
    const/4 v3, 0x2

    #@6
    new-array v3, v3, [F

    #@8
    const/4 v4, 0x0

    #@9
    aput p1, v3, v4

    #@b
    aput p2, v3, v0

    #@d
    .line 200
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    #@10
    move-result-object p1

    #@11
    aput-object p1, v1, v4

    #@13
    .line 198
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@16
    move-result-object p1

    #@17
    .line 201
    new-instance p2, Lcom/google/android/material/transition/platform/SlideDistanceProvider$1;

    #@19
    invoke-direct {p2, p0, p3}, Lcom/google/android/material/transition/platform/SlideDistanceProvider$1;-><init>(Landroid/view/View;F)V

    #@1c
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@1f
    return-object p1
.end method

.method private static createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    #@3
    .line 216
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    #@5
    const/4 v3, 0x2

    #@6
    new-array v3, v3, [F

    #@8
    const/4 v4, 0x0

    #@9
    aput p1, v3, v4

    #@b
    aput p2, v3, v0

    #@d
    .line 219
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    #@10
    move-result-object p1

    #@11
    aput-object p1, v1, v4

    #@13
    .line 217
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@16
    move-result-object p1

    #@17
    .line 220
    new-instance p2, Lcom/google/android/material/transition/platform/SlideDistanceProvider$2;

    #@19
    invoke-direct {p2, p0, p3}, Lcom/google/android/material/transition/platform/SlideDistanceProvider$2;-><init>(Landroid/view/View;F)V

    #@1c
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@1f
    return-object p1
.end method

.method private getSlideDistanceOrDefault(Landroid/content/Context;)I
    .registers 4

    #@0
    .line 123
    iget v0, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideDistance:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_6

    #@5
    return v0

    #@6
    .line 128
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object p1

    #@a
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_transition_shared_axis_slide_distance:I

    #@c
    .line 129
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@f
    move-result p1

    #@10
    return p1
.end method

.method private static isRtl(Landroid/view/View;)Z
    .registers 2

    #@0
    .line 231
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    const/4 v0, 0x1

    #@5
    if-ne p0, v0, :cond_8

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 5

    #@0
    .line 111
    iget v0, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideEdge:I

    #@2
    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->getSlideDistanceOrDefault(Landroid/content/Context;)I

    #@9
    move-result v1

    #@a
    .line 111
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationAppearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    #@d
    move-result-object p1

    #@e
    return-object p1
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 5

    #@0
    .line 118
    iget v0, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideEdge:I

    #@2
    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->getSlideDistanceOrDefault(Landroid/content/Context;)I

    #@9
    move-result v1

    #@a
    .line 118
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationDisappearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    #@d
    move-result-object p1

    #@e
    return-object p1
.end method

.method public getSlideDistance()I
    .registers 2

    #@0
    .line 87
    iget v0, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideDistance:I

    #@2
    return v0
.end method

.method public getSlideEdge()I
    .registers 2

    #@0
    .line 72
    iget v0, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideEdge:I

    #@2
    return v0
.end method

.method public setSlideDistance(I)V
    .registers 3

    #@0
    if-ltz p1, :cond_5

    #@2
    .line 105
    iput p1, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideDistance:I

    #@4
    return-void

    #@5
    .line 101
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v0, "Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead."

    #@9
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw p1
.end method

.method public setSlideEdge(I)V
    .registers 2

    #@0
    .line 76
    iput p1, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideEdge:I

    #@2
    return-void
.end method

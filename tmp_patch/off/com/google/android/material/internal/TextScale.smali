.class public Lcom/google/android/material/internal/TextScale;
.super Landroidx/transition/Transition;
.source "TextScale.java"


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:textscale:scale"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 34
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    #@3
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 4

    #@0
    .line 48
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    instance-of v0, v0, Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_19

    #@6
    .line 49
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@8
    check-cast v0, Landroid/widget/TextView;

    #@a
    .line 50
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@c
    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    #@f
    move-result v0

    #@10
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@13
    move-result-object v0

    #@14
    const-string v1, "android:textscale:scale"

    #@16
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    :cond_19
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 8

    #@0
    const/4 p1, 0x0

    #@1
    if-eqz p2, :cond_5a

    #@3
    if-eqz p3, :cond_5a

    #@5
    .line 59
    iget-object v0, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@7
    instance-of v0, v0, Landroid/widget/TextView;

    #@9
    if-eqz v0, :cond_5a

    #@b
    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@d
    instance-of v0, v0, Landroid/widget/TextView;

    #@f
    if-nez v0, :cond_12

    #@11
    goto :goto_5a

    #@12
    .line 65
    :cond_12
    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@14
    check-cast v0, Landroid/widget/TextView;

    #@16
    .line 66
    iget-object p2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@18
    .line 67
    iget-object p3, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@1a
    const-string v1, "android:textscale:scale"

    #@1c
    .line 69
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    const/high16 v3, 0x3f800000    # 1.0f

    #@22
    if-eqz v2, :cond_2f

    #@24
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object p2

    #@28
    check-cast p2, Ljava/lang/Float;

    #@2a
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@2d
    move-result p2

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    move p2, v3

    #@30
    .line 71
    :goto_30
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    if-eqz v2, :cond_40

    #@36
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object p3

    #@3a
    check-cast p3, Ljava/lang/Float;

    #@3c
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    #@3f
    move-result v3

    #@40
    :cond_40
    cmpl-float p3, p2, v3

    #@42
    if-nez p3, :cond_45

    #@44
    return-object p1

    #@45
    :cond_45
    const/4 p1, 0x2

    #@46
    new-array p1, p1, [F

    #@48
    const/4 p3, 0x0

    #@49
    aput p2, p1, p3

    #@4b
    const/4 p2, 0x1

    #@4c
    aput v3, p1, p2

    #@4e
    .line 76
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@51
    move-result-object p1

    #@52
    .line 78
    new-instance p2, Lcom/google/android/material/internal/TextScale$1;

    #@54
    invoke-direct {p2, p0, v0}, Lcom/google/android/material/internal/TextScale$1;-><init>(Lcom/google/android/material/internal/TextScale;Landroid/widget/TextView;)V

    #@57
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@5a
    :cond_5a
    :goto_5a
    return-object p1
.end method

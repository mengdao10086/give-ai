.class public Landroidx/transition/Fade;
.super Landroidx/transition/Visibility;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Fade$FadeAnimatorListener;
    }
.end annotation


# static fields
.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field private static final PROPNAME_TRANSITION_ALPHA:Ljava/lang/String; = "android:fade:transitionAlpha"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 98
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 91
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    #@3
    .line 92
    invoke-virtual {p0, p1}, Landroidx/transition/Fade;->setMode(I)V

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    #@0
    .line 104
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 105
    sget-object v0, Landroidx/transition/Styleable;->FADE:[I

    #@5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object p1

    #@9
    .line 107
    check-cast p2, Landroid/content/res/XmlResourceParser;

    #@b
    const/4 v0, 0x0

    #@c
    .line 108
    invoke-virtual {p0}, Landroidx/transition/Fade;->getMode()I

    #@f
    move-result v1

    #@10
    const-string v2, "fadingMode"

    #@12
    .line 107
    invoke-static {p1, p2, v2, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@15
    move-result p2

    #@16
    .line 109
    invoke-virtual {p0, p2}, Landroidx/transition/Fade;->setMode(I)V

    #@19
    .line 110
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@1c
    return-void
.end method

.method private createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 6

    #@0
    cmpl-float v0, p2, p3

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return-object p1

    #@6
    .line 127
    :cond_6
    invoke-static {p1, p2}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    #@9
    .line 128
    sget-object p2, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    #@b
    const/4 v0, 0x1

    #@c
    new-array v0, v0, [F

    #@e
    const/4 v1, 0x0

    #@f
    aput p3, v0, v1

    #@11
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@14
    move-result-object p2

    #@15
    .line 133
    new-instance p3, Landroidx/transition/Fade$FadeAnimatorListener;

    #@17
    invoke-direct {p3, p1}, Landroidx/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    #@1a
    .line 134
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@1d
    .line 135
    new-instance p3, Landroidx/transition/Fade$1;

    #@1f
    invoke-direct {p3, p0, p1}, Landroidx/transition/Fade$1;-><init>(Landroidx/transition/Fade;Landroid/view/View;)V

    #@22
    invoke-virtual {p0, p3}, Landroidx/transition/Fade;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@25
    return-object p2
.end method

.method private static getStartAlpha(Landroidx/transition/TransitionValues;F)F
    .registers 3

    #@0
    if-eqz p0, :cond_12

    #@2
    .line 173
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@4
    const-string v0, "android:fade:transitionAlpha"

    #@6
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, Ljava/lang/Float;

    #@c
    if-eqz p0, :cond_12

    #@e
    .line 175
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    #@11
    move-result p1

    #@12
    :cond_12
    return p1
.end method


# virtual methods
.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 4

    #@0
    .line 115
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    #@3
    .line 116
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@5
    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@7
    .line 117
    invoke-static {p1}, Landroidx/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    #@a
    move-result p1

    #@b
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e
    move-result-object p1

    #@f
    const-string v1, "android:fade:transitionAlpha"

    #@11
    .line 116
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6

    #@0
    const/4 p1, 0x0

    #@1
    .line 155
    invoke-static {p3, p1}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    #@4
    move-result p3

    #@5
    const/high16 p4, 0x3f800000    # 1.0f

    #@7
    cmpl-float v0, p3, p4

    #@9
    if-nez v0, :cond_c

    #@b
    goto :goto_d

    #@c
    :cond_c
    move p1, p3

    #@d
    .line 159
    :goto_d
    invoke-direct {p0, p2, p1, p4}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    #@10
    move-result-object p1

    #@11
    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    #@0
    .line 165
    invoke-static {p2}, Landroidx/transition/ViewUtils;->saveNonTransitionAlpha(Landroid/view/View;)V

    #@3
    const/high16 p1, 0x3f800000    # 1.0f

    #@5
    .line 166
    invoke-static {p3, p1}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    #@8
    move-result p1

    #@9
    const/4 p3, 0x0

    #@a
    .line 167
    invoke-direct {p0, p2, p1, p3}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    #@d
    move-result-object p1

    #@e
    return-object p1
.end method

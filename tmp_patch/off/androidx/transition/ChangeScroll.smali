.class public Landroidx/transition/ChangeScroll;
.super Landroidx/transition/Transition;
.source "ChangeScroll.java"


# static fields
.field private static final PROPERTIES:[Ljava/lang/String;

.field private static final PROPNAME_SCROLL_X:Ljava/lang/String; = "android:changeScroll:x"

.field private static final PROPNAME_SCROLL_Y:Ljava/lang/String; = "android:changeScroll:y"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-string v0, "android:changeScroll:x"

    #@2
    const-string v1, "android:changeScroll:y"

    #@4
    .line 39
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroidx/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    #@a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 44
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 5

    #@0
    .line 67
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@2
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@4
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    #@7
    move-result v1

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    const-string v2, "android:changeScroll:x"

    #@e
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 68
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@13
    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@15
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@18
    move-result p1

    #@19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object p1

    #@1d
    const-string v1, "android:changeScroll:y"

    #@1f
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 57
    invoke-direct {p0, p1}, Landroidx/transition/ChangeScroll;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    #@0
    .line 52
    invoke-direct {p0, p1}, Landroidx/transition/ChangeScroll;->captureValues(Landroidx/transition/TransitionValues;)V

    #@3
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 11

    #@0
    const/4 p1, 0x0

    #@1
    if-eqz p2, :cond_67

    #@3
    if-nez p3, :cond_6

    #@5
    goto :goto_67

    #@6
    .line 78
    :cond_6
    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@8
    .line 79
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@a
    const-string v2, "android:changeScroll:x"

    #@c
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/Integer;

    #@12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v1

    #@16
    .line 80
    iget-object v3, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@18
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/lang/Integer;

    #@1e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@21
    move-result v2

    #@22
    .line 81
    iget-object p2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@24
    const-string v3, "android:changeScroll:y"

    #@26
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object p2

    #@2a
    check-cast p2, Ljava/lang/Integer;

    #@2c
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@2f
    move-result p2

    #@30
    .line 82
    iget-object p3, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@32
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object p3

    #@36
    check-cast p3, Ljava/lang/Integer;

    #@38
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@3b
    move-result p3

    #@3c
    const/4 v3, 0x1

    #@3d
    const/4 v4, 0x0

    #@3e
    const/4 v5, 0x2

    #@3f
    if-eq v1, v2, :cond_51

    #@41
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollX(I)V

    #@44
    new-array v6, v5, [I

    #@46
    aput v1, v6, v4

    #@48
    aput v2, v6, v3

    #@4a
    const-string v1, "scrollX"

    #@4c
    .line 87
    invoke-static {v0, v1, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@4f
    move-result-object v1

    #@50
    goto :goto_52

    #@51
    :cond_51
    move-object v1, p1

    #@52
    :goto_52
    if-eq p2, p3, :cond_63

    #@54
    .line 90
    invoke-virtual {v0, p2}, Landroid/view/View;->setScrollY(I)V

    #@57
    new-array p1, v5, [I

    #@59
    aput p2, p1, v4

    #@5b
    aput p3, p1, v3

    #@5d
    const-string p2, "scrollY"

    #@5f
    .line 91
    invoke-static {v0, p2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@62
    move-result-object p1

    #@63
    .line 93
    :cond_63
    invoke-static {v1, p1}, Landroidx/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    #@66
    move-result-object p1

    #@67
    :cond_67
    :goto_67
    return-object p1
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    #@0
    .line 63
    sget-object v0, Landroidx/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    #@2
    return-object v0
.end method

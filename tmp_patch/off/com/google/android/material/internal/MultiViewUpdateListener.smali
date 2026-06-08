.class public Lcom/google/android/material/internal/MultiViewUpdateListener;
.super Ljava/lang/Object;
.source "MultiViewUpdateListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;
    }
.end annotation


# instance fields
.field private final listener:Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;

.field private final views:[Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$Mtp5sBfS5LXd-63Z9XctnK3kqJE(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->setTranslationY(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$Rryxfo13bMOcs5cmz2mcweOWiUY(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->setScale(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$fJMU4cyqqeA8DD96LAqv3uCgNCo(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->setTranslationX(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    #@3
    return-void
.end method

.method public static synthetic $r8$lambda$gtAYAqr0qsjIEvRsrfPVuv0tXPs(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->setAlpha(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput-object p1, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->listener:Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;

    #@5
    const/4 p1, 0x0

    #@6
    new-array p1, p1, [Landroid/view/View;

    #@8
    .line 50
    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    check-cast p1, [Landroid/view/View;

    #@e
    iput-object p1, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->views:[Landroid/view/View;

    #@10
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V
    .registers 3

    #@0
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->listener:Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;

    #@5
    .line 44
    iput-object p2, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->views:[Landroid/view/View;

    #@7
    return-void
.end method

.method public static alphaListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/internal/MultiViewUpdateListener;"
        }
    .end annotation

    #@0
    .line 84
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@2
    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda3;

    #@4
    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda3;-><init>()V

    #@7
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;Ljava/util/Collection;)V

    #@a
    return-object v0
.end method

.method public static varargs alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .registers 3

    #@0
    .line 75
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@2
    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda3;

    #@4
    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda3;-><init>()V

    #@7
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    #@a
    return-object v0
.end method

.method public static scaleListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/internal/MultiViewUpdateListener;"
        }
    .end annotation

    #@0
    .line 106
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@2
    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda1;

    #@4
    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda1;-><init>()V

    #@7
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;Ljava/util/Collection;)V

    #@a
    return-object v0
.end method

.method public static varargs scaleListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .registers 3

    #@0
    .line 97
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@2
    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda1;

    #@4
    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda1;-><init>()V

    #@7
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    #@a
    return-object v0
.end method

.method private static setAlpha(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 2

    #@0
    .line 88
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Ljava/lang/Float;

    #@6
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    #@9
    move-result p0

    #@a
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    #@d
    return-void
.end method

.method private static setScale(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 3

    #@0
    .line 110
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Ljava/lang/Float;

    #@6
    .line 111
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    #@9
    move-result v0

    #@a
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    #@d
    .line 112
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    #@10
    move-result p0

    #@11
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    #@14
    return-void
.end method

.method private static setTranslationX(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 2

    #@0
    .line 134
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Ljava/lang/Float;

    #@6
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    #@9
    move-result p0

    #@a
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    #@d
    return-void
.end method

.method private static setTranslationY(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 2

    #@0
    .line 156
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Ljava/lang/Float;

    #@6
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    #@9
    move-result p0

    #@a
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    #@d
    return-void
.end method

.method public static translationXListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/internal/MultiViewUpdateListener;"
        }
    .end annotation

    #@0
    .line 130
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@2
    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;

    #@4
    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;-><init>()V

    #@7
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;Ljava/util/Collection;)V

    #@a
    return-object v0
.end method

.method public static varargs translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .registers 3

    #@0
    .line 121
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@2
    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;

    #@4
    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;-><init>()V

    #@7
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    #@a
    return-object v0
.end method

.method public static translationYListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/internal/MultiViewUpdateListener;"
        }
    .end annotation

    #@0
    .line 152
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@2
    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda2;

    #@4
    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda2;-><init>()V

    #@7
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;Ljava/util/Collection;)V

    #@a
    return-object v0
.end method

.method public static varargs translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .registers 3

    #@0
    .line 143
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    #@2
    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda2;

    #@4
    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda2;-><init>()V

    #@7
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    #@a
    return-object v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    #@0
    .line 55
    iget-object v0, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->views:[Landroid/view/View;

    #@2
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    :goto_4
    if-ge v2, v1, :cond_10

    #@6
    aget-object v3, v0, v2

    #@8
    .line 56
    iget-object v4, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->listener:Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;

    #@a
    invoke-interface {v4, p1, v3}, Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;->onAnimationUpdate(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    #@d
    add-int/lit8 v2, v2, 0x1

    #@f
    goto :goto_4

    #@10
    :cond_10
    return-void
.end method

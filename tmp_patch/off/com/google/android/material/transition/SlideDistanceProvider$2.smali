.class Lcom/google/android/material/transition/SlideDistanceProvider$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlideDistanceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$originalTranslation:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .registers 3

    #@0
    .line 216
    iput-object p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider$2;->val$view:Landroid/view/View;

    #@2
    iput p2, p0, Lcom/google/android/material/transition/SlideDistanceProvider$2;->val$originalTranslation:F

    #@4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 219
    iget-object p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider$2;->val$view:Landroid/view/View;

    #@2
    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider$2;->val$originalTranslation:F

    #@4
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    #@7
    return-void
.end method

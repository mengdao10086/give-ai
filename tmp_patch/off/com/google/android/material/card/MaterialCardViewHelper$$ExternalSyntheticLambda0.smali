.class public final synthetic Lcom/google/android/material/card/MaterialCardViewHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/card/MaterialCardViewHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/card/MaterialCardViewHelper;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@5
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/card/MaterialCardViewHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->lambda$animateCheckedIcon$0$com-google-android-material-card-MaterialCardViewHelper(Landroid/animation/ValueAnimator;)V

    #@5
    return-void
.end method

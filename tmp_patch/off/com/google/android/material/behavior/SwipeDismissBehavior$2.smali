.class Lcom/google/android/material/behavior/SwipeDismissBehavior$2;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;->updateAccessibilityActions(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .registers 2

    #@0
    .line 427
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .registers 6

    #@0
    .line 430
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@2
    invoke-virtual {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    #@5
    move-result p2

    #@6
    const/4 v0, 0x0

    #@7
    if-eqz p2, :cond_40

    #@9
    .line 432
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@c
    move-result p2

    #@d
    const/4 v1, 0x1

    #@e
    if-ne p2, v1, :cond_12

    #@10
    move p2, v1

    #@11
    goto :goto_13

    #@12
    :cond_12
    move p2, v0

    #@13
    .line 433
    :goto_13
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@15
    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    #@17
    if-nez v2, :cond_1b

    #@19
    if-nez p2, :cond_23

    #@1b
    :cond_1b
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@1d
    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    #@1f
    if-ne v2, v1, :cond_24

    #@21
    if-nez p2, :cond_24

    #@23
    :cond_23
    move v0, v1

    #@24
    .line 436
    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@27
    move-result p2

    #@28
    if-eqz v0, :cond_2b

    #@2a
    neg-int p2, p2

    #@2b
    .line 437
    :cond_2b
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    #@2e
    const/4 p2, 0x0

    #@2f
    .line 438
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    #@32
    .line 439
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@34
    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    #@36
    if-eqz p2, :cond_3f

    #@38
    .line 440
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@3a
    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    #@3c
    invoke-interface {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    #@3f
    :cond_3f
    return v1

    #@40
    :cond_40
    return v0
.end method

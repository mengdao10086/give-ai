.class Landroidx/core/view/ViewCompat$Api16Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 5365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 1

    #@0
    .line 5411
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getFitsSystemWindows(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 5441
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getImportantForAccessibility(Landroid/view/View;)I
    .registers 1

    #@0
    .line 5401
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getMinimumHeight(Landroid/view/View;)I
    .registers 1

    #@0
    .line 5426
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getMinimumWidth(Landroid/view/View;)I
    .registers 1

    #@0
    .line 5421
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 1

    #@0
    .line 5416
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 1

    #@0
    .line 5431
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static hasOverlappingRendering(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 5451
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static hasTransientState(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 5371
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 3

    #@0
    .line 5446
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 1

    #@0
    .line 5381
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    #@3
    return-void
.end method

.method static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 5

    #@0
    .line 5386
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    #@3
    return-void
.end method

.method static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2

    #@0
    .line 5391
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    #@3
    return-void
.end method

.method static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 4

    #@0
    .line 5396
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    #@3
    return-void
.end method

.method static removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 2

    #@0
    .line 5462
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@3
    return-void
.end method

.method static requestFitSystemWindows(Landroid/view/View;)V
    .registers 1

    #@0
    .line 5436
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    #@3
    return-void
.end method

.method static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 5456
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method static setHasTransientState(Landroid/view/View;Z)V
    .registers 2

    #@0
    .line 5376
    invoke-virtual {p0, p1}, Landroid/view/View;->setHasTransientState(Z)V

    #@3
    return-void
.end method

.method static setImportantForAccessibility(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 5406
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@3
    return-void
.end method

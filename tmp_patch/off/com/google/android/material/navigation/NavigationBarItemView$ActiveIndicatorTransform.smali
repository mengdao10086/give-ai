.class Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;
.super Ljava/lang/Object;
.source "NavigationBarItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/navigation/NavigationBarItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActiveIndicatorTransform"
.end annotation


# static fields
.field private static final ALPHA_FRACTION:F = 0.2f

.field private static final SCALE_X_HIDDEN:F = 0.4f

.field private static final SCALE_X_SHOWN:F = 1.0f


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/navigation/NavigationBarItemView$1;)V
    .registers 2

    #@0
    .line 1027
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected calculateAlpha(FF)F
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float p2, p2, v0

    #@3
    if-nez p2, :cond_9

    #@5
    const v1, 0x3f4ccccd    # 0.8f

    #@8
    goto :goto_a

    #@9
    :cond_9
    move v1, v0

    #@a
    :goto_a
    const/high16 v2, 0x3f800000    # 1.0f

    #@c
    if-nez p2, :cond_10

    #@e
    move p2, v2

    #@f
    goto :goto_13

    #@10
    :cond_10
    const p2, 0x3e4ccccd    # 0.2f

    #@13
    .line 1046
    :goto_13
    invoke-static {v0, v2, v1, p2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    #@16
    move-result p1

    #@17
    return p1
.end method

.method protected calculateScaleX(FF)F
    .registers 4

    #@0
    const p2, 0x3ecccccd    # 0.4f

    #@3
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    .line 1052
    invoke-static {p2, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    #@8
    move-result p1

    #@9
    return p1
.end method

.method protected calculateScaleY(FF)F
    .registers 3

    #@0
    const/high16 p1, 0x3f800000    # 1.0f

    #@2
    return p1
.end method

.method public updateForProgress(FFLandroid/view/View;)V
    .registers 5

    #@0
    .line 1076
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;->calculateScaleX(FF)F

    #@3
    move-result v0

    #@4
    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleX(F)V

    #@7
    .line 1077
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;->calculateScaleY(FF)F

    #@a
    move-result v0

    #@b
    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleY(F)V

    #@e
    .line 1078
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;->calculateAlpha(FF)F

    #@11
    move-result p1

    #@12
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    #@15
    return-void
.end method

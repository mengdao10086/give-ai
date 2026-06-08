.class public Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
.super Lcom/google/android/material/transformation/FabTransformationBehavior;
.source "FabTransformationSheetBehavior.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 53
    invoke-direct {p0}, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    return-void
.end method

.method private updateImportantForAccessibility(Landroid/view/View;Z)V
    .registers 10

    #@0
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 85
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@6
    if-nez v1, :cond_9

    #@8
    return-void

    #@9
    .line 89
    :cond_9
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@b
    .line 90
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@e
    move-result v1

    #@f
    if-eqz p2, :cond_18

    #@11
    .line 92
    new-instance v2, Ljava/util/HashMap;

    #@13
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    #@16
    iput-object v2, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    #@18
    :cond_18
    const/4 v2, 0x0

    #@19
    move v3, v2

    #@1a
    :goto_1a
    if-ge v3, v1, :cond_6e

    #@1c
    .line 96
    invoke-virtual {v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@1f
    move-result-object v4

    #@20
    .line 100
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@23
    move-result-object v5

    #@24
    instance-of v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@26
    if-eqz v5, :cond_38

    #@28
    .line 101
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2b
    move-result-object v5

    #@2c
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@2e
    invoke-virtual {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@31
    move-result-object v5

    #@32
    instance-of v5, v5, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;

    #@34
    if-eqz v5, :cond_38

    #@36
    const/4 v5, 0x1

    #@37
    goto :goto_39

    #@38
    :cond_38
    move v5, v2

    #@39
    :goto_39
    if-eq v4, p1, :cond_6b

    #@3b
    if-eqz v5, :cond_3e

    #@3d
    goto :goto_6b

    #@3e
    :cond_3e
    if-nez p2, :cond_5a

    #@40
    .line 108
    iget-object v5, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    #@42
    if-eqz v5, :cond_6b

    #@44
    .line 109
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_6b

    #@4a
    .line 111
    iget-object v5, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    #@4c
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v5

    #@50
    check-cast v5, Ljava/lang/Integer;

    #@52
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@55
    move-result v5

    #@56
    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@59
    goto :goto_6b

    #@5a
    .line 116
    :cond_5a
    iget-object v5, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    #@5c
    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    #@5f
    move-result v6

    #@60
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v6

    #@64
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    const/4 v5, 0x4

    #@68
    .line 119
    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@6b
    :cond_6b
    :goto_6b
    add-int/lit8 v3, v3, 0x1

    #@6d
    goto :goto_1a

    #@6e
    :cond_6e
    if-nez p2, :cond_73

    #@70
    const/4 p1, 0x0

    #@71
    .line 125
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    #@73
    :cond_73
    return-void
.end method


# virtual methods
.method protected onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    .registers 5

    #@0
    if-eqz p2, :cond_5

    #@2
    .line 64
    sget p2, Lcom/google/android/material/R$animator;->mtrl_fab_transformation_sheet_expand_spec:I

    #@4
    goto :goto_7

    #@5
    .line 66
    :cond_5
    sget p2, Lcom/google/android/material/R$animator;->mtrl_fab_transformation_sheet_collapse_spec:I

    #@7
    .line 69
    :goto_7
    new-instance v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    #@9
    invoke-direct {v0}, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;-><init>()V

    #@c
    .line 70
    invoke-static {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    #@f
    move-result-object p1

    #@10
    iput-object p1, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    #@12
    .line 71
    new-instance p1, Lcom/google/android/material/animation/Positioning;

    #@14
    const/16 p2, 0x11

    #@16
    const/4 v1, 0x0

    #@17
    invoke-direct {p1, p2, v1, v1}, Lcom/google/android/material/animation/Positioning;-><init>(IFF)V

    #@1a
    iput-object p1, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    #@1c
    return-object v0
.end method

.method protected onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z
    .registers 5

    #@0
    .line 79
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->updateImportantForAccessibility(Landroid/view/View;Z)V

    #@3
    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z

    #@6
    move-result p1

    #@7
    return p1
.end method

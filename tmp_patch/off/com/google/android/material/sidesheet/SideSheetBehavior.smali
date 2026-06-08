.class public Lcom/google/android/material/sidesheet/SideSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SideSheetBehavior.java"

# interfaces
.implements Lcom/google/android/material/sidesheet/Sheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;,
        Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;",
        "Lcom/google/android/material/sidesheet/Sheet<",
        "Lcom/google/android/material/sidesheet/SideSheetCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ACCESSIBILITY_PANE_TITLE:I

.field private static final DEF_STYLE_RES:I

.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field private static final NO_MAX_SIZE:I = -0x1

.field static final SIGNIFICANT_VEL_THRESHOLD:I = 0x1f4


# instance fields
.field private backgroundTint:Landroid/content/res/ColorStateList;

.field private final callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/material/sidesheet/SideSheetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private childWidth:I

.field private coplanarSiblingViewId:I

.field private coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private draggable:Z

.field private elevation:F

.field private hideFriction:F

.field private ignoreEvents:Z

.field private initialX:I

.field private lastStableState:I

.field private materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private maximumVelocity:F

.field private parentWidth:I

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

.field private state:I

.field private final stateSettlingTracker:Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "TV;>.StateSettlingTracker;"
        }
    .end annotation
.end field

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 66
    sget v0, Lcom/google/android/material/R$string;->side_sheet_accessibility_pane_title:I

    #@2
    sput v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->DEFAULT_ACCESSIBILITY_PANE_TITLE:I

    #@4
    .line 90
    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_SideSheet:I

    #@6
    sput v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->DEF_STYLE_RES:I

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 119
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    #@3
    .line 88
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    #@5
    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    #@8
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    #@a
    const/4 v0, 0x1

    #@b
    .line 94
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    #@d
    const/4 v0, 0x5

    #@e
    .line 96
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@10
    .line 98
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->lastStableState:I

    #@12
    const v0, 0x3dcccccd    # 0.1f

    #@15
    .line 104
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->hideFriction:F

    #@17
    const/4 v0, -0x1

    #@18
    .line 111
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewId:I

    #@1a
    .line 117
    new-instance v0, Ljava/util/LinkedHashSet;

    #@1c
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    #@21
    .line 685
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;

    #@23
    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    #@26
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    #@0
    .line 122
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 88
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    #@5
    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    #@8
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    #@a
    const/4 v0, 0x1

    #@b
    .line 94
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    #@d
    const/4 v1, 0x5

    #@e
    .line 96
    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@10
    .line 98
    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->lastStableState:I

    #@12
    const v1, 0x3dcccccd    # 0.1f

    #@15
    .line 104
    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->hideFriction:F

    #@17
    const/4 v1, -0x1

    #@18
    .line 111
    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewId:I

    #@1a
    .line 117
    new-instance v2, Ljava/util/LinkedHashSet;

    #@1c
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    #@1f
    iput-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    #@21
    .line 685
    new-instance v2, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;

    #@23
    invoke-direct {v2, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    #@26
    iput-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@28
    .line 124
    sget-object v2, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout:[I

    #@2a
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2d
    move-result-object v2

    #@2e
    .line 125
    sget v3, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_backgroundTint:I

    #@30
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_3e

    #@36
    .line 126
    sget v3, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_backgroundTint:I

    #@38
    .line 127
    invoke-static {p1, v2, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@3b
    move-result-object v3

    #@3c
    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    #@3e
    .line 130
    :cond_3e
    sget v3, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_shapeAppearance:I

    #@40
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_53

    #@46
    const/4 v3, 0x0

    #@47
    .line 131
    sget v4, Lcom/google/android/material/sidesheet/SideSheetBehavior;->DEF_STYLE_RES:I

    #@49
    .line 132
    invoke-static {p1, p2, v3, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@4c
    move-result-object p2

    #@4d
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@50
    move-result-object p2

    #@51
    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@53
    .line 134
    :cond_53
    sget p2, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_coplanarSiblingViewId:I

    #@55
    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@58
    move-result p2

    #@59
    if-eqz p2, :cond_64

    #@5b
    .line 135
    sget p2, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_coplanarSiblingViewId:I

    #@5d
    .line 136
    invoke-virtual {v2, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@60
    move-result p2

    #@61
    .line 135
    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setCoplanarSiblingViewId(I)V

    #@64
    .line 138
    :cond_64
    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->createMaterialShapeDrawableIfNeeded(Landroid/content/Context;)V

    #@67
    .line 140
    sget p2, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_android_elevation:I

    #@69
    const/high16 v1, -0x40800000    # -1.0f

    #@6b
    invoke-virtual {v2, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@6e
    move-result p2

    #@6f
    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->elevation:F

    #@71
    .line 142
    sget p2, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_behavior_draggable:I

    #@73
    invoke-virtual {v2, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@76
    move-result p2

    #@77
    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setDraggable(Z)V

    #@7a
    .line 144
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@7d
    .line 146
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getDefaultSheetEdge()I

    #@80
    move-result p2

    #@81
    invoke-direct {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setSheetEdge(I)V

    #@84
    .line 147
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@87
    move-result-object p1

    #@88
    .line 148
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@8b
    move-result p1

    #@8c
    int-to-float p1, p1

    #@8d
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->maximumVelocity:F

    #@8f
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I
    .registers 1

    #@0
    .line 63
    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@2
    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Ljava/lang/ref/WeakReference;
    .registers 1

    #@0
    .line 63
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Lcom/google/android/material/sidesheet/SheetDelegate;
    .registers 1

    #@0
    .line 63
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    #@2
    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;I)V
    .registers 3

    #@0
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->dispatchOnSlide(Landroid/view/View;I)V

    #@3
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Z
    .registers 1

    #@0
    .line 63
    iget-boolean p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    #@2
    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;IZ)V
    .registers 4

    #@0
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    #@3
    return-void
.end method

.method static synthetic access$600(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I
    .registers 1

    #@0
    .line 63
    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    #@2
    return p0
.end method

.method static synthetic access$700(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Landroidx/customview/widget/ViewDragHelper;
    .registers 1

    #@0
    .line 63
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@2
    return-object p0
.end method

.method private calculateCurrentOffset(ILandroid/view/View;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)I"
        }
    .end annotation

    #@0
    .line 365
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_2e

    #@5
    const/4 v1, 0x2

    #@6
    if-eq v0, v1, :cond_2e

    #@8
    const/4 p1, 0x3

    #@9
    if-eq v0, p1, :cond_2c

    #@b
    const/4 p1, 0x5

    #@c
    if-ne v0, p1, :cond_15

    #@e
    .line 374
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    #@10
    invoke-virtual {p1}, Lcom/google/android/material/sidesheet/SheetDelegate;->getHiddenOffset()I

    #@13
    move-result p1

    #@14
    goto :goto_35

    #@15
    .line 377
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    #@17
    new-instance p2, Ljava/lang/StringBuilder;

    #@19
    const-string v0, "Unexpected value: "

    #@1b
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object p2

    #@24
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object p2

    #@28
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw p1

    #@2c
    :cond_2c
    const/4 p1, 0x0

    #@2d
    goto :goto_35

    #@2e
    .line 371
    :cond_2e
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    #@30
    invoke-virtual {v0, p2}, Lcom/google/android/material/sidesheet/SheetDelegate;->getOutwardEdge(Landroid/view/View;)I

    #@33
    move-result p2

    #@34
    sub-int/2addr p1, p2

    #@35
    :goto_35
    return p1
.end method

.method private calculateDragDistance(FF)F
    .registers 3

    #@0
    sub-float/2addr p1, p2

    #@1
    .line 465
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@4
    move-result p1

    #@5
    return p1
.end method

.method private clearCoplanarSiblingView()V
    .registers 2

    #@0
    .line 804
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 805
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 807
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;

    #@a
    return-void
.end method

.method private createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;
    .registers 3

    #@0
    .line 955
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    #@5
    return-object v0
.end method

.method private createMaterialShapeDrawableIfNeeded(Landroid/content/Context;)V
    .registers 5

    #@0
    .line 634
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 638
    :cond_5
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@7
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@9
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@c
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@e
    .line 639
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@11
    .line 641
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    #@13
    if-eqz v0, :cond_1b

    #@15
    .line 642
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@17
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@1a
    goto :goto_32

    #@1b
    .line 645
    :cond_1b
    new-instance v0, Landroid/util/TypedValue;

    #@1d
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@20
    .line 646
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@23
    move-result-object p1

    #@24
    const v1, 0x1010031

    #@27
    const/4 v2, 0x1

    #@28
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@2b
    .line 647
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2d
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@2f
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    #@32
    :goto_32
    return-void
.end method

.method private dispatchOnSlide(Landroid/view/View;I)V
    .registers 5

    #@0
    .line 745
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_24

    #@8
    .line 746
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    #@a
    invoke-virtual {v0, p2}, Lcom/google/android/material/sidesheet/SheetDelegate;->calculateSlideOffsetBasedOnOutwardEdge(I)F

    #@d
    move-result p2

    #@e
    .line 747
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    #@10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v0

    #@14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_24

    #@1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/google/android/material/sidesheet/SheetCallback;

    #@20
    .line 748
    invoke-interface {v1, p1, p2}, Lcom/google/android/material/sidesheet/SheetCallback;->onSlide(Landroid/view/View;F)V

    #@23
    goto :goto_14

    #@24
    :cond_24
    return-void
.end method

.method private ensureAccessibilityPaneTitleIsSet(Landroid/view/View;)V
    .registers 4

    #@0
    .line 339
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_13

    #@6
    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    sget v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->DEFAULT_ACCESSIBILITY_PANE_TITLE:I

    #@c
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 340
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@13
    :cond_13
    return-void
.end method

.method public static from(Landroid/view/View;)Lcom/google/android/material/sidesheet/SideSheetBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    #@0
    .line 915
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p0

    #@4
    .line 916
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    if-eqz v0, :cond_1d

    #@8
    .line 919
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@a
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@d
    move-result-object p0

    #@e
    .line 920
    instance-of v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@10
    if-eqz v0, :cond_15

    #@12
    .line 923
    check-cast p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@14
    return-object p0

    #@15
    .line 921
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string v0, "The view is not associated with SideSheetBehavior"

    #@19
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw p0

    #@1d
    .line 917
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string v0, "The view is not a child of CoordinatorLayout"

    #@21
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw p0
.end method

.method private getChildMeasureSpec(IIII)I
    .registers 5

    #@0
    .line 255
    invoke-static {p1, p2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@3
    move-result p1

    #@4
    const/4 p2, -0x1

    #@5
    if-ne p3, p2, :cond_8

    #@7
    return p1

    #@8
    .line 259
    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@b
    move-result p2

    #@c
    .line 260
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@f
    move-result p1

    #@10
    const/high16 p4, 0x40000000    # 2.0f

    #@12
    if-eq p2, p4, :cond_22

    #@14
    if-nez p1, :cond_17

    #@16
    goto :goto_1b

    #@17
    .line 268
    :cond_17
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    #@1a
    move-result p3

    #@1b
    :goto_1b
    const/high16 p1, -0x80000000

    #@1d
    .line 267
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@20
    move-result p1

    #@21
    return p1

    #@22
    .line 263
    :cond_22
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    #@25
    move-result p1

    #@26
    invoke-static {p1, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@29
    move-result p1

    #@2a
    return p1
.end method

.method private getDefaultSheetEdge()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method private isDraggedFarEnough(Landroid/view/MotionEvent;)Z
    .registers 4

    #@0
    .line 457
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shouldHandleDraggingWithHelper()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    .line 460
    :cond_8
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->initialX:I

    #@a
    int-to-float v0, v0

    #@b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@e
    move-result p1

    #@f
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->calculateDragDistance(FF)F

    #@12
    move-result p1

    #@13
    .line 461
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@15
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    #@18
    move-result v0

    #@19
    int-to-float v0, v0

    #@1a
    cmpl-float p1, p1, v0

    #@1c
    if-lez p1, :cond_1f

    #@1e
    const/4 v1, 0x1

    #@1f
    :cond_1f
    return v1
.end method

.method private isLayingOut(Landroid/view/View;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    #@0
    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_14

    #@6
    .line 574
    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_14

    #@c
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@f
    move-result p1

    #@10
    if-eqz p1, :cond_14

    #@12
    const/4 p1, 0x1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 p1, 0x0

    #@15
    :goto_15
    return p1
.end method

.method private maybeAssignCoplanarSiblingViewBasedId(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .registers 4

    #@0
    .line 346
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;

    #@2
    if-nez v0, :cond_16

    #@4
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewId:I

    #@6
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_16

    #@9
    .line 347
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    #@c
    move-result-object p1

    #@d
    if-eqz p1, :cond_16

    #@f
    .line 349
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@14
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;

    #@16
    :cond_16
    return-void
.end method

.method private replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            "I)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 950
    invoke-direct {p0, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;

    #@4
    move-result-object p3

    #@5
    .line 949
    invoke-static {p1, p2, v0, p3}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    #@8
    return-void
.end method

.method private resetVelocity()V
    .registers 2

    #@0
    .line 617
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 618
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@7
    const/4 v0, 0x0

    #@8
    .line 619
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@a
    :cond_a
    return-void
.end method

.method private runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    #@0
    .line 565
    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->isLayingOut(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 566
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@9
    goto :goto_d

    #@a
    .line 568
    :cond_a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    #@d
    :goto_d
    return-void
.end method

.method private setSheetEdge(I)V
    .registers 5

    #@0
    .line 152
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SheetDelegate;->getSheetEdge()I

    #@7
    move-result v0

    #@8
    if-eq v0, p1, :cond_b

    #@a
    goto :goto_c

    #@b
    :cond_b
    return-void

    #@c
    :cond_c
    :goto_c
    if-nez p1, :cond_16

    #@e
    .line 155
    new-instance p1, Lcom/google/android/material/sidesheet/RightSheetDelegate;

    #@10
    invoke-direct {p1, p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    #@13
    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    #@15
    return-void

    #@16
    .line 159
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    const-string v2, "Invalid sheet edge position value: "

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object p1

    #@23
    const-string v1, ". Must be 0"

    #@25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object p1

    #@29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object p1

    #@2d
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0
.end method

.method private shouldHandleDraggingWithHelper()Z
    .registers 3

    #@0
    .line 630
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    #@6
    const/4 v1, 0x1

    #@7
    if-nez v0, :cond_f

    #@9
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@b
    if-ne v0, v1, :cond_e

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v1, 0x0

    #@f
    :cond_f
    :goto_f
    return v1
.end method

.method private shouldInterceptTouchEvent(Landroid/view/View;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    #@0
    .line 418
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_c

    #@6
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    #@9
    move-result-object p1

    #@a
    if-eqz p1, :cond_12

    #@c
    :cond_c
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    #@e
    if-eqz p1, :cond_12

    #@10
    const/4 p1, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p1, 0x0

    #@13
    :goto_13
    return p1
.end method

.method private startSettling(Landroid/view/View;IZ)V
    .registers 5

    #@0
    .line 660
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SheetDelegate;->isSettling(Landroid/view/View;IZ)Z

    #@5
    move-result p1

    #@6
    if-eqz p1, :cond_12

    #@8
    const/4 p1, 0x2

    #@9
    .line 662
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    #@c
    .line 663
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    #@e
    invoke-virtual {p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->continueSettlingToState(I)V

    #@11
    goto :goto_15

    #@12
    .line 665
    :cond_12
    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    #@15
    :goto_15
    return-void
.end method

.method private updateAccessibilityActions()V
    .registers 4

    #@0
    .line 927
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 930
    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/view/View;

    #@b
    if-nez v0, :cond_e

    #@d
    return-void

    #@e
    :cond_e
    const/high16 v1, 0x40000

    #@10
    .line 934
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    #@13
    const/high16 v1, 0x100000

    #@15
    .line 935
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    #@18
    .line 937
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@1a
    const/4 v2, 0x5

    #@1b
    if-eq v1, v2, :cond_22

    #@1d
    .line 938
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@1f
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    #@22
    .line 941
    :cond_22
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@24
    const/4 v2, 0x3

    #@25
    if-eq v1, v2, :cond_2c

    #@27
    .line 942
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@29
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    #@2c
    :cond_2c
    return-void
.end method

.method private updateSheetVisibility(Landroid/view/View;)V
    .registers 4

    #@0
    .line 331
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@2
    const/4 v1, 0x5

    #@3
    if-ne v0, v1, :cond_7

    #@5
    const/4 v0, 0x4

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 332
    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@b
    move-result v1

    #@c
    if-eq v1, v0, :cond_11

    #@e
    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@11
    :cond_11
    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Lcom/google/android/material/sidesheet/SheetCallback;)V
    .registers 2

    #@0
    .line 63
    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetCallback;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->addCallback(Lcom/google/android/material/sidesheet/SideSheetCallback;)V

    #@5
    return-void
.end method

.method public addCallback(Lcom/google/android/material/sidesheet/SideSheetCallback;)V
    .registers 3

    #@0
    .line 522
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public expand()V
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    .line 174
    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setState(I)V

    #@4
    return-void
.end method

.method getChildWidth()I
    .registers 2

    #@0
    .line 355
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->childWidth:I

    #@2
    return v0
.end method

.method public getCoplanarSiblingView()Landroid/view/View;
    .registers 2

    #@0
    .line 800
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_b

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/view/View;

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return-object v0
.end method

.method public getExpandedOffset()I
    .registers 2

    #@0
    .line 473
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SheetDelegate;->getExpandedOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHideFriction()F
    .registers 2

    #@0
    .line 508
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->hideFriction:F

    #@2
    return v0
.end method

.method getHideThreshold()F
    .registers 2

    #@0
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    return v0
.end method

.method public getLastStableState()I
    .registers 2

    #@0
    .line 829
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->lastStableState:I

    #@2
    return v0
.end method

.method getOutwardEdgeOffsetForState(I)I
    .registers 5

    #@0
    const/4 v0, 0x3

    #@1
    if-eq p1, v0, :cond_22

    #@3
    const/4 v0, 0x5

    #@4
    if-ne p1, v0, :cond_d

    #@6
    .line 674
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    #@8
    invoke-virtual {p1}, Lcom/google/android/material/sidesheet/SheetDelegate;->getHiddenOffset()I

    #@b
    move-result p1

    #@c
    return p1

    #@d
    .line 676
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    const-string v2, "Invalid state to get outward edge offset: "

    #@13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object p1

    #@1e
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 672
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getExpandedOffset()I

    #@25
    move-result p1

    #@26
    return p1
.end method

.method getParentWidth()I
    .registers 2

    #@0
    .line 359
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    #@2
    return v0
.end method

.method getSignificantVelocityThreshold()I
    .registers 2

    #@0
    const/16 v0, 0x1f4

    #@2
    return v0
.end method

.method public getState()I
    .registers 2

    #@0
    .line 586
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@2
    return v0
.end method

.method getViewDragHelper()Landroidx/customview/widget/ViewDragHelper;
    .registers 2

    #@0
    .line 682
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@2
    return-object v0
.end method

.method getXVelocity()F
    .registers 4

    #@0
    .line 652
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    :cond_6
    const/16 v1, 0x3e8

    #@8
    .line 655
    iget v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->maximumVelocity:F

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@d
    .line 656
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@f
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public hide()V
    .registers 2

    #@0
    const/4 v0, 0x5

    #@1
    .line 182
    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setState(I)V

    #@4
    return-void
.end method

.method public isDraggable()Z
    .registers 2

    #@0
    .line 488
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    #@2
    return v0
.end method

.method synthetic lambda$createAccessibilityViewCommandForState$1$com-google-android-material-sidesheet-SideSheetBehavior(ILandroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .registers 4

    #@0
    .line 956
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setState(I)V

    #@3
    const/4 p1, 0x1

    #@4
    return p1
.end method

.method synthetic lambda$setState$0$com-google-android-material-sidesheet-SideSheetBehavior(I)V
    .registers 4

    #@0
    .line 556
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    if-eqz v0, :cond_e

    #@a
    const/4 v1, 0x0

    #@b
    .line 558
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    #@e
    :cond_e
    return-void
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .registers 2

    #@0
    .line 205
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 208
    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@6
    .line 209
    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@8
    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .registers 2

    #@0
    .line 214
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 216
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@6
    .line 217
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@8
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    #@0
    .line 385
    invoke-direct {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shouldInterceptTouchEvent(Landroid/view/View;)Z

    #@3
    move-result p1

    #@4
    const/4 p2, 0x1

    #@5
    const/4 v0, 0x0

    #@6
    if-nez p1, :cond_b

    #@8
    .line 386
    iput-boolean p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ignoreEvents:Z

    #@a
    return v0

    #@b
    .line 389
    :cond_b
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    #@e
    move-result p1

    #@f
    if-nez p1, :cond_14

    #@11
    .line 392
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->resetVelocity()V

    #@14
    .line 394
    :cond_14
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@16
    if-nez v1, :cond_1e

    #@18
    .line 395
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@1b
    move-result-object v1

    #@1c
    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@1e
    .line 397
    :cond_1e
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@20
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@23
    if-eqz p1, :cond_32

    #@25
    if-eq p1, p2, :cond_2b

    #@27
    const/4 v1, 0x3

    #@28
    if-eq p1, v1, :cond_2b

    #@2a
    goto :goto_39

    #@2b
    .line 402
    :cond_2b
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ignoreEvents:Z

    #@2d
    if-eqz p1, :cond_39

    #@2f
    .line 403
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ignoreEvents:Z

    #@31
    return v0

    #@32
    .line 408
    :cond_32
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@35
    move-result p1

    #@36
    float-to-int p1, p1

    #@37
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->initialX:I

    #@39
    .line 412
    :cond_39
    :goto_39
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ignoreEvents:Z

    #@3b
    if-nez p1, :cond_48

    #@3d
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@3f
    if-eqz p1, :cond_48

    #@41
    .line 414
    invoke-virtual {p1, p3}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@44
    move-result p1

    #@45
    if-eqz p1, :cond_48

    #@47
    goto :goto_49

    #@48
    :cond_48
    move p2, v0

    #@49
    :goto_49
    return p2
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    #@0
    .line 276
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_10

    #@7
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_10

    #@d
    .line 277
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    #@10
    .line 280
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@12
    if-nez v0, :cond_4d

    #@14
    .line 282
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@16
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@19
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@1b
    .line 285
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1d
    if-eqz v0, :cond_34

    #@1f
    .line 286
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 288
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@24
    .line 289
    iget v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->elevation:F

    #@26
    const/high16 v3, -0x40800000    # -1.0f

    #@28
    cmpl-float v3, v2, v3

    #@2a
    if-nez v3, :cond_30

    #@2c
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@2f
    move-result v2

    #@30
    .line 288
    :cond_30
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@33
    goto :goto_3b

    #@34
    .line 290
    :cond_34
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    #@36
    if-eqz v0, :cond_3b

    #@38
    .line 291
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    #@3b
    .line 293
    :cond_3b
    :goto_3b
    invoke-direct {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->updateSheetVisibility(Landroid/view/View;)V

    #@3e
    .line 295
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->updateAccessibilityActions()V

    #@41
    .line 296
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@44
    move-result v0

    #@45
    if-nez v0, :cond_4a

    #@47
    .line 298
    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@4a
    .line 300
    :cond_4a
    invoke-direct {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ensureAccessibilityPaneTitleIsSet(Landroid/view/View;)V

    #@4d
    .line 302
    :cond_4d
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@4f
    if-nez v0, :cond_59

    #@51
    .line 303
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@53
    invoke-static {p1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@59
    .line 306
    :cond_59
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    #@5b
    invoke-virtual {v0, p2}, Lcom/google/android/material/sidesheet/SheetDelegate;->getOutwardEdge(Landroid/view/View;)I

    #@5e
    move-result v0

    #@5f
    .line 308
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    #@62
    .line 310
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    #@65
    move-result p3

    #@66
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    #@68
    .line 311
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    #@6b
    move-result p3

    #@6c
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->childWidth:I

    #@6e
    .line 313
    invoke-direct {p0, v0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->calculateCurrentOffset(ILandroid/view/View;)I

    #@71
    move-result p3

    #@72
    .line 315
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    #@75
    .line 317
    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->maybeAssignCoplanarSiblingViewBasedId(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    #@78
    .line 319
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    #@7a
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7d
    move-result-object p1

    #@7e
    :cond_7e
    :goto_7e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@81
    move-result p3

    #@82
    if-eqz p3, :cond_94

    #@84
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@87
    move-result-object p3

    #@88
    check-cast p3, Lcom/google/android/material/sidesheet/SheetCallback;

    #@8a
    .line 320
    instance-of v0, p3, Lcom/google/android/material/sidesheet/SideSheetCallback;

    #@8c
    if-eqz v0, :cond_7e

    #@8e
    .line 321
    check-cast p3, Lcom/google/android/material/sidesheet/SideSheetCallback;

    #@90
    .line 322
    invoke-virtual {p3, p2}, Lcom/google/android/material/sidesheet/SideSheetCallback;->onLayout(Landroid/view/View;)V

    #@93
    goto :goto_7e

    #@94
    :cond_94
    return v1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    #@0
    .line 228
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 232
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    #@9
    move-result v1

    #@a
    .line 233
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@11
    add-int/2addr v1, v2

    #@12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@14
    add-int/2addr v1, v2

    #@15
    add-int/2addr v1, p4

    #@16
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@18
    const/4 v2, -0x1

    #@19
    .line 230
    invoke-direct {p0, p3, v1, v2, p4}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getChildMeasureSpec(IIII)I

    #@1c
    move-result p3

    #@1d
    .line 242
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    #@20
    move-result p4

    #@21
    .line 243
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    #@24
    move-result p1

    #@25
    add-int/2addr p4, p1

    #@26
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@28
    add-int/2addr p4, p1

    #@29
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@2b
    add-int/2addr p4, p1

    #@2c
    add-int/2addr p4, p6

    #@2d
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@2f
    .line 240
    invoke-direct {p0, p5, p4, v2, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getChildMeasureSpec(IIII)I

    #@32
    move-result p1

    #@33
    .line 249
    invoke-virtual {p2, p3, p1}, Landroid/view/View;->measure(II)V

    #@36
    const/4 p1, 0x1

    #@37
    return p1
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    #@0
    .line 194
    check-cast p3, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;

    #@2
    .line 195
    invoke-virtual {p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 196
    invoke-virtual {p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@b
    move-result-object v0

    #@c
    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    #@f
    .line 199
    :cond_f
    iget p1, p3, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->state:I

    #@11
    const/4 p2, 0x1

    #@12
    if-eq p1, p2, :cond_1d

    #@14
    iget p1, p3, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->state:I

    #@16
    const/4 p2, 0x2

    #@17
    if-ne p1, p2, :cond_1a

    #@19
    goto :goto_1d

    #@1a
    :cond_1a
    iget p1, p3, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->state:I

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    :goto_1d
    const/4 p1, 0x5

    #@1e
    :goto_1e
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@20
    .line 200
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->lastStableState:I

    #@22
    return-void
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    #@0
    .line 188
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;

    #@2
    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    #@5
    move-result-object p1

    #@6
    invoke-direct {v0, p1, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    #@9
    return-object v0
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    #@0
    .line 428
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    #@3
    move-result p1

    #@4
    if-nez p1, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return p1

    #@8
    .line 431
    :cond_8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    #@b
    move-result p1

    #@c
    .line 432
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@e
    const/4 v1, 0x1

    #@f
    if-ne v0, v1, :cond_14

    #@11
    if-nez p1, :cond_14

    #@13
    return v1

    #@14
    .line 435
    :cond_14
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shouldHandleDraggingWithHelper()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1f

    #@1a
    .line 436
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@1c
    invoke-virtual {v0, p3}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    #@1f
    :cond_1f
    if-nez p1, :cond_24

    #@21
    .line 440
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->resetVelocity()V

    #@24
    .line 442
    :cond_24
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@26
    if-nez v0, :cond_2e

    #@28
    .line 443
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@2e
    .line 445
    :cond_2e
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@30
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@33
    .line 448
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shouldHandleDraggingWithHelper()Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_53

    #@39
    const/4 v0, 0x2

    #@3a
    if-ne p1, v0, :cond_53

    #@3c
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ignoreEvents:Z

    #@3e
    if-nez p1, :cond_53

    #@40
    .line 449
    invoke-direct {p0, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->isDraggedFarEnough(Landroid/view/MotionEvent;)Z

    #@43
    move-result p1

    #@44
    if-eqz p1, :cond_53

    #@46
    .line 450
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@48
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    #@4b
    move-result v0

    #@4c
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@4f
    move-result p3

    #@50
    invoke-virtual {p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    #@53
    .line 453
    :cond_53
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ignoreEvents:Z

    #@55
    xor-int/2addr p1, v1

    #@56
    return p1
.end method

.method public bridge synthetic removeCallback(Lcom/google/android/material/sidesheet/SheetCallback;)V
    .registers 2

    #@0
    .line 63
    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetCallback;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->removeCallback(Lcom/google/android/material/sidesheet/SideSheetCallback;)V

    #@5
    return-void
.end method

.method public removeCallback(Lcom/google/android/material/sidesheet/SideSheetCallback;)V
    .registers 3

    #@0
    .line 532
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public setCoplanarSiblingView(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    .line 782
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewId:I

    #@3
    if-nez p1, :cond_9

    #@5
    .line 784
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->clearCoplanarSiblingView()V

    #@8
    goto :goto_23

    #@9
    .line 786
    :cond_9
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@b
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@e
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;

    #@10
    .line 788
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@12
    if-eqz p1, :cond_23

    #@14
    .line 789
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@17
    move-result-object p1

    #@18
    check-cast p1, Landroid/view/View;

    #@1a
    .line 790
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_23

    #@20
    .line 791
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    #@23
    :cond_23
    :goto_23
    return-void
.end method

.method public setCoplanarSiblingViewId(I)V
    .registers 4

    #@0
    .line 761
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewId:I

    #@2
    .line 764
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->clearCoplanarSiblingView()V

    #@5
    .line 766
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@7
    if-eqz v0, :cond_1b

    #@9
    .line 767
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/view/View;

    #@f
    const/4 v1, -0x1

    #@10
    if-eq p1, v1, :cond_1b

    #@12
    .line 768
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@15
    move-result p1

    #@16
    if-eqz p1, :cond_1b

    #@18
    .line 769
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    #@1b
    :cond_1b
    return-void
.end method

.method public setDraggable(Z)V
    .registers 2

    #@0
    .line 484
    iput-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    #@2
    return-void
.end method

.method public setHideFriction(F)V
    .registers 2

    #@0
    .line 498
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->hideFriction:F

    #@2
    return-void
.end method

.method public setState(I)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_27

    #@3
    const/4 v1, 0x2

    #@4
    if-ne p1, v1, :cond_7

    #@6
    goto :goto_27

    #@7
    .line 549
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@9
    if-eqz v0, :cond_23

    #@b
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    if-nez v0, :cond_12

    #@11
    goto :goto_23

    #@12
    .line 553
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@14
    .line 554
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/view/View;

    #@1a
    new-instance v1, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;

    #@1c
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    #@1f
    .line 553
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    #@22
    goto :goto_26

    #@23
    .line 551
    :cond_23
    :goto_23
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    #@26
    :goto_26
    return-void

    #@27
    .line 543
    :cond_27
    :goto_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@29
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    const-string v3, "STATE_"

    #@2d
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@30
    if-ne p1, v0, :cond_35

    #@32
    const-string p1, "DRAGGING"

    #@34
    goto :goto_37

    #@35
    :cond_35
    const-string p1, "SETTLING"

    #@37
    .line 545
    :goto_37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object p1

    #@3b
    const-string v0, " should not be set externally."

    #@3d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object p1

    #@41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object p1

    #@45
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v1
.end method

.method setStateInternal(I)V
    .registers 5

    #@0
    .line 590
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 593
    :cond_5
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    #@7
    const/4 v0, 0x3

    #@8
    if-eq p1, v0, :cond_d

    #@a
    const/4 v0, 0x5

    #@b
    if-ne p1, v0, :cond_f

    #@d
    .line 595
    :cond_d
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->lastStableState:I

    #@f
    .line 598
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@11
    if-nez v0, :cond_14

    #@13
    return-void

    #@14
    .line 602
    :cond_14
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/view/View;

    #@1a
    if-nez v0, :cond_1d

    #@1c
    return-void

    #@1d
    .line 607
    :cond_1d
    invoke-direct {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->updateSheetVisibility(Landroid/view/View;)V

    #@20
    .line 609
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    #@22
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_36

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Lcom/google/android/material/sidesheet/SheetCallback;

    #@32
    .line 610
    invoke-interface {v2, v0, p1}, Lcom/google/android/material/sidesheet/SheetCallback;->onStateChanged(Landroid/view/View;I)V

    #@35
    goto :goto_26

    #@36
    .line 613
    :cond_36
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->updateAccessibilityActions()V

    #@39
    return-void
.end method

.method shouldHide(Landroid/view/View;F)Z
    .registers 4

    #@0
    .line 624
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/sidesheet/SheetDelegate;->shouldHide(Landroid/view/View;F)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public shouldSkipSmoothAnimation()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

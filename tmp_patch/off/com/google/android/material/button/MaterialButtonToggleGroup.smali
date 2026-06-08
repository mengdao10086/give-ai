.class public Lcom/google/android/material/button/MaterialButtonToggleGroup;
.super Landroid/widget/LinearLayout;
.source "MaterialButtonToggleGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final LOG_TAG:Ljava/lang/String; = "MButtonToggleGroup"


# instance fields
.field private checkedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private childOrder:[Ljava/lang/Integer;

.field private final childOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultCheckId:I

.field private final onButtonCheckedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final originalCornerData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;",
            ">;"
        }
    .end annotation
.end field

.field private final pressedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

.field private selectionRequired:Z

.field private singleSelection:Z

.field private skipCheckedStateTracker:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 143
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialButtonToggleGroup:I

    #@2
    sput v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->DEF_STYLE_RES:I

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 180
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 184
    sget v0, Lcom/google/android/material/R$attr;->materialButtonToggleGroupStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    #@0
    .line 189
    sget v4, Lcom/google/android/material/button/MaterialButtonToggleGroup;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 146
    new-instance p1, Ljava/util/ArrayList;

    #@b
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    #@10
    .line 148
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    #@12
    const/4 v0, 0x0

    #@13
    invoke-direct {p1, p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$1;)V

    #@16
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->pressedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    #@18
    .line 149
    new-instance p1, Ljava/util/LinkedHashSet;

    #@1a
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    #@1d
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    #@1f
    .line 151
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    #@21
    invoke-direct {p1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    #@24
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrderComparator:Ljava/util/Comparator;

    #@26
    const/4 p1, 0x0

    #@27
    .line 171
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    #@29
    .line 177
    new-instance v0, Ljava/util/HashSet;

    #@2b
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@2e
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    #@30
    .line 191
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getContext()Landroid/content/Context;

    #@33
    move-result-object v0

    #@34
    .line 192
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup:[I

    #@36
    new-array v5, p1, [I

    #@38
    move-object v1, p2

    #@39
    move v3, p3

    #@3a
    .line 193
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@3d
    move-result-object p2

    #@3e
    .line 196
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup_singleSelection:I

    #@40
    .line 197
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@43
    move-result p3

    #@44
    .line 196
    invoke-virtual {p0, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    #@47
    .line 198
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup_checkedButton:I

    #@49
    const/4 v0, -0x1

    #@4a
    .line 199
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4d
    move-result p3

    #@4e
    iput p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->defaultCheckId:I

    #@50
    .line 201
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup_selectionRequired:I

    #@52
    .line 202
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@55
    move-result p1

    #@56
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    #@58
    const/4 p1, 0x1

    #@59
    .line 203
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setChildrenDrawingOrderEnabled(Z)V

    #@5c
    .line 204
    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup_android_enabled:I

    #@5e
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@61
    move-result p3

    #@62
    invoke-virtual {p0, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setEnabled(Z)V

    #@65
    .line 205
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@68
    .line 207
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@6b
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/button/MaterialButtonToggleGroup;Landroid/view/View;)I
    .registers 2

    #@0
    .line 125
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getIndexWithinVisibleButtons(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private adjustChildMarginsAndUpdateLayout()V
    .registers 8

    #@0
    .line 504
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getFirstVisibleChildIndex()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_8

    #@7
    return-void

    #@8
    :cond_8
    add-int/lit8 v1, v0, 0x1

    #@a
    .line 509
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    #@d
    move-result v2

    #@e
    if-ge v1, v2, :cond_49

    #@10
    .line 511
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    #@13
    move-result-object v2

    #@14
    add-int/lit8 v3, v1, -0x1

    #@16
    .line 512
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    #@19
    move-result-object v3

    #@1a
    .line 516
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    #@1d
    move-result v4

    #@1e
    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    #@21
    move-result v3

    #@22
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    #@25
    move-result v3

    #@26
    .line 518
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->buildLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    #@29
    move-result-object v4

    #@2a
    .line 519
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    #@2d
    move-result v5

    #@2e
    const/4 v6, 0x0

    #@2f
    if-nez v5, :cond_3b

    #@31
    .line 520
    invoke-static {v4, v6}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@34
    neg-int v3, v3

    #@35
    .line 521
    invoke-static {v4, v3}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@38
    .line 522
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@3a
    goto :goto_43

    #@3b
    .line 524
    :cond_3b
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@3d
    neg-int v3, v3

    #@3e
    .line 525
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@40
    .line 526
    invoke-static {v4, v6}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@43
    .line 529
    :goto_43
    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@46
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_a

    #@49
    .line 532
    :cond_49
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->resetChildMargins(I)V

    #@4c
    return-void
.end method

.method private buildLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    #@0
    .line 736
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    .line 737
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 738
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    #@a
    return-object p1

    #@b
    .line 741
    :cond_b
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@d
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@f
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@11
    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@14
    return-object v0
.end method

.method private checkInternal(IZ)V
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_18

    #@3
    .line 669
    new-instance p2, Ljava/lang/StringBuilder;

    #@5
    const-string v0, "Button ID is not valid: "

    #@7
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d
    move-result-object p1

    #@e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11
    move-result-object p1

    #@12
    const-string p2, "MButtonToggleGroup"

    #@14
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    return-void

    #@18
    .line 672
    :cond_18
    new-instance v0, Ljava/util/HashSet;

    #@1a
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    #@1c
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@1f
    if-eqz p2, :cond_40

    #@21
    .line 673
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v1

    #@25
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_40

    #@2b
    .line 674
    iget-boolean p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    #@2d
    if-eqz p2, :cond_38

    #@2f
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@32
    move-result p2

    #@33
    if-nez p2, :cond_38

    #@35
    .line 675
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@38
    .line 677
    :cond_38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object p1

    #@3c
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_5e

    #@40
    :cond_40
    if-nez p2, :cond_61

    #@42
    .line 678
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object p2

    #@46
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@49
    move-result p2

    #@4a
    if-eqz p2, :cond_61

    #@4c
    .line 680
    iget-boolean p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    #@4e
    if-eqz p2, :cond_57

    #@50
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@53
    move-result p2

    #@54
    const/4 v1, 0x1

    #@55
    if-le p2, v1, :cond_5e

    #@57
    .line 681
    :cond_57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object p1

    #@5b
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5e
    .line 687
    :cond_5e
    :goto_5e
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedIds(Ljava/util/Set;)V

    #@61
    :cond_61
    return-void
.end method

.method private dispatchOnButtonChecked(IZ)V
    .registers 5

    #@0
    .line 704
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_16

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

    #@12
    .line 705
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;->onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method private getChildButton(I)Lcom/google/android/material/button/MaterialButton;
    .registers 2

    #@0
    .line 536
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    #@6
    return-object p1
.end method

.method private getFirstVisibleChildIndex()I
    .registers 4

    #@0
    .line 579
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_11

    #@7
    .line 581
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_e

    #@d
    return v1

    #@e
    :cond_e
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_5

    #@11
    :cond_11
    const/4 v0, -0x1

    #@12
    return v0
.end method

.method private getIndexWithinVisibleButtons(Landroid/view/View;)I
    .registers 6

    #@0
    .line 616
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    #@2
    const/4 v1, -0x1

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    move v2, v0

    #@8
    .line 620
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    #@b
    move-result v3

    #@c
    if-ge v0, v3, :cond_28

    #@e
    .line 621
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v3

    #@12
    if-ne v3, p1, :cond_15

    #@14
    return v2

    #@15
    .line 624
    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v3

    #@19
    instance-of v3, v3, Lcom/google/android/material/button/MaterialButton;

    #@1b
    if-eqz v3, :cond_25

    #@1d
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_25

    #@23
    add-int/lit8 v2, v2, 0x1

    #@25
    :cond_25
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_8

    #@28
    :cond_28
    return v1
.end method

.method private getLastVisibleChildIndex()I
    .registers 3

    #@0
    .line 590
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    :goto_6
    if-ltz v0, :cond_12

    #@8
    .line 592
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_f

    #@e
    return v0

    #@f
    :cond_f
    add-int/lit8 v0, v0, -0x1

    #@11
    goto :goto_6

    #@12
    :cond_12
    const/4 v0, -0x1

    #@13
    return v0
.end method

.method private getNewCornerData(III)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    .registers 6

    #@0
    .line 634
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    #@8
    if-ne p2, p3, :cond_b

    #@a
    return-object v0

    #@b
    .line 641
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_13

    #@11
    const/4 v1, 0x1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 v1, 0x0

    #@14
    :goto_14
    if-ne p1, p2, :cond_22

    #@16
    if-eqz v1, :cond_1d

    #@18
    .line 643
    invoke-static {v0, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->start(Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    #@1b
    move-result-object p1

    #@1c
    goto :goto_21

    #@1d
    :cond_1d
    invoke-static {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->top(Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    #@20
    move-result-object p1

    #@21
    :goto_21
    return-object p1

    #@22
    :cond_22
    if-ne p1, p3, :cond_30

    #@24
    if-eqz v1, :cond_2b

    #@26
    .line 647
    invoke-static {v0, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->end(Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    #@29
    move-result-object p1

    #@2a
    goto :goto_2f

    #@2b
    :cond_2b
    invoke-static {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottom(Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    #@2e
    move-result-object p1

    #@2f
    :goto_2f
    return-object p1

    #@30
    :cond_30
    const/4 p1, 0x0

    #@31
    return-object p1
.end method

.method private getVisibleButtonCount()I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 607
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    #@5
    move-result v2

    #@6
    if-ge v0, v2, :cond_1b

    #@8
    .line 608
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v2

    #@c
    instance-of v2, v2, Lcom/google/android/material/button/MaterialButton;

    #@e
    if-eqz v2, :cond_18

    #@10
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_18

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    :cond_18
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_2

    #@1b
    :cond_1b
    return v1
.end method

.method private isChildVisible(I)Z
    .registers 3

    #@0
    .line 601
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    .line 602
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@7
    move-result p1

    #@8
    const/16 v0, 0x8

    #@a
    if-eq p1, v0, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    return p1
.end method

.method private resetChildMargins(I)V
    .registers 5

    #@0
    .line 540
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_2b

    #@6
    const/4 v0, -0x1

    #@7
    if-ne p1, v0, :cond_a

    #@9
    goto :goto_2b

    #@a
    .line 544
    :cond_a
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    #@d
    move-result-object p1

    #@e
    .line 545
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@11
    move-result-object p1

    #@12
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    #@14
    .line 546
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    #@17
    move-result v0

    #@18
    const/4 v1, 0x1

    #@19
    const/4 v2, 0x0

    #@1a
    if-ne v0, v1, :cond_21

    #@1c
    .line 547
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@1e
    .line 548
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@20
    return-void

    #@21
    .line 552
    :cond_21
    invoke-static {p1, v2}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@24
    .line 553
    invoke-static {p1, v2}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@27
    .line 554
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@29
    .line 555
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@2b
    :cond_2b
    :goto_2b
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .registers 4

    #@0
    .line 484
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->findViewById(I)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    .line 485
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    #@6
    if-eqz v0, :cond_13

    #@8
    const/4 v0, 0x1

    #@9
    .line 486
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    #@b
    .line 487
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    #@d
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    #@10
    const/4 p1, 0x0

    #@11
    .line 488
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    #@13
    :cond_13
    return-void
.end method

.method private setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V
    .registers 4

    #@0
    .line 711
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_e

    #@7
    .line 712
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setId(I)V

    #@e
    :cond_e
    return-void
.end method

.method private setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 724
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setMaxLines(I)V

    #@4
    .line 725
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@6
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@9
    .line 726
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setCheckable(Z)V

    #@c
    .line 728
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->pressedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    #@e
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    #@11
    .line 731
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    #@14
    return-void
.end method

.method private static updateBuilderWithCornerData(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)V
    .registers 3

    #@0
    if-nez p1, :cond_7

    #@2
    const/4 p1, 0x0

    #@3
    .line 656
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@6
    return-void

    #@7
    .line 660
    :cond_7
    iget-object v0, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topLeft:Lcom/google/android/material/shape/CornerSize;

    #@9
    .line 661
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@c
    move-result-object p0

    #@d
    iget-object v0, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomLeft:Lcom/google/android/material/shape/CornerSize;

    #@f
    .line 662
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@12
    move-result-object p0

    #@13
    iget-object v0, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topRight:Lcom/google/android/material/shape/CornerSize;

    #@15
    .line 663
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@18
    move-result-object p0

    #@19
    iget-object p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomRight:Lcom/google/android/material/shape/CornerSize;

    #@1b
    .line 664
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@1e
    return-void
.end method

.method private updateCheckedIds(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 691
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    #@2
    .line 692
    new-instance v1, Ljava/util/HashSet;

    #@4
    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@7
    iput-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    #@9
    const/4 v1, 0x0

    #@a
    .line 693
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    #@d
    move-result v2

    #@e
    if-ge v1, v2, :cond_43

    #@10
    .line 694
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    #@17
    move-result v2

    #@18
    .line 695
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v3

    #@1c
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    #@23
    .line 696
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v3

    #@27
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v4

    #@2f
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    if-eq v3, v4, :cond_40

    #@35
    .line 697
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v3

    #@39
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3c
    move-result v3

    #@3d
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    #@40
    :cond_40
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_a

    #@43
    .line 700
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->invalidate()V

    #@46
    return-void
.end method

.method private updateChildOrder()V
    .registers 7

    #@0
    .line 759
    new-instance v0, Ljava/util/TreeMap;

    #@2
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrderComparator:Ljava/util/Comparator;

    #@4
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@7
    .line 760
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    #@a
    move-result v1

    #@b
    const/4 v2, 0x0

    #@c
    move v3, v2

    #@d
    :goto_d
    if-ge v3, v1, :cond_1d

    #@f
    .line 762
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    #@12
    move-result-object v4

    #@13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v5

    #@17
    invoke-interface {v0, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    add-int/lit8 v3, v3, 0x1

    #@1c
    goto :goto_d

    #@1d
    .line 765
    :cond_1d
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    #@20
    move-result-object v0

    #@21
    new-array v1, v2, [Ljava/lang/Integer;

    #@23
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, [Ljava/lang/Integer;

    #@29
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrder:[Ljava/lang/Integer;

    #@2b
    return-void
.end method


# virtual methods
.method public addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V
    .registers 3

    #@0
    .line 410
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    #@0
    .line 230
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    #@2
    if-nez v0, :cond_c

    #@4
    const-string p1, "MButtonToggleGroup"

    #@6
    const-string p2, "Child views must be of type MaterialButton."

    #@8
    .line 231
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    return-void

    #@c
    .line 235
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@f
    .line 236
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    #@11
    .line 237
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V

    #@14
    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V

    #@17
    .line 242
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    #@1a
    move-result p2

    #@1b
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    #@1e
    move-result p3

    #@1f
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkInternal(IZ)V

    #@22
    .line 245
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@25
    move-result-object p2

    #@26
    .line 246
    iget-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    #@28
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    #@2a
    .line 248
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@2d
    move-result-object v1

    #@2e
    .line 249
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@31
    move-result-object v2

    #@32
    .line 250
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@35
    move-result-object v3

    #@36
    .line 251
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@39
    move-result-object p2

    #@3a
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    #@3d
    .line 246
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@40
    .line 254
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isEnabled()Z

    #@43
    move-result p2

    #@44
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    #@47
    .line 256
    new-instance p2, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;

    #@49
    invoke-direct {p2, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    #@4c
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@4f
    return-void
.end method

.method public check(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 327
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkInternal(IZ)V

    #@4
    return-void
.end method

.method public clearChecked()V
    .registers 2

    #@0
    .line 353
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedIds(Ljava/util/Set;)V

    #@8
    return-void
.end method

.method public clearOnButtonCheckedListeners()V
    .registers 2

    #@0
    .line 425
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    #@5
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    #@0
    .line 220
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildOrder()V

    #@3
    .line 221
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@6
    return-void
.end method

.method public getCheckedButtonId()I
    .registers 2

    #@0
    .line 372
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    #@2
    if-eqz v0, :cond_1d

    #@4
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    #@6
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1d

    #@c
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    #@e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/lang/Integer;

    #@18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v0

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 v0, -0x1

    #@1e
    :goto_1e
    return v0
.end method

.method public getCheckedButtonIds()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 389
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 390
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    #@9
    move-result v2

    #@a
    if-ge v1, v2, :cond_2a

    #@c
    .line 391
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    #@13
    move-result v2

    #@14
    .line 392
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedIds:Ljava/util/Set;

    #@16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v4

    #@1a
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_27

    #@20
    .line 393
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    :cond_27
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_6

    #@2a
    :cond_2a
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4

    #@0
    .line 750
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrder:[Ljava/lang/Integer;

    #@2
    if-eqz p1, :cond_f

    #@4
    array-length v0, p1

    #@5
    if-lt p2, v0, :cond_8

    #@7
    goto :goto_f

    #@8
    .line 755
    :cond_8
    aget-object p1, p1, p2

    #@a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result p1

    #@e
    return p1

    #@f
    :cond_f
    :goto_f
    const-string p1, "MButtonToggleGroup"

    #@11
    const-string v0, "Child order wasn\'t updated"

    #@13
    .line 751
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    return p2
.end method

.method public isSelectionRequired()Z
    .registers 2

    #@0
    .line 468
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    #@2
    return v0
.end method

.method public isSingleSelection()Z
    .registers 2

    #@0
    .line 435
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    #@2
    return v0
.end method

.method onButtonCheckedStateChanged(Lcom/google/android/material/button/MaterialButton;Z)V
    .registers 4

    #@0
    .line 770
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 773
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    #@8
    move-result p1

    #@9
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkInternal(IZ)V

    #@c
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    #@0
    .line 212
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    #@3
    .line 213
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->defaultCheckId:I

    #@5
    const/4 v1, -0x1

    #@6
    if-eq v0, v1, :cond_13

    #@8
    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@f
    move-result-object v0

    #@10
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedIds(Ljava/util/Set;)V

    #@13
    :cond_13
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    #@0
    .line 302
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 303
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@6
    move-result-object p1

    #@7
    .line 307
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getVisibleButtonCount()I

    #@a
    move-result v0

    #@b
    .line 309
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isSingleSelection()Z

    #@e
    move-result v1

    #@f
    const/4 v2, 0x1

    #@10
    if-eqz v1, :cond_14

    #@12
    move v1, v2

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 v1, 0x2

    #@15
    :goto_15
    const/4 v3, 0x0

    #@16
    .line 305
    invoke-static {v2, v0, v3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    #@19
    move-result-object v0

    #@1a
    .line 304
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    #@1d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    #@0
    .line 294
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildShapes()V

    #@3
    .line 295
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->adjustChildMarginsAndUpdateLayout()V

    #@6
    .line 297
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@9
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4

    #@0
    .line 277
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    #@3
    .line 279
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    #@5
    if-eqz v0, :cond_e

    #@7
    .line 280
    move-object v0, p1

    #@8
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    #@e
    .line 283
    :cond_e
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->indexOfChild(Landroid/view/View;)I

    #@11
    move-result p1

    #@12
    if-ltz p1, :cond_19

    #@14
    .line 285
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    #@16
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@19
    .line 288
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildShapes()V

    #@1c
    .line 289
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->adjustChildMarginsAndUpdateLayout()V

    #@1f
    return-void
.end method

.method public removeOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V
    .registers 3

    #@0
    .line 420
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    #@0
    .line 783
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 785
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_14

    #@a
    .line 786
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    #@d
    move-result-object v1

    #@e
    .line 787
    invoke-virtual {v1, p1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_4

    #@14
    :cond_14
    return-void
.end method

.method public setSelectionRequired(Z)V
    .registers 2

    #@0
    .line 459
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    #@2
    return-void
.end method

.method public setSingleSelection(I)V
    .registers 3

    #@0
    .line 480
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    #@b
    return-void
.end method

.method public setSingleSelection(Z)V
    .registers 3

    #@0
    .line 447
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 448
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    #@6
    .line 449
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->clearChecked()V

    #@9
    :cond_9
    return-void
.end method

.method public uncheck(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 340
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkInternal(IZ)V

    #@4
    return-void
.end method

.method updateChildShapes()V
    .registers 8

    #@0
    .line 561
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 562
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getFirstVisibleChildIndex()I

    #@7
    move-result v1

    #@8
    .line 563
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getLastVisibleChildIndex()I

    #@b
    move-result v2

    #@c
    const/4 v3, 0x0

    #@d
    :goto_d
    if-ge v3, v0, :cond_35

    #@f
    .line 565
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    #@12
    move-result-object v4

    #@13
    .line 566
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getVisibility()I

    #@16
    move-result v5

    #@17
    const/16 v6, 0x8

    #@19
    if-ne v5, v6, :cond_1c

    #@1b
    goto :goto_32

    #@1c
    .line 570
    :cond_1c
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@23
    move-result-object v5

    #@24
    .line 571
    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getNewCornerData(III)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    #@27
    move-result-object v6

    #@28
    .line 572
    invoke-static {v5, v6}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateBuilderWithCornerData(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)V

    #@2b
    .line 574
    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    #@34
    goto :goto_d

    #@35
    :cond_35
    return-void
.end method

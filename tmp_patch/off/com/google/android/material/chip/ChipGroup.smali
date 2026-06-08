.class public Lcom/google/android/material/chip/ChipGroup;
.super Lcom/google/android/material/internal/FlowLayout;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;,
        Lcom/google/android/material/chip/ChipGroup$LayoutParams;,
        Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;,
        Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private final checkableGroup:Lcom/google/android/material/internal/CheckableGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/internal/CheckableGroup<",
            "Lcom/google/android/material/chip/Chip;",
            ">;"
        }
    .end annotation
.end field

.field private chipSpacingHorizontal:I

.field private chipSpacingVertical:I

.field private final defaultCheckedId:I

.field private onCheckedStateChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;

.field private final passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 113
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ChipGroup:I

    #@2
    sput v0, Lcom/google/android/material/chip/ChipGroup;->DEF_STYLE_RES:I

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 128
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 132
    sget v0, Lcom/google/android/material/R$attr;->chipGroupStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    #@0
    .line 136
    sget v4, Lcom/google/android/material/chip/ChipGroup;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 120
    new-instance p1, Lcom/google/android/material/internal/CheckableGroup;

    #@b
    invoke-direct {p1}, Lcom/google/android/material/internal/CheckableGroup;-><init>()V

    #@e
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    #@10
    .line 123
    new-instance v6, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    #@12
    const/4 v0, 0x0

    #@13
    invoke-direct {v6, p0, v0}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    #@16
    iput-object v6, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    #@18
    .line 138
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v0

    #@1c
    .line 140
    sget-object v2, Lcom/google/android/material/R$styleable;->ChipGroup:[I

    #@1e
    const/4 v7, 0x0

    #@1f
    new-array v5, v7, [I

    #@21
    move-object v1, p2

    #@22
    move v3, p3

    #@23
    .line 141
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@26
    move-result-object p2

    #@27
    .line 144
    sget p3, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacing:I

    #@29
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@2c
    move-result p3

    #@2d
    .line 145
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingHorizontal:I

    #@2f
    .line 146
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@32
    move-result v0

    #@33
    .line 145
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    #@36
    .line 147
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingVertical:I

    #@38
    .line 148
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@3b
    move-result p3

    #@3c
    .line 147
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    #@3f
    .line 149
    sget p3, Lcom/google/android/material/R$styleable;->ChipGroup_singleLine:I

    #@41
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@44
    move-result p3

    #@45
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    #@48
    .line 150
    sget p3, Lcom/google/android/material/R$styleable;->ChipGroup_singleSelection:I

    #@4a
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4d
    move-result p3

    #@4e
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    #@51
    .line 151
    sget p3, Lcom/google/android/material/R$styleable;->ChipGroup_selectionRequired:I

    #@53
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@56
    move-result p3

    #@57
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setSelectionRequired(Z)V

    #@5a
    .line 152
    sget p3, Lcom/google/android/material/R$styleable;->ChipGroup_checkedChip:I

    #@5c
    const/4 v0, -0x1

    #@5d
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@60
    move-result p3

    #@61
    iput p3, p0, Lcom/google/android/material/chip/ChipGroup;->defaultCheckedId:I

    #@63
    .line 154
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@66
    .line 156
    new-instance p2, Lcom/google/android/material/chip/ChipGroup$1;

    #@68
    invoke-direct {p2, p0}, Lcom/google/android/material/chip/ChipGroup$1;-><init>(Lcom/google/android/material/chip/ChipGroup;)V

    #@6b
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/CheckableGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;)V

    #@6e
    .line 167
    invoke-super {p0, v6}, Lcom/google/android/material/internal/FlowLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    #@71
    const/4 p1, 0x1

    #@72
    .line 169
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@75
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;
    .registers 1

    #@0
    .line 60
    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedStateChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/internal/CheckableGroup;
    .registers 1

    #@0
    .line 60
    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    #@2
    return-object p0
.end method

.method private getVisibleChipCount()I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 359
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    #@5
    move-result v2

    #@6
    if-ge v0, v2, :cond_1b

    #@8
    .line 360
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v2

    #@c
    instance-of v2, v2, Lcom/google/android/material/chip/Chip;

    #@e
    if-eqz v2, :cond_18

    #@10
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->isChildVisible(I)Z

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
    .registers 2

    #@0
    .line 391
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@7
    move-result p1

    #@8
    if-nez p1, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    :goto_d
    return p1
.end method


# virtual methods
.method public check(I)V
    .registers 3

    #@0
    .line 275
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableGroup;->check(I)V

    #@5
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    #@0
    .line 208
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    instance-of p1, p1, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    #@8
    if-eqz p1, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    :goto_d
    return p1
.end method

.method public clearCheck()V
    .registers 2

    #@0
    .line 318
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableGroup;->clearCheck()V

    #@5
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    #@0
    .line 203
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    #@2
    const/4 v1, -0x2

    #@3
    invoke-direct {v0, v1, v1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    #@0
    .line 191
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    #@0
    .line 197
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public getCheckedChipId()I
    .registers 2

    #@0
    .line 290
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableGroup;->getSingleCheckedId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCheckedChipIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 306
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    #@2
    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/CheckableGroup;->getCheckedIdsSortedByChildOrder(Landroid/view/ViewGroup;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getChipSpacingHorizontal()I
    .registers 2

    #@0
    .line 408
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    #@2
    return v0
.end method

.method public getChipSpacingVertical()I
    .registers 2

    #@0
    .line 428
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    #@2
    return v0
.end method

.method getIndexOfChip(Landroid/view/View;)I
    .registers 7

    #@0
    .line 373
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

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
    .line 377
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    #@b
    move-result v3

    #@c
    if-ge v0, v3, :cond_26

    #@e
    .line 378
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v3

    #@12
    .line 379
    instance-of v4, v3, Lcom/google/android/material/chip/Chip;

    #@14
    if-eqz v4, :cond_23

    #@16
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->isChildVisible(I)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_23

    #@1c
    .line 380
    check-cast v3, Lcom/google/android/material/chip/Chip;

    #@1e
    if-ne v3, p1, :cond_21

    #@20
    return v2

    #@21
    :cond_21
    add-int/lit8 v2, v2, 0x1

    #@23
    :cond_23
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_8

    #@26
    :cond_26
    return v1
.end method

.method public isSelectionRequired()Z
    .registers 2

    #@0
    .line 505
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableGroup;->isSelectionRequired()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSingleLine()Z
    .registers 2

    #@0
    .line 449
    invoke-super {p0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isSingleSelection()Z
    .registers 2

    #@0
    .line 466
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableGroup;->isSingleSelection()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    #@0
    .line 219
    invoke-super {p0}, Lcom/google/android/material/internal/FlowLayout;->onFinishInflate()V

    #@3
    .line 222
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->defaultCheckedId:I

    #@5
    const/4 v1, -0x1

    #@6
    if-eq v0, v1, :cond_d

    #@8
    .line 223
    iget-object v1, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    #@a
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CheckableGroup;->check(I)V

    #@d
    :cond_d
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    #@0
    .line 174
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 175
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@6
    move-result-object p1

    #@7
    .line 177
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->isSingleLine()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_12

    #@d
    invoke-direct {p0}, Lcom/google/android/material/chip/ChipGroup;->getVisibleChipCount()I

    #@10
    move-result v0

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, -0x1

    #@13
    .line 180
    :goto_13
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getRowCount()I

    #@16
    move-result v1

    #@17
    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->isSingleSelection()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1f

    #@1d
    const/4 v2, 0x1

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    const/4 v2, 0x2

    #@20
    :goto_20
    const/4 v3, 0x0

    #@21
    .line 179
    invoke-static {v1, v0, v3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    #@24
    move-result-object v0

    #@25
    .line 178
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    #@28
    return-void
.end method

.method public setChipSpacing(I)V
    .registers 2

    #@0
    .line 396
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    #@3
    .line 397
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    #@6
    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .registers 3

    #@0
    .line 413
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    #@2
    if-eq v0, p1, :cond_c

    #@4
    .line 414
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    #@6
    .line 415
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setItemSpacing(I)V

    #@9
    .line 416
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    #@c
    :cond_c
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .registers 3

    #@0
    .line 422
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    #@b
    return-void
.end method

.method public setChipSpacingResource(I)V
    .registers 3

    #@0
    .line 402
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacing(I)V

    #@b
    return-void
.end method

.method public setChipSpacingVertical(I)V
    .registers 3

    #@0
    .line 433
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    #@2
    if-eq v0, p1, :cond_c

    #@4
    .line 434
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    #@6
    .line 435
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setLineSpacing(I)V

    #@9
    .line 436
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    #@c
    :cond_c
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .registers 3

    #@0
    .line 442
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    #@b
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 230
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 238
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public setFlexWrap(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 260
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    if-nez p1, :cond_7

    #@2
    const/4 p1, 0x0

    #@3
    .line 331
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    #@6
    return-void

    #@7
    .line 334
    :cond_7
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$2;

    #@9
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/chip/ChipGroup$2;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    #@f
    return-void
.end method

.method public setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V
    .registers 2

    #@0
    .line 354
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedStateChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;

    #@2
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 3

    #@0
    .line 214
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    #@2
    # setter for: Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0, p1}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->access$302(Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@5
    return-void
.end method

.method public setSelectionRequired(Z)V
    .registers 3

    #@0
    .line 494
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableGroup;->setSelectionRequired(Z)V

    #@5
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 246
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public setShowDividerVertical(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 253
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public setSingleLine(I)V
    .registers 3

    #@0
    .line 461
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    #@b
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 2

    #@0
    .line 456
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->setSingleLine(Z)V

    #@3
    return-void
.end method

.method public setSingleSelection(I)V
    .registers 3

    #@0
    .line 484
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    #@b
    return-void
.end method

.method public setSingleSelection(Z)V
    .registers 3

    #@0
    .line 475
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableGroup;->setSingleSelection(Z)V

    #@5
    return-void
.end method

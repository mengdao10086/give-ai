.class public abstract Landroidx/customview/widget/ExploreByTouchHelper;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter<",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 100
    new-instance v0, Landroid/graphics/Rect;

    #@2
    const v1, 0x7fffffff

    #@5
    const/high16 v2, -0x80000000

    #@7
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@a
    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    #@c
    .line 335
    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$1;

    #@e
    invoke-direct {v0}, Landroidx/customview/widget/ExploreByTouchHelper$1;-><init>()V

    #@11
    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    #@13
    .line 347
    new-instance v0, Landroidx/customview/widget/ExploreByTouchHelper$2;

    #@15
    invoke-direct {v0}, Landroidx/customview/widget/ExploreByTouchHelper$2;-><init>()V

    #@18
    sput-object v0, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    #@1a
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    #@0
    .line 135
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    #@3
    .line 104
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@a
    .line 105
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@11
    .line 106
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    #@18
    const/4 v0, 0x2

    #@19
    new-array v0, v0, [I

    #@1b
    .line 107
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    #@1d
    const/high16 v0, -0x80000000

    #@1f
    .line 119
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    #@21
    .line 123
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    #@23
    .line 127
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    #@25
    if-eqz p1, :cond_45

    #@27
    .line 140
    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@29
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@2c
    move-result-object v0

    #@2d
    const-string v1, "accessibility"

    #@2f
    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    #@35
    iput-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@37
    const/4 v0, 0x1

    #@38
    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    #@3b
    .line 148
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@3e
    move-result v1

    #@3f
    if-nez v1, :cond_44

    #@41
    .line 150
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@44
    :cond_44
    return-void

    #@45
    .line 137
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@47
    const-string v0, "View may not be null"

    #@49
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw p1
.end method

.method private clearAccessibilityFocus(I)Z
    .registers 3

    #@0
    .line 1001
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    #@2
    if-ne v0, p1, :cond_14

    #@4
    const/high16 v0, -0x80000000

    #@6
    .line 1002
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    #@8
    .line 1003
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@a
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@d
    const/high16 v0, 0x10000

    #@f
    .line 1004
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@12
    const/4 p1, 0x1

    #@13
    return p1

    #@14
    :cond_14
    const/4 p1, 0x0

    #@15
    return p1
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .registers 4

    #@0
    .line 483
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-eq v0, v1, :cond_11

    #@6
    const/16 v1, 0x10

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {p0, v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_11

    #@f
    const/4 v0, 0x1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    :goto_12
    return v0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_8

    #@3
    .line 643
    invoke-direct {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    #@6
    move-result-object p1

    #@7
    return-object p1

    #@8
    .line 641
    :cond_8
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 6

    #@0
    .line 679
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@3
    move-result-object p2

    #@4
    .line 680
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@7
    move-result-object v0

    #@8
    .line 683
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 684
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    #@1a
    .line 685
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    #@1d
    move-result v1

    #@1e
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    #@21
    .line 686
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    #@24
    move-result v1

    #@25
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    #@28
    .line 687
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    #@2b
    move-result v1

    #@2c
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    #@2f
    .line 688
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    #@32
    move-result v1

    #@33
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    #@36
    .line 691
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    #@39
    .line 694
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@3c
    move-result-object v1

    #@3d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@40
    move-result v1

    #@41
    if-eqz v1, :cond_52

    #@43
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    #@46
    move-result-object v1

    #@47
    if-eqz v1, :cond_4a

    #@49
    goto :goto_52

    #@4a
    .line 695
    :cond_4a
    new-instance p1, Ljava/lang/RuntimeException;

    #@4c
    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    #@4e
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@51
    throw p1

    #@52
    .line 700
    :cond_52
    :goto_52
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@59
    .line 701
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@5b
    invoke-static {p2, v0, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    #@5e
    .line 702
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@63
    move-result-object p1

    #@64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@67
    move-result-object p1

    #@68
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    #@6b
    return-object p2
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 3

    #@0
    .line 655
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@3
    move-result-object p1

    #@4
    .line 656
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@6
    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@9
    return-object p1
.end method

.method private createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 9

    #@0
    .line 793
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    .line 796
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    #@8
    .line 797
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    #@b
    const-string v2, "android.view.View"

    #@d
    .line 798
    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    #@10
    .line 800
    sget-object v2, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    #@12
    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@15
    .line 801
    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    #@18
    .line 802
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@1a
    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    #@1d
    .line 805
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@20
    .line 808
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    #@23
    move-result-object v3

    #@24
    if-nez v3, :cond_35

    #@26
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    #@29
    move-result-object v3

    #@2a
    if-eqz v3, :cond_2d

    #@2c
    goto :goto_35

    #@2d
    .line 809
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    #@2f
    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    #@31
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw p1

    #@35
    .line 813
    :cond_35
    :goto_35
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@37
    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    #@3a
    .line 814
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@3c
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v3

    #@40
    if-nez v3, :cond_145

    #@42
    .line 819
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    #@45
    move-result v3

    #@46
    and-int/lit8 v4, v3, 0x40

    #@48
    if-nez v4, :cond_13d

    #@4a
    const/16 v4, 0x80

    #@4c
    and-int/2addr v3, v4

    #@4d
    if-nez v3, :cond_135

    #@4f
    .line 830
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@51
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    #@5c
    .line 831
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@5e
    invoke-virtual {v0, v3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    #@61
    .line 834
    iget v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    #@63
    const/4 v5, 0x0

    #@64
    if-ne v3, p1, :cond_6d

    #@66
    .line 835
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    #@69
    .line 836
    invoke-virtual {v0, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@6c
    goto :goto_75

    #@6d
    .line 838
    :cond_6d
    invoke-virtual {v0, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    #@70
    const/16 v3, 0x40

    #@72
    .line 839
    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@75
    .line 843
    :goto_75
    iget v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    #@77
    if-ne v3, p1, :cond_7b

    #@79
    move p1, v1

    #@7a
    goto :goto_7c

    #@7b
    :cond_7b
    move p1, v5

    #@7c
    :goto_7c
    if-eqz p1, :cond_83

    #@7e
    const/4 v3, 0x2

    #@7f
    .line 845
    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@82
    goto :goto_8c

    #@83
    .line 846
    :cond_83
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    #@86
    move-result v3

    #@87
    if-eqz v3, :cond_8c

    #@89
    .line 847
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@8c
    .line 849
    :cond_8c
    :goto_8c
    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    #@8f
    .line 851
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@91
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    #@93
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    #@96
    .line 855
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@98
    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@9b
    .line 856
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@9d
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result p1

    #@a1
    if-eqz p1, :cond_f5

    #@a3
    .line 857
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@a5
    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    #@a8
    .line 860
    iget p1, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    #@aa
    const/4 v2, -0x1

    #@ab
    if-eq p1, v2, :cond_da

    #@ad
    .line 861
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@b0
    move-result-object p1

    #@b1
    .line 863
    iget v3, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    #@b3
    :goto_b3
    if-eq v3, v2, :cond_d7

    #@b5
    .line 867
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@b7
    invoke-virtual {p1, v4, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V

    #@ba
    .line 868
    sget-object v4, Landroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    #@bc
    invoke-virtual {p1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@bf
    .line 870
    invoke-virtual {p0, v3, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@c2
    .line 871
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@c4
    invoke-virtual {p1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    #@c7
    .line 872
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@c9
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@cb
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@cd
    iget-object v6, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    #@cf
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@d1
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    #@d4
    .line 865
    iget v3, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    #@d6
    goto :goto_b3

    #@d7
    .line 874
    :cond_d7
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    #@da
    .line 877
    :cond_da
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@dc
    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    #@de
    aget v2, v2, v5

    #@e0
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@e2
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    #@e5
    move-result v3

    #@e6
    sub-int/2addr v2, v3

    #@e7
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    #@e9
    aget v3, v3, v1

    #@eb
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@ed
    .line 878
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    #@f0
    move-result v4

    #@f1
    sub-int/2addr v3, v4

    #@f2
    .line 877
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    #@f5
    .line 881
    :cond_f5
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@f7
    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    #@f9
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    #@fc
    move-result p1

    #@fd
    if-eqz p1, :cond_134

    #@ff
    .line 882
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    #@101
    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    #@103
    aget v2, v2, v5

    #@105
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@107
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    #@10a
    move-result v3

    #@10b
    sub-int/2addr v2, v3

    #@10c
    iget-object v3, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    #@10e
    aget v3, v3, v1

    #@110
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@112
    .line 883
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    #@115
    move-result v4

    #@116
    sub-int/2addr v3, v4

    #@117
    .line 882
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    #@11a
    .line 884
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@11c
    iget-object v2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    #@11e
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@121
    move-result p1

    #@122
    if-eqz p1, :cond_134

    #@124
    .line 886
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@126
    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    #@129
    .line 888
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    #@12b
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->isVisibleToUser(Landroid/graphics/Rect;)Z

    #@12e
    move-result p1

    #@12f
    if-eqz p1, :cond_134

    #@131
    .line 889
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    #@134
    :cond_134
    return-object v0

    #@135
    .line 825
    :cond_135
    new-instance p1, Ljava/lang/RuntimeException;

    #@137
    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    #@139
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13c
    throw p1

    #@13d
    .line 821
    :cond_13d
    new-instance p1, Ljava/lang/RuntimeException;

    #@13f
    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    #@141
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@144
    throw p1

    #@145
    .line 815
    :cond_145
    new-instance p1, Ljava/lang/RuntimeException;

    #@147
    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    #@149
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14c
    throw p1
.end method

.method private createNodeForHost()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 7

    #@0
    .line 736
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@2
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@5
    move-result-object v0

    #@6
    .line 737
    iget-object v1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@8
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@b
    .line 740
    new-instance v1, Ljava/util/ArrayList;

    #@d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 741
    invoke-virtual {p0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    #@13
    .line 743
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    #@16
    move-result v2

    #@17
    if-lez v2, :cond_28

    #@19
    .line 744
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v2

    #@1d
    if-gtz v2, :cond_20

    #@1f
    goto :goto_28

    #@20
    .line 745
    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    #@22
    const-string v1, "Views cannot have both real and virtual children"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 748
    :cond_28
    :goto_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v2

    #@2c
    const/4 v3, 0x0

    #@2d
    :goto_2d
    if-ge v3, v2, :cond_41

    #@2f
    .line 749
    iget-object v4, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@31
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v5

    #@35
    check-cast v5, Ljava/lang/Integer;

    #@37
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@3a
    move-result v5

    #@3b
    invoke-virtual {v0, v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    #@3e
    add-int/lit8 v3, v3, 0x1

    #@40
    goto :goto_2d

    #@41
    :cond_41
    return-object v0
.end method

.method private getAllNodes()Landroidx/collection/SparseArrayCompat;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    #@0
    .line 427
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 428
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    #@8
    .line 430
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    #@a
    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    #@d
    const/4 v2, 0x0

    #@e
    .line 431
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@11
    move-result v3

    #@12
    if-ge v2, v3, :cond_32

    #@14
    .line 434
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Ljava/lang/Integer;

    #@1a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1d
    move-result v3

    #@1e
    invoke-direct {p0, v3}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@21
    move-result-object v3

    #@22
    .line 435
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Ljava/lang/Integer;

    #@28
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v4

    #@2c
    invoke-virtual {v1, v4, v3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    #@2f
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_e

    #@32
    :cond_32
    return-object v1
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .registers 3

    #@0
    .line 328
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@3
    move-result-object p1

    #@4
    .line 329
    invoke-virtual {p1, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    #@7
    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    #@0
    .line 452
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@3
    move-result v0

    #@4
    .line 453
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@7
    move-result p0

    #@8
    const/16 v1, 0x11

    #@a
    const/4 v2, 0x0

    #@b
    if-eq p1, v1, :cond_2e

    #@d
    const/16 v1, 0x21

    #@f
    if-eq p1, v1, :cond_2a

    #@11
    const/16 v1, 0x42

    #@13
    const/4 v3, -0x1

    #@14
    if-eq p1, v1, :cond_26

    #@16
    const/16 p0, 0x82

    #@18
    if-ne p1, p0, :cond_1e

    #@1a
    .line 466
    invoke-virtual {p2, v2, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@1d
    goto :goto_31

    #@1e
    .line 469
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@20
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw p0

    #@26
    .line 463
    :cond_26
    invoke-virtual {p2, v3, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    #@29
    goto :goto_31

    #@2a
    .line 460
    :cond_2a
    invoke-virtual {p2, v2, p0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    #@2d
    goto :goto_31

    #@2e
    .line 457
    :cond_2e
    invoke-virtual {p2, v0, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    #@31
    :goto_31
    return-object p2
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_38

    #@3
    .line 935
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    #@6
    move-result p1

    #@7
    if-eqz p1, :cond_a

    #@9
    goto :goto_38

    #@a
    .line 940
    :cond_a
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@c
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    #@f
    move-result p1

    #@10
    if-eqz p1, :cond_13

    #@12
    return v0

    #@13
    .line 945
    :cond_13
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@18
    move-result-object p1

    #@19
    .line 946
    :goto_19
    instance-of v1, p1, Landroid/view/View;

    #@1b
    if-eqz v1, :cond_35

    #@1d
    .line 947
    check-cast p1, Landroid/view/View;

    #@1f
    .line 948
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    #@22
    move-result v1

    #@23
    const/4 v2, 0x0

    #@24
    cmpg-float v1, v1, v2

    #@26
    if-lez v1, :cond_34

    #@28
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_2f

    #@2e
    goto :goto_34

    #@2f
    .line 951
    :cond_2f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@32
    move-result-object p1

    #@33
    goto :goto_19

    #@34
    :cond_34
    :goto_34
    return v0

    #@35
    :cond_35
    if-eqz p1, :cond_38

    #@37
    const/4 v0, 0x1

    #@38
    :cond_38
    :goto_38
    return v0
.end method

.method private static keyToDirection(I)I
    .registers 2

    #@0
    const/16 v0, 0x13

    #@2
    if-eq p0, v0, :cond_15

    #@4
    const/16 v0, 0x15

    #@6
    if-eq p0, v0, :cond_12

    #@8
    const/16 v0, 0x16

    #@a
    if-eq p0, v0, :cond_f

    #@c
    const/16 p0, 0x82

    #@e
    return p0

    #@f
    :cond_f
    const/16 p0, 0x42

    #@11
    return p0

    #@12
    :cond_12
    const/16 p0, 0x11

    #@14
    return p0

    #@15
    :cond_15
    const/16 p0, 0x21

    #@17
    return p0
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .registers 12

    #@0
    .line 372
    invoke-direct {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAllNodes()Landroidx/collection/SparseArrayCompat;

    #@3
    move-result-object v7

    #@4
    .line 374
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    #@6
    const/high16 v8, -0x80000000

    #@8
    if-ne v0, v8, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    goto :goto_12

    #@c
    .line 376
    :cond_c
    invoke-virtual {v7, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@12
    :goto_12
    move-object v3, v0

    #@13
    const/4 v0, 0x1

    #@14
    if-eq p1, v0, :cond_57

    #@16
    const/4 v1, 0x2

    #@17
    if-eq p1, v1, :cond_57

    #@19
    const/16 v0, 0x11

    #@1b
    if-eq p1, v0, :cond_32

    #@1d
    const/16 v0, 0x21

    #@1f
    if-eq p1, v0, :cond_32

    #@21
    const/16 v0, 0x42

    #@23
    if-eq p1, v0, :cond_32

    #@25
    const/16 v0, 0x82

    #@27
    if-ne p1, v0, :cond_2a

    #@29
    goto :goto_32

    #@2a
    .line 410
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string p2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@2e
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw p1

    #@32
    .line 392
    :cond_32
    :goto_32
    new-instance v4, Landroid/graphics/Rect;

    #@34
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@37
    .line 393
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    #@39
    if-eq v0, v8, :cond_3f

    #@3b
    .line 395
    invoke-direct {p0, v0, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->getBoundsInParent(ILandroid/graphics/Rect;)V

    #@3e
    goto :goto_4a

    #@3f
    :cond_3f
    if-eqz p2, :cond_45

    #@41
    .line 398
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@44
    goto :goto_4a

    #@45
    .line 404
    :cond_45
    iget-object p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@47
    invoke-static {p2, p1, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    #@4a
    .line 406
    :goto_4a
    sget-object v1, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    #@4c
    sget-object v2, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    #@4e
    move-object v0, v7

    #@4f
    move v5, p1

    #@50
    invoke-static/range {v0 .. v5}, Landroidx/customview/widget/FocusStrategy;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    #@53
    move-result-object p1

    #@54
    check-cast p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@56
    goto :goto_70

    #@57
    .line 382
    :cond_57
    iget-object p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@59
    .line 383
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@5c
    move-result p2

    #@5d
    if-ne p2, v0, :cond_61

    #@5f
    move v5, v0

    #@60
    goto :goto_63

    #@61
    :cond_61
    const/4 p2, 0x0

    #@62
    move v5, p2

    #@63
    .line 384
    :goto_63
    sget-object v1, Landroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/FocusStrategy$CollectionAdapter;

    #@65
    sget-object v2, Landroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    #@67
    const/4 v6, 0x0

    #@68
    move-object v0, v7

    #@69
    move v4, p1

    #@6a
    invoke-static/range {v0 .. v6}, Landroidx/customview/widget/FocusStrategy;->findNextFocusInRelativeDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    #@6d
    move-result-object p1

    #@6e
    check-cast p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@70
    :goto_70
    if-nez p1, :cond_73

    #@72
    goto :goto_7b

    #@73
    .line 419
    :cond_73
    invoke-virtual {v7, p1}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    #@76
    move-result p1

    #@77
    .line 420
    invoke-virtual {v7, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    #@7a
    move-result v8

    #@7b
    .line 423
    :goto_7b
    invoke-virtual {p0, v8}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    #@7e
    move-result p1

    #@7f
    return p1
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p2, v0, :cond_22

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p2, v0, :cond_1d

    #@6
    const/16 v0, 0x40

    #@8
    if-eq p2, v0, :cond_18

    #@a
    const/16 v0, 0x80

    #@c
    if-eq p2, v0, :cond_13

    #@e
    .line 921
    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    #@11
    move-result p1

    #@12
    return p1

    #@13
    .line 915
    :cond_13
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    #@16
    move-result p1

    #@17
    return p1

    #@18
    .line 913
    :cond_18
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    #@1b
    move-result p1

    #@1c
    return p1

    #@1d
    .line 919
    :cond_1d
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    #@20
    move-result p1

    #@21
    return p1

    #@22
    .line 917
    :cond_22
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    #@25
    move-result p1

    #@26
    return p1
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .registers 4

    #@0
    .line 907
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@2
    invoke-static {v0, p1, p2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method private requestAccessibilityFocus(I)Z
    .registers 4

    #@0
    .line 971
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_2c

    #@9
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@b
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_12

    #@11
    goto :goto_2c

    #@12
    .line 975
    :cond_12
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    #@14
    if-eq v0, p1, :cond_2c

    #@16
    const/high16 v1, -0x80000000

    #@18
    if-eq v0, v1, :cond_1d

    #@1a
    .line 978
    invoke-direct {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    #@1d
    .line 982
    :cond_1d
    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    #@1f
    .line 985
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@21
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@24
    const v0, 0x8000

    #@27
    .line 986
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@2a
    const/4 p1, 0x1

    #@2b
    return p1

    #@2c
    :cond_2c
    :goto_2c
    return v1
.end method

.method private updateHoveredVirtualView(I)V
    .registers 4

    #@0
    .line 614
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 619
    :cond_5
    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    #@7
    const/16 v1, 0x80

    #@9
    .line 623
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@c
    const/16 p1, 0x100

    #@e
    .line 624
    invoke-virtual {p0, v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@11
    return-void
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .registers 4

    #@0
    .line 1053
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    #@2
    const/4 v1, 0x0

    #@3
    if-eq v0, p1, :cond_6

    #@5
    return v1

    #@6
    :cond_6
    const/high16 v0, -0x80000000

    #@8
    .line 1058
    iput v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    #@a
    .line 1060
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    #@d
    const/16 v0, 0x8

    #@f
    .line 1061
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@12
    const/4 p1, 0x1

    #@13
    return p1
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    .line 182
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_40

    #@9
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@b
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_12

    #@11
    goto :goto_40

    #@12
    .line 186
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@15
    move-result v0

    #@16
    const/4 v2, 0x7

    #@17
    const/4 v3, 0x1

    #@18
    const/high16 v4, -0x80000000

    #@1a
    if-eq v0, v2, :cond_2e

    #@1c
    const/16 v2, 0x9

    #@1e
    if-eq v0, v2, :cond_2e

    #@20
    const/16 p1, 0xa

    #@22
    if-eq v0, p1, :cond_25

    #@24
    return v1

    #@25
    .line 193
    :cond_25
    iget p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    #@27
    if-eq p1, v4, :cond_2d

    #@29
    .line 194
    invoke-direct {p0, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    #@2c
    return v3

    #@2d
    :cond_2d
    return v1

    #@2e
    .line 189
    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@31
    move-result v0

    #@32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@35
    move-result p1

    #@36
    invoke-virtual {p0, v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    #@39
    move-result p1

    #@3a
    .line 190
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    #@3d
    if-eq p1, v4, :cond_40

    #@3f
    move v1, v3

    #@40
    :cond_40
    :goto_40
    return v1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8

    #@0
    .line 218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x1

    #@6
    if-eq v0, v2, :cond_5e

    #@8
    .line 220
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@b
    move-result v0

    #@c
    const/16 v3, 0x3d

    #@e
    const/4 v4, 0x0

    #@f
    if-eq v0, v3, :cond_48

    #@11
    const/16 v3, 0x42

    #@13
    if-eq v0, v3, :cond_37

    #@15
    packed-switch v0, :pswitch_data_60

    #@18
    goto :goto_5e

    #@19
    .line 226
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_5e

    #@1f
    .line 227
    invoke-static {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->keyToDirection(I)I

    #@22
    move-result v0

    #@23
    .line 228
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@26
    move-result p1

    #@27
    add-int/2addr p1, v2

    #@28
    move v3, v1

    #@29
    :goto_29
    if-ge v1, p1, :cond_35

    #@2b
    .line 230
    invoke-direct {p0, v0, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_35

    #@31
    add-int/lit8 v1, v1, 0x1

    #@33
    move v3, v2

    #@34
    goto :goto_29

    #@35
    :cond_35
    move v1, v3

    #@36
    goto :goto_5e

    #@37
    .line 240
    :cond_37
    :pswitch_37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_5e

    #@3d
    .line 241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@40
    move-result p1

    #@41
    if-nez p1, :cond_5e

    #@43
    .line 242
    invoke-direct {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->clickKeyboardFocusedVirtualView()Z

    #@46
    move v1, v2

    #@47
    goto :goto_5e

    #@48
    .line 248
    :cond_48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_54

    #@4e
    const/4 p1, 0x2

    #@4f
    .line 249
    invoke-direct {p0, p1, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    #@52
    move-result v1

    #@53
    goto :goto_5e

    #@54
    .line 250
    :cond_54
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@57
    move-result p1

    #@58
    if-eqz p1, :cond_5e

    #@5a
    .line 251
    invoke-direct {p0, v2, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    #@5d
    move-result v1

    #@5e
    :cond_5e
    :goto_5e
    return v1

    #@5f
    nop

    #@60
    :pswitch_data_60
    .packed-switch 0x13
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_37
    .end packed-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .registers 2

    #@0
    .line 290
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    #@2
    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 2

    #@0
    .line 157
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    #@2
    if-nez p1, :cond_b

    #@4
    .line 158
    new-instance p1, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    #@6
    invoke-direct {p1, p0}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroidx/customview/widget/ExploreByTouchHelper;)V

    #@9
    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    #@b
    .line 160
    :cond_b
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    #@d
    return-object p1
.end method

.method public getFocusedVirtualView()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 591
    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .registers 2

    #@0
    .line 298
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    #@2
    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x1

    #@2
    .line 528
    invoke-virtual {p0, v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    #@5
    return-void
.end method

.method public final invalidateVirtualView(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 544
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    #@4
    return-void
.end method

.method public final invalidateVirtualView(II)V
    .registers 5

    #@0
    const/high16 v0, -0x80000000

    #@2
    if-eq p1, v0, :cond_22

    #@4
    .line 568
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@6
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_22

    #@c
    .line 569
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@e
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_22

    #@14
    const/16 v1, 0x800

    #@16
    .line 572
    invoke-direct {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    #@19
    move-result-object p1

    #@1a
    .line 574
    invoke-static {p1, p2}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    #@1d
    .line 575
    iget-object p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@1f
    invoke-interface {v0, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@22
    :cond_22
    return-void
.end method

.method obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_8

    #@3
    .line 722
    invoke-direct {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForHost()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@6
    move-result-object p1

    #@7
    return-object p1

    #@8
    .line 725
    :cond_8
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6

    #@0
    .line 275
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    #@2
    const/high16 v1, -0x80000000

    #@4
    if-eq v0, v1, :cond_9

    #@6
    .line 276
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    #@9
    :cond_9
    if-eqz p1, :cond_e

    #@b
    .line 280
    invoke-direct {p0, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    #@e
    :cond_e
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    #@0
    .line 662
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 665
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    #@6
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    #@0
    .line 757
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@3
    .line 760
    invoke-virtual {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@6
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    #@0
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    #@0
    return-void
.end method

.method protected onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 2

    #@0
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .registers 3

    #@0
    return-void
.end method

.method performAction(IILandroid/os/Bundle;)Z
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_8

    #@3
    .line 902
    invoke-direct {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    #@6
    move-result p1

    #@7
    return p1

    #@8
    .line 900
    :cond_8
    invoke-direct {p0, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .registers 5

    #@0
    .line 1019
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_12

    #@9
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@b
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_12

    #@11
    return v1

    #@12
    .line 1024
    :cond_12
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    #@14
    if-ne v0, p1, :cond_17

    #@16
    return v1

    #@17
    :cond_17
    const/high16 v2, -0x80000000

    #@19
    if-eq v0, v2, :cond_1e

    #@1b
    .line 1030
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    #@1e
    :cond_1e
    if-ne p1, v2, :cond_21

    #@20
    return v1

    #@21
    .line 1037
    :cond_21
    iput p1, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    #@23
    const/4 v0, 0x1

    #@24
    .line 1039
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    #@27
    const/16 v1, 0x8

    #@29
    .line 1040
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@2c
    return v0
.end method

.method public final sendEventForVirtualView(II)Z
    .registers 5

    #@0
    const/high16 v0, -0x80000000

    #@2
    const/4 v1, 0x0

    #@3
    if-eq p1, v0, :cond_22

    #@5
    .line 507
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    #@7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_e

    #@d
    goto :goto_22

    #@e
    .line 511
    :cond_e
    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_17

    #@16
    return v1

    #@17
    .line 516
    :cond_17
    invoke-direct {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    #@1a
    move-result-object p1

    #@1b
    .line 517
    iget-object p2, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    #@1d
    invoke-interface {v0, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@20
    move-result p1

    #@21
    return p1

    #@22
    :cond_22
    :goto_22
    return v1
.end method

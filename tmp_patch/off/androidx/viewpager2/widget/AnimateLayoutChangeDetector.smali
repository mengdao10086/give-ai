.class final Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;
.super Ljava/lang/Object;
.source "AnimateLayoutChangeDetector.java"


# static fields
.field private static final ZERO_MARGIN_LAYOUT_PARAMS:Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 46
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    const/4 v1, -0x1

    #@3
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@6
    sput-object v0, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->ZERO_MARGIN_LAYOUT_PARAMS:Landroid/view/ViewGroup$MarginLayoutParams;

    #@8
    const/4 v1, 0x0

    #@9
    .line 47
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    #@c
    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .registers 2

    #@0
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@5
    return-void
.end method

.method private arePagesLaidOutContiguously()Z
    .registers 12

    #@0
    .line 66
    iget-object v0, p0, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-nez v0, :cond_a

    #@9
    return v1

    #@a
    .line 71
    :cond_a
    iget-object v2, p0, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@c
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    #@f
    move-result v2

    #@10
    const/4 v3, 0x0

    #@11
    if-nez v2, :cond_15

    #@13
    move v2, v1

    #@14
    goto :goto_16

    #@15
    :cond_15
    move v2, v3

    #@16
    :goto_16
    const/4 v4, 0x2

    #@17
    new-array v5, v4, [I

    #@19
    aput v4, v5, v1

    #@1b
    aput v0, v5, v3

    #@1d
    .line 72
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1f
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, [[I

    #@25
    move v5, v3

    #@26
    :goto_26
    if-ge v5, v0, :cond_70

    #@28
    .line 74
    iget-object v6, p0, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@2a
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@2d
    move-result-object v6

    #@2e
    if-eqz v6, :cond_68

    #@30
    .line 78
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@33
    move-result-object v7

    #@34
    .line 80
    instance-of v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    #@36
    if-eqz v8, :cond_3b

    #@38
    .line 81
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    #@3a
    goto :goto_3d

    #@3b
    .line 83
    :cond_3b
    sget-object v7, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->ZERO_MARGIN_LAYOUT_PARAMS:Landroid/view/ViewGroup$MarginLayoutParams;

    #@3d
    .line 85
    :goto_3d
    aget-object v8, v4, v5

    #@3f
    if-eqz v2, :cond_48

    #@41
    .line 86
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    #@44
    move-result v9

    #@45
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@47
    goto :goto_4e

    #@48
    .line 87
    :cond_48
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    #@4b
    move-result v9

    #@4c
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@4e
    :goto_4e
    sub-int/2addr v9, v10

    #@4f
    aput v9, v8, v3

    #@51
    .line 88
    aget-object v8, v4, v5

    #@53
    if-eqz v2, :cond_5c

    #@55
    .line 89
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    #@58
    move-result v6

    #@59
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@5b
    goto :goto_62

    #@5c
    .line 90
    :cond_5c
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    #@5f
    move-result v6

    #@60
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@62
    :goto_62
    add-int/2addr v6, v7

    #@63
    aput v6, v8, v1

    #@65
    add-int/lit8 v5, v5, 0x1

    #@67
    goto :goto_26

    #@68
    .line 76
    :cond_68
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6a
    const-string v1, "null view contained in the view hierarchy"

    #@6c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v0

    #@70
    .line 94
    :cond_70
    new-instance v2, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector$1;

    #@72
    invoke-direct {v2, p0}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector$1;-><init>(Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;)V

    #@75
    invoke-static {v4, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@78
    move v2, v1

    #@79
    :goto_79
    if-ge v2, v0, :cond_8b

    #@7b
    add-int/lit8 v5, v2, -0x1

    #@7d
    .line 103
    aget-object v5, v4, v5

    #@7f
    aget v5, v5, v1

    #@81
    aget-object v6, v4, v2

    #@83
    aget v6, v6, v3

    #@85
    if-eq v5, v6, :cond_88

    #@87
    return v3

    #@88
    :cond_88
    add-int/lit8 v2, v2, 0x1

    #@8a
    goto :goto_79

    #@8b
    .line 109
    :cond_8b
    aget-object v2, v4, v3

    #@8d
    aget v5, v2, v1

    #@8f
    aget v2, v2, v3

    #@91
    sub-int/2addr v5, v2

    #@92
    if-gtz v2, :cond_9d

    #@94
    sub-int/2addr v0, v1

    #@95
    .line 110
    aget-object v0, v4, v0

    #@97
    aget v0, v0, v1

    #@99
    if-ge v0, v5, :cond_9c

    #@9b
    goto :goto_9d

    #@9c
    :cond_9c
    return v1

    #@9d
    :cond_9d
    :goto_9d
    return v3
.end method

.method private hasRunningChangingLayoutTransition()Z
    .registers 5

    #@0
    .line 117
    iget-object v0, p0, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_1b

    #@a
    .line 119
    iget-object v3, p0, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@c
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->hasRunningChangingLayoutTransition(Landroid/view/View;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_18

    #@16
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    :cond_18
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_8

    #@1b
    :cond_1b
    return v1
.end method

.method private static hasRunningChangingLayoutTransition(Landroid/view/View;)Z
    .registers 6

    #@0
    .line 127
    instance-of v0, p0, Landroid/view/ViewGroup;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_2a

    #@5
    .line 128
    check-cast p0, Landroid/view/ViewGroup;

    #@7
    .line 129
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    #@a
    move-result-object v0

    #@b
    const/4 v2, 0x1

    #@c
    if-eqz v0, :cond_15

    #@e
    .line 130
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_15

    #@14
    return v2

    #@15
    .line 133
    :cond_15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@18
    move-result v0

    #@19
    move v3, v1

    #@1a
    :goto_1a
    if-ge v3, v0, :cond_2a

    #@1c
    .line 135
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v4}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->hasRunningChangingLayoutTransition(Landroid/view/View;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_27

    #@26
    return v2

    #@27
    :cond_27
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_1a

    #@2a
    :cond_2a
    return v1
.end method


# virtual methods
.method mayHaveInterferingAnimations()Z
    .registers 3

    #@0
    .line 60
    invoke-direct {p0}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->arePagesLaidOutContiguously()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_f

    #@7
    iget-object v0, p0, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@c
    move-result v0

    #@d
    if-gt v0, v1, :cond_16

    #@f
    .line 61
    :cond_f
    invoke-direct {p0}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->hasRunningChangingLayoutTransition()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_16

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 v1, 0x0

    #@17
    :goto_17
    return v1
.end method

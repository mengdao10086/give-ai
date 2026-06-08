.class abstract Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/DrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DrawableContainerState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mCanConstantState:Z

.field mChangingConfigurations:I

.field mCheckedConstantSize:Z

.field mCheckedConstantState:Z

.field mCheckedOpacity:Z

.field mCheckedPadding:Z

.field mCheckedStateful:Z

.field mChildrenChangingConfigurations:I

.field mColorFilter:Landroid/graphics/ColorFilter;

.field mConstantHeight:I

.field mConstantMinimumHeight:I

.field mConstantMinimumWidth:I

.field mConstantPadding:Landroid/graphics/Rect;

.field mConstantSize:Z

.field mConstantWidth:I

.field mDensity:I

.field mDither:Z

.field mDrawableFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field mDrawables:[Landroid/graphics/drawable/Drawable;

.field mEnterFadeDuration:I

.field mExitFadeDuration:I

.field mHasColorFilter:Z

.field mHasTintList:Z

.field mHasTintMode:Z

.field mLayoutDirection:I

.field mMutated:Z

.field mNumChildren:I

.field mOpacity:I

.field final mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

.field mSourceRes:Landroid/content/res/Resources;

.field mStateful:Z

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mVariablePadding:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;Landroidx/appcompat/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V
    .registers 7

    #@0
    .line 688
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 659
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@6
    .line 662
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@8
    const/4 v1, 0x1

    #@9
    .line 674
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    #@b
    .line 677
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@d
    .line 678
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@f
    .line 689
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    #@11
    const/4 p2, 0x0

    #@12
    if-eqz p3, :cond_16

    #@14
    move-object v2, p3

    #@15
    goto :goto_1c

    #@16
    :cond_16
    if-eqz p1, :cond_1b

    #@18
    .line 690
    iget-object v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move-object v2, p2

    #@1c
    :goto_1c
    iput-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    #@1e
    if-eqz p1, :cond_23

    #@20
    .line 691
    iget v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@22
    goto :goto_24

    #@23
    :cond_23
    move v2, v0

    #@24
    :goto_24
    invoke-static {p3, v2}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->resolveDensity(Landroid/content/res/Resources;I)I

    #@27
    move-result p3

    #@28
    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@2a
    if-eqz p1, :cond_ed

    #@2c
    .line 693
    iget v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    #@2e
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    #@30
    .line 694
    iget v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@32
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@34
    .line 695
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    #@36
    .line 696
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    #@38
    .line 697
    iget-boolean v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@3a
    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@3c
    .line 698
    iget-boolean v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@3e
    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@40
    .line 699
    iget-boolean v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    #@42
    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    #@44
    .line 700
    iget-boolean v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    #@46
    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    #@48
    .line 701
    iget v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    #@4a
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    #@4c
    .line 702
    iget v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@4e
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@50
    .line 703
    iget v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@52
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@54
    .line 704
    iget-boolean v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    #@56
    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    #@58
    .line 705
    iget-object v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    #@5a
    iput-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    #@5c
    .line 706
    iget-boolean v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    #@5e
    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    #@60
    .line 707
    iget-object v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    #@62
    iput-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    #@64
    .line 708
    iget-object v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@66
    iput-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@68
    .line 709
    iget-boolean v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    #@6a
    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    #@6c
    .line 710
    iget-boolean v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    #@6e
    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    #@70
    .line 711
    iget v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@72
    if-ne v2, p3, :cond_9d

    #@74
    .line 712
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    #@76
    if-eqz p3, :cond_87

    #@78
    .line 714
    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@7a
    if-eqz p3, :cond_83

    #@7c
    .line 715
    new-instance p2, Landroid/graphics/Rect;

    #@7e
    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@80
    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@83
    :cond_83
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@85
    .line 716
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    #@87
    .line 718
    :cond_87
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@89
    if-eqz p2, :cond_9d

    #@8b
    .line 719
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@8d
    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@8f
    .line 720
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@91
    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@93
    .line 721
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@95
    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@97
    .line 722
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@99
    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@9b
    .line 723
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@9d
    .line 726
    :cond_9d
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@9f
    if-eqz p2, :cond_a7

    #@a1
    .line 727
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    #@a3
    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    #@a5
    .line 728
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@a7
    .line 730
    :cond_a7
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@a9
    if-eqz p2, :cond_b1

    #@ab
    .line 731
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    #@ad
    iput-boolean p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    #@af
    .line 732
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@b1
    .line 736
    :cond_b1
    iget-object p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@b3
    .line 737
    array-length p3, p2

    #@b4
    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    #@b6
    iput-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@b8
    .line 738
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@ba
    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@bc
    .line 739
    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@be
    if-eqz p1, :cond_c7

    #@c0
    .line 741
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    #@c3
    move-result-object p1

    #@c4
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@c6
    goto :goto_d0

    #@c7
    .line 743
    :cond_c7
    new-instance p1, Landroid/util/SparseArray;

    #@c9
    iget p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@cb
    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    #@ce
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@d0
    .line 748
    :goto_d0
    iget p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@d2
    :goto_d2
    if-ge v0, p1, :cond_f5

    #@d4
    .line 750
    aget-object p3, p2, v0

    #@d6
    if-eqz p3, :cond_ea

    #@d8
    .line 751
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@db
    move-result-object p3

    #@dc
    if-eqz p3, :cond_e4

    #@de
    .line 753
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@e0
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@e3
    goto :goto_ea

    #@e4
    .line 755
    :cond_e4
    iget-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@e6
    aget-object v1, p2, v0

    #@e8
    aput-object v1, p3, v0

    #@ea
    :cond_ea
    :goto_ea
    add-int/lit8 v0, v0, 0x1

    #@ec
    goto :goto_d2

    #@ed
    :cond_ed
    const/16 p1, 0xa

    #@ef
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    #@f1
    .line 760
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@f3
    .line 761
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@f5
    :cond_f5
    return-void
.end method

.method private createAllFutures()V
    .registers 7

    #@0
    .line 808
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@2
    if-eqz v0, :cond_2d

    #@4
    .line 809
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_9
    if-ge v1, v0, :cond_2a

    #@b
    .line 811
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@10
    move-result v2

    #@11
    .line 812
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    #@19
    .line 813
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@1b
    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    #@1d
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@20
    move-result-object v3

    #@21
    invoke-direct {p0, v3}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@24
    move-result-object v3

    #@25
    aput-object v3, v4, v2

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_9

    #@2a
    :cond_2a
    const/4 v0, 0x0

    #@2b
    .line 815
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@2d
    :cond_2d
    return-void
.end method

.method private prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 821
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    #@2
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    #@5
    .line 823
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object p1

    #@9
    .line 824
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    #@b
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@e
    return-object p1
.end method


# virtual methods
.method public final addChild(Landroid/graphics/drawable/Drawable;)I
    .registers 6

    #@0
    .line 777
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@2
    .line 778
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@4
    array-length v1, v1

    #@5
    if-lt v0, v1, :cond_c

    #@7
    add-int/lit8 v1, v0, 0xa

    #@9
    .line 779
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    #@c
    .line 781
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@f
    const/4 v1, 0x0

    #@10
    const/4 v2, 0x1

    #@11
    .line 782
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@14
    .line 783
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    #@16
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@19
    .line 784
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@1b
    aput-object p1, v3, v0

    #@1d
    .line 785
    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@1f
    add-int/2addr v3, v2

    #@20
    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@22
    .line 786
    iget v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@24
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@27
    move-result p1

    #@28
    or-int/2addr p1, v2

    #@29
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@2b
    .line 787
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->invalidateCache()V

    #@2e
    const/4 p1, 0x0

    #@2f
    .line 788
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@31
    .line 789
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    #@33
    .line 790
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@35
    .line 791
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    #@37
    return v0
.end method

.method final applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 7

    #@0
    if-eqz p1, :cond_30

    #@2
    .line 903
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@5
    .line 904
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@7
    .line 905
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@9
    const/4 v2, 0x0

    #@a
    :goto_a
    if-ge v2, v0, :cond_29

    #@c
    .line 907
    aget-object v3, v1, v2

    #@e
    if-eqz v3, :cond_26

    #@10
    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_26

    #@16
    .line 908
    aget-object v3, v1, v2

    #@18
    invoke-static {v3, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    #@1b
    .line 910
    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@1d
    aget-object v4, v1, v2

    #@1f
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@22
    move-result v4

    #@23
    or-int/2addr v3, v4

    #@24
    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@26
    :cond_26
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_a

    #@29
    .line 913
    :cond_29
    invoke-static {p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$Api21Impl;->getResources(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources;

    #@2c
    move-result-object p1

    #@2d
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    #@30
    :cond_30
    return-void
.end method

.method public canApplyTheme()Z
    .registers 7

    #@0
    .line 920
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@2
    .line 921
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@4
    const/4 v2, 0x0

    #@5
    move v3, v2

    #@6
    :goto_6
    if-ge v3, v0, :cond_28

    #@8
    .line 923
    aget-object v4, v1, v3

    #@a
    const/4 v5, 0x1

    #@b
    if-eqz v4, :cond_14

    #@d
    .line 925
    invoke-static {v4}, Landroidx/core/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_25

    #@13
    return v5

    #@14
    .line 929
    :cond_14
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    #@1c
    if-eqz v4, :cond_25

    #@1e
    .line 930
    invoke-static {v4}, Landroidx/appcompat/graphics/drawable/DrawableContainer$Api21Impl;->canApplyTheme(Landroid/graphics/drawable/Drawable$ConstantState;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_25

    #@24
    return v5

    #@25
    :cond_25
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_6

    #@28
    :cond_28
    return v2
.end method

.method public canConstantState()Z
    .registers 7

    #@0
    .line 1143
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1144
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    #@6
    return v0

    #@7
    .line 1146
    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@a
    const/4 v0, 0x1

    #@b
    .line 1147
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    #@d
    .line 1148
    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@f
    .line 1149
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@11
    const/4 v3, 0x0

    #@12
    move v4, v3

    #@13
    :goto_13
    if-ge v4, v1, :cond_23

    #@15
    .line 1151
    aget-object v5, v2, v4

    #@17
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@1a
    move-result-object v5

    #@1b
    if-nez v5, :cond_20

    #@1d
    .line 1152
    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    #@1f
    return v3

    #@20
    :cond_20
    add-int/lit8 v4, v4, 0x1

    #@22
    goto :goto_13

    #@23
    .line 1156
    :cond_23
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    #@25
    return v0
.end method

.method final clearMutated()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 959
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    #@3
    return-void
.end method

.method protected computeConstantSize()V
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    .line 1051
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@3
    .line 1052
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@6
    .line 1053
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@8
    .line 1054
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@a
    const/4 v2, -0x1

    #@b
    .line 1055
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@d
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@f
    const/4 v2, 0x0

    #@10
    .line 1056
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@12
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@14
    :goto_14
    if-ge v2, v0, :cond_43

    #@16
    .line 1058
    aget-object v3, v1, v2

    #@18
    .line 1059
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@1b
    move-result v4

    #@1c
    .line 1060
    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@1e
    if-le v4, v5, :cond_22

    #@20
    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@22
    .line 1061
    :cond_22
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@25
    move-result v4

    #@26
    .line 1062
    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@28
    if-le v4, v5, :cond_2c

    #@2a
    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@2c
    .line 1063
    :cond_2c
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@2f
    move-result v4

    #@30
    .line 1064
    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@32
    if-le v4, v5, :cond_36

    #@34
    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@36
    .line 1065
    :cond_36
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@39
    move-result v3

    #@3a
    .line 1066
    iget v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@3c
    if-le v3, v4, :cond_40

    #@3e
    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@40
    :cond_40
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_14

    #@43
    :cond_43
    return-void
.end method

.method final getCapacity()I
    .registers 2

    #@0
    .line 804
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    #@0
    .line 767
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    #@2
    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@4
    or-int/2addr v0, v1

    #@5
    return v0
.end method

.method public final getChild(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    #@0
    .line 836
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@2
    aget-object v0, v0, p1

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 841
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@9
    const/4 v1, 0x0

    #@a
    if-eqz v0, :cond_38

    #@c
    .line 842
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@f
    move-result v0

    #@10
    if-ltz v0, :cond_38

    #@12
    .line 844
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    #@1a
    .line 845
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    #@1c
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {p0, v2}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@23
    move-result-object v2

    #@24
    .line 846
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@26
    aput-object v2, v3, p1

    #@28
    .line 847
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@2a
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    #@2d
    .line 848
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@2f
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    #@32
    move-result p1

    #@33
    if-nez p1, :cond_37

    #@35
    .line 849
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@37
    :cond_37
    return-object v2

    #@38
    :cond_38
    return-object v1
.end method

.method public final getChildCount()I
    .registers 2

    #@0
    .line 829
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@2
    return v0
.end method

.method public final getConstantHeight()I
    .registers 2

    #@0
    .line 1024
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@2
    if-nez v0, :cond_7

    #@4
    .line 1025
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    #@7
    .line 1027
    :cond_7
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@9
    return v0
.end method

.method public final getConstantMinimumHeight()I
    .registers 2

    #@0
    .line 1044
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@2
    if-nez v0, :cond_7

    #@4
    .line 1045
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    #@7
    .line 1047
    :cond_7
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@9
    return v0
.end method

.method public final getConstantMinimumWidth()I
    .registers 2

    #@0
    .line 1034
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@2
    if-nez v0, :cond_7

    #@4
    .line 1035
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    #@7
    .line 1037
    :cond_7
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@9
    return v0
.end method

.method public final getConstantPadding()Landroid/graphics/Rect;
    .registers 9

    #@0
    .line 975
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 978
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@8
    if-nez v0, :cond_5f

    #@a
    iget-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    #@c
    if-eqz v2, :cond_f

    #@e
    goto :goto_5f

    #@f
    .line 981
    :cond_f
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@12
    .line 983
    new-instance v0, Landroid/graphics/Rect;

    #@14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@17
    .line 984
    iget v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@19
    .line 985
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@1b
    const/4 v4, 0x0

    #@1c
    move v5, v4

    #@1d
    :goto_1d
    if-ge v5, v2, :cond_59

    #@1f
    .line 987
    aget-object v6, v3, v5

    #@21
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_56

    #@27
    if-nez v1, :cond_2e

    #@29
    .line 988
    new-instance v1, Landroid/graphics/Rect;

    #@2b
    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@2e
    .line 989
    :cond_2e
    iget v6, v0, Landroid/graphics/Rect;->left:I

    #@30
    iget v7, v1, Landroid/graphics/Rect;->left:I

    #@32
    if-le v6, v7, :cond_38

    #@34
    iget v6, v0, Landroid/graphics/Rect;->left:I

    #@36
    iput v6, v1, Landroid/graphics/Rect;->left:I

    #@38
    .line 990
    :cond_38
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@3a
    iget v7, v1, Landroid/graphics/Rect;->top:I

    #@3c
    if-le v6, v7, :cond_42

    #@3e
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@40
    iput v6, v1, Landroid/graphics/Rect;->top:I

    #@42
    .line 991
    :cond_42
    iget v6, v0, Landroid/graphics/Rect;->right:I

    #@44
    iget v7, v1, Landroid/graphics/Rect;->right:I

    #@46
    if-le v6, v7, :cond_4c

    #@48
    iget v6, v0, Landroid/graphics/Rect;->right:I

    #@4a
    iput v6, v1, Landroid/graphics/Rect;->right:I

    #@4c
    .line 992
    :cond_4c
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #@4e
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    #@50
    if-le v6, v7, :cond_56

    #@52
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #@54
    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    #@56
    :cond_56
    add-int/lit8 v5, v5, 0x1

    #@58
    goto :goto_1d

    #@59
    :cond_59
    const/4 v0, 0x1

    #@5a
    .line 995
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    #@5c
    .line 996
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@5e
    return-object v1

    #@5f
    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public final getConstantWidth()I
    .registers 2

    #@0
    .line 1014
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@2
    if-nez v0, :cond_7

    #@4
    .line 1015
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    #@7
    .line 1017
    :cond_7
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@9
    return v0
.end method

.method public final getEnterFadeDuration()I
    .registers 2

    #@0
    .line 1075
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@2
    return v0
.end method

.method public final getExitFadeDuration()I
    .registers 2

    #@0
    .line 1083
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@2
    return v0
.end method

.method public final getOpacity()I
    .registers 7

    #@0
    .line 1091
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1092
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    #@6
    return v0

    #@7
    .line 1094
    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@a
    .line 1095
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@c
    .line 1096
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@e
    if-lez v0, :cond_18

    #@10
    const/4 v2, 0x0

    #@11
    .line 1097
    aget-object v2, v1, v2

    #@13
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@16
    move-result v2

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 v2, -0x2

    #@19
    :goto_19
    const/4 v3, 0x1

    #@1a
    move v4, v3

    #@1b
    :goto_1b
    if-ge v4, v0, :cond_2a

    #@1d
    .line 1099
    aget-object v5, v1, v4

    #@1f
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@22
    move-result v5

    #@23
    invoke-static {v2, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    #@26
    move-result v2

    #@27
    add-int/lit8 v4, v4, 0x1

    #@29
    goto :goto_1b

    #@2a
    .line 1101
    :cond_2a
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    #@2c
    .line 1102
    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@2e
    return v2
.end method

.method public growArray(II)V
    .registers 5

    #@0
    .line 1132
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    #@2
    .line 1133
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@4
    if-eqz v0, :cond_a

    #@6
    const/4 v1, 0x0

    #@7
    .line 1134
    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a
    .line 1136
    :cond_a
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@c
    return-void
.end method

.method invalidateCache()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 799
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@3
    .line 800
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@5
    return-void
.end method

.method public final isConstantSize()Z
    .registers 2

    #@0
    .line 1007
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@2
    return v0
.end method

.method public final isStateful()Z
    .registers 7

    #@0
    .line 1110
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1111
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    #@6
    return v0

    #@7
    .line 1113
    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@a
    .line 1114
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@c
    .line 1115
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@e
    const/4 v2, 0x0

    #@f
    move v3, v2

    #@10
    :goto_10
    const/4 v4, 0x1

    #@11
    if-ge v3, v0, :cond_20

    #@13
    .line 1118
    aget-object v5, v1, v3

    #@15
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_1d

    #@1b
    move v2, v4

    #@1c
    goto :goto_20

    #@1d
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    #@1f
    goto :goto_10

    #@20
    .line 1123
    :cond_20
    :goto_20
    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    #@22
    .line 1124
    iput-boolean v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@24
    return v2
.end method

.method mutate()V
    .registers 5

    #@0
    .line 941
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@2
    .line 942
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@4
    const/4 v2, 0x0

    #@5
    :goto_5
    if-ge v2, v0, :cond_11

    #@7
    .line 944
    aget-object v3, v1, v2

    #@9
    if-eqz v3, :cond_e

    #@b
    .line 945
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@e
    :cond_e
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_5

    #@11
    :cond_11
    const/4 v0, 0x1

    #@12
    .line 948
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    #@14
    return-void
.end method

.method public final setConstantSize(Z)V
    .registers 2

    #@0
    .line 1000
    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@2
    return-void
.end method

.method public final setEnterFadeDuration(I)V
    .registers 2

    #@0
    .line 1071
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@2
    return-void
.end method

.method public final setExitFadeDuration(I)V
    .registers 2

    #@0
    .line 1079
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@2
    return-void
.end method

.method final setLayoutDirection(II)Z
    .registers 8

    #@0
    .line 861
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@2
    .line 862
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@4
    const/4 v2, 0x0

    #@5
    move v3, v2

    #@6
    :goto_6
    if-ge v2, v0, :cond_18

    #@8
    .line 864
    aget-object v4, v1, v2

    #@a
    if-eqz v4, :cond_15

    #@c
    .line 867
    aget-object v4, v1, v2

    #@e
    .line 868
    invoke-static {v4, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    #@11
    move-result v4

    #@12
    if-ne v2, p2, :cond_15

    #@14
    move v3, v4

    #@15
    :cond_15
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_6

    #@18
    .line 875
    :cond_18
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    #@1a
    return v3
.end method

.method public final setVariablePadding(Z)V
    .registers 2

    #@0
    .line 968
    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@2
    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .registers 3

    #@0
    if-eqz p1, :cond_15

    #@2
    .line 887
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    #@4
    .line 890
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@6
    invoke-static {p1, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->resolveDensity(Landroid/content/res/Resources;I)I

    #@9
    move-result p1

    #@a
    .line 891
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@c
    .line 892
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@e
    if-eq v0, p1, :cond_15

    #@10
    const/4 p1, 0x0

    #@11
    .line 894
    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@13
    .line 895
    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    #@15
    :cond_15
    return-void
.end method

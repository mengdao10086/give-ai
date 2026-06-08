.class public abstract Landroidx/viewpager2/adapter/FragmentStateAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FragmentStateAdapter.java"

# interfaces
.implements Landroidx/viewpager2/adapter/StatefulAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/adapter/FragmentStateAdapter$DataSetChangeObserver;,
        Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/viewpager2/adapter/FragmentViewHolder;",
        ">;",
        "Landroidx/viewpager2/adapter/StatefulAdapter;"
    }
.end annotation


# static fields
.field private static final GRACE_WINDOW_TIME_MS:J = 0x2710L

.field private static final KEY_PREFIX_FRAGMENT:Ljava/lang/String; = "f#"

.field private static final KEY_PREFIX_STATE:Ljava/lang/String; = "s#"


# instance fields
.field final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mFragmentMaxLifecycleEnforcer:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

.field final mFragments:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHasStaleFragments:Z

.field mIsInGracePeriod:Z

.field private final mItemIdToViewHolder:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private final mSavedStates:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroidx/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3

    #@0
    .line 112
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@7
    move-result-object p1

    #@8
    invoke-direct {p0, v0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    #@b
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    #@0
    .line 102
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    #@7
    move-result-object p1

    #@8
    invoke-direct {p0, v0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    #@b
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V
    .registers 4

    #@0
    .line 123
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    #@3
    .line 82
    new-instance v0, Landroidx/collection/LongSparseArray;

    #@5
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@a
    .line 84
    new-instance v0, Landroidx/collection/LongSparseArray;

    #@c
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    #@11
    .line 85
    new-instance v0, Landroidx/collection/LongSparseArray;

    #@13
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    #@18
    const/4 v0, 0x0

    #@19
    .line 90
    iput-boolean v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    #@1b
    .line 92
    iput-boolean v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    #@1d
    .line 124
    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@1f
    .line 125
    iput-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    #@21
    const/4 p1, 0x1

    #@22
    .line 126
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    #@25
    return-void
.end method

.method private static createKey(Ljava/lang/String;J)Ljava/lang/String;
    .registers 4

    #@0
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object p0

    #@9
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c
    move-result-object p0

    #@d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    return-object p0
.end method

.method private ensureFragment(I)V
    .registers 5

    #@0
    .line 265
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->getItemId(I)J

    #@3
    move-result-wide v0

    #@4
    .line 266
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@6
    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_20

    #@c
    .line 268
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->createFragment(I)Landroidx/fragment/app/Fragment;

    #@f
    move-result-object p1

    #@10
    .line 269
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    #@12
    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroidx/fragment/app/Fragment$SavedState;

    #@18
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    #@1b
    .line 270
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@1d
    invoke-virtual {v2, v0, v1, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@20
    :cond_20
    return-void
.end method

.method private isFragmentViewBound(J)Z
    .registers 5

    #@0
    .line 233
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-eqz v0, :cond_a

    #@9
    return v1

    #@a
    .line 237
    :cond_a
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@c
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Landroidx/fragment/app/Fragment;

    #@12
    const/4 p2, 0x0

    #@13
    if-nez p1, :cond_16

    #@15
    return p2

    #@16
    .line 242
    :cond_16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    #@19
    move-result-object p1

    #@1a
    if-nez p1, :cond_1d

    #@1c
    return p2

    #@1d
    .line 247
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@20
    move-result-object p1

    #@21
    if-eqz p1, :cond_24

    #@23
    goto :goto_25

    #@24
    :cond_24
    move v1, p2

    #@25
    :goto_25
    return v1
.end method

.method private static isValidKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 605
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_12

    #@6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result p0

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result p1

    #@e
    if-le p0, p1, :cond_12

    #@10
    const/4 p0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p0, 0x0

    #@13
    :goto_13
    return p0
.end method

.method private itemForViewHolder(I)Ljava/lang/Long;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 252
    :goto_2
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    #@4
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    #@7
    move-result v2

    #@8
    if-ge v1, v2, :cond_30

    #@a
    .line 253
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    #@c
    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/lang/Integer;

    #@12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v2

    #@16
    if-ne v2, p1, :cond_2d

    #@18
    if-nez v0, :cond_25

    #@1a
    .line 258
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    #@1c
    invoke-virtual {v0, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    #@1f
    move-result-wide v2

    #@20
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@23
    move-result-object v0

    #@24
    goto :goto_2d

    #@25
    .line 255
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    #@27
    const-string v0, "Design assumption violated: a ViewHolder can only be bound to one item at a time."

    #@29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw p1

    #@2d
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_2

    #@30
    :cond_30
    return-object v0
.end method

.method private static parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J
    .registers 2

    #@0
    .line 610
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result p1

    #@4
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@b
    move-result-wide p0

    #@c
    return-wide p0
.end method

.method private removeFragment(J)V
    .registers 6

    #@0
    .line 434
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/fragment/app/Fragment;

    #@8
    if-nez v0, :cond_b

    #@a
    return-void

    #@b
    .line 440
    :cond_b
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_20

    #@11
    .line 441
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@18
    move-result-object v1

    #@19
    if-eqz v1, :cond_20

    #@1b
    .line 443
    check-cast v1, Landroid/widget/FrameLayout;

    #@1d
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@20
    .line 447
    :cond_20
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_2b

    #@26
    .line 448
    iget-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    #@28
    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    #@2b
    .line 451
    :cond_2b
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_37

    #@31
    .line 452
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@33
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    #@36
    return-void

    #@37
    .line 456
    :cond_37
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_41

    #@3d
    const/4 p1, 0x1

    #@3e
    .line 457
    iput-boolean p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    #@40
    return-void

    #@41
    .line 461
    :cond_41
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_58

    #@47
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_58

    #@4d
    .line 462
    iget-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    #@4f
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@51
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v1, p1, p2, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@58
    .line 464
    :cond_58
    iget-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@5a
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    #@65
    .line 465
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@67
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    #@6a
    return-void
.end method

.method private scheduleGracePeriodEnd()V
    .registers 5

    #@0
    .line 575
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    .line 576
    new-instance v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$4;

    #@b
    invoke-direct {v1, p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$4;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V

    #@e
    .line 584
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    #@10
    new-instance v3, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;

    #@12
    invoke-direct {v3, p0, v0, v1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;Landroid/os/Handler;Ljava/lang/Runnable;)V

    #@15
    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    #@18
    const-wide/16 v2, 0x2710

    #@1a
    .line 595
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1d
    return-void
.end method

.method private scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .registers 5

    #@0
    .line 368
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    new-instance v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$3;

    #@4
    invoke-direct {v1, p0, p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter$3;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    #@7
    const/4 p1, 0x0

    #@8
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    #@b
    return-void
.end method


# virtual methods
.method addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .registers 5

    #@0
    .line 386
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-gt v0, v1, :cond_2a

    #@7
    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@a
    move-result-object v0

    #@b
    if-ne v0, p2, :cond_e

    #@d
    return-void

    #@e
    .line 394
    :cond_e
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    #@11
    move-result v0

    #@12
    if-lez v0, :cond_17

    #@14
    .line 395
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@17
    .line 398
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1a
    move-result-object v0

    #@1b
    if-eqz v0, :cond_26

    #@1d
    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/view/ViewGroup;

    #@23
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@26
    .line 402
    :cond_26
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@29
    return-void

    #@2a
    .line 387
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2c
    const-string p2, "Design assumption violated."

    #@2e
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw p1
.end method

.method public containsItem(J)Z
    .registers 5

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-ltz v0, :cond_11

    #@6
    .line 496
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->getItemCount()I

    #@9
    move-result v0

    #@a
    int-to-long v0, v0

    #@b
    cmp-long p1, p1, v0

    #@d
    if-gez p1, :cond_11

    #@f
    const/4 p1, 0x1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    :goto_12
    return p1
.end method

.method public abstract createFragment(I)Landroidx/fragment/app/Fragment;
.end method

.method gcFragments()V
    .registers 7

    #@0
    .line 201
    iget-boolean v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    #@2
    if-eqz v0, :cond_71

    #@4
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    goto :goto_71

    #@b
    .line 206
    :cond_b
    new-instance v0, Landroidx/collection/ArraySet;

    #@d
    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    #@10
    const/4 v1, 0x0

    #@11
    move v2, v1

    #@12
    .line 207
    :goto_12
    iget-object v3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@14
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    #@17
    move-result v3

    #@18
    if-ge v2, v3, :cond_35

    #@1a
    .line 208
    iget-object v3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@1c
    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    #@1f
    move-result-wide v3

    #@20
    .line 209
    invoke-virtual {p0, v3, v4}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_32

    #@26
    .line 210
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29
    move-result-object v5

    #@2a
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2d
    .line 211
    iget-object v5, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    #@2f
    invoke-virtual {v5, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    #@32
    :cond_32
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_12

    #@35
    .line 216
    :cond_35
    iget-boolean v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    #@37
    if-nez v2, :cond_59

    #@39
    .line 217
    iput-boolean v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    #@3b
    .line 219
    :goto_3b
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@3d
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    #@40
    move-result v2

    #@41
    if-ge v1, v2, :cond_59

    #@43
    .line 220
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@45
    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    #@48
    move-result-wide v2

    #@49
    .line 221
    invoke-direct {p0, v2, v3}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->isFragmentViewBound(J)Z

    #@4c
    move-result v4

    #@4d
    if-nez v4, :cond_56

    #@4f
    .line 222
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@52
    move-result-object v2

    #@53
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@56
    :cond_56
    add-int/lit8 v1, v1, 0x1

    #@58
    goto :goto_3b

    #@59
    .line 227
    :cond_59
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5c
    move-result-object v0

    #@5d
    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_71

    #@63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@66
    move-result-object v1

    #@67
    check-cast v1, Ljava/lang/Long;

    #@69
    .line 228
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@6c
    move-result-wide v1

    #@6d
    invoke-direct {p0, v1, v2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->removeFragment(J)V

    #@70
    goto :goto_5d

    #@71
    :cond_71
    :goto_71
    return-void
.end method

.method public getItemId(I)J
    .registers 4

    #@0
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    #@0
    .line 132
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    #@a
    .line 133
    new-instance v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    #@c
    invoke-direct {v0, p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V

    #@f
    iput-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    #@11
    .line 134
    invoke-virtual {v0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->register(Landroidx/recyclerview/widget/RecyclerView;)V

    #@14
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    #@0
    .line 67
    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    #@2
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->onBindViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;I)V

    #@5
    return-void
.end method

.method public final onBindViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;I)V
    .registers 10

    #@0
    .line 166
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/FragmentViewHolder;->getItemId()J

    #@3
    move-result-wide v0

    #@4
    .line 167
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    #@b
    move-result v2

    #@c
    .line 168
    invoke-direct {p0, v2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    #@f
    move-result-object v3

    #@10
    if-eqz v3, :cond_2a

    #@12
    .line 169
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@15
    move-result-wide v4

    #@16
    cmp-long v4, v4, v0

    #@18
    if-eqz v4, :cond_2a

    #@1a
    .line 170
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@1d
    move-result-wide v4

    #@1e
    invoke-direct {p0, v4, v5}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->removeFragment(J)V

    #@21
    .line 171
    iget-object v4, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    #@23
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@26
    move-result-wide v5

    #@27
    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    #@2a
    .line 174
    :cond_2a
    iget-object v3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    #@2c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v3, v0, v1, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@33
    .line 175
    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->ensureFragment(I)V

    #@36
    .line 179
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    #@39
    move-result-object p2

    #@3a
    .line 180
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_57

    #@40
    .line 181
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    #@43
    move-result-object v0

    #@44
    if-nez v0, :cond_4f

    #@46
    .line 184
    new-instance v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$1;

    #@48
    invoke-direct {v0, p0, p2, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$1;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;Landroid/widget/FrameLayout;Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    #@4b
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@4e
    goto :goto_57

    #@4f
    .line 182
    :cond_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    #@51
    const-string p2, "Design assumption violated."

    #@53
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@56
    throw p1

    #@57
    .line 196
    :cond_57
    :goto_57
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    #@5a
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    #@0
    .line 67
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/viewpager2/adapter/FragmentViewHolder;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/viewpager2/adapter/FragmentViewHolder;
    .registers 3

    #@0
    .line 161
    invoke-static {p1}, Landroidx/viewpager2/adapter/FragmentViewHolder;->create(Landroid/view/ViewGroup;)Landroidx/viewpager2/adapter/FragmentViewHolder;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    #@0
    .line 140
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    #@2
    invoke-virtual {v0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->unregister(Landroidx/recyclerview/widget/RecyclerView;)V

    #@5
    const/4 p1, 0x0

    #@6
    .line 141
    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    #@8
    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    #@0
    .line 67
    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    #@2
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->onFailedToRecycleView(Landroidx/viewpager2/adapter/FragmentViewHolder;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public final onFailedToRecycleView(Landroidx/viewpager2/adapter/FragmentViewHolder;)Z
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    #@0
    .line 67
    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    #@2
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->onViewAttachedToWindow(Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    #@5
    return-void
.end method

.method public final onViewAttachedToWindow(Landroidx/viewpager2/adapter/FragmentViewHolder;)V
    .registers 2

    #@0
    .line 276
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    #@3
    .line 277
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    #@6
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    #@0
    .line 67
    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    #@2
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->onViewRecycled(Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    #@5
    return-void
.end method

.method public final onViewRecycled(Landroidx/viewpager2/adapter/FragmentViewHolder;)V
    .registers 5

    #@0
    .line 407
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    #@7
    move-result p1

    #@8
    .line 408
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    #@b
    move-result-object p1

    #@c
    if-eqz p1, :cond_1e

    #@e
    .line 410
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@11
    move-result-wide v0

    #@12
    invoke-direct {p0, v0, v1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->removeFragment(J)V

    #@15
    .line 411
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    #@17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@1a
    move-result-wide v1

    #@1b
    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->remove(J)V

    #@1e
    :cond_1e
    return-void
.end method

.method placeFragmentInViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;)V
    .registers 7

    #@0
    .line 285
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@2
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/FragmentViewHolder;->getItemId()J

    #@5
    move-result-wide v1

    #@6
    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroidx/fragment/app/Fragment;

    #@c
    const-string v1, "Design assumption violated."

    #@e
    if-eqz v0, :cond_9d

    #@10
    .line 289
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    #@13
    move-result-object v2

    #@14
    .line 290
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    #@17
    move-result-object v3

    #@18
    .line 311
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_27

    #@1e
    if-nez v3, :cond_21

    #@20
    goto :goto_27

    #@21
    .line 312
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    #@23
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw p1

    #@27
    .line 316
    :cond_27
    :goto_27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_33

    #@2d
    if-nez v3, :cond_33

    #@2f
    .line 317
    invoke-direct {p0, v0, v2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    #@32
    return-void

    #@33
    .line 322
    :cond_33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_49

    #@39
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3c
    move-result-object v1

    #@3d
    if-eqz v1, :cond_49

    #@3f
    .line 323
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@42
    move-result-object p1

    #@43
    if-eq p1, v2, :cond_48

    #@45
    .line 324
    invoke-virtual {p0, v3, v2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    #@48
    :cond_48
    return-void

    #@49
    .line 330
    :cond_49
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_53

    #@4f
    .line 331
    invoke-virtual {p0, v3, v2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    #@52
    return-void

    #@53
    .line 336
    :cond_53
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    #@56
    move-result v1

    #@57
    if-nez v1, :cond_89

    #@59
    .line 337
    invoke-direct {p0, v0, v2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    #@5c
    .line 338
    iget-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@5e
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    #@61
    move-result-object v1

    #@62
    new-instance v2, Ljava/lang/StringBuilder;

    #@64
    const-string v3, "f"

    #@66
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@69
    .line 339
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/FragmentViewHolder;->getItemId()J

    #@6c
    move-result-wide v3

    #@6d
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@70
    move-result-object p1

    #@71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object p1

    #@75
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    #@78
    move-result-object p1

    #@79
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    #@7b
    .line 340
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    #@7e
    move-result-object p1

    #@7f
    .line 341
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    #@82
    .line 342
    iget-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    #@84
    const/4 v0, 0x0

    #@85
    invoke-virtual {p1, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->updateFragmentMaxLifecycle(Z)V

    #@88
    goto :goto_9c

    #@89
    .line 344
    :cond_89
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@8b
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    #@8e
    move-result v0

    #@8f
    if-eqz v0, :cond_92

    #@91
    return-void

    #@92
    .line 347
    :cond_92
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    #@94
    new-instance v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;

    #@96
    invoke-direct {v1, p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    #@99
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    #@9c
    :goto_9c
    return-void

    #@9d
    .line 287
    :cond_9d
    new-instance p1, Ljava/lang/IllegalStateException;

    #@9f
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a2
    throw p1
.end method

.method public final restoreState(Landroid/os/Parcelable;)V
    .registers 7

    #@0
    .line 535
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    #@2
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_96

    #@8
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@a
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_96

    #@10
    .line 540
    check-cast p1, Landroid/os/Bundle;

    #@12
    .line 541
    invoke-virtual {p1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    #@15
    move-result-object v0

    #@16
    if-nez v0, :cond_23

    #@18
    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@23
    .line 546
    :cond_23
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@26
    move-result-object v0

    #@27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v0

    #@2b
    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_82

    #@31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Ljava/lang/String;

    #@37
    const-string v2, "f#"

    #@39
    .line 547
    invoke-static {v1, v2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->isValidKey(Ljava/lang/String;Ljava/lang/String;)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_4f

    #@3f
    .line 548
    invoke-static {v1, v2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J

    #@42
    move-result-wide v2

    #@43
    .line 549
    iget-object v4, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@45
    invoke-virtual {v4, p1, v1}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    #@48
    move-result-object v1

    #@49
    .line 550
    iget-object v4, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@4b
    invoke-virtual {v4, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@4e
    goto :goto_2b

    #@4f
    :cond_4f
    const-string v2, "s#"

    #@51
    .line 554
    invoke-static {v1, v2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->isValidKey(Ljava/lang/String;Ljava/lang/String;)Z

    #@54
    move-result v3

    #@55
    if-eqz v3, :cond_6d

    #@57
    .line 555
    invoke-static {v1, v2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J

    #@5a
    move-result-wide v2

    #@5b
    .line 556
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5e
    move-result-object v1

    #@5f
    check-cast v1, Landroidx/fragment/app/Fragment$SavedState;

    #@61
    .line 557
    invoke-virtual {p0, v2, v3}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    #@64
    move-result v4

    #@65
    if-eqz v4, :cond_2b

    #@67
    .line 558
    iget-object v4, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    #@69
    invoke-virtual {v4, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@6c
    goto :goto_2b

    #@6d
    .line 563
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@6f
    new-instance v0, Ljava/lang/StringBuilder;

    #@71
    const-string v2, "Unexpected key in savedState: "

    #@73
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@81
    throw p1

    #@82
    .line 566
    :cond_82
    iget-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@84
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    #@87
    move-result p1

    #@88
    if-nez p1, :cond_95

    #@8a
    const/4 p1, 0x1

    #@8b
    .line 567
    iput-boolean p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    #@8d
    .line 568
    iput-boolean p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    #@8f
    .line 569
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    #@92
    .line 570
    invoke-direct {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->scheduleGracePeriodEnd()V

    #@95
    :cond_95
    return-void

    #@96
    .line 536
    :cond_96
    new-instance p1, Ljava/lang/IllegalStateException;

    #@98
    const-string v0, "Expected the adapter to be \'fresh\' while restoring state."

    #@9a
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9d
    throw p1
.end method

.method public final saveState()Landroid/os/Parcelable;
    .registers 8

    #@0
    .line 509
    new-instance v0, Landroid/os/Bundle;

    #@2
    iget-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@4
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    #@7
    move-result v1

    #@8
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    #@a
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    #@12
    const/4 v1, 0x0

    #@13
    move v2, v1

    #@14
    .line 512
    :goto_14
    iget-object v3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@16
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    #@19
    move-result v3

    #@1a
    if-ge v2, v3, :cond_40

    #@1c
    .line 513
    iget-object v3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@1e
    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    #@21
    move-result-wide v3

    #@22
    .line 514
    iget-object v5, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    #@24
    invoke-virtual {v5, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@27
    move-result-object v5

    #@28
    check-cast v5, Landroidx/fragment/app/Fragment;

    #@2a
    if-eqz v5, :cond_3d

    #@2c
    .line 515
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_3d

    #@32
    const-string v6, "f#"

    #@34
    .line 516
    invoke-static {v6, v3, v4}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 517
    iget-object v4, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@3a
    invoke-virtual {v4, v0, v3, v5}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    #@3d
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_14

    #@40
    .line 522
    :cond_40
    :goto_40
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    #@42
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    #@45
    move-result v2

    #@46
    if-ge v1, v2, :cond_68

    #@48
    .line 523
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    #@4a
    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    #@4d
    move-result-wide v2

    #@4e
    .line 524
    invoke-virtual {p0, v2, v3}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_65

    #@54
    const-string v4, "s#"

    #@56
    .line 525
    invoke-static {v4, v2, v3}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    .line 526
    iget-object v5, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    #@5c
    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@5f
    move-result-object v2

    #@60
    check-cast v2, Landroid/os/Parcelable;

    #@62
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@65
    :cond_65
    add-int/lit8 v1, v1, 0x1

    #@67
    goto :goto_40

    #@68
    :cond_68
    return-object v0
.end method

.method public final setHasStableIds(Z)V
    .registers 3

    #@0
    .line 501
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag."

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method shouldDelayFragmentTransactions()Z
    .registers 2

    #@0
    .line 470
    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    #@2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

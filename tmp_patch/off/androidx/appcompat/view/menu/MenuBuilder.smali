.class public Landroidx/appcompat/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroidx/core/internal/view/SupportMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;,
        Landroidx/appcompat/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mGroupDividerEnabled:Z

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mStructureChangedWhileDispatchPrevented:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [I

    #@3
    .line 68
    fill-array-data v0, :array_a

    #@6
    sput-object v0, Landroidx/appcompat/view/menu/MenuBuilder;->sCategoryToOrder:[I

    #@8
    return-void

    #@9
    nop

    #@a
    :array_a
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 134
    iput v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    #@6
    .line 159
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@8
    .line 161
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    #@a
    .line 163
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    #@c
    .line 165
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    #@e
    .line 167
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    #@10
    .line 169
    new-instance v1, Ljava/util/ArrayList;

    #@12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@15
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    #@17
    .line 171
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@19
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@1c
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1e
    .line 182
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    #@20
    .line 224
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    #@22
    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@25
    move-result-object p1

    #@26
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@28
    .line 226
    new-instance p1, Ljava/util/ArrayList;

    #@2a
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@2d
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@2f
    .line 228
    new-instance p1, Ljava/util/ArrayList;

    #@31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@34
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    #@36
    const/4 p1, 0x1

    #@37
    .line 229
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    #@39
    .line 231
    new-instance v0, Ljava/util/ArrayList;

    #@3b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@3e
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    #@40
    .line 232
    new-instance v0, Ljava/util/ArrayList;

    #@42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@45
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    #@47
    .line 233
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@49
    .line 235
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    #@4c
    return-void
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 16

    #@0
    .line 462
    new-instance v8, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    move-object v0, v8

    #@3
    move-object v1, p0

    #@4
    move v2, p1

    #@5
    move v3, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    move-object v6, p5

    #@9
    move v7, p6

    #@a
    invoke-direct/range {v0 .. v7}, Landroidx/appcompat/view/menu/MenuItemImpl;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    #@d
    return-object v8
.end method

.method private dispatchPresenterUpdate(Z)V
    .registers 5

    #@0
    .line 284
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 286
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@c
    .line 287
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@e
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v0

    #@12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_30

    #@18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@1e
    .line 288
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    #@24
    if-nez v2, :cond_2c

    #@26
    .line 290
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@28
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@2b
    goto :goto_12

    #@2c
    .line 292
    :cond_2c
    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->updateMenuView(Z)V

    #@2f
    goto :goto_12

    #@30
    .line 295
    :cond_30
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@33
    return-void
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    #@0
    const-string v0, "android:menu:presenters"

    #@2
    .line 345
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_43

    #@8
    .line 347
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_11

    #@10
    goto :goto_43

    #@11
    .line 349
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v0

    #@17
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_43

    #@1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@23
    .line 350
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    #@29
    if-nez v2, :cond_31

    #@2b
    .line 352
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2d
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@30
    goto :goto_17

    #@31
    .line 354
    :cond_31
    invoke-interface {v2}, Landroidx/appcompat/view/menu/MenuPresenter;->getId()I

    #@34
    move-result v1

    #@35
    if-lez v1, :cond_17

    #@37
    .line 356
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Landroid/os/Parcelable;

    #@3d
    if-eqz v1, :cond_17

    #@3f
    .line 358
    invoke-interface {v2, v1}, Landroidx/appcompat/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@42
    goto :goto_17

    #@43
    :cond_43
    :goto_43
    return-void
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    #@0
    .line 321
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 323
    :cond_9
    new-instance v0, Landroid/util/SparseArray;

    #@b
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@e
    .line 325
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@10
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_3e

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@20
    .line 326
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    #@26
    if-nez v3, :cond_2e

    #@28
    .line 328
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2a
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@2d
    goto :goto_14

    #@2e
    .line 330
    :cond_2e
    invoke-interface {v3}, Landroidx/appcompat/view/menu/MenuPresenter;->getId()I

    #@31
    move-result v2

    #@32
    if-lez v2, :cond_14

    #@34
    .line 332
    invoke-interface {v3}, Landroidx/appcompat/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    #@37
    move-result-object v3

    #@38
    if-eqz v3, :cond_14

    #@3a
    .line 334
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3d
    goto :goto_14

    #@3e
    :cond_3e
    const-string v1, "android:menu:presenters"

    #@40
    .line 340
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@43
    return-void
.end method

.method private dispatchSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;Landroidx/appcompat/view/menu/MenuPresenter;)Z
    .registers 6

    #@0
    .line 300
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_a

    #@9
    return v1

    #@a
    :cond_a
    if-eqz p2, :cond_10

    #@c
    .line 306
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    #@f
    move-result v1

    #@10
    .line 309
    :cond_10
    iget-object p2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@12
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object p2

    #@16
    :cond_16
    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_38

    #@1c
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@22
    .line 310
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    #@28
    if-nez v2, :cond_30

    #@2a
    .line 312
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2c
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@2f
    goto :goto_16

    #@30
    :cond_30
    if-nez v1, :cond_16

    #@32
    .line 314
    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    #@35
    move-result v0

    #@36
    move v1, v0

    #@37
    goto :goto_16

    #@38
    :cond_38
    return v1
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    #@0
    .line 849
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    :goto_6
    if-ltz v0, :cond_1a

    #@8
    .line 850
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@e
    .line 851
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getOrdering()I

    #@11
    move-result v1

    #@12
    if-gt v1, p1, :cond_17

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    return v0

    #@17
    :cond_17
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_6

    #@1a
    :cond_1a
    const/4 p0, 0x0

    #@1b
    return p0
.end method

.method private static getOrdering(I)I
    .registers 4

    #@0
    const/high16 v0, -0x10000

    #@2
    and-int/2addr v0, p0

    #@3
    shr-int/lit8 v0, v0, 0x10

    #@5
    if-ltz v0, :cond_16

    #@7
    .line 783
    sget-object v1, Landroidx/appcompat/view/menu/MenuBuilder;->sCategoryToOrder:[I

    #@9
    array-length v2, v1

    #@a
    if-ge v0, v2, :cond_16

    #@c
    .line 787
    aget v0, v1, v0

    #@e
    shl-int/lit8 v0, v0, 0x10

    #@10
    const v1, 0xffff

    #@13
    and-int/2addr p0, v1

    #@14
    or-int/2addr p0, v0

    #@15
    return p0

    #@16
    .line 784
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string v0, "order does not contain a valid category."

    #@1a
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw p0
.end method

.method private removeItemAtInt(IZ)V
    .registers 4

    #@0
    if-ltz p1, :cond_16

    #@2
    .line 582
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_b

    #@a
    goto :goto_16

    #@b
    .line 584
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@10
    if-eqz p2, :cond_16

    #@12
    const/4 p1, 0x1

    #@13
    .line 586
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@16
    :cond_16
    :goto_16
    return-void
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 8

    #@0
    .line 1224
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz p5, :cond_e

    #@7
    .line 1227
    iput-object p5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    #@9
    .line 1230
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    #@b
    .line 1231
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    #@d
    goto :goto_2e

    #@e
    :cond_e
    if-lez p1, :cond_17

    #@10
    .line 1234
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@13
    move-result-object p1

    #@14
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    #@16
    goto :goto_1b

    #@17
    :cond_17
    if-eqz p2, :cond_1b

    #@19
    .line 1236
    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    #@1b
    :cond_1b
    :goto_1b
    if-lez p3, :cond_28

    #@1d
    .line 1240
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@20
    move-result-object p1

    #@21
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@24
    move-result-object p1

    #@25
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    #@27
    goto :goto_2c

    #@28
    :cond_28
    if-eqz p4, :cond_2c

    #@2a
    .line 1242
    iput-object p4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    #@2c
    .line 1246
    :cond_2c
    :goto_2c
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    #@2e
    :goto_2e
    const/4 p1, 0x0

    #@2f
    .line 1250
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@32
    return-void
.end method

.method private setShortcutsVisibleInner(Z)V
    .registers 4

    #@0
    if-eqz p1, :cond_1c

    #@2
    .line 814
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@4
    .line 815
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object p1

    #@8
    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    #@a
    const/4 v0, 0x1

    #@b
    if-eq p1, v0, :cond_1c

    #@d
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    #@f
    .line 817
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@12
    move-result-object p1

    #@13
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    #@15
    .line 816
    invoke-static {p1, v1}, Landroidx/core/view/ViewConfigurationCompat;->shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_1c

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    :goto_1d
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    #@1f
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 473
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6

    #@0
    .line 483
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5
    move-result-object p4

    #@6
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@9
    move-result-object p1

    #@a
    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 5

    #@0
    .line 478
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 468
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 16

    #@0
    .line 522
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    .line 524
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    #@a
    move-result-object p4

    #@b
    if-eqz p4, :cond_12

    #@d
    .line 525
    invoke-interface {p4}, Ljava/util/List;->size()I

    #@10
    move-result v2

    #@11
    goto :goto_13

    #@12
    :cond_12
    move v2, v1

    #@13
    :goto_13
    and-int/lit8 p7, p7, 0x1

    #@15
    if-nez p7, :cond_1a

    #@17
    .line 528
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeGroup(I)V

    #@1a
    :cond_1a
    :goto_1a
    if-ge v1, v2, :cond_64

    #@1c
    .line 532
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object p7

    #@20
    check-cast p7, Landroid/content/pm/ResolveInfo;

    #@22
    .line 533
    new-instance v3, Landroid/content/Intent;

    #@24
    .line 534
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@26
    if-gez v4, :cond_2a

    #@28
    move-object v4, p6

    #@29
    goto :goto_2e

    #@2a
    :cond_2a
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@2c
    aget-object v4, p5, v4

    #@2e
    :goto_2e
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@31
    .line 535
    new-instance v4, Landroid/content/ComponentName;

    #@33
    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@35
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@37
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@39
    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3b
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3d
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@40
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@43
    .line 538
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {p0, p1, p2, p3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@4a
    move-result-object v4

    #@4b
    .line 539
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@4e
    move-result-object v5

    #@4f
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    #@52
    move-result-object v4

    #@53
    .line 540
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    #@56
    move-result-object v3

    #@57
    if-eqz p8, :cond_61

    #@59
    .line 541
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@5b
    if-ltz v4, :cond_61

    #@5d
    .line 542
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@5f
    aput-object v3, p8, p7

    #@61
    :cond_61
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_1a

    #@64
    :cond_64
    return v2
.end method

.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 13

    #@0
    .line 443
    invoke-static {p3}, Landroidx/appcompat/view/menu/MenuBuilder;->getOrdering(I)I

    #@3
    move-result v7

    #@4
    .line 445
    iget v6, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move v4, v7

    #@b
    move-object v5, p4

    #@c
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/MenuItemImpl;

    #@f
    move-result-object p1

    #@10
    .line 448
    iget-object p2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@12
    if-eqz p2, :cond_17

    #@14
    .line 450
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    #@17
    .line 453
    :cond_17
    iget-object p2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@19
    invoke-static {p2, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    #@1c
    move-result p3

    #@1d
    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@20
    const/4 p2, 0x1

    #@21
    .line 454
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@24
    return-object p1
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V
    .registers 3

    #@0
    .line 250
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@5
    return-void
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V
    .registers 5

    #@0
    .line 263
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@4
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 264
    invoke-interface {p1, p2, p0}, Landroidx/appcompat/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@d
    const/4 p1, 0x1

    #@e
    .line 265
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@10
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3

    #@0
    .line 493
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    #@0
    .line 507
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5
    move-result-object p4

    #@6
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    #@9
    move-result-object p1

    #@a
    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    #@0
    .line 498
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@6
    .line 499
    new-instance p2, Landroidx/appcompat/view/menu/SubMenuBuilder;

    #@8
    iget-object p3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    #@a
    invoke-direct {p2, p3, p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    #@d
    .line 500
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    #@10
    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 488
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public changeMenuMode()V
    .registers 2

    #@0
    .line 843
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 844
    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V

    #@7
    :cond_7
    return-void
.end method

.method public clear()V
    .registers 2

    #@0
    .line 606
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 607
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    #@7
    .line 609
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@c
    const/4 v0, 0x1

    #@d
    .line 611
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@10
    return-void
.end method

.method public clearAll()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 594
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@3
    .line 595
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V

    #@6
    .line 596
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->clearHeader()V

    #@9
    .line 597
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@b
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    #@e
    const/4 v1, 0x0

    #@f
    .line 598
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@11
    .line 599
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    #@13
    .line 600
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    #@15
    .line 601
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@18
    return-void
.end method

.method public clearHeader()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 1215
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    #@3
    .line 1216
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    #@5
    .line 1217
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    #@7
    const/4 v0, 0x0

    #@8
    .line 1219
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@b
    return-void
.end method

.method public close()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 1048
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    #@4
    return-void
.end method

.method public final close(Z)V
    .registers 5

    #@0
    .line 1032
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    .line 1034
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    #@8
    .line 1035
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2c

    #@14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@1a
    .line 1036
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    #@20
    if-nez v2, :cond_28

    #@22
    .line 1038
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@24
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@27
    goto :goto_e

    #@28
    .line 1040
    :cond_28
    invoke-interface {v2, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    #@2b
    goto :goto_e

    #@2c
    :cond_2c
    const/4 p1, 0x0

    #@2d
    .line 1043
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    #@2f
    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 6

    #@0
    .line 1375
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_3f

    #@9
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@b
    if-eq v0, p1, :cond_e

    #@d
    goto :goto_3f

    #@e
    .line 1379
    :cond_e
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@11
    .line 1380
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v0

    #@17
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_37

    #@1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@23
    .line 1381
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    #@29
    if-nez v3, :cond_31

    #@2b
    .line 1383
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2d
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@30
    goto :goto_17

    #@31
    .line 1384
    :cond_31
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_17

    #@37
    .line 1388
    :cond_37
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@3a
    if-eqz v1, :cond_3f

    #@3c
    const/4 p1, 0x0

    #@3d
    .line 1391
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@3f
    :cond_3f
    :goto_3f
    return v1
.end method

.method dispatchMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    #@0
    .line 836
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    #@7
    move-result p1

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

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 6

    #@0
    .line 1353
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_a

    #@9
    return v1

    #@a
    .line 1357
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@d
    .line 1358
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v0

    #@13
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_33

    #@19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@1f
    .line 1359
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    #@25
    if-nez v3, :cond_2d

    #@27
    .line 1361
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@29
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@2c
    goto :goto_13

    #@2d
    .line 1362
    :cond_2d
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_13

    #@33
    .line 1366
    :cond_33
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@36
    if-eqz v1, :cond_3a

    #@38
    .line 1369
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@3a
    :cond_3a
    return v1
.end method

.method public findGroupIndex(I)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 726
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->findGroupIndex(II)I

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public findGroupIndex(II)I
    .registers 5

    #@0
    .line 730
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@3
    move-result v0

    #@4
    if-gez p2, :cond_7

    #@6
    const/4 p2, 0x0

    #@7
    :cond_7
    :goto_7
    if-ge p2, v0, :cond_1b

    #@9
    .line 737
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@11
    .line 739
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    #@14
    move-result v1

    #@15
    if-ne v1, p1, :cond_18

    #@17
    return p2

    #@18
    :cond_18
    add-int/lit8 p2, p2, 0x1

    #@1a
    goto :goto_7

    #@1b
    :cond_1b
    const/4 p1, -0x1

    #@1c
    return p1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 6

    #@0
    .line 695
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_2a

    #@7
    .line 697
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@f
    .line 698
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    #@12
    move-result v3

    #@13
    if-ne v3, p1, :cond_16

    #@15
    return-object v2

    #@16
    .line 700
    :cond_16
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_27

    #@1c
    .line 701
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    #@1f
    move-result-object v2

    #@20
    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    #@23
    move-result-object v2

    #@24
    if-eqz v2, :cond_27

    #@26
    return-object v2

    #@27
    :cond_27
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_5

    #@2a
    :cond_2a
    const/4 p1, 0x0

    #@2b
    return-object p1
.end method

.method public findItemIndex(I)I
    .registers 5

    #@0
    .line 713
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_19

    #@7
    .line 716
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@f
    .line 717
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    #@12
    move-result v2

    #@13
    if-ne v2, p1, :cond_16

    #@15
    return v1

    #@16
    :cond_16
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_5

    #@19
    :cond_19
    const/4 p1, -0x1

    #@1a
    return p1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 14

    #@0
    .line 932
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    #@2
    .line 933
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 934
    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    #@8
    .line 936
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@b
    move-result v1

    #@c
    const/4 v2, 0x0

    #@d
    if-eqz v1, :cond_10

    #@f
    return-object v2

    #@10
    .line 940
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    #@13
    move-result v1

    #@14
    .line 941
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    #@16
    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    #@19
    .line 943
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    #@1c
    .line 946
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result p2

    #@20
    const/4 v4, 0x1

    #@21
    const/4 v5, 0x0

    #@22
    if-ne p2, v4, :cond_2b

    #@24
    .line 948
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object p1

    #@28
    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2a
    return-object p1

    #@2b
    .line 951
    :cond_2b
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    #@2e
    move-result v4

    #@2f
    move v6, v5

    #@30
    :goto_30
    if-ge v6, p2, :cond_66

    #@32
    .line 955
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v7

    #@36
    check-cast v7, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@38
    if-eqz v4, :cond_3f

    #@3a
    .line 956
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    #@3d
    move-result v8

    #@3e
    goto :goto_43

    #@3f
    .line 957
    :cond_3f
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericShortcut()C

    #@42
    move-result v8

    #@43
    .line 958
    :goto_43
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@45
    aget-char v9, v9, v5

    #@47
    if-ne v8, v9, :cond_4d

    #@49
    and-int/lit8 v9, v1, 0x2

    #@4b
    if-eqz v9, :cond_62

    #@4d
    :cond_4d
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@4f
    const/4 v10, 0x2

    #@50
    aget-char v9, v9, v10

    #@52
    if-ne v8, v9, :cond_58

    #@54
    and-int/lit8 v9, v1, 0x2

    #@56
    if-nez v9, :cond_62

    #@58
    :cond_58
    if-eqz v4, :cond_63

    #@5a
    const/16 v9, 0x8

    #@5c
    if-ne v8, v9, :cond_63

    #@5e
    const/16 v8, 0x43

    #@60
    if-ne p1, v8, :cond_63

    #@62
    :cond_62
    return-object v7

    #@63
    :cond_63
    add-int/lit8 v6, v6, 0x1

    #@65
    goto :goto_30

    #@66
    :cond_66
    return-object v2
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    #@0
    .line 884
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    #@3
    move-result v0

    #@4
    .line 885
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

    #@7
    move-result v1

    #@8
    .line 886
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    #@a
    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    #@d
    .line 888
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    #@10
    move-result v3

    #@11
    const/16 v4, 0x43

    #@13
    if-nez v3, :cond_18

    #@15
    if-eq p2, v4, :cond_18

    #@17
    return-void

    #@18
    .line 895
    :cond_18
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v3

    #@1e
    const/4 v5, 0x0

    #@1f
    move v6, v5

    #@20
    :goto_20
    if-ge v6, v3, :cond_7f

    #@22
    .line 897
    iget-object v7, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v7

    #@28
    check-cast v7, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2a
    .line 898
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@2d
    move-result v8

    #@2e
    if-eqz v8, :cond_39

    #@30
    .line 899
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    #@33
    move-result-object v8

    #@34
    check-cast v8, Landroidx/appcompat/view/menu/MenuBuilder;

    #@36
    invoke-virtual {v8, p1, p2, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    #@39
    :cond_39
    if-eqz v0, :cond_40

    #@3b
    .line 902
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    #@3e
    move-result v8

    #@3f
    goto :goto_44

    #@40
    :cond_40
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericShortcut()C

    #@43
    move-result v8

    #@44
    :goto_44
    if-eqz v0, :cond_4b

    #@46
    .line 904
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticModifiers()I

    #@49
    move-result v9

    #@4a
    goto :goto_4f

    #@4b
    :cond_4b
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericModifiers()I

    #@4e
    move-result v9

    #@4f
    :goto_4f
    const v10, 0x1100f

    #@52
    and-int v11, v1, v10

    #@54
    and-int/2addr v9, v10

    #@55
    if-ne v11, v9, :cond_59

    #@57
    const/4 v9, 0x1

    #@58
    goto :goto_5a

    #@59
    :cond_59
    move v9, v5

    #@5a
    :goto_5a
    if-eqz v9, :cond_7c

    #@5c
    if-eqz v8, :cond_7c

    #@5e
    .line 907
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@60
    aget-char v9, v9, v5

    #@62
    if-eq v8, v9, :cond_73

    #@64
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@66
    const/4 v10, 0x2

    #@67
    aget-char v9, v9, v10

    #@69
    if-eq v8, v9, :cond_73

    #@6b
    if-eqz v0, :cond_7c

    #@6d
    const/16 v9, 0x8

    #@6f
    if-ne v8, v9, :cond_7c

    #@71
    if-ne p2, v4, :cond_7c

    #@73
    .line 912
    :cond_73
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    #@76
    move-result v8

    #@77
    if-eqz v8, :cond_7c

    #@79
    .line 913
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7c
    :cond_7c
    add-int/lit8 v6, v6, 0x1

    #@7e
    goto :goto_20

    #@7f
    :cond_7f
    return-void
.end method

.method public flagActionItems()V
    .registers 7

    #@0
    .line 1165
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    .line 1167
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@6
    if-nez v1, :cond_9

    #@8
    return-void

    #@9
    .line 1173
    :cond_9
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@b
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x0

    #@10
    move v3, v2

    #@11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_31

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Ljava/lang/ref/WeakReference;

    #@1d
    .line 1174
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Landroidx/appcompat/view/menu/MenuPresenter;

    #@23
    if-nez v5, :cond_2b

    #@25
    .line 1176
    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@27
    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@2a
    goto :goto_11

    #@2b
    .line 1178
    :cond_2b
    invoke-interface {v5}, Landroidx/appcompat/view/menu/MenuPresenter;->flagActionItems()Z

    #@2e
    move-result v4

    #@2f
    or-int/2addr v3, v4

    #@30
    goto :goto_11

    #@31
    :cond_31
    if-eqz v3, :cond_5e

    #@33
    .line 1183
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@38
    .line 1184
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@3d
    .line 1185
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v1

    #@41
    move v3, v2

    #@42
    :goto_42
    if-ge v3, v1, :cond_71

    #@44
    .line 1187
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v4

    #@48
    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@4a
    .line 1188
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_56

    #@50
    .line 1189
    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@55
    goto :goto_5b

    #@56
    .line 1191
    :cond_56
    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5b
    :goto_5b
    add-int/lit8 v3, v3, 0x1

    #@5d
    goto :goto_42

    #@5e
    .line 1197
    :cond_5e
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    #@60
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@63
    .line 1198
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    #@65
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@68
    .line 1199
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    #@6a
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@71
    .line 1201
    :cond_71
    iput-boolean v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@73
    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    #@0
    .line 1205
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    #@3
    .line 1206
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    #@5
    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "android:menu:actionviewstates"

    #@2
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    #@0
    .line 832
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getExpandedItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 2

    #@0
    .line 1397
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1318
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 1314
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    #@0
    .line 1322
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3

    #@0
    .line 754
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroid/view/MenuItem;

    #@8
    return-object p1
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    #@0
    .line 1210
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    #@3
    .line 1211
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    #@5
    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .registers 2

    #@0
    .line 1349
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    #@2
    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 2

    #@0
    .line 828
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@2
    return-object v0
.end method

.method public getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 1

    #@0
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    #@0
    .line 1120
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    #@2
    if-nez v0, :cond_7

    #@4
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    #@6
    return-object v0

    #@7
    .line 1123
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@c
    .line 1125
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    const/4 v1, 0x0

    #@13
    move v2, v1

    #@14
    :goto_14
    if-ge v2, v0, :cond_2c

    #@16
    .line 1128
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@1e
    .line 1129
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_29

    #@24
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    :cond_29
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_14

    #@2c
    .line 1132
    :cond_2c
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    #@2e
    const/4 v0, 0x1

    #@2f
    .line 1133
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@31
    .line 1135
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    #@33
    return-object v0
.end method

.method public hasVisibleItems()Z
    .registers 6

    #@0
    .line 677
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_6

    #@5
    return v1

    #@6
    .line 681
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@9
    move-result v0

    #@a
    const/4 v2, 0x0

    #@b
    move v3, v2

    #@c
    :goto_c
    if-ge v3, v0, :cond_20

    #@e
    .line 684
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@16
    .line 685
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1d

    #@1c
    return v1

    #@1d
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    #@1f
    goto :goto_c

    #@20
    :cond_20
    return v2
.end method

.method public isGroupDividerEnabled()Z
    .registers 2

    #@0
    .line 516
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    #@2
    return v0
.end method

.method isQwertyMode()Z
    .registers 2

    #@0
    .line 794
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mQwertyMode:Z

    #@2
    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 3

    #@0
    .line 759
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    :goto_9
    return p1
.end method

.method public isShortcutsVisible()Z
    .registers 2

    #@0
    .line 824
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    #@2
    return v0
.end method

.method onItemActionRequestChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    .line 1114
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@3
    .line 1115
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@6
    return-void
.end method

.method onItemVisibleChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .registers 2

    #@0
    const/4 p1, 0x1

    #@1
    .line 1103
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    #@3
    .line 1104
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@6
    return-void
.end method

.method public onItemsChanged(Z)V
    .registers 4

    #@0
    .line 1059
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-nez v0, :cond_f

    #@5
    if-eqz p1, :cond_b

    #@7
    .line 1061
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    #@9
    .line 1062
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@b
    .line 1065
    :cond_b
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    #@e
    goto :goto_15

    #@f
    .line 1067
    :cond_f
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    #@11
    if-eqz p1, :cond_15

    #@13
    .line 1069
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    #@15
    :cond_15
    :goto_15
    return-void
.end method

.method public performIdentifierAction(II)Z
    .registers 3

    #@0
    .line 973
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 977
    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z
    .registers 10

    #@0
    .line 981
    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@2
    const/4 v0, 0x0

    #@3
    if-eqz p1, :cond_71

    #@5
    .line 983
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_c

    #@b
    goto :goto_71

    #@c
    .line 987
    :cond_c
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->invoke()Z

    #@f
    move-result v1

    #@10
    .line 989
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    #@13
    move-result-object v2

    #@14
    const/4 v3, 0x1

    #@15
    if-eqz v2, :cond_1f

    #@17
    .line 990
    invoke-virtual {v2}, Landroidx/core/view/ActionProvider;->hasSubMenu()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1f

    #@1d
    move v4, v3

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v4, v0

    #@20
    .line 991
    :goto_20
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_31

    #@26
    .line 992
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->expandActionView()Z

    #@29
    move-result p1

    #@2a
    or-int/2addr v1, p1

    #@2b
    if-eqz v1, :cond_70

    #@2d
    .line 994
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    #@30
    goto :goto_70

    #@31
    .line 996
    :cond_31
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@34
    move-result v5

    #@35
    if-nez v5, :cond_42

    #@37
    if-eqz v4, :cond_3a

    #@39
    goto :goto_42

    #@3a
    :cond_3a
    and-int/lit8 p1, p3, 0x1

    #@3c
    if-nez p1, :cond_70

    #@3e
    .line 1016
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    #@41
    goto :goto_70

    #@42
    :cond_42
    :goto_42
    and-int/lit8 p3, p3, 0x4

    #@44
    if-nez p3, :cond_49

    #@46
    .line 999
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    #@49
    .line 1002
    :cond_49
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@4c
    move-result p3

    #@4d
    if-nez p3, :cond_5b

    #@4f
    .line 1003
    new-instance p3, Landroidx/appcompat/view/menu/SubMenuBuilder;

    #@51
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@54
    move-result-object v0

    #@55
    invoke-direct {p3, v0, p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    #@58
    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    #@5b
    .line 1006
    :cond_5b
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    #@5e
    move-result-object p1

    #@5f
    check-cast p1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    #@61
    if-eqz v4, :cond_66

    #@63
    .line 1008
    invoke-virtual {v2, p1}, Landroidx/core/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    #@66
    .line 1010
    :cond_66
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;Landroidx/appcompat/view/menu/MenuPresenter;)Z

    #@69
    move-result p1

    #@6a
    or-int/2addr v1, p1

    #@6b
    if-nez v1, :cond_70

    #@6d
    .line 1012
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    #@70
    :cond_70
    :goto_70
    return v1

    #@71
    :cond_71
    :goto_71
    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 4

    #@0
    .line 861
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_b

    #@6
    .line 866
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    #@9
    move-result p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    and-int/lit8 p2, p3, 0x2

    #@e
    if-eqz p2, :cond_14

    #@10
    const/4 p2, 0x1

    #@11
    .line 870
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    #@14
    :cond_14
    return p1
.end method

.method public removeGroup(I)V
    .registers 7

    #@0
    .line 556
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findGroupIndex(I)I

    #@3
    move-result v0

    #@4
    if-ltz v0, :cond_2a

    #@6
    .line 559
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    sub-int/2addr v1, v0

    #@d
    const/4 v2, 0x0

    #@e
    move v3, v2

    #@f
    :goto_f
    add-int/lit8 v4, v3, 0x1

    #@11
    if-ge v3, v1, :cond_26

    #@13
    .line 561
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@1b
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    #@1e
    move-result v3

    #@1f
    if-ne v3, p1, :cond_26

    #@21
    .line 563
    invoke-direct {p0, v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    #@24
    move v3, v4

    #@25
    goto :goto_f

    #@26
    :cond_26
    const/4 p1, 0x1

    #@27
    .line 567
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@2a
    :cond_2a
    return-void
.end method

.method public removeItem(I)V
    .registers 3

    #@0
    .line 551
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemIndex(I)I

    #@3
    move-result p1

    #@4
    const/4 v0, 0x1

    #@5
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    #@8
    return-void
.end method

.method public removeItemAt(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 590
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    #@4
    return-void
.end method

.method public removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V
    .registers 5

    #@0
    .line 275
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_22

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@12
    .line 276
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    #@18
    if-eqz v2, :cond_1c

    #@1a
    if-ne v2, p1, :cond_6

    #@1c
    .line 278
    :cond_1c
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1e
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@21
    goto :goto_6

    #@22
    :cond_22
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 407
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 406
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@a
    move-result-object v0

    #@b
    .line 409
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x0

    #@10
    :goto_10
    if-ge v2, v1, :cond_38

    #@12
    .line 411
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@15
    move-result-object v3

    #@16
    .line 412
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    #@19
    move-result-object v4

    #@1a
    if-eqz v4, :cond_26

    #@1c
    .line 413
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    #@1f
    move-result v5

    #@20
    const/4 v6, -0x1

    #@21
    if-eq v5, v6, :cond_26

    #@23
    .line 414
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    #@26
    .line 416
    :cond_26
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_35

    #@2c
    .line 417
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroidx/appcompat/view/menu/SubMenuBuilder;

    #@32
    .line 418
    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    #@35
    :cond_35
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_10

    #@38
    :cond_38
    const-string v0, "android:menu:expandedactionview"

    #@3a
    .line 422
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@3d
    move-result p1

    #@3e
    if-lez p1, :cond_49

    #@40
    .line 424
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    #@43
    move-result-object p1

    #@44
    if-eqz p1, :cond_49

    #@46
    .line 426
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    #@49
    :cond_49
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .registers 2

    #@0
    .line 370
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    #@0
    .line 376
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x0

    #@6
    :goto_6
    if-ge v2, v0, :cond_44

    #@8
    .line 378
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@b
    move-result-object v3

    #@c
    .line 379
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    #@f
    move-result-object v4

    #@10
    if-eqz v4, :cond_32

    #@12
    .line 380
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    #@15
    move-result v5

    #@16
    const/4 v6, -0x1

    #@17
    if-eq v5, v6, :cond_32

    #@19
    if-nez v1, :cond_20

    #@1b
    .line 382
    new-instance v1, Landroid/util/SparseArray;

    #@1d
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@20
    .line 384
    :cond_20
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    #@23
    .line 385
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_32

    #@29
    const-string v4, "android:menu:expandedactionview"

    #@2b
    .line 386
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    #@2e
    move-result v5

    #@2f
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@32
    .line 389
    :cond_32
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_41

    #@38
    .line 390
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Landroidx/appcompat/view/menu/SubMenuBuilder;

    #@3e
    .line 391
    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    #@41
    :cond_41
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_6

    #@44
    :cond_44
    if-eqz v1, :cond_4d

    #@46
    .line 396
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@4d
    :cond_4d
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .registers 2

    #@0
    .line 366
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .registers 2

    #@0
    .line 436
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    #@2
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    #@0
    .line 1341
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@2
    return-void
.end method

.method public setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 2

    #@0
    .line 239
    iput p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    #@2
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .registers 8

    #@0
    .line 615
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    #@3
    move-result v0

    #@4
    .line 617
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    .line 618
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@d
    const/4 v2, 0x0

    #@e
    move v3, v2

    #@f
    :goto_f
    if-ge v3, v1, :cond_38

    #@11
    .line 620
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@19
    .line 621
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    #@1c
    move-result v5

    #@1d
    if-ne v5, v0, :cond_35

    #@1f
    .line 622
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    #@22
    move-result v5

    #@23
    if-nez v5, :cond_26

    #@25
    goto :goto_35

    #@26
    .line 623
    :cond_26
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    #@29
    move-result v5

    #@2a
    if-nez v5, :cond_2d

    #@2c
    goto :goto_35

    #@2d
    :cond_2d
    if-ne v4, p1, :cond_31

    #@2f
    const/4 v5, 0x1

    #@30
    goto :goto_32

    #@31
    :cond_31
    move v5, v2

    #@32
    .line 626
    :goto_32
    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    #@35
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_f

    #@38
    .line 629
    :cond_38
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@3b
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 8

    #@0
    .line 634
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_20

    #@9
    .line 637
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@11
    .line 638
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    #@14
    move-result v3

    #@15
    if-ne v3, p1, :cond_1d

    #@17
    .line 639
    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    #@1a
    .line 640
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    #@1d
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_7

    #@20
    :cond_20
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .registers 2

    #@0
    .line 512
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    #@2
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 7

    #@0
    .line 665
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_1d

    #@9
    .line 668
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@11
    .line 669
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    #@14
    move-result v3

    #@15
    if-ne v3, p1, :cond_1a

    #@17
    .line 670
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    #@1a
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_7

    #@1d
    :cond_1d
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 9

    #@0
    .line 647
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    const/4 v3, 0x1

    #@9
    if-ge v1, v0, :cond_23

    #@b
    .line 654
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@13
    .line 655
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    #@16
    move-result v5

    #@17
    if-ne v5, p1, :cond_20

    #@19
    .line 656
    invoke-virtual {v4, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_20

    #@1f
    move v2, v3

    #@20
    :cond_20
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_8

    #@23
    :cond_23
    if-eqz v2, :cond_28

    #@25
    .line 660
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@28
    :cond_28
    return-void
.end method

.method protected setHeaderIconInt(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    move-object v0, p0

    #@5
    move v3, p1

    #@6
    .line 1297
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    #@9
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v4, p1

    #@6
    .line 1285
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    #@9
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 8

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    move-object v0, p0

    #@5
    move v1, p1

    #@6
    .line 1273
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    #@9
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v2, p1

    #@6
    .line 1261
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    #@9
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v5, p1

    #@6
    .line 1309
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    #@9
    return-object p0
.end method

.method public setOptionalIconsVisible(Z)V
    .registers 2

    #@0
    .line 1345
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    #@2
    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .registers 2

    #@0
    .line 1406
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    #@2
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 2

    #@0
    .line 764
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mQwertyMode:Z

    #@2
    const/4 p1, 0x0

    #@3
    .line 766
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@6
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 3

    #@0
    .line 805
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 809
    :cond_5
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    #@8
    const/4 p1, 0x0

    #@9
    .line 810
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@c
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    .line 749
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public startDispatchingItemsChanged()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1088
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@3
    .line 1090
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    #@5
    if-eqz v1, :cond_e

    #@7
    .line 1091
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    #@9
    .line 1092
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    #@b
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@e
    :cond_e
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .registers 2

    #@0
    .line 1080
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@2
    if-nez v0, :cond_c

    #@4
    const/4 v0, 0x1

    #@5
    .line 1081
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@7
    const/4 v0, 0x0

    #@8
    .line 1082
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    #@a
    .line 1083
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    #@c
    :cond_c
    return-void
.end method

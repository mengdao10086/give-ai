.class Landroidx/core/widget/TextViewCompat$OreoCallback;
.super Ljava/lang/Object;
.source "TextViewCompat.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OreoCallback"
.end annotation


# static fields
.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64


# instance fields
.field private final mCallback:Landroid/view/ActionMode$Callback;

.field private mCanUseMenuBuilderReferences:Z

.field private mInitializedMenuBuilderReferences:Z

.field private mMenuBuilderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V
    .registers 3

    #@0
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 570
    iput-object p1, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    #@5
    .line 571
    iput-object p2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    #@7
    const/4 p1, 0x0

    #@8
    .line 572
    iput-boolean p1, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    #@a
    return-void
.end method

.method private createProcessTextIntent()Landroid/content/Intent;
    .registers 3

    #@0
    .line 697
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    const-string v1, "android.intent.action.PROCESS_TEXT"

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@a
    move-result-object v0

    #@b
    const-string v1, "text/plain"

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;
    .registers 5

    #@0
    .line 685
    invoke-direct {p0}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 686
    invoke-direct {p0, p2}, Landroidx/core/widget/TextViewCompat$OreoCallback;->isEditable(Landroid/widget/TextView;)Z

    #@7
    move-result p2

    #@8
    xor-int/lit8 p2, p2, 0x1

    #@a
    const-string v1, "android.intent.extra.PROCESS_TEXT_READONLY"

    #@c
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@f
    move-result-object p2

    #@10
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@12
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@14
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@16
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@18
    .line 687
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    move-result-object p1

    #@1c
    return-object p1
.end method

.method private getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .line 656
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 657
    instance-of v1, p1, Landroid/app/Activity;

    #@7
    if-nez v1, :cond_a

    #@9
    return-object v0

    #@a
    .line 662
    :cond_a
    invoke-direct {p0}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntent()Landroid/content/Intent;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@12
    move-result-object p2

    #@13
    .line 663
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object p2

    #@17
    :cond_17
    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2d

    #@1d
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/content/pm/ResolveInfo;

    #@23
    .line 664
    invoke-direct {p0, v1, p1}, Landroidx/core/widget/TextViewCompat$OreoCallback;->isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_17

    #@29
    .line 665
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_17

    #@2d
    :cond_2d
    return-object v0
.end method

.method private isEditable(Landroid/widget/TextView;)Z
    .registers 3

    #@0
    .line 691
    instance-of v0, p1, Landroid/text/Editable;

    #@2
    if-eqz v0, :cond_12

    #@4
    .line 692
    invoke-virtual {p1}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_12

    #@a
    .line 693
    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    #@d
    move-result p1

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

.method private isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .registers 6

    #@0
    .line 672
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    const/4 v1, 0x1

    #@d
    if-eqz v0, :cond_10

    #@f
    return v1

    #@10
    .line 675
    :cond_10
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@12
    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    #@14
    const/4 v2, 0x0

    #@15
    if-nez v0, :cond_18

    #@17
    return v2

    #@18
    .line 678
    :cond_18
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1a
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@1c
    if-eqz v0, :cond_2a

    #@1e
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@20
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@22
    .line 679
    invoke-virtual {p2, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    #@25
    move-result p1

    #@26
    if-nez p1, :cond_29

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move v1, v2

    #@2a
    :cond_2a
    :goto_2a
    return v1
.end method

.method private recomputeProcessTextMenuItems(Landroid/view/Menu;)V
    .registers 10

    #@0
    .line 602
    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 603
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v1

    #@a
    .line 605
    iget-boolean v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    #@c
    const-string v3, "removeItemAt"

    #@e
    const/4 v4, 0x0

    #@f
    const/4 v5, 0x1

    #@10
    if-nez v2, :cond_32

    #@12
    .line 606
    iput-boolean v5, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    #@14
    :try_start_14
    const-string v2, "com.android.internal.view.menu.MenuBuilder"

    #@16
    .line 609
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    #@1c
    new-array v6, v5, [Ljava/lang/Class;

    #@1e
    .line 610
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@20
    aput-object v7, v6, v4

    #@22
    .line 611
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    #@28
    .line 612
    iput-boolean v5, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_2a} :catch_2b

    #@2a
    goto :goto_32

    #@2b
    :catch_2b
    const/4 v2, 0x0

    #@2c
    .line 614
    iput-object v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    #@2e
    .line 615
    iput-object v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    #@30
    .line 616
    iput-boolean v4, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z

    #@32
    .line 622
    :cond_32
    :goto_32
    :try_start_32
    iget-boolean v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z

    #@34
    if-eqz v2, :cond_41

    #@36
    iget-object v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    #@38
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_41

    #@3e
    .line 623
    iget-object v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    #@40
    goto :goto_4f

    #@41
    .line 624
    :cond_41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@44
    move-result-object v2

    #@45
    new-array v6, v5, [Ljava/lang/Class;

    #@47
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@49
    aput-object v7, v6, v4

    #@4b
    .line 625
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@4e
    move-result-object v2

    #@4f
    .line 626
    :goto_4f
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    #@52
    move-result v3

    #@53
    sub-int/2addr v3, v5

    #@54
    :goto_54
    if-ltz v3, :cond_7e

    #@56
    .line 627
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    #@59
    move-result-object v6

    #@5a
    .line 628
    invoke-interface {v6}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    #@5d
    move-result-object v7

    #@5e
    if-eqz v7, :cond_7b

    #@60
    const-string v7, "android.intent.action.PROCESS_TEXT"

    #@62
    .line 629
    invoke-interface {v6}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v6

    #@6e
    if-eqz v6, :cond_7b

    #@70
    new-array v6, v5, [Ljava/lang/Object;

    #@72
    .line 630
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@75
    move-result-object v7

    #@76
    aput-object v7, v6, v4

    #@78
    invoke-virtual {v2, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_7b} :catch_a9
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_7b} :catch_a9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_7b} :catch_a9

    #@7b
    :cond_7b
    add-int/lit8 v3, v3, -0x1

    #@7d
    goto :goto_54

    #@7e
    .line 642
    :cond_7e
    invoke-direct {p0, v0, v1}, Landroidx/core/widget/TextViewCompat$OreoCallback;->getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    #@81
    move-result-object v0

    #@82
    move v2, v4

    #@83
    .line 643
    :goto_83
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@86
    move-result v3

    #@87
    if-ge v2, v3, :cond_a9

    #@89
    .line 644
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8c
    move-result-object v3

    #@8d
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@8f
    add-int/lit8 v6, v2, 0x64

    #@91
    .line 647
    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@94
    move-result-object v7

    #@95
    .line 645
    invoke-interface {p1, v4, v4, v6, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@98
    move-result-object v6

    #@99
    iget-object v7, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    #@9b
    .line 648
    invoke-direct {p0, v3, v7}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;

    #@9e
    move-result-object v3

    #@9f
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    #@a2
    move-result-object v3

    #@a3
    .line 649
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    #@a6
    add-int/lit8 v2, v2, 0x1

    #@a8
    goto :goto_83

    #@a9
    :catch_a9
    :cond_a9
    return-void
.end method


# virtual methods
.method getWrappedCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    #@0
    .line 598
    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    #@2
    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    #@0
    .line 588
    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    #@0
    .line 577
    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    #@0
    .line 593
    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    #@2
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    #@5
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    #@0
    .line 582
    invoke-direct {p0, p2}, Landroidx/core/widget/TextViewCompat$OreoCallback;->recomputeProcessTextMenuItems(Landroid/view/Menu;)V

    #@3
    .line 583
    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    #@5
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@8
    move-result p1

    #@9
    return p1
.end method

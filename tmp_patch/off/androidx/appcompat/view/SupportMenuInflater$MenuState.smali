.class Landroidx/appcompat/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Landroidx/core/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticModifiers:I

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemContentDescription:Ljava/lang/CharSequence;

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemIconTintList:Landroid/content/res/ColorStateList;

.field private itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericModifiers:I

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemTooltipText:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroidx/appcompat/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/SupportMenuInflater;Landroid/view/Menu;)V
    .registers 3

    #@0
    .line 349
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 p1, 0x0

    #@6
    .line 337
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    #@8
    .line 338
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    .line 350
    iput-object p2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    #@c
    .line 352
    invoke-virtual {p0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->resetGroup()V

    #@f
    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 462
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result p1

    #@8
    return p1
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 549
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    #@2
    iget-object v0, v0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@c
    move-result-object v0

    #@d
    .line 550
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@10
    move-result-object p2

    #@11
    const/4 v0, 0x1

    #@12
    .line 551
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@15
    .line 552
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    #@19
    return-object p1

    #@1a
    :catch_1a
    move-exception p2

    #@1b
    .line 554
    new-instance p3, Ljava/lang/StringBuilder;

    #@1d
    const-string v0, "Cannot instantiate class: "

    #@1f
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@22
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object p1

    #@2a
    const-string p3, "SupportMenuInflater"

    #@2c
    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    const/4 p1, 0x0

    #@30
    return-object p1
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .registers 7

    #@0
    .line 467
    iget-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemChecked:Z

    #@2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    #@5
    move-result-object v0

    #@6
    iget-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemVisible:Z

    #@8
    .line 468
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    #@b
    move-result-object v0

    #@c
    iget-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    #@e
    .line 469
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    #@11
    move-result-object v0

    #@12
    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    #@14
    const/4 v2, 0x0

    #@15
    const/4 v3, 0x1

    #@16
    if-lt v1, v3, :cond_1a

    #@18
    move v1, v3

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    move v1, v2

    #@1b
    .line 470
    :goto_1b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    #@21
    .line 471
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    #@24
    move-result-object v0

    #@25
    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconResId:I

    #@27
    .line 472
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    #@2a
    .line 474
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    #@2c
    if-ltz v0, :cond_31

    #@2e
    .line 475
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    #@31
    .line 478
    :cond_31
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    #@33
    if-eqz v0, :cond_58

    #@35
    .line 479
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    #@37
    iget-object v0, v0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    #@39
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_50

    #@3f
    .line 483
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    #@41
    iget-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    #@43
    .line 484
    invoke-virtual {v1}, Landroidx/appcompat/view/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    #@46
    move-result-object v1

    #@47
    iget-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    #@49
    invoke-direct {v0, v1, v4}, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #@4c
    .line 483
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@4f
    goto :goto_58

    #@50
    .line 480
    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    #@52
    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    #@54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@57
    throw p1

    #@58
    .line 487
    :cond_58
    :goto_58
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    #@5a
    const/4 v1, 0x2

    #@5b
    if-lt v0, v1, :cond_72

    #@5d
    .line 488
    instance-of v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@5f
    if-eqz v0, :cond_68

    #@61
    .line 489
    move-object v0, p1

    #@62
    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@64
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    #@67
    goto :goto_72

    #@68
    .line 490
    :cond_68
    instance-of v0, p1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    #@6a
    if-eqz v0, :cond_72

    #@6c
    .line 491
    move-object v0, p1

    #@6d
    check-cast v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    #@6f
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    #@72
    .line 496
    :cond_72
    :goto_72
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    #@74
    if-eqz v0, :cond_86

    #@76
    .line 497
    sget-object v1, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    #@78
    iget-object v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    #@7a
    iget-object v2, v2, Landroidx/appcompat/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    #@7c
    invoke-direct {p0, v0, v1, v2}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    move-result-object v0

    #@80
    check-cast v0, Landroid/view/View;

    #@82
    .line 499
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    #@85
    move v2, v3

    #@86
    .line 502
    :cond_86
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    #@88
    if-lez v0, :cond_97

    #@8a
    if-nez v2, :cond_90

    #@8c
    .line 504
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    #@8f
    goto :goto_97

    #@90
    :cond_90
    const-string v0, "SupportMenuInflater"

    #@92
    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    #@94
    .line 507
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 511
    :cond_97
    :goto_97
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    #@99
    if-eqz v0, :cond_9e

    #@9b
    .line 512
    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)Landroid/view/MenuItem;

    #@9e
    .line 515
    :cond_9e
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    #@a0
    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    #@a3
    .line 516
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    #@a5
    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    #@a8
    .line 517
    iget-char v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    #@aa
    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    #@ac
    invoke-static {p1, v0, v1}, Landroidx/core/view/MenuItemCompat;->setAlphabeticShortcut(Landroid/view/MenuItem;CI)V

    #@af
    .line 519
    iget-char v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    #@b1
    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    #@b3
    invoke-static {p1, v0, v1}, Landroidx/core/view/MenuItemCompat;->setNumericShortcut(Landroid/view/MenuItem;CI)V

    #@b6
    .line 521
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@b8
    if-eqz v0, :cond_bd

    #@ba
    .line 522
    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    #@bd
    .line 524
    :cond_bd
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    #@bf
    if-eqz v0, :cond_c4

    #@c1
    .line 525
    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    #@c4
    :cond_c4
    return-void
.end method


# virtual methods
.method public addItem()V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    .line 530
    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    #@3
    .line 531
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    #@5
    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    #@7
    iget v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    #@9
    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    #@b
    iget-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    #@d
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@10
    move-result-object v0

    #@11
    invoke-direct {p0, v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    #@14
    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    .line 535
    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    #@3
    .line 536
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    #@5
    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    #@7
    iget v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    #@9
    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    #@b
    iget-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    #@d
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    #@10
    move-result-object v0

    #@11
    .line 537
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    #@14
    move-result-object v1

    #@15
    invoke-direct {p0, v1}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    #@18
    return-object v0
.end method

.method public hasAddedItem()Z
    .registers 2

    #@0
    .line 542
    iget-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    #@2
    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 368
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    #@2
    iget-object v0, v0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    #@4
    sget-object v1, Landroidx/appcompat/R$styleable;->MenuGroup:[I

    #@6
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object p1

    #@a
    .line 370
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_id:I

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    #@13
    .line 371
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    #@1b
    .line 373
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@20
    move-result v0

    #@21
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    #@23
    .line 374
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@28
    move-result v0

    #@29
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    #@2b
    .line 376
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_visible:I

    #@2d
    const/4 v1, 0x1

    #@2e
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@31
    move-result v0

    #@32
    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    #@34
    .line 377
    sget v0, Landroidx/appcompat/R$styleable;->MenuGroup_android_enabled:I

    #@36
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@39
    move-result v0

    #@3a
    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    #@3c
    .line 379
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@3f
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .registers 8

    #@0
    .line 386
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    #@2
    iget-object v0, v0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    #@4
    sget-object v1, Landroidx/appcompat/R$styleable;->MenuItem:[I

    #@6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    #@9
    move-result-object p1

    #@a
    .line 390
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_android_id:I

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    #@13
    .line 391
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    #@15
    iget v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    #@17
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@1a
    move-result v0

    #@1b
    .line 392
    sget v2, Landroidx/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    #@1d
    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    #@1f
    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@22
    move-result v2

    #@23
    const/high16 v3, -0x10000

    #@25
    and-int/2addr v0, v3

    #@26
    const v3, 0xffff

    #@29
    and-int/2addr v2, v3

    #@2a
    or-int/2addr v0, v2

    #@2b
    .line 393
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    #@2d
    .line 395
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_android_title:I

    #@2f
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    #@35
    .line 396
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    #@37
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    #@3d
    .line 397
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_android_icon:I

    #@3f
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@42
    move-result v0

    #@43
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconResId:I

    #@45
    .line 398
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    #@47
    .line 399
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    invoke-direct {p0, v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    #@4e
    move-result v0

    #@4f
    iput-char v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    #@51
    .line 400
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_alphabeticModifiers:I

    #@53
    const/16 v2, 0x1000

    #@55
    .line 401
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@58
    move-result v0

    #@59
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    #@5b
    .line 402
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    #@5d
    .line 403
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    invoke-direct {p0, v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    #@64
    move-result v0

    #@65
    iput-char v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    #@67
    .line 404
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_numericModifiers:I

    #@69
    .line 405
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@6c
    move-result v0

    #@6d
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    #@6f
    .line 406
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_android_checkable:I

    #@71
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@74
    move-result v0

    #@75
    if-eqz v0, :cond_80

    #@77
    .line 408
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_android_checkable:I

    #@79
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@7c
    move-result v0

    #@7d
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    #@7f
    goto :goto_84

    #@80
    .line 412
    :cond_80
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    #@82
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    #@84
    .line 414
    :goto_84
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_android_checked:I

    #@86
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@89
    move-result v0

    #@8a
    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemChecked:Z

    #@8c
    .line 415
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_android_visible:I

    #@8e
    iget-boolean v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    #@90
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@93
    move-result v0

    #@94
    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemVisible:Z

    #@96
    .line 416
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_android_enabled:I

    #@98
    iget-boolean v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    #@9a
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@9d
    move-result v0

    #@9e
    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    #@a0
    .line 417
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_showAsAction:I

    #@a2
    const/4 v2, -0x1

    #@a3
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@a6
    move-result v0

    #@a7
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    #@a9
    .line 418
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_android_onClick:I

    #@ab
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    #@ae
    move-result-object v0

    #@af
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    #@b1
    .line 419
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_actionLayout:I

    #@b3
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@b6
    move-result v0

    #@b7
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    #@b9
    .line 420
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_actionViewClass:I

    #@bb
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    #@be
    move-result-object v0

    #@bf
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    #@c1
    .line 421
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    #@c3
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    #@c6
    move-result-object v0

    #@c7
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    #@c9
    if-eqz v0, :cond_cd

    #@cb
    const/4 v3, 0x1

    #@cc
    goto :goto_ce

    #@cd
    :cond_cd
    move v3, v1

    #@ce
    :goto_ce
    const/4 v4, 0x0

    #@cf
    if-eqz v3, :cond_e8

    #@d1
    .line 424
    iget v5, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    #@d3
    if-nez v5, :cond_e8

    #@d5
    iget-object v5, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    #@d7
    if-nez v5, :cond_e8

    #@d9
    .line 425
    sget-object v3, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    #@db
    iget-object v5, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    #@dd
    iget-object v5, v5, Landroidx/appcompat/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    #@df
    invoke-direct {p0, v0, v3, v5}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    #@e2
    move-result-object v0

    #@e3
    check-cast v0, Landroidx/core/view/ActionProvider;

    #@e5
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    #@e7
    goto :goto_f3

    #@e8
    :cond_e8
    if-eqz v3, :cond_f1

    #@ea
    const-string v0, "SupportMenuInflater"

    #@ec
    const-string v3, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    #@ee
    .line 430
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f1
    .line 433
    :cond_f1
    iput-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    #@f3
    .line 436
    :goto_f3
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_contentDescription:I

    #@f5
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@f8
    move-result-object v0

    #@f9
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    #@fb
    .line 437
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_tooltipText:I

    #@fd
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@100
    move-result-object v0

    #@101
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    #@103
    .line 438
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_iconTintMode:I

    #@105
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@108
    move-result v0

    #@109
    if-eqz v0, :cond_11a

    #@10b
    .line 439
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_iconTintMode:I

    #@10d
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@110
    move-result v0

    #@111
    iget-object v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@113
    invoke-static {v0, v2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@116
    move-result-object v0

    #@117
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@119
    goto :goto_11c

    #@11a
    .line 444
    :cond_11a
    iput-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@11c
    .line 446
    :goto_11c
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_iconTint:I

    #@11e
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@121
    move-result v0

    #@122
    if-eqz v0, :cond_12d

    #@124
    .line 447
    sget v0, Landroidx/appcompat/R$styleable;->MenuItem_iconTint:I

    #@126
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@129
    move-result-object v0

    #@12a
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    #@12c
    goto :goto_12f

    #@12d
    .line 450
    :cond_12d
    iput-object v4, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    #@12f
    .line 453
    :goto_12f
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@132
    .line 455
    iput-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    #@134
    return-void
.end method

.method public resetGroup()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 356
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    #@3
    .line 357
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    #@5
    .line 358
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    #@7
    .line 359
    iput v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    #@9
    const/4 v0, 0x1

    #@a
    .line 360
    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    #@c
    .line 361
    iput-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    #@e
    return-void
.end method

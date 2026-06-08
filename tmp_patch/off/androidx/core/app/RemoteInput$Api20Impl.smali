.class Landroidx/core/app/RemoteInput$Api20Impl;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api20Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static addResultsToIntent(Ljava/lang/Object;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 642
    check-cast p0, [Landroid/app/RemoteInput;

    #@2
    invoke-static {p0, p1, p2}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    #@5
    return-void
.end method

.method public static fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;
    .registers 5

    #@0
    .line 669
    new-instance v0, Landroid/app/RemoteInput$Builder;

    #@2
    .line 670
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    #@9
    .line 671
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    #@10
    move-result-object v0

    #@11
    .line 672
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    #@18
    move-result-object v0

    #@19
    .line 673
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    #@1c
    move-result v1

    #@1d
    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    #@20
    move-result-object v0

    #@21
    .line 674
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    #@28
    move-result-object v0

    #@29
    .line 676
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    #@2c
    move-result-object v1

    #@2d
    if-eqz v1, :cond_44

    #@2f
    .line 678
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v1

    #@33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_44

    #@39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Ljava/lang/String;

    #@3f
    const/4 v3, 0x1

    #@40
    .line 679
    invoke-static {v0, v2, v3}, Landroidx/core/app/RemoteInput$Api26Impl;->setAllowDataType(Landroid/app/RemoteInput$Builder;Ljava/lang/String;Z)Landroid/app/RemoteInput$Builder;

    #@43
    goto :goto_33

    #@44
    .line 683
    :cond_44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@46
    const/16 v2, 0x1d

    #@48
    if-lt v1, v2, :cond_51

    #@4a
    .line 684
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getEditChoicesBeforeSending()I

    #@4d
    move-result p0

    #@4e
    invoke-static {v0, p0}, Landroidx/core/app/RemoteInput$Api29Impl;->setEditChoicesBeforeSending(Landroid/app/RemoteInput$Builder;I)Landroid/app/RemoteInput$Builder;

    #@51
    .line 686
    :cond_51
    invoke-virtual {v0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    #@54
    move-result-object p0

    #@55
    return-object p0
.end method

.method static fromPlatform(Ljava/lang/Object;)Landroidx/core/app/RemoteInput;
    .registers 5

    #@0
    .line 647
    check-cast p0, Landroid/app/RemoteInput;

    #@2
    .line 648
    new-instance v0, Landroidx/core/app/RemoteInput$Builder;

    #@4
    .line 649
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    #@b
    .line 650
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    #@12
    move-result-object v0

    #@13
    .line 651
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    #@1a
    move-result-object v0

    #@1b
    .line 652
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    #@1e
    move-result v1

    #@1f
    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroidx/core/app/RemoteInput$Builder;

    #@22
    move-result-object v0

    #@23
    .line 653
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput$Builder;

    #@2a
    move-result-object v0

    #@2b
    .line 655
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api26Impl;->getAllowedDataTypes(Ljava/lang/Object;)Ljava/util/Set;

    #@2e
    move-result-object v1

    #@2f
    if-eqz v1, :cond_46

    #@31
    .line 657
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v1

    #@35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_46

    #@3b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Ljava/lang/String;

    #@41
    const/4 v3, 0x1

    #@42
    .line 658
    invoke-virtual {v0, v2, v3}, Landroidx/core/app/RemoteInput$Builder;->setAllowDataType(Ljava/lang/String;Z)Landroidx/core/app/RemoteInput$Builder;

    #@45
    goto :goto_35

    #@46
    .line 662
    :cond_46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@48
    const/16 v2, 0x1d

    #@4a
    if-lt v1, v2, :cond_53

    #@4c
    .line 663
    invoke-static {p0}, Landroidx/core/app/RemoteInput$Api29Impl;->getEditChoicesBeforeSending(Ljava/lang/Object;)I

    #@4f
    move-result p0

    #@50
    invoke-virtual {v0, p0}, Landroidx/core/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroidx/core/app/RemoteInput$Builder;

    #@53
    .line 665
    :cond_53
    invoke-virtual {v0}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    #@56
    move-result-object p0

    #@57
    return-object p0
.end method

.method static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 1

    #@0
    .line 637
    invoke-static {p0}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

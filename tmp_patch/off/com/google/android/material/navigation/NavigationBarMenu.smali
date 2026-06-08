.class public final Lcom/google/android/material/navigation/NavigationBarMenu;
.super Landroidx/appcompat/view/menu/MenuBuilder;
.source "NavigationBarMenu.java"


# instance fields
.field private final maxItemCount:I

.field private final viewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    #@0
    .line 44
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    #@3
    .line 45
    iput-object p2, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    #@5
    .line 46
    iput p3, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    #@7
    return-void
.end method


# virtual methods
.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 8

    #@0
    .line 65
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenu;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    add-int/2addr v0, v1

    #@6
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    #@8
    if-gt v0, v2, :cond_1f

    #@a
    .line 76
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenu;->stopDispatchingItemsChanged()V

    #@d
    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@10
    move-result-object p1

    #@11
    .line 78
    instance-of p2, p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@13
    if-eqz p2, :cond_1b

    #@15
    .line 79
    move-object p2, p1

    #@16
    check-cast p2, Landroidx/appcompat/view/menu/MenuItemImpl;

    #@18
    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    #@1b
    .line 81
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenu;->startDispatchingItemsChanged()V

    #@1e
    return-object p1

    #@1f
    .line 66
    :cond_1f
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    #@21
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@24
    move-result-object p1

    #@25
    .line 67
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance p3, Ljava/lang/StringBuilder;

    #@29
    const-string p4, "Maximum number of items supported by "

    #@2b
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2e
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object p3

    #@32
    const-string p4, " is "

    #@34
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object p3

    #@38
    iget p4, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    #@3a
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p3

    #@3e
    const-string p4, ". Limit can be checked with "

    #@40
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object p3

    #@44
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object p1

    #@48
    const-string p3, "#getMaxItemCount()"

    #@4a
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object p1

    #@4e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object p1

    #@52
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@55
    throw p2
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    #@0
    .line 57
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    new-instance p2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    #@9
    .line 58
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@c
    move-result-object p3

    #@d
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object p2

    #@11
    const-string p3, " does not support submenus"

    #@13
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p2

    #@17
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object p2

    #@1b
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1e
    throw p1
.end method

.method public getMaxItemCount()I
    .registers 2

    #@0
    .line 51
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    #@2
    return v0
.end method

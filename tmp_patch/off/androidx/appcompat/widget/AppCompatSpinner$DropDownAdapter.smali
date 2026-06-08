.class Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SpinnerAdapter;

.field private mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .registers 4

    #@0
    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 711
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@5
    .line 713
    instance-of v0, p1, Landroid/widget/ListAdapter;

    #@7
    if-eqz v0, :cond_e

    #@9
    .line 714
    move-object v0, p1

    #@a
    check-cast v0, Landroid/widget/ListAdapter;

    #@c
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    #@e
    :cond_e
    if-eqz p2, :cond_29

    #@10
    .line 718
    instance-of v0, p1, Landroid/widget/ThemedSpinnerAdapter;

    #@12
    if-eqz v0, :cond_1a

    #@14
    .line 720
    check-cast p1, Landroid/widget/ThemedSpinnerAdapter;

    #@16
    .line 722
    invoke-static {p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner$Api23Impl;->setDropDownViewTheme(Landroid/widget/ThemedSpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    #@19
    goto :goto_29

    #@1a
    .line 723
    :cond_1a
    instance-of v0, p1, Landroidx/appcompat/widget/ThemedSpinnerAdapter;

    #@1c
    if-eqz v0, :cond_29

    #@1e
    .line 724
    check-cast p1, Landroidx/appcompat/widget/ThemedSpinnerAdapter;

    #@20
    .line 725
    invoke-interface {p1}, Landroidx/appcompat/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    #@23
    move-result-object v0

    #@24
    if-nez v0, :cond_29

    #@26
    .line 726
    invoke-interface {p1, p2}, Landroidx/appcompat/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    #@29
    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    #@0
    .line 783
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 785
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method public getCount()I
    .registers 2

    #@0
    .line 734
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    #@9
    move-result v0

    #@a
    :goto_a
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    #@0
    .line 754
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    goto :goto_a

    #@6
    .line 755
    :cond_6
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@9
    move-result-object p1

    #@a
    :goto_a
    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    #@0
    .line 739
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    :goto_a
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    #@0
    .line 744
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-nez v0, :cond_7

    #@4
    const-wide/16 v0, -0x1

    #@6
    goto :goto_b

    #@7
    :cond_7
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    #@a
    move-result-wide v0

    #@b
    :goto_b
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    #@0
    .line 749
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public getViewTypeCount()I
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    #@0
    .line 760
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 817
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->getCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    #@0
    .line 797
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 799
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    :cond_9
    const/4 p1, 0x1

    #@a
    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    #@0
    .line 765
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 766
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@7
    :cond_7
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    #@0
    .line 772
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 773
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@7
    :cond_7
    return-void
.end method

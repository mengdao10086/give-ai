.class public Landroidx/databinding/adapters/AbsSpinnerBindingAdapter;
.super Ljava/lang/Object;
.source "AbsSpinnerBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setEntries(Landroid/widget/AbsSpinner;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/AbsSpinner;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_26

    #@2
    .line 63
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@5
    move-result-object v0

    #@6
    .line 64
    instance-of v1, v0, Landroidx/databinding/adapters/ObservableListAdapter;

    #@8
    if-eqz v1, :cond_10

    #@a
    .line 66
    check-cast v0, Landroidx/databinding/adapters/ObservableListAdapter;

    #@c
    invoke-virtual {v0, p1}, Landroidx/databinding/adapters/ObservableListAdapter;->setList(Ljava/util/List;)V

    #@f
    goto :goto_2a

    #@10
    .line 68
    :cond_10
    new-instance v0, Landroidx/databinding/adapters/ObservableListAdapter;

    #@12
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getContext()Landroid/content/Context;

    #@15
    move-result-object v2

    #@16
    const v4, 0x1090008

    #@19
    const v5, 0x1090009

    #@1c
    const/4 v6, 0x0

    #@1d
    move-object v1, v0

    #@1e
    move-object v3, p1

    #@1f
    invoke-direct/range {v1 .. v6}, Landroidx/databinding/adapters/ObservableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;III)V

    #@22
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@25
    goto :goto_2a

    #@26
    :cond_26
    const/4 p1, 0x0

    #@27
    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@2a
    :goto_2a
    return-void
.end method

.method public static setEntries(Landroid/widget/AbsSpinner;[Ljava/lang/CharSequence;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Landroid/widget/AbsSpinner;",
            "[TT;)V"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_3e

    #@2
    .line 36
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    if-eqz v0, :cond_26

    #@9
    .line 38
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    #@c
    move-result v2

    #@d
    array-length v3, p1

    #@e
    if-ne v2, v3, :cond_26

    #@10
    const/4 v2, 0x0

    #@11
    move v3, v2

    #@12
    .line 40
    :goto_12
    array-length v4, p1

    #@13
    if-ge v3, v4, :cond_25

    #@15
    .line 41
    aget-object v4, p1, v3

    #@17
    invoke-interface {v0, v3}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v4

    #@1f
    if-nez v4, :cond_22

    #@21
    goto :goto_26

    #@22
    :cond_22
    add-int/lit8 v3, v3, 0x1

    #@24
    goto :goto_12

    #@25
    :cond_25
    move v1, v2

    #@26
    :cond_26
    :goto_26
    if-eqz v1, :cond_42

    #@28
    .line 48
    new-instance v0, Landroid/widget/ArrayAdapter;

    #@2a
    .line 49
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getContext()Landroid/content/Context;

    #@2d
    move-result-object v1

    #@2e
    const v2, 0x1090008

    #@31
    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    #@34
    const p1, 0x1090009

    #@37
    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    #@3a
    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@3d
    goto :goto_42

    #@3e
    :cond_3e
    const/4 p1, 0x0

    #@3f
    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@42
    :cond_42
    :goto_42
    return-void
.end method

.class public Landroidx/databinding/adapters/TabHostBindingAdapter;
.super Ljava/lang/Object;
.source "TabHostBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getCurrentTab(Landroid/widget/TabHost;)I
    .registers 1

    #@0
    .line 34
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTab()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getCurrentTabTag(Landroid/widget/TabHost;)Ljava/lang/String;
    .registers 1

    #@0
    .line 39
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static setCurrentTab(Landroid/widget/TabHost;I)V
    .registers 3

    #@0
    .line 44
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTab()I

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_9

    #@6
    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    #@9
    :cond_9
    return-void
.end method

.method public static setCurrentTabTag(Landroid/widget/TabHost;Ljava/lang/String;)V
    .registers 4

    #@0
    .line 51
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_10

    #@c
    :cond_c
    if-nez v0, :cond_13

    #@e
    if-eqz p1, :cond_13

    #@10
    .line 54
    :cond_10
    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    #@13
    :cond_13
    return-void
.end method

.method public static setListeners(Landroid/widget/TabHost;Landroid/widget/TabHost$OnTabChangeListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 4

    #@0
    if-nez p2, :cond_6

    #@2
    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    #@5
    goto :goto_e

    #@6
    .line 65
    :cond_6
    new-instance v0, Landroidx/databinding/adapters/TabHostBindingAdapter$1;

    #@8
    invoke-direct {v0, p1, p2}, Landroidx/databinding/adapters/TabHostBindingAdapter$1;-><init>(Landroid/widget/TabHost$OnTabChangeListener;Landroidx/databinding/InverseBindingListener;)V

    #@b
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    #@e
    :goto_e
    return-void
.end method

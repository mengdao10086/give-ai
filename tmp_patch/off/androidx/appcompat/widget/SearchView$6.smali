.class Landroidx/appcompat/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .registers 2

    #@0
    .line 1014
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    #@0
    .line 1018
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    #@2
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    .line 1029
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    #@a
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@c
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_24

    #@12
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    #@14
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@16
    .line 1030
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    #@19
    move-result v0

    #@1a
    const/4 v2, -0x1

    #@1b
    if-eq v0, v2, :cond_24

    #@1d
    .line 1031
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    #@1f
    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    #@22
    move-result p1

    #@23
    return p1

    #@24
    .line 1036
    :cond_24
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    #@26
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@28
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_53

    #@2e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_53

    #@34
    .line 1037
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@37
    move-result p3

    #@38
    const/4 v0, 0x1

    #@39
    if-ne p3, v0, :cond_53

    #@3b
    const/16 p3, 0x42

    #@3d
    if-ne p2, p3, :cond_53

    #@3f
    .line 1039
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    #@42
    .line 1042
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Landroidx/appcompat/widget/SearchView;

    #@44
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    #@46
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@49
    move-result-object p2

    #@4a
    .line 1043
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@4d
    move-result-object p2

    #@4e
    const/4 p3, 0x0

    #@4f
    .line 1042
    invoke-virtual {p1, v1, p3, p2}, Landroidx/appcompat/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    #@52
    return v0

    #@53
    :cond_53
    return v1
.end method

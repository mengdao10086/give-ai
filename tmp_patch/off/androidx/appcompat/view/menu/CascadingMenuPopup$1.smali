.class Landroidx/appcompat/view/menu/CascadingMenuPopup$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V
    .registers 2

    #@0
    .line 98
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    #@0
    .line 104
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_51

    #@8
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    #@a
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@c
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@f
    move-result v0

    #@10
    if-lez v0, :cond_51

    #@12
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    #@14
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@16
    const/4 v1, 0x0

    #@17
    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@1d
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    #@1f
    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->isModal()Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_51

    #@25
    .line 106
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    #@27
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@29
    if-eqz v0, :cond_4c

    #@2b
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    #@2e
    move-result v0

    #@2f
    if-nez v0, :cond_32

    #@31
    goto :goto_4c

    #@32
    .line 111
    :cond_32
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    #@34
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v0

    #@3a
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_51

    #@40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@46
    .line 112
    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    #@48
    invoke-virtual {v1}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    #@4b
    goto :goto_3a

    #@4c
    .line 108
    :cond_4c
    :goto_4c
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/CascadingMenuPopup;

    #@4e
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    #@51
    :cond_51
    return-void
.end method

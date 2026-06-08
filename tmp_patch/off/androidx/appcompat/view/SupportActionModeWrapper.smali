.class public Landroidx/appcompat/view/SupportActionModeWrapper;
.super Landroid/view/ActionMode;
.source "SupportActionModeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mWrappedObject:Landroidx/appcompat/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/ActionMode;)V
    .registers 3

    #@0
    .line 49
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mContext:Landroid/content/Context;

    #@5
    .line 51
    iput-object p2, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@7
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    #@0
    .line 81
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    #@5
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    #@0
    .line 111
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->getCustomView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 4

    #@0
    .line 86
    new-instance v0, Landroidx/appcompat/view/menu/MenuWrapperICS;

    #@2
    iget-object v1, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mContext:Landroid/content/Context;

    #@4
    iget-object v2, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@6
    invoke-virtual {v2}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroid/view/Menu;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Landroidx/core/internal/view/SupportMenu;

    #@c
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V

    #@f
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    #@0
    .line 121
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 101
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->getSubtitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    #@0
    .line 56
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->getTag()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 91
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .registers 2

    #@0
    .line 126
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->getTitleOptionalHint()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public invalidate()V
    .registers 2

    #@0
    .line 76
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    #@5
    return-void
.end method

.method public isTitleOptional()Z
    .registers 2

    #@0
    .line 136
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->isTitleOptional()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 116
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ActionMode;->setCustomView(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    #@0
    .line 106
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ActionMode;->setSubtitle(I)V

    #@5
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 71
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 61
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ActionMode;->setTag(Ljava/lang/Object;)V

    #@5
    return-void
.end method

.method public setTitle(I)V
    .registers 3

    #@0
    .line 96
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ActionMode;->setTitle(I)V

    #@5
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 66
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .registers 3

    #@0
    .line 131
    iget-object v0, p0, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    #@2
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ActionMode;->setTitleOptionalHint(Z)V

    #@5
    return-void
.end method

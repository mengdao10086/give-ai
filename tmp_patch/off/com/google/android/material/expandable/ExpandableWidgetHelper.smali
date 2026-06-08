.class public final Lcom/google/android/material/expandable/ExpandableWidgetHelper;
.super Ljava/lang/Object;
.source "ExpandableWidgetHelper.java"


# instance fields
.field private expanded:Z

.field private expandedComponentIdHint:I

.field private final widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/expandable/ExpandableWidget;)V
    .registers 3

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 36
    iput-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    #@6
    .line 37
    iput v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    #@8
    .line 41
    check-cast p1, Landroid/view/View;

    #@a
    iput-object p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    #@c
    return-void
.end method

.method private dispatchExpandedStateChanged()V
    .registers 3

    #@0
    .line 91
    iget-object v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5
    move-result-object v0

    #@6
    .line 92
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@8
    if-eqz v1, :cond_11

    #@a
    .line 93
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@c
    iget-object v1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    #@e
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    #@11
    :cond_11
    return-void
.end method


# virtual methods
.method public getExpandedComponentIdHint()I
    .registers 2

    #@0
    .line 87
    iget v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    #@2
    return v0
.end method

.method public isExpanded()Z
    .registers 2

    #@0
    .line 56
    iget-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    #@2
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    const-string v0, "expanded"

    #@2
    const/4 v1, 0x0

    #@3
    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@6
    move-result v0

    #@7
    iput-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    #@9
    const-string v0, "expandedComponentIdHint"

    #@b
    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@e
    move-result p1

    #@f
    iput p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    #@11
    .line 74
    iget-boolean p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    #@13
    if-eqz p1, :cond_18

    #@15
    .line 75
    invoke-direct {p0}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->dispatchExpandedStateChanged()V

    #@18
    :cond_18
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    #@0
    .line 62
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "expanded"

    #@7
    .line 63
    iget-boolean v2, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c
    const-string v1, "expandedComponentIdHint"

    #@e
    .line 64
    iget v2, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    #@10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@13
    return-object v0
.end method

.method public setExpanded(Z)Z
    .registers 3

    #@0
    .line 46
    iget-boolean v0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    #@2
    if-eq v0, p1, :cond_b

    #@4
    .line 47
    iput-boolean p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    #@6
    .line 48
    invoke-direct {p0}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->dispatchExpandedStateChanged()V

    #@9
    const/4 p1, 0x1

    #@a
    return p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return p1
.end method

.method public setExpandedComponentIdHint(I)V
    .registers 2

    #@0
    .line 81
    iput p1, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    #@2
    return-void
.end method

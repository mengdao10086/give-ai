.class public abstract Lcom/google/android/material/transformation/ExpandableBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "ExpandableBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final STATE_COLLAPSED:I = 0x2

.field private static final STATE_EXPANDED:I = 0x1

.field private static final STATE_UNINITIALIZED:I


# instance fields
.field private currentState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 67
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 65
    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 70
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 65
    iput p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    #@6
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/transformation/ExpandableBehavior;)I
    .registers 1

    #@0
    .line 43
    iget p0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    #@2
    return p0
.end method

.method private didStateChange(Z)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-eqz p1, :cond_d

    #@4
    .line 152
    iget p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    #@6
    if-eqz p1, :cond_b

    #@8
    const/4 v2, 0x2

    #@9
    if-ne p1, v2, :cond_c

    #@b
    :cond_b
    move v0, v1

    #@c
    :cond_c
    return v0

    #@d
    .line 155
    :cond_d
    iget p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    #@f
    if-ne p1, v1, :cond_12

    #@11
    move v0, v1

    #@12
    :cond_12
    return v0
.end method

.method public static from(Landroid/view/View;Ljava/lang/Class;)Lcom/google/android/material/transformation/ExpandableBehavior;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/material/transformation/ExpandableBehavior;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    #@0
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p0

    #@4
    .line 169
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    if-eqz v0, :cond_21

    #@8
    .line 172
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@a
    .line 173
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@d
    move-result-object p0

    #@e
    .line 174
    instance-of v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;

    #@10
    if-eqz v0, :cond_19

    #@12
    .line 177
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object p0

    #@16
    check-cast p0, Lcom/google/android/material/transformation/ExpandableBehavior;

    #@18
    return-object p0

    #@19
    .line 175
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string p1, "The view is not associated with ExpandableBehavior"

    #@1d
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw p0

    #@21
    .line 170
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@23
    const-string p1, "The view is not a child of CoordinatorLayout"

    #@25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw p0
.end method


# virtual methods
.method protected findExpandableWidget(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Lcom/google/android/material/expandable/ExpandableWidget;
    .registers 8

    #@0
    .line 139
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    :goto_9
    if-ge v2, v1, :cond_1d

    #@b
    .line 141
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/view/View;

    #@11
    .line 142
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/material/transformation/ExpandableBehavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1a

    #@17
    .line 143
    check-cast v3, Lcom/google/android/material/expandable/ExpandableWidget;

    #@19
    return-object v3

    #@1a
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_9

    #@1d
    :cond_1d
    const/4 p1, 0x0

    #@1e
    return-object p1
.end method

.method public abstract layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    #@0
    .line 126
    check-cast p3, Lcom/google/android/material/expandable/ExpandableWidget;

    #@2
    .line 127
    invoke-interface {p3}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    #@5
    move-result p1

    #@6
    .line 128
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/ExpandableBehavior;->didStateChange(Z)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_24

    #@c
    .line 129
    invoke-interface {p3}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    #@f
    move-result p1

    #@10
    const/4 v0, 0x1

    #@11
    if-eqz p1, :cond_15

    #@13
    move p1, v0

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 p1, 0x2

    #@16
    :goto_16
    iput p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    #@18
    .line 130
    move-object p1, p3

    #@19
    check-cast p1, Landroid/view/View;

    #@1b
    invoke-interface {p3}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    #@1e
    move-result p3

    #@1f
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/transformation/ExpandableBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z

    #@22
    move-result p1

    #@23
    return p1

    #@24
    :cond_24
    const/4 p1, 0x0

    #@25
    return p1
.end method

.method protected abstract onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 6

    #@0
    .line 98
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@3
    move-result p3

    #@4
    if-nez p3, :cond_2d

    #@6
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableBehavior;->findExpandableWidget(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Lcom/google/android/material/expandable/ExpandableWidget;

    #@9
    move-result-object p1

    #@a
    if-eqz p1, :cond_2d

    #@c
    .line 100
    invoke-interface {p1}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    #@f
    move-result p3

    #@10
    invoke-direct {p0, p3}, Lcom/google/android/material/transformation/ExpandableBehavior;->didStateChange(Z)Z

    #@13
    move-result p3

    #@14
    if-eqz p3, :cond_2d

    #@16
    .line 101
    invoke-interface {p1}, Lcom/google/android/material/expandable/ExpandableWidget;->isExpanded()Z

    #@19
    move-result p3

    #@1a
    if-eqz p3, :cond_1e

    #@1c
    const/4 p3, 0x1

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    const/4 p3, 0x2

    #@1f
    :goto_1f
    iput p3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->currentState:I

    #@21
    .line 104
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@24
    move-result-object v0

    #@25
    new-instance v1, Lcom/google/android/material/transformation/ExpandableBehavior$1;

    #@27
    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/material/transformation/ExpandableBehavior$1;-><init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILcom/google/android/material/expandable/ExpandableWidget;)V

    #@2a
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@2d
    :cond_2d
    const/4 p1, 0x0

    #@2e
    return p1
.end method

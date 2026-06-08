.class Landroidx/transition/ViewOverlayApi14;
.super Ljava/lang/Object;
.source "ViewOverlayApi14.java"

# interfaces
.implements Landroidx/transition/ViewOverlayImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    }
.end annotation


# instance fields
.field protected mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5

    #@0
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    new-instance v0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    #@5
    invoke-direct {v0, p1, p2, p3, p0}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/ViewOverlayApi14;)V

    #@8
    iput-object v0, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    #@a
    return-void
.end method

.method static createFrom(Landroid/view/View;)Landroidx/transition/ViewOverlayApi14;
    .registers 6

    #@0
    .line 65
    invoke-static {p0}, Landroidx/transition/ViewOverlayApi14;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_27

    #@6
    .line 67
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x0

    #@b
    :goto_b
    if-ge v2, v1, :cond_1d

    #@d
    .line 69
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v3

    #@11
    .line 70
    instance-of v4, v3, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    #@13
    if-eqz v4, :cond_1a

    #@15
    .line 71
    check-cast v3, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    #@17
    iget-object p0, v3, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mViewOverlay:Landroidx/transition/ViewOverlayApi14;

    #@19
    return-object p0

    #@1a
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_b

    #@1d
    .line 74
    :cond_1d
    new-instance v1, Landroidx/transition/ViewGroupOverlayApi14;

    #@1f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2, v0, p0}, Landroidx/transition/ViewGroupOverlayApi14;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    #@26
    return-object v1

    #@27
    :cond_27
    const/4 p0, 0x0

    #@28
    return-object p0
.end method

.method static getContentView(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 3

    #@0
    :cond_0
    :goto_0
    if-eqz p0, :cond_21

    #@2
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    #@5
    move-result v0

    #@6
    const v1, 0x1020002

    #@9
    if-ne v0, v1, :cond_12

    #@b
    instance-of v0, p0, Landroid/view/ViewGroup;

    #@d
    if-eqz v0, :cond_12

    #@f
    .line 55
    check-cast p0, Landroid/view/ViewGroup;

    #@11
    return-object p0

    #@12
    .line 57
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@15
    move-result-object v0

    #@16
    instance-of v0, v0, Landroid/view/ViewGroup;

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1d
    move-result-object p0

    #@1e
    check-cast p0, Landroid/view/ViewGroup;

    #@20
    goto :goto_0

    #@21
    :cond_21
    const/4 p0, 0x0

    #@22
    return-object p0
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 81
    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    #@2
    invoke-virtual {v0, p1}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->add(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 86
    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    #@2
    invoke-virtual {v0, p1}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->remove(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

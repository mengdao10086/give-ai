.class Lcom/google/android/material/internal/ViewOverlayApi14;
.super Ljava/lang/Object;
.source "ViewOverlayApi14.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewOverlayImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;
    }
.end annotation


# instance fields
.field protected overlayViewGroup:Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5

    #@0
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    #@5
    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/internal/ViewOverlayApi14;)V

    #@8
    iput-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14;->overlayViewGroup:Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    #@a
    return-void
.end method

.method static createFrom(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayApi14;
    .registers 6

    #@0
    .line 50
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_27

    #@6
    .line 52
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x0

    #@b
    :goto_b
    if-ge v2, v1, :cond_1d

    #@d
    .line 54
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v3

    #@11
    .line 55
    instance-of v4, v3, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    #@13
    if-eqz v4, :cond_1a

    #@15
    .line 56
    check-cast v3, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    #@17
    iget-object p0, v3, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->viewOverlay:Lcom/google/android/material/internal/ViewOverlayApi14;

    #@19
    return-object p0

    #@1a
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_b

    #@1d
    .line 59
    :cond_1d
    new-instance v1, Lcom/google/android/material/internal/ViewGroupOverlayApi14;

    #@1f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/material/internal/ViewGroupOverlayApi14;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    #@26
    return-object v1

    #@27
    :cond_27
    const/4 p0, 0x0

    #@28
    return-object p0
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 66
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14;->overlayViewGroup:Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->add(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 71
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14;->overlayViewGroup:Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->remove(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

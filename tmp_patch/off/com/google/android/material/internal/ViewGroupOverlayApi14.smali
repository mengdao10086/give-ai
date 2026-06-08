.class Lcom/google/android/material/internal/ViewGroupOverlayApi14;
.super Lcom/google/android/material/internal/ViewOverlayApi14;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewGroupOverlayImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    #@0
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/ViewOverlayApi14;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    #@3
    return-void
.end method

.method static createFrom(Landroid/view/ViewGroup;)Lcom/google/android/material/internal/ViewGroupOverlayApi14;
    .registers 1

    #@0
    .line 31
    invoke-static {p0}, Lcom/google/android/material/internal/ViewOverlayApi14;->createFrom(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayApi14;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Lcom/google/android/material/internal/ViewGroupOverlayApi14;

    #@6
    return-object p0
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .registers 3

    #@0
    .line 36
    iget-object v0, p0, Lcom/google/android/material/internal/ViewGroupOverlayApi14;->overlayViewGroup:Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->add(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .registers 3

    #@0
    .line 41
    iget-object v0, p0, Lcom/google/android/material/internal/ViewGroupOverlayApi14;->overlayViewGroup:Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->remove(Landroid/view/View;)V

    #@5
    return-void
.end method

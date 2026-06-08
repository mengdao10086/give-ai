.class Lcom/google/android/material/navigationrail/NavigationRailView$1;
.super Ljava/lang/Object;
.source "NavigationRailView.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigationrail/NavigationRailView;->applyWindowInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigationrail/NavigationRailView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigationrail/NavigationRailView;)V
    .registers 2

    #@0
    .line 170
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .registers 8

    #@0
    .line 179
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    #@2
    # getter for: Lcom/google/android/material/navigationrail/NavigationRailView;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$000(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    #@5
    move-result-object v1

    #@6
    # invokes: Lcom/google/android/material/navigationrail/NavigationRailView;->shouldApplyWindowInsetPadding(Ljava/lang/Boolean;)Z
    invoke-static {v0, v1}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$100(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1b

    #@c
    .line 180
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    #@e
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    #@11
    move-result v1

    #@12
    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@15
    move-result-object v1

    #@16
    iget v1, v1, Landroidx/core/graphics/Insets;->top:I

    #@18
    add-int/2addr v0, v1

    #@19
    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    #@1b
    .line 182
    :cond_1b
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    #@1d
    # getter for: Lcom/google/android/material/navigationrail/NavigationRailView;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$200(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    #@20
    move-result-object v1

    #@21
    # invokes: Lcom/google/android/material/navigationrail/NavigationRailView;->shouldApplyWindowInsetPadding(Ljava/lang/Boolean;)Z
    invoke-static {v0, v1}, Lcom/google/android/material/navigationrail/NavigationRailView;->access$100(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_36

    #@27
    .line 183
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    #@29
    .line 184
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    #@2c
    move-result v1

    #@2d
    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@30
    move-result-object v1

    #@31
    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    #@33
    add-int/2addr v0, v1

    #@34
    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    #@36
    .line 187
    :cond_36
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@39
    move-result v0

    #@3a
    const/4 v1, 0x1

    #@3b
    if-ne v0, v1, :cond_3e

    #@3d
    goto :goto_3f

    #@3e
    :cond_3e
    const/4 v1, 0x0

    #@3f
    .line 188
    :goto_3f
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@42
    move-result v0

    #@43
    .line 189
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@46
    move-result v2

    #@47
    .line 190
    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@49
    if-eqz v1, :cond_4c

    #@4b
    move v0, v2

    #@4c
    :cond_4c
    add-int/2addr v3, v0

    #@4d
    iput v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@4f
    .line 191
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    #@52
    return-object p2
.end method

.class Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView;->applyWindowInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .registers 2

    #@0
    .line 140
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .registers 9

    #@0
    .line 149
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    #@2
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    #@5
    move-result v1

    #@6
    add-int/2addr v0, v1

    #@7
    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    #@9
    .line 151
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x1

    #@e
    if-ne v0, v1, :cond_11

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 v1, 0x0

    #@12
    .line 152
    :goto_12
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@15
    move-result v0

    #@16
    .line 153
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@19
    move-result v2

    #@1a
    .line 154
    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@1c
    if-eqz v1, :cond_20

    #@1e
    move v4, v2

    #@1f
    goto :goto_21

    #@20
    :cond_20
    move v4, v0

    #@21
    :goto_21
    add-int/2addr v3, v4

    #@22
    iput v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@24
    .line 155
    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@26
    if-eqz v1, :cond_29

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move v0, v2

    #@2a
    :goto_2a
    add-int/2addr v3, v0

    #@2b
    iput v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@2d
    .line 156
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    #@30
    return-object p2
.end method

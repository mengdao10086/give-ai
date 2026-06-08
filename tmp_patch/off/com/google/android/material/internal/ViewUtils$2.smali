.class Lcom/google/android/material/internal/ViewUtils$2;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

.field final synthetic val$paddingBottomSystemWindowInsets:Z

.field final synthetic val$paddingLeftSystemWindowInsets:Z

.field final synthetic val$paddingRightSystemWindowInsets:Z


# direct methods
.method constructor <init>(ZZZLcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
    .registers 5

    #@0
    .line 257
    iput-boolean p1, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$paddingBottomSystemWindowInsets:Z

    #@2
    iput-boolean p2, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$paddingLeftSystemWindowInsets:Z

    #@4
    iput-boolean p3, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$paddingRightSystemWindowInsets:Z

    #@6
    iput-object p4, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .registers 7

    #@0
    .line 264
    iget-boolean v0, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$paddingBottomSystemWindowInsets:Z

    #@2
    if-eqz v0, :cond_d

    #@4
    .line 265
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    #@6
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    #@9
    move-result v1

    #@a
    add-int/2addr v0, v1

    #@b
    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    #@d
    .line 267
    :cond_d
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@10
    move-result v0

    #@11
    .line 268
    iget-boolean v1, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$paddingLeftSystemWindowInsets:Z

    #@13
    if-eqz v1, :cond_2a

    #@15
    if-eqz v0, :cond_21

    #@17
    .line 270
    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@19
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@1c
    move-result v2

    #@1d
    add-int/2addr v1, v2

    #@1e
    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@20
    goto :goto_2a

    #@21
    .line 272
    :cond_21
    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@23
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@26
    move-result v2

    #@27
    add-int/2addr v1, v2

    #@28
    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@2a
    .line 275
    :cond_2a
    :goto_2a
    iget-boolean v1, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$paddingRightSystemWindowInsets:Z

    #@2c
    if-eqz v1, :cond_43

    #@2e
    if-eqz v0, :cond_3a

    #@30
    .line 277
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@32
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@35
    move-result v1

    #@36
    add-int/2addr v0, v1

    #@37
    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@39
    goto :goto_43

    #@3a
    .line 279
    :cond_3a
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@3c
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@3f
    move-result v1

    #@40
    add-int/2addr v0, v1

    #@41
    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@43
    .line 282
    :cond_43
    :goto_43
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    #@46
    .line 283
    iget-object v0, p0, Lcom/google/android/material/internal/ViewUtils$2;->val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    #@48
    if-eqz v0, :cond_4e

    #@4a
    .line 284
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;

    #@4d
    move-result-object p2

    #@4e
    :cond_4e
    return-object p2
.end method

.class public Lcom/google/android/material/internal/ViewUtils$RelativePadding;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativePadding"
.end annotation


# instance fields
.field public bottom:I

.field public end:I

.field public start:I

.field public top:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    #@0
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 204
    iput p1, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@5
    .line 205
    iput p2, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    #@7
    .line 206
    iput p3, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@9
    .line 207
    iput p4, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    #@b
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/internal/ViewUtils$RelativePadding;)V
    .registers 3

    #@0
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 211
    iget v0, p1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@5
    iput v0, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@7
    .line 212
    iget v0, p1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    #@9
    iput v0, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    #@b
    .line 213
    iget v0, p1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@d
    iput v0, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@f
    .line 214
    iget p1, p1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    #@11
    iput p1, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    #@13
    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .registers 6

    #@0
    .line 219
    iget v0, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@2
    iget v1, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    #@4
    iget v2, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@6
    iget v3, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    #@8
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@b
    return-void
.end method

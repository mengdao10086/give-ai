.class public Lcom/google/android/material/internal/ClippableRoundedCornerLayout;
.super Landroid/widget/FrameLayout;
.source "ClippableRoundedCornerLayout.java"


# instance fields
.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    #@0
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    #@0
    .line 57
    iget-object v0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 58
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@7
    return-void

    #@8
    .line 61
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@b
    move-result v0

    #@c
    .line 62
    iget-object v1, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    #@e
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    #@11
    .line 63
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@14
    .line 64
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@17
    return-void
.end method

.method public resetClipBoundsAndCornerRadius()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 68
    iput-object v0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    #@3
    .line 69
    invoke-virtual {p0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->invalidate()V

    #@6
    return-void
.end method

.method public updateClipBoundsAndCornerRadius(FFFFF)V
    .registers 7

    #@0
    .line 78
    new-instance v0, Landroid/graphics/RectF;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@5
    invoke-virtual {p0, v0, p5}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateClipBoundsAndCornerRadius(Landroid/graphics/RectF;F)V

    #@8
    return-void
.end method

.method public updateClipBoundsAndCornerRadius(Landroid/graphics/Rect;F)V
    .registers 10

    #@0
    .line 73
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    int-to-float v2, v0

    #@3
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@5
    int-to-float v3, v0

    #@6
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@8
    int-to-float v4, v0

    #@9
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@b
    int-to-float v5, p1

    #@c
    move-object v1, p0

    #@d
    move v6, p2

    #@e
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateClipBoundsAndCornerRadius(FFFFF)V

    #@11
    return-void
.end method

.method public updateClipBoundsAndCornerRadius(Landroid/graphics/RectF;F)V
    .registers 5

    #@0
    .line 82
    iget-object v0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 83
    new-instance v0, Landroid/graphics/Path;

    #@6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@9
    iput-object v0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    #@b
    .line 85
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    #@d
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    #@10
    .line 86
    iget-object v0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    #@12
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@14
    invoke-virtual {v0, p1, p2, p2, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    #@17
    .line 87
    iget-object p1, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    #@19
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    #@1c
    .line 88
    invoke-virtual {p0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->invalidate()V

    #@1f
    return-void
.end method

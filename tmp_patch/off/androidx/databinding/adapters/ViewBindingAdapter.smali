.class public Landroidx/databinding/adapters/ViewBindingAdapter;
.super Ljava/lang/Object;
.source "ViewBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;,
        Landroidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;
    }
.end annotation


# static fields
.field public static final FADING_EDGE_HORIZONTAL:I = 0x1

.field public static final FADING_EDGE_NONE:I = 0x0

.field public static final FADING_EDGE_VERTICAL:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static pixelsToDimensionPixelSize(F)I
    .registers 2

    #@0
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    add-float/2addr v0, p0

    #@3
    float-to-int v0, v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    cmpl-float p0, p0, v0

    #@a
    if-nez p0, :cond_e

    #@c
    const/4 p0, 0x0

    #@d
    return p0

    #@e
    :cond_e
    if-lez p0, :cond_12

    #@10
    const/4 p0, 0x1

    #@11
    return p0

    #@12
    :cond_12
    const/4 p0, -0x1

    #@13
    return p0
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 212
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public static setClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V
    .registers 3

    #@0
    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@3
    .line 139
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    #@6
    return-void
.end method

.method public static setOnAttachStateChangeListener(Landroid/view/View;Landroidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;Landroidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;)V
    .registers 4

    #@0
    if-nez p1, :cond_6

    #@2
    if-nez p2, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    goto :goto_c

    #@6
    .line 171
    :cond_6
    new-instance v0, Landroidx/databinding/adapters/ViewBindingAdapter$1;

    #@8
    invoke-direct {v0, p2, p1}, Landroidx/databinding/adapters/ViewBindingAdapter$1;-><init>(Landroidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;Landroidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;)V

    #@b
    move-object p1, v0

    #@c
    .line 187
    :goto_c
    sget p2, Landroidx/databinding/library/baseAdapters/R$id;->onAttachStateChangeListener:I

    #@e
    invoke-static {p0, p1, p2}, Landroidx/databinding/adapters/ListenerUtil;->trackListener(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    #@11
    move-result-object p2

    #@12
    check-cast p2, Landroid/view/View$OnAttachStateChangeListener;

    #@14
    if-eqz p2, :cond_19

    #@16
    .line 190
    invoke-virtual {p0, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@19
    :cond_19
    if-eqz p1, :cond_1e

    #@1b
    .line 193
    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@1e
    :cond_1e
    return-void
.end method

.method public static setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V
    .registers 3

    #@0
    .line 145
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@3
    .line 146
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    #@6
    return-void
.end method

.method public static setOnLayoutChangeListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 3

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 201
    invoke-virtual {p0, p1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@5
    :cond_5
    if-eqz p2, :cond_a

    #@7
    .line 204
    invoke-virtual {p0, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@a
    :cond_a
    return-void
.end method

.method public static setOnLongClick(Landroid/view/View;Landroid/view/View$OnLongClickListener;Z)V
    .registers 3

    #@0
    .line 159
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@3
    .line 160
    invoke-virtual {p0, p2}, Landroid/view/View;->setLongClickable(Z)V

    #@6
    return-void
.end method

.method public static setOnLongClickListener(Landroid/view/View;Landroid/view/View$OnLongClickListener;Z)V
    .registers 3

    #@0
    .line 152
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@3
    .line 153
    invoke-virtual {p0, p2}, Landroid/view/View;->setLongClickable(Z)V

    #@6
    return-void
.end method

.method public static setPadding(Landroid/view/View;F)V
    .registers 2

    #@0
    .line 71
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    #@3
    move-result p1

    #@4
    .line 72
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    #@7
    return-void
.end method

.method public static setPaddingBottom(Landroid/view/View;F)V
    .registers 5

    #@0
    .line 77
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    #@3
    move-result p1

    #@4
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@b
    move-result v1

    #@c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    #@f
    move-result v2

    #@10
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    #@13
    return-void
.end method

.method public static setPaddingEnd(Landroid/view/View;F)V
    .registers 5

    #@0
    .line 84
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    #@3
    move-result p1

    #@4
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@b
    move-result v1

    #@c
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    #@f
    move-result v2

    #@10
    .line 86
    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    #@13
    return-void
.end method

.method public static setPaddingLeft(Landroid/view/View;F)V
    .registers 5

    #@0
    .line 96
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    #@3
    move-result p1

    #@4
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    #@b
    move-result v1

    #@c
    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    #@f
    move-result v2

    #@10
    .line 97
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    #@13
    return-void
.end method

.method public static setPaddingRight(Landroid/view/View;F)V
    .registers 5

    #@0
    .line 103
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    #@3
    move-result p1

    #@4
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@b
    move-result v1

    #@c
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    #@f
    move-result v2

    #@10
    .line 104
    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    #@13
    return-void
.end method

.method public static setPaddingStart(Landroid/view/View;F)V
    .registers 5

    #@0
    .line 110
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    #@3
    move-result p1

    #@4
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    #@b
    move-result v1

    #@c
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    #@f
    move-result v2

    #@10
    .line 112
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    #@13
    return-void
.end method

.method public static setPaddingTop(Landroid/view/View;F)V
    .registers 5

    #@0
    .line 122
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    #@3
    move-result p1

    #@4
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    #@b
    move-result v1

    #@c
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    #@f
    move-result v2

    #@10
    .line 123
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    #@13
    return-void
.end method

.method public static setRequiresFadingEdge(Landroid/view/View;I)V
    .registers 5

    #@0
    and-int/lit8 v0, p1, 0x2

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-eqz v0, :cond_8

    #@6
    move v0, v2

    #@7
    goto :goto_9

    #@8
    :cond_8
    move v0, v1

    #@9
    :goto_9
    and-int/2addr p1, v2

    #@a
    if-eqz p1, :cond_d

    #@c
    move v1, v2

    #@d
    .line 131
    :cond_d
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    #@10
    .line 132
    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    #@13
    return-void
.end method

.class Landroidx/cardview/widget/CardView$1;
.super Ljava/lang/Object;
.source "CardView.java"

# interfaces
.implements Landroidx/cardview/widget/CardViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/cardview/widget/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCardBackground:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Landroidx/cardview/widget/CardView;


# direct methods
.method constructor <init>(Landroidx/cardview/widget/CardView;)V
    .registers 2

    #@0
    .line 447
    iput-object p1, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getCardBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 485
    iget-object v0, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getCardView()Landroid/view/View;
    .registers 2

    #@0
    .line 490
    iget-object v0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@2
    return-object v0
.end method

.method public getPreventCornerOverlap()Z
    .registers 2

    #@0
    .line 463
    iget-object v0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@2
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUseCompatPadding()Z
    .registers 2

    #@0
    .line 458
    iget-object v0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@2
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setCardBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 452
    iput-object p1, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    #@2
    .line 453
    iget-object v0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@4
    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@7
    return-void
.end method

.method public setMinWidthHeightInternal(II)V
    .registers 4

    #@0
    .line 475
    iget-object v0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@2
    iget v0, v0, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    #@4
    if-le p1, v0, :cond_b

    #@6
    .line 476
    iget-object v0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@8
    # invokes: Landroid/widget/FrameLayout;->setMinimumWidth(I)V
    invoke-static {v0, p1}, Landroidx/cardview/widget/CardView;->access$101(Landroidx/cardview/widget/CardView;I)V

    #@b
    .line 478
    :cond_b
    iget-object p1, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@d
    iget p1, p1, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    #@f
    if-le p2, p1, :cond_16

    #@11
    .line 479
    iget-object p1, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@13
    # invokes: Landroid/widget/FrameLayout;->setMinimumHeight(I)V
    invoke-static {p1, p2}, Landroidx/cardview/widget/CardView;->access$201(Landroidx/cardview/widget/CardView;I)V

    #@16
    :cond_16
    return-void
.end method

.method public setShadowPadding(IIII)V
    .registers 7

    #@0
    .line 468
    iget-object v0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@2
    iget-object v0, v0, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@7
    .line 469
    iget-object v0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@9
    iget-object v1, v0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@b
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@d
    add-int/2addr p1, v1

    #@e
    iget-object v1, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@10
    iget-object v1, v1, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@12
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@14
    add-int/2addr p2, v1

    #@15
    iget-object v1, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@17
    iget-object v1, v1, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@19
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@1b
    add-int/2addr p3, v1

    #@1c
    iget-object v1, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    #@1e
    iget-object v1, v1, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    #@20
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@22
    add-int/2addr p4, v1

    #@23
    # invokes: Landroid/widget/FrameLayout;->setPadding(IIII)V
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->access$001(Landroidx/cardview/widget/CardView;IIII)V

    #@26
    return-void
.end method

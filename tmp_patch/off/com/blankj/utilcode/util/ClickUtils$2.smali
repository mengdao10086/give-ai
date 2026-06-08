.class Lcom/blankj/utilcode/util/ClickUtils$2;
.super Ljava/lang/Object;
.source "ClickUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ClickUtils;->expandClickArea(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$expandSizeBottom:I

.field final synthetic val$expandSizeLeft:I

.field final synthetic val$expandSizeRight:I

.field final synthetic val$expandSizeTop:I

.field final synthetic val$parentView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IIIILandroid/view/View;)V
    .registers 7

    #@0
    .line 364
    iput-object p1, p0, Lcom/blankj/utilcode/util/ClickUtils$2;->val$view:Landroid/view/View;

    #@2
    iput p2, p0, Lcom/blankj/utilcode/util/ClickUtils$2;->val$expandSizeTop:I

    #@4
    iput p3, p0, Lcom/blankj/utilcode/util/ClickUtils$2;->val$expandSizeBottom:I

    #@6
    iput p4, p0, Lcom/blankj/utilcode/util/ClickUtils$2;->val$expandSizeLeft:I

    #@8
    iput p5, p0, Lcom/blankj/utilcode/util/ClickUtils$2;->val$expandSizeRight:I

    #@a
    iput-object p6, p0, Lcom/blankj/utilcode/util/ClickUtils$2;->val$parentView:Landroid/view/View;

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    .line 367
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    .line 368
    iget-object v1, p0, Lcom/blankj/utilcode/util/ClickUtils$2;->val$view:Landroid/view/View;

    #@7
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@a
    .line 369
    iget v1, v0, Landroid/graphics/Rect;->top:I

    #@c
    iget v2, p0, Lcom/blankj/utilcode/util/ClickUtils$2;->val$expandSizeTop:I

    #@e
    sub-int/2addr v1, v2

    #@f
    iput v1, v0, Landroid/graphics/Rect;->top:I

    #@11
    .line 370
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    #@13
    iget v2, p0, Lcom/blankj/utilcode/util/ClickUtils$2;->val$expandSizeBottom:I

    #@15
    add-int/2addr v1, v2

    #@16
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    #@18
    .line 371
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@1a
    iget v2, p0, Lcom/blankj/utilcode/util/ClickUtils$2;->val$expandSizeLeft:I

    #@1c
    sub-int/2addr v1, v2

    #@1d
    iput v1, v0, Landroid/graphics/Rect;->left:I

    #@1f
    .line 372
    iget v1, v0, Landroid/graphics/Rect;->right:I

    #@21
    iget v2, p0, Lcom/blankj/utilcode/util/ClickUtils$2;->val$expandSizeRight:I

    #@23
    add-int/2addr v1, v2

    #@24
    iput v1, v0, Landroid/graphics/Rect;->right:I

    #@26
    .line 373
    iget-object v1, p0, Lcom/blankj/utilcode/util/ClickUtils$2;->val$parentView:Landroid/view/View;

    #@28
    new-instance v2, Landroid/view/TouchDelegate;

    #@2a
    iget-object v3, p0, Lcom/blankj/utilcode/util/ClickUtils$2;->val$view:Landroid/view/View;

    #@2c
    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    #@2f
    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    #@32
    return-void
.end method

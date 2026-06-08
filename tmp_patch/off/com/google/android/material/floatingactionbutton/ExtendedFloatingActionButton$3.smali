.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;
.super Ljava/lang/Object;
.source "ExtendedFloatingActionButton.java"

# interfaces
.implements Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getSizeFromExtendStrategyType(I)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field final synthetic val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;)V
    .registers 3

    #@0
    .line 315
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@2
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 6

    #@0
    .line 345
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@2
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalHeight:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    const/4 v2, -0x2

    #@8
    if-ne v0, v1, :cond_60

    #@a
    .line 346
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@c
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getParent()Landroid/view/ViewParent;

    #@f
    move-result-object v0

    #@10
    instance-of v0, v0, Landroid/view/View;

    #@12
    if-nez v0, :cond_1b

    #@14
    .line 347
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    #@16
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getHeight()I

    #@19
    move-result v0

    #@1a
    return v0

    #@1b
    .line 351
    :cond_1b
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@1d
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getParent()Landroid/view/ViewParent;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/view/View;

    #@23
    .line 354
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@26
    move-result-object v1

    #@27
    if-eqz v1, :cond_34

    #@29
    .line 355
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@2b
    if-ne v1, v2, :cond_34

    #@2d
    .line 356
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    #@2f
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getHeight()I

    #@32
    move-result v0

    #@33
    return v0

    #@34
    .line 358
    :cond_34
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    #@37
    move-result v1

    #@38
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    #@3b
    move-result v2

    #@3c
    add-int/2addr v1, v2

    #@3d
    const/4 v2, 0x0

    #@3e
    add-int/2addr v1, v2

    #@3f
    .line 359
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@41
    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@44
    move-result-object v3

    #@45
    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    #@47
    if-eqz v3, :cond_59

    #@49
    .line 361
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@4b
    .line 362
    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4e
    move-result-object v3

    #@4f
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    #@51
    if-eqz v3, :cond_59

    #@53
    .line 364
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@55
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@57
    add-int/2addr v4, v3

    #@58
    add-int/2addr v2, v4

    #@59
    .line 367
    :cond_59
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@5c
    move-result v0

    #@5d
    sub-int/2addr v0, v2

    #@5e
    sub-int/2addr v0, v1

    #@5f
    return v0

    #@60
    .line 368
    :cond_60
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@62
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalHeight:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@65
    move-result v0

    #@66
    if-eqz v0, :cond_78

    #@68
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@6a
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalHeight:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@6d
    move-result v0

    #@6e
    if-ne v0, v2, :cond_71

    #@70
    goto :goto_78

    #@71
    .line 371
    :cond_71
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@73
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalHeight:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@76
    move-result v0

    #@77
    return v0

    #@78
    .line 369
    :cond_78
    :goto_78
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    #@7a
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getHeight()I

    #@7d
    move-result v0

    #@7e
    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    #@0
    .line 386
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@2
    .line 387
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@4
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalHeight:I
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v1, -0x2

    #@b
    goto :goto_12

    #@c
    :cond_c
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@e
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalHeight:I
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@11
    move-result v1

    #@12
    :goto_12
    const/4 v2, -0x1

    #@13
    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@16
    return-object v0
.end method

.method public getPaddingEnd()I
    .registers 2

    #@0
    .line 381
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@2
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingEnd:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$100(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPaddingStart()I
    .registers 2

    #@0
    .line 376
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@2
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingStart:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$000(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWidth()I
    .registers 6

    #@0
    .line 320
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getParent()Landroid/view/ViewParent;

    #@5
    move-result-object v0

    #@6
    instance-of v0, v0, Landroid/view/View;

    #@8
    if-nez v0, :cond_11

    #@a
    .line 321
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    #@c
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getWidth()I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 323
    :cond_11
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@13
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getParent()Landroid/view/ViewParent;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/view/View;

    #@19
    .line 326
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1c
    move-result-object v1

    #@1d
    if-eqz v1, :cond_2b

    #@1f
    .line 327
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@21
    const/4 v2, -0x2

    #@22
    if-ne v1, v2, :cond_2b

    #@24
    .line 328
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    #@26
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getWidth()I

    #@29
    move-result v0

    #@2a
    return v0

    #@2b
    .line 330
    :cond_2b
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    #@2e
    move-result v1

    #@2f
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    #@32
    move-result v2

    #@33
    add-int/2addr v1, v2

    #@34
    const/4 v2, 0x0

    #@35
    add-int/2addr v1, v2

    #@36
    .line 331
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@38
    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3b
    move-result-object v3

    #@3c
    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    #@3e
    if-eqz v3, :cond_50

    #@40
    .line 332
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@42
    .line 333
    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@45
    move-result-object v3

    #@46
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    #@48
    if-eqz v3, :cond_50

    #@4a
    .line 335
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@4c
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@4e
    add-int/2addr v4, v3

    #@4f
    add-int/2addr v2, v4

    #@50
    .line 338
    :cond_50
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@53
    move-result v0

    #@54
    sub-int/2addr v0, v2

    #@55
    sub-int/2addr v0, v1

    #@56
    return v0
.end method

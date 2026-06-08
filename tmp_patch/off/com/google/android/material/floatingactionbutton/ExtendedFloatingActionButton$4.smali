.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;
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

.field final synthetic val$matchParentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

.field final synthetic val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;)V
    .registers 4

    #@0
    .line 391
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@2
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->val$matchParentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    #@4
    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 3

    #@0
    .line 404
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@2
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalHeight:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_10

    #@9
    .line 405
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->val$matchParentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    #@b
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getHeight()I

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 406
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@12
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalHeight:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_29

    #@18
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@1a
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalHeight:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@1d
    move-result v0

    #@1e
    const/4 v1, -0x2

    #@1f
    if-ne v0, v1, :cond_22

    #@21
    goto :goto_29

    #@22
    .line 409
    :cond_22
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@24
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalHeight:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@27
    move-result v0

    #@28
    return v0

    #@29
    .line 407
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    #@2b
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getHeight()I

    #@2e
    move-result v0

    #@2f
    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    #@0
    .line 424
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@2
    .line 425
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@4
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalWidth:I
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$300(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@7
    move-result v1

    #@8
    const/4 v2, -0x2

    #@9
    if-nez v1, :cond_d

    #@b
    move v1, v2

    #@c
    goto :goto_13

    #@d
    :cond_d
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@f
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalWidth:I
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$300(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@12
    move-result v1

    #@13
    .line 426
    :goto_13
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@15
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalHeight:I
    invoke-static {v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_1c

    #@1b
    goto :goto_22

    #@1c
    :cond_1c
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@1e
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalHeight:I
    invoke-static {v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@21
    move-result v2

    #@22
    :goto_22
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@25
    return-object v0
.end method

.method public getPaddingEnd()I
    .registers 2

    #@0
    .line 419
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

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
    .line 414
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@2
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingStart:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$000(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWidth()I
    .registers 3

    #@0
    .line 394
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@2
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalWidth:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$300(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_10

    #@9
    .line 395
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->val$matchParentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    #@b
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getWidth()I

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 396
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@12
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalWidth:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$300(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_29

    #@18
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@1a
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalWidth:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$300(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@1d
    move-result v0

    #@1e
    const/4 v1, -0x2

    #@1f
    if-ne v0, v1, :cond_22

    #@21
    goto :goto_29

    #@22
    .line 399
    :cond_22
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@24
    # getter for: Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalWidth:I
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$300(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    #@27
    move-result v0

    #@28
    return v0

    #@29
    .line 397
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    #@2b
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getWidth()I

    #@2e
    move-result v0

    #@2f
    return v0
.end method

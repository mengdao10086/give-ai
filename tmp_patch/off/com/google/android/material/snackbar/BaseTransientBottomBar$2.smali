.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .registers 2

    #@0
    .line 292
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    .line 295
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@2
    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    #@4
    if-eqz v0, :cond_5a

    #@6
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@8
    # getter for: Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$000(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_f

    #@e
    goto :goto_5a

    #@f
    .line 300
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@11
    .line 301
    # invokes: Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getScreenHeight()I
    invoke-static {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$100(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    #@14
    move-result v0

    #@15
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@17
    # invokes: Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getViewAbsoluteBottom()I
    invoke-static {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$200(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    #@1a
    move-result v1

    #@1b
    sub-int/2addr v0, v1

    #@1c
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@1e
    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    #@20
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getTranslationY()F

    #@23
    move-result v1

    #@24
    float-to-int v1, v1

    #@25
    add-int/2addr v0, v1

    #@26
    .line 302
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@28
    # getter for: Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginGestureInset:I
    invoke-static {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$300(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    #@2b
    move-result v1

    #@2c
    if-lt v0, v1, :cond_2f

    #@2e
    return-void

    #@2f
    .line 307
    :cond_2f
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@31
    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    #@33
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@36
    move-result-object v1

    #@37
    .line 308
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@39
    if-nez v2, :cond_45

    #@3b
    .line 310
    # getter for: Lcom/google/android/material/snackbar/BaseTransientBottomBar;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$400()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    const-string v1, "Unable to apply gesture inset because layout params are not MarginLayoutParams"

    #@41
    .line 309
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    return-void

    #@45
    .line 316
    :cond_45
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@47
    .line 317
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@49
    iget-object v3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@4b
    # getter for: Lcom/google/android/material/snackbar/BaseTransientBottomBar;->extraBottomMarginGestureInset:I
    invoke-static {v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$300(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    #@4e
    move-result v3

    #@4f
    sub-int/2addr v3, v0

    #@50
    add-int/2addr v2, v3

    #@51
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@53
    .line 318
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    #@55
    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    #@57
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->requestLayout()V

    #@5a
    :cond_5a
    :goto_5a
    return-void
.end method

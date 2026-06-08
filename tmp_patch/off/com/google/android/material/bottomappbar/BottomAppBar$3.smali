.class Lcom/google/android/material/bottomappbar/BottomAppBar$3;
.super Ljava/lang/Object;
.source "BottomAppBar.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .registers 2

    #@0
    .line 380
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .registers 7

    #@0
    .line 391
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@2
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->paddingBottomSystemWindowInsets:Z
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$700(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    #@5
    move-result p1

    #@6
    if-eqz p1, :cond_11

    #@8
    .line 392
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@a
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    #@d
    move-result p3

    #@e
    # setter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->bottomInset:I
    invoke-static {p1, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$802(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I

    #@11
    .line 394
    :cond_11
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@13
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->paddingLeftSystemWindowInsets:Z
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$900(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    #@16
    move-result p1

    #@17
    const/4 p3, 0x1

    #@18
    const/4 v0, 0x0

    #@19
    if-eqz p1, :cond_34

    #@1b
    .line 395
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@1d
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->leftInset:I
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1000(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    #@20
    move-result p1

    #@21
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@24
    move-result v1

    #@25
    if-eq p1, v1, :cond_29

    #@27
    move p1, p3

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move p1, v0

    #@2a
    .line 396
    :goto_2a
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@2c
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    #@2f
    move-result v2

    #@30
    # setter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->leftInset:I
    invoke-static {v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1002(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I

    #@33
    goto :goto_35

    #@34
    :cond_34
    move p1, v0

    #@35
    .line 398
    :goto_35
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@37
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->paddingRightSystemWindowInsets:Z
    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_55

    #@3d
    .line 399
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@3f
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->rightInset:I
    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1200(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    #@42
    move-result v1

    #@43
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@46
    move-result v2

    #@47
    if-eq v1, v2, :cond_4a

    #@49
    goto :goto_4b

    #@4a
    :cond_4a
    move p3, v0

    #@4b
    .line 400
    :goto_4b
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@4d
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    #@50
    move-result v1

    #@51
    # setter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->rightInset:I
    invoke-static {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1202(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I

    #@54
    move v0, p3

    #@55
    :cond_55
    if-nez p1, :cond_59

    #@57
    if-eqz v0, :cond_68

    #@59
    .line 406
    :cond_59
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@5b
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->cancelAnimations()V
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1300(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@5e
    .line 408
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@60
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutStateAndTranslateFab()V
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1400(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@63
    .line 409
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@65
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->setActionMenuViewPosition()V
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1500(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@68
    :cond_68
    return-object p2
.end method

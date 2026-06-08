.class final Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;
.super Lcom/blankj/utilcode/util/ToastUtils$AbsToast;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowManagerToast"
.end annotation


# instance fields
.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils;I)V
    .registers 4

    #@0
    .line 589
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    #@3
    .line 590
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    #@5
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@8
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@a
    .line 591
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@d
    move-result-object p1

    #@e
    const-string v0, "window"

    #@10
    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object p1

    #@14
    check-cast p1, Landroid/view/WindowManager;

    #@16
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    #@18
    .line 592
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@1a
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1c
    return-void
.end method

.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils;Landroid/view/WindowManager;I)V
    .registers 4

    #@0
    .line 596
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    #@3
    .line 597
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    #@5
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@8
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@a
    .line 598
    iput-object p2, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    #@c
    .line 599
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@e
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    #@0
    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 646
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToastView:Landroid/view/View;

    #@6
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@9
    const/4 v0, 0x0

    #@a
    .line 647
    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_c

    #@c
    .line 650
    :catch_c
    :cond_c
    invoke-super {p0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->cancel()V

    #@f
    return-void
.end method

.method public show(I)V
    .registers 5

    #@0
    .line 604
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 605
    :cond_5
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@7
    const/4 v1, -0x2

    #@8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@a
    .line 606
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@c
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@e
    .line 607
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@10
    const/4 v1, -0x3

    #@11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@13
    .line 608
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@15
    const v1, 0x1030004

    #@18
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@1a
    .line 609
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@1c
    const-string v1, "ToastWithoutNotification"

    #@1e
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@21
    .line 610
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@23
    const/16 v1, 0x98

    #@25
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@27
    .line 613
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@29
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@33
    .line 615
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@35
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    #@37
    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    #@3a
    move-result v1

    #@3b
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@3d
    .line 616
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@3f
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@41
    const/4 v1, 0x7

    #@42
    and-int/2addr v0, v1

    #@43
    const/high16 v2, 0x3f800000    # 1.0f

    #@45
    if-ne v0, v1, :cond_4b

    #@47
    .line 617
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@49
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@4b
    .line 619
    :cond_4b
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@4d
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@4f
    const/16 v1, 0x70

    #@51
    and-int/2addr v0, v1

    #@52
    if-ne v0, v1, :cond_58

    #@54
    .line 620
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@56
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@58
    .line 623
    :cond_58
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@5a
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    #@5c
    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    #@5f
    move-result v1

    #@60
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@62
    .line 624
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@64
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    #@66
    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    #@69
    move-result v1

    #@6a
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@6c
    .line 625
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@6e
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    #@70
    invoke-virtual {v1}, Landroid/widget/Toast;->getHorizontalMargin()F

    #@73
    move-result v1

    #@74
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    #@76
    .line 626
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@78
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    #@7a
    invoke-virtual {v1}, Landroid/widget/Toast;->getVerticalMargin()F

    #@7d
    move-result v1

    #@7e
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    #@80
    .line 629
    :try_start_80
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    #@82
    if-eqz v0, :cond_8b

    #@84
    .line 630
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mToastView:Landroid/view/View;

    #@86
    iget-object v2, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@88
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8b} :catch_8b

    #@8b
    .line 634
    :catch_8b
    :cond_8b
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast$1;

    #@8d
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast$1;-><init>(Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;)V

    #@90
    if-nez p1, :cond_95

    #@92
    const-wide/16 v1, 0x7d0

    #@94
    goto :goto_97

    #@95
    :cond_95
    const-wide/16 v1, 0xdac

    #@97
    :goto_97
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    #@9a
    return-void
.end method

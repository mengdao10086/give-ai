.class Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;)V
    .registers 2

    #@0
    .line 1389
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    #@0
    .line 1394
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result p1

    #@4
    .line 1395
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@7
    move-result v0

    #@8
    float-to-int v0, v0

    #@9
    .line 1396
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@c
    move-result p2

    #@d
    float-to-int p2, p2

    #@e
    if-nez p1, :cond_46

    #@10
    .line 1398
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    #@12
    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@14
    if-eqz v1, :cond_46

    #@16
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    #@18
    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@1a
    .line 1399
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_46

    #@20
    if-ltz v0, :cond_46

    #@22
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    #@24
    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@26
    .line 1400
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    #@29
    move-result v1

    #@2a
    if-ge v0, v1, :cond_46

    #@2c
    if-ltz p2, :cond_46

    #@2e
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    #@30
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@32
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    #@35
    move-result v0

    #@36
    if-ge p2, v0, :cond_46

    #@38
    .line 1401
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    #@3a
    iget-object p1, p1, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@3c
    iget-object p2, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    #@3e
    iget-object p2, p2, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    #@40
    const-wide/16 v0, 0xfa

    #@42
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@45
    goto :goto_54

    #@46
    :cond_46
    const/4 p2, 0x1

    #@47
    if-ne p1, p2, :cond_54

    #@49
    .line 1403
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    #@4b
    iget-object p1, p1, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    #@4d
    iget-object p2, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    #@4f
    iget-object p2, p2, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    #@51
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@54
    :cond_54
    :goto_54
    const/4 p1, 0x0

    #@55
    return p1
.end method

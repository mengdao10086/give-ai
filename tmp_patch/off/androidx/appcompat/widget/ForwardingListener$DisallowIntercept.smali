.class Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ForwardingListener;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ForwardingListener;)V
    .registers 2

    #@0
    .line 316
    iput-object p1, p0, Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;->this$0:Landroidx/appcompat/widget/ForwardingListener;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    .line 321
    iget-object v0, p0, Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;->this$0:Landroidx/appcompat/widget/ForwardingListener;

    #@2
    iget-object v0, v0, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_e

    #@a
    const/4 v1, 0x1

    #@b
    .line 323
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@e
    :cond_e
    return-void
.end method

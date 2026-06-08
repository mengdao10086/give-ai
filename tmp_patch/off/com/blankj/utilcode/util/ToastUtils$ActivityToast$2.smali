.class Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;
.super Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->registerLifecycleCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;I)V
    .registers 3

    #@0
    .line 765
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    #@2
    iput p2, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->val$index:I

    #@4
    invoke-direct {p0}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;)V
    .registers 5

    #@0
    .line 768
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    #@2
    # invokes: Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->isShowing()Z
    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->access$200(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    .line 769
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    #@a
    iget v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->val$index:I

    #@c
    const/4 v2, 0x0

    #@d
    # invokes: Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->showWithActivityView(Landroid/app/Activity;IZ)V
    invoke-static {v0, p1, v1, v2}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->access$300(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;Landroid/app/Activity;IZ)V

    #@10
    :cond_10
    return-void
.end method

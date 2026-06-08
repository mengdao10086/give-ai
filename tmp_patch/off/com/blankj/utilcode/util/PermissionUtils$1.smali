.class Lcom/blankj/utilcode/util/PermissionUtils$1;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$OnRationaleListener$ShouldRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/PermissionUtils;->rationalInner(Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/PermissionUtils;

.field final synthetic val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;

.field final synthetic val$againRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/PermissionUtils;Ljava/lang/Runnable;Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .registers 4

    #@0
    .line 359
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/utilcode/util/PermissionUtils;

    #@2
    iput-object p2, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->val$againRunnable:Ljava/lang/Runnable;

    #@4
    iput-object p3, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public again(Z)V
    .registers 3

    #@0
    if-eqz p1, :cond_1c

    #@2
    .line 363
    iget-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/utilcode/util/PermissionUtils;

    #@4
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    # setter for: Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$002(Lcom/blankj/utilcode/util/PermissionUtils;Ljava/util/List;)Ljava/util/List;

    #@c
    .line 364
    iget-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/utilcode/util/PermissionUtils;

    #@e
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    # setter for: Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$102(Lcom/blankj/utilcode/util/PermissionUtils;Ljava/util/List;)Ljava/util/List;

    #@16
    .line 365
    iget-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->val$againRunnable:Ljava/lang/Runnable;

    #@18
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@1b
    goto :goto_26

    #@1c
    .line 367
    :cond_1c
    iget-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;

    #@1e
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->finish()V

    #@21
    .line 368
    iget-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/utilcode/util/PermissionUtils;

    #@23
    # invokes: Lcom/blankj/utilcode/util/PermissionUtils;->requestCallback()V
    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$200(Lcom/blankj/utilcode/util/PermissionUtils;)V

    #@26
    :goto_26
    return-void
.end method

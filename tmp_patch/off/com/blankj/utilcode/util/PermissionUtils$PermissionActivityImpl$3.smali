.class Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->requestPermissions(Lcom/blankj/utilcode/util/UtilsTransActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

.field final synthetic val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .registers 3

    #@0
    .line 493
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;->this$0:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;

    #@2
    iput-object p2, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;->val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    .line 496
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$3;->val$activity:Lcom/blankj/utilcode/util/UtilsTransActivity;

    #@2
    # getter for: Lcom/blankj/utilcode/util/PermissionUtils;->sInstance:Lcom/blankj/utilcode/util/PermissionUtils;
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/utilcode/util/PermissionUtils;

    #@5
    move-result-object v1

    #@6
    # getter for: Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;
    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->access$400(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x0

    #@b
    new-array v2, v2, [Ljava/lang/String;

    #@d
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, [Ljava/lang/String;

    #@13
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/UtilsTransActivity;->requestPermissions([Ljava/lang/String;I)V

    #@17
    return-void
.end method

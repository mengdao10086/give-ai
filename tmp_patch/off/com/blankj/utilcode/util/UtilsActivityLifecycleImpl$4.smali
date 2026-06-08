.class Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;
.super Ljava/lang/Object;
.source "UtilsActivityLifecycleImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 318
    iput-object p1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;->this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    #@2
    iput-object p2, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;->val$activity:Landroid/app/Activity;

    #@4
    iput-object p3, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;->val$tag:Ljava/lang/Object;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;->val$activity:Landroid/app/Activity;

    #@2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_13

    #@8
    .line 324
    iget-object v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$4;->val$tag:Ljava/lang/Object;

    #@a
    check-cast v1, Ljava/lang/Integer;

    #@c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_13

    #@13
    :catch_13
    :cond_13
    return-void
.end method

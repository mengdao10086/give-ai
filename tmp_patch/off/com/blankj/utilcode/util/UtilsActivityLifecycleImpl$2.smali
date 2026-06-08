.class Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;
.super Ljava/lang/Object;
.source "UtilsActivityLifecycleImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->removeActivityLifecycleCallbacks(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;)V
    .registers 3

    #@0
    .line 120
    iput-object p1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;->this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    #@2
    iput-object p2, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;->val$activity:Landroid/app/Activity;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    .line 123
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;->this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    #@2
    # getter for: Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->access$100(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$2;->val$activity:Landroid/app/Activity;

    #@8
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    return-void
.end method

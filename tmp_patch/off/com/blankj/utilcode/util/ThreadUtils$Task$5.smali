.class Lcom/blankj/utilcode/util/ThreadUtils$Task$5;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ThreadUtils$Task;->cancel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V
    .registers 2

    #@0
    .line 1275
    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$5;->this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    .line 1278
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$5;->this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    #@2
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->onCancel()V

    #@5
    .line 1279
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$Task$5;->this$0:Lcom/blankj/utilcode/util/ThreadUtils$Task;

    #@7
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;->onDone()V

    #@a
    return-void
.end method

.class Lcom/blankj/utilcode/util/LogUtils$1;
.super Ljava/lang/Object;
.source "LogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$tagHead:Lcom/blankj/utilcode/util/LogUtils$TagHead;

.field final synthetic val$type_low:I


# direct methods
.method constructor <init>(ILcom/blankj/utilcode/util/LogUtils$TagHead;Ljava/lang/String;)V
    .registers 4

    #@0
    .line 223
    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$1;->val$type_low:I

    #@2
    iput-object p2, p0, Lcom/blankj/utilcode/util/LogUtils$1;->val$tagHead:Lcom/blankj/utilcode/util/LogUtils$TagHead;

    #@4
    iput-object p3, p0, Lcom/blankj/utilcode/util/LogUtils$1;->val$body:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    .line 226
    iget v0, p0, Lcom/blankj/utilcode/util/LogUtils$1;->val$type_low:I

    #@2
    iget-object v1, p0, Lcom/blankj/utilcode/util/LogUtils$1;->val$tagHead:Lcom/blankj/utilcode/util/LogUtils$TagHead;

    #@4
    iget-object v1, v1, Lcom/blankj/utilcode/util/LogUtils$TagHead;->tag:Ljava/lang/String;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    iget-object v3, p0, Lcom/blankj/utilcode/util/LogUtils$1;->val$tagHead:Lcom/blankj/utilcode/util/LogUtils$TagHead;

    #@d
    iget-object v3, v3, Lcom/blankj/utilcode/util/LogUtils$TagHead;->fileHead:Ljava/lang/String;

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget-object v3, p0, Lcom/blankj/utilcode/util/LogUtils$1;->val$body:Ljava/lang/String;

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    # invokes: Lcom/blankj/utilcode/util/LogUtils;->print2File(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->access$300(ILjava/lang/String;Ljava/lang/String;)V

    #@20
    return-void
.end method

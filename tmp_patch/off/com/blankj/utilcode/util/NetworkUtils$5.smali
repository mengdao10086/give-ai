.class Lcom/blankj/utilcode/util/NetworkUtils$5;
.super Lcom/blankj/utilcode/util/Utils$Task;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/NetworkUtils;->getIPAddressAsync(ZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/Utils$Task<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$useIPv4:Z


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/Utils$Consumer;Z)V
    .registers 3

    #@0
    .line 530
    iput-boolean p2, p0, Lcom/blankj/utilcode/util/NetworkUtils$5;->val$useIPv4:Z

    #@2
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/Utils$Task;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;)V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .line 530
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/NetworkUtils$5;->doInBackground()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public doInBackground()Ljava/lang/String;
    .registers 2

    #@0
    .line 534
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$5;->val$useIPv4:Z

    #@2
    invoke-static {v0}, Lcom/blankj/utilcode/util/NetworkUtils;->getIPAddress(Z)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

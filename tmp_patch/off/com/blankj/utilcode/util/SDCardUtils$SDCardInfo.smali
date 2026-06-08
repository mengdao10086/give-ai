.class public Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;
.super Ljava/lang/Object;
.source "SDCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SDCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDCardInfo"
.end annotation


# instance fields
.field private availableSize:J

.field private isRemovable:Z

.field private path:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private totalSize:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    #@0
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 174
    iput-object p1, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->path:Ljava/lang/String;

    #@5
    .line 175
    iput-object p2, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->state:Ljava/lang/String;

    #@7
    .line 176
    iput-boolean p3, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->isRemovable:Z

    #@9
    .line 177
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFsTotalSize(Ljava/lang/String;)J

    #@c
    move-result-wide p2

    #@d
    iput-wide p2, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->totalSize:J

    #@f
    .line 178
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFsAvailableSize(Ljava/lang/String;)J

    #@12
    move-result-wide p1

    #@13
    iput-wide p1, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->availableSize:J

    #@15
    return-void
.end method

.method static synthetic access$000(Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;)Ljava/lang/String;
    .registers 1

    #@0
    .line 165
    iget-object p0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->state:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;)Ljava/lang/String;
    .registers 1

    #@0
    .line 165
    iget-object p0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->path:Ljava/lang/String;

    #@2
    return-object p0
.end method


# virtual methods
.method public getAvailableSize()J
    .registers 3

    #@0
    .line 198
    iget-wide v0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->availableSize:J

    #@2
    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    #@0
    .line 182
    iget-object v0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    #@0
    .line 186
    iget-object v0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->state:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTotalSize()J
    .registers 3

    #@0
    .line 194
    iget-wide v0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->totalSize:J

    #@2
    return-wide v0
.end method

.method public isRemovable()Z
    .registers 2

    #@0
    .line 190
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->isRemovable:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "SDCardInfo {path = "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->path:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", state = "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->state:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, ", isRemovable = "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-boolean v1, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->isRemovable:Z

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string v1, ", totalSize = "

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 207
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@2e
    move-result-object v1

    #@2f
    iget-wide v2, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->totalSize:J

    #@31
    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    const-string v1, ", availableSize = "

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 208
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@42
    move-result-object v1

    #@43
    iget-wide v2, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->availableSize:J

    #@45
    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    const/16 v1, 0x7d

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    return-object v0
.end method

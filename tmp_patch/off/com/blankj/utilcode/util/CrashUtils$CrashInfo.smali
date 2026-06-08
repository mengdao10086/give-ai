.class public final Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;
.super Ljava/lang/Object;
.source "CrashUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/CrashUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CrashInfo"
.end annotation


# instance fields
.field private mFileHeadProvider:Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

.field private mThrowable:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    #@0
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 128
    iput-object p2, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->mThrowable:Ljava/lang/Throwable;

    #@5
    .line 129
    new-instance p2, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

    #@7
    const-string v0, "Crash"

    #@9
    invoke-direct {p2, v0}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;-><init>(Ljava/lang/String;)V

    #@c
    iput-object p2, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->mFileHeadProvider:Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

    #@e
    const-string v0, "Time Of Crash"

    #@10
    .line 130
    invoke-virtual {p2, v0, p1}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->addFirst(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/blankj/utilcode/util/CrashUtils$1;)V
    .registers 4

    #@0
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    return-void
.end method


# virtual methods
.method public final addExtraHead(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    .line 138
    iget-object v0, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->mFileHeadProvider:Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->append(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public final addExtraHead(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 134
    iget-object v0, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->mFileHeadProvider:Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

    #@2
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->append(Ljava/util/Map;)V

    #@5
    return-void
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .registers 2

    #@0
    .line 142
    iget-object v0, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->mThrowable:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->mFileHeadProvider:Lcom/blankj/utilcode/util/UtilsBridge$FileHead;

    #@7
    invoke-virtual {v1}, Lcom/blankj/utilcode/util/UtilsBridge$FileHead;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;->mThrowable:Ljava/lang/Throwable;

    #@11
    invoke-static {v1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

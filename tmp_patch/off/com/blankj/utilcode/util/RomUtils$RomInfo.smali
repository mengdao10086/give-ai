.class public Lcom/blankj/utilcode/util/RomUtils$RomInfo;
.super Ljava/lang/Object;
.source "RomUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/RomUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RomInfo"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Lcom/blankj/utilcode/util/RomUtils$RomInfo;)Ljava/lang/String;
    .registers 1

    #@0
    .line 438
    iget-object p0, p0, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method static synthetic access$002(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 438
    iput-object p1, p0, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic access$102(Lcom/blankj/utilcode/util/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 438
    iput-object p1, p0, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;

    #@2
    return-object p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    .line 443
    iget-object v0, p0, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    #@0
    .line 447
    iget-object v0, p0, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "RomInfo{name="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->name:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", version="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/blankj/utilcode/util/RomUtils$RomInfo;->version:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, "}"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

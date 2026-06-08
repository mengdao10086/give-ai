.class public final Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;
.super Ljava/lang/Object;
.source "UiMessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/UiMessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UiMessage"
.end annotation


# instance fields
.field private mMessage:Landroid/os/Message;


# direct methods
.method private constructor <init>(Landroid/os/Message;)V
    .registers 2

    #@0
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 244
    iput-object p1, p0, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->mMessage:Landroid/os/Message;

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Message;Lcom/blankj/utilcode/util/UiMessageUtils$1;)V
    .registers 3

    #@0
    .line 239
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;-><init>(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic access$200(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;Landroid/os/Message;)V
    .registers 2

    #@0
    .line 239
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->setMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method private setMessage(Landroid/os/Message;)V
    .registers 2

    #@0
    .line 248
    iput-object p1, p0, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->mMessage:Landroid/os/Message;

    #@2
    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    #@0
    .line 252
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->mMessage:Landroid/os/Message;

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2

    #@0
    .line 256
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->mMessage:Landroid/os/Message;

    #@2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "{ id="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 262
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->getId()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, ", obj="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    .line 263
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->getObject()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, " }"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

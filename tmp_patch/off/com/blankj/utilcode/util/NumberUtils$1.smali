.class Lcom/blankj/utilcode/util/NumberUtils$1;
.super Ljava/lang/ThreadLocal;
.source "NumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/NumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/text/DecimalFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 18
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    #@0
    .line 18
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/NumberUtils$1;->initialValue()Ljava/text/DecimalFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected initialValue()Ljava/text/DecimalFormat;
    .registers 2

    #@0
    .line 21
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/DecimalFormat;

    #@6
    return-object v0
.end method

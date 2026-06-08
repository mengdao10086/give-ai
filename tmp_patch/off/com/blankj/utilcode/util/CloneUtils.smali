.class public final Lcom/blankj/utilcode/util/CloneUtils;
.super Ljava/lang/Object;
.source "CloneUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static deepClone(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 29
    :try_start_0
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    #@7
    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    #@8
    return-object p0

    #@9
    :catch_9
    move-exception p0

    #@a
    .line 31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@d
    const/4 p0, 0x0

    #@e
    return-object p0
.end method

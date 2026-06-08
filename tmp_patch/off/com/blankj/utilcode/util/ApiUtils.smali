.class public final Lcom/blankj/utilcode/util/ApiUtils;
.super Ljava/lang/Object;
.source "ApiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ApiUtils$BaseApi;,
        Lcom/blankj/utilcode/util/ApiUtils$Api;,
        Lcom/blankj/utilcode/util/ApiUtils$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApiUtils"


# instance fields
.field private mApiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/blankj/utilcode/util/ApiUtils$BaseApi;",
            ">;"
        }
    .end annotation
.end field

.field private mInjectApiImplMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/blankj/utilcode/util/ApiUtils;->mApiMap:Ljava/util/Map;

    #@a
    .line 29
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/blankj/utilcode/util/ApiUtils;->mInjectApiImplMap:Ljava/util/Map;

    #@11
    .line 32
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ApiUtils;->init()V

    #@14
    return-void
.end method

.method synthetic constructor <init>(Lcom/blankj/utilcode/util/ApiUtils$1;)V
    .registers 2

    #@0
    .line 24
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ApiUtils;-><init>()V

    #@3
    return-void
.end method

.method public static getApi(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ApiUtils$BaseApi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/blankj/utilcode/util/ApiUtils$BaseApi;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    #@0
    .line 54
    invoke-static {}, Lcom/blankj/utilcode/util/ApiUtils;->getInstance()Lcom/blankj/utilcode/util/ApiUtils;

    #@3
    move-result-object v0

    #@4
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ApiUtils;->getApiInner(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, Lcom/blankj/utilcode/util/ApiUtils$BaseApi;

    #@a
    return-object p0
.end method

.method private getApiInner(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TResult;"
        }
    .end annotation

    #@0
    const-string v0, "The <"

    #@2
    const-string v1, "The <"

    #@4
    .line 77
    iget-object v2, p0, Lcom/blankj/utilcode/util/ApiUtils;->mApiMap:Ljava/util/Map;

    #@6
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Lcom/blankj/utilcode/util/ApiUtils$BaseApi;

    #@c
    if-eqz v2, :cond_f

    #@e
    return-object v2

    #@f
    .line 81
    :cond_f
    monitor-enter p1

    #@10
    .line 82
    :try_start_10
    iget-object v2, p0, Lcom/blankj/utilcode/util/ApiUtils;->mApiMap:Ljava/util/Map;

    #@12
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/blankj/utilcode/util/ApiUtils$BaseApi;

    #@18
    if-eqz v2, :cond_1c

    #@1a
    .line 84
    monitor-exit p1

    #@1b
    return-object v2

    #@1c
    .line 86
    :cond_1c
    iget-object v2, p0, Lcom/blankj/utilcode/util/ApiUtils;->mInjectApiImplMap:Ljava/util/Map;

    #@1e
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Ljava/lang/Class;
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_68

    #@24
    const/4 v3, 0x0

    #@25
    if-eqz v2, :cond_4e

    #@27
    .line 89
    :try_start_27
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Lcom/blankj/utilcode/util/ApiUtils$BaseApi;

    #@2d
    .line 90
    iget-object v4, p0, Lcom/blankj/utilcode/util/ApiUtils;->mApiMap:Ljava/util/Map;

    #@2f
    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_32} :catch_34
    .catchall {:try_start_27 .. :try_end_32} :catchall_68

    #@32
    .line 91
    :try_start_32
    monitor-exit p1

    #@33
    return-object v1

    #@34
    :catch_34
    const-string v1, "ApiUtils"

    #@36
    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    const-string v2, "> has no parameterless constructor."

    #@41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 94
    monitor-exit p1

    #@4d
    return-object v3

    #@4e
    :cond_4e
    const-string v0, "ApiUtils"

    #@50
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    const-string v2, "> doesn\'t implement."

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 98
    monitor-exit p1

    #@67
    return-object v3

    #@68
    :catchall_68
    move-exception v0

    #@69
    .line 100
    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_32 .. :try_end_6a} :catchall_68

    #@6a
    throw v0
.end method

.method private static getInstance()Lcom/blankj/utilcode/util/ApiUtils;
    .registers 1

    #@0
    .line 73
    # getter for: Lcom/blankj/utilcode/util/ApiUtils$LazyHolder;->INSTANCE:Lcom/blankj/utilcode/util/ApiUtils;
    invoke-static {}, Lcom/blankj/utilcode/util/ApiUtils$LazyHolder;->access$000()Lcom/blankj/utilcode/util/ApiUtils;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private init()V
    .registers 1

    #@0
    return-void
.end method

.method public static register(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/blankj/utilcode/util/ApiUtils$BaseApi;",
            ">;)V"
        }
    .end annotation

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 59
    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/ApiUtils;->getInstance()Lcom/blankj/utilcode/util/ApiUtils;

    #@6
    move-result-object v0

    #@7
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ApiUtils;->registerImpl(Ljava/lang/Class;)V

    #@a
    return-void
.end method

.method private registerImpl(Ljava/lang/Class;)V
    .registers 4

    #@0
    .line 42
    iget-object v0, p0, Lcom/blankj/utilcode/util/ApiUtils;->mInjectApiImplMap:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    return-void
.end method

.method public static toString_()Ljava/lang/String;
    .registers 1

    #@0
    .line 64
    invoke-static {}, Lcom/blankj/utilcode/util/ApiUtils;->getInstance()Lcom/blankj/utilcode/util/ApiUtils;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ApiUtils;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "ApiUtils: "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Lcom/blankj/utilcode/util/ApiUtils;->mInjectApiImplMap:Ljava/util/Map;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

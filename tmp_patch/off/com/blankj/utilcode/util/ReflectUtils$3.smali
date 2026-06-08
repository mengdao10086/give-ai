.class Lcom/blankj/utilcode/util/ReflectUtils$3;
.super Ljava/lang/Object;
.source "ReflectUtils.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ReflectUtils;->proxy(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/ReflectUtils;

.field final synthetic val$isMap:Z


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ReflectUtils;Z)V
    .registers 3

    #@0
    .line 435
    iput-object p1, p0, Lcom/blankj/utilcode/util/ReflectUtils$3;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    #@2
    iput-boolean p2, p0, Lcom/blankj/utilcode/util/ReflectUtils$3;->val$isMap:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    #@0
    .line 439
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    .line 441
    :try_start_4
    iget-object p2, p0, Lcom/blankj/utilcode/util/ReflectUtils$3;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    #@6
    # getter for: Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;
    invoke-static {p2}, Lcom/blankj/utilcode/util/ReflectUtils;->access$100(Lcom/blankj/utilcode/util/ReflectUtils;)Ljava/lang/Object;

    #@9
    move-result-object p2

    #@a
    invoke-static {p2}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    #@d
    move-result-object p2

    #@e
    invoke-virtual {p2, p1, p3}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    #@11
    move-result-object p2

    #@12
    invoke-virtual {p2}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    #@15
    move-result-object p1
    :try_end_16
    .catch Lcom/blankj/utilcode/util/ReflectUtils$ReflectException; {:try_start_4 .. :try_end_16} :catch_17

    #@16
    return-object p1

    #@17
    :catch_17
    move-exception p2

    #@18
    .line 443
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ReflectUtils$3;->val$isMap:Z

    #@1a
    if-eqz v0, :cond_74

    #@1c
    .line 444
    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils$3;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    #@1e
    # getter for: Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;
    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->access$100(Lcom/blankj/utilcode/util/ReflectUtils;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/util/Map;

    #@24
    const/4 v1, 0x0

    #@25
    if-nez p3, :cond_29

    #@27
    move v2, v1

    #@28
    goto :goto_2a

    #@29
    .line 445
    :cond_29
    array-length v2, p3

    #@2a
    :goto_2a
    const/4 v3, 0x3

    #@2b
    if-nez v2, :cond_42

    #@2d
    const-string v4, "get"

    #@2f
    .line 447
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_42

    #@35
    .line 448
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@38
    move-result-object p1

    #@39
    # invokes: Lcom/blankj/utilcode/util/ReflectUtils;->property(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->access$200(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object p1

    #@3d
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object p1

    #@41
    return-object p1

    #@42
    :cond_42
    if-nez v2, :cond_5a

    #@44
    const-string v4, "is"

    #@46
    .line 449
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_5a

    #@4c
    const/4 p2, 0x2

    #@4d
    .line 450
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@50
    move-result-object p1

    #@51
    # invokes: Lcom/blankj/utilcode/util/ReflectUtils;->property(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->access$200(Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object p1

    #@55
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object p1

    #@59
    return-object p1

    #@5a
    :cond_5a
    const/4 v4, 0x1

    #@5b
    if-ne v2, v4, :cond_74

    #@5d
    const-string v2, "set"

    #@5f
    .line 451
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@62
    move-result v2

    #@63
    if-eqz v2, :cond_74

    #@65
    .line 452
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@68
    move-result-object p1

    #@69
    # invokes: Lcom/blankj/utilcode/util/ReflectUtils;->property(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->access$200(Ljava/lang/String;)Ljava/lang/String;

    #@6c
    move-result-object p1

    #@6d
    aget-object p2, p3, v1

    #@6f
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    const/4 p1, 0x0

    #@73
    return-object p1

    #@74
    .line 456
    :cond_74
    throw p2
.end method

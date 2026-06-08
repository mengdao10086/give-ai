.class public final Lcom/blankj/utilcode/util/GsonUtils;
.super Ljava/lang/Object;
.source "GsonUtils.java"


# static fields
.field private static final GSONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DEFAULT:Ljava/lang/String; = "defaultGson"

.field private static final KEY_DELEGATE:Ljava/lang/String; = "delegateGson"

.field private static final KEY_LOG_UTILS:Ljava/lang/String; = "logUtilsGson"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method private static createGson()Lcom/google/gson/Gson;
    .registers 1

    #@0
    .line 281
    new-instance v0, Lcom/google/gson/GsonBuilder;

    #@2
    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    #@5
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static fromJson(Lcom/google/gson/Gson;Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    #@0
    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static fromJson(Lcom/google/gson/Gson;Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    #@0
    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    #@0
    .line 157
    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Lcom/google/gson/Gson;Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 168
    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Lcom/google/gson/Gson;Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    #@0
    .line 135
    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 146
    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 1

    #@0
    .line 257
    invoke-static {p0}, Lcom/google/gson/reflect/TypeToken;->getArray(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getGson()Lcom/google/gson/Gson;
    .registers 3

    #@0
    .line 71
    sget-object v0, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    #@2
    const-string v1, "delegateGson"

    #@4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lcom/google/gson/Gson;

    #@a
    if-eqz v1, :cond_d

    #@c
    return-object v1

    #@d
    :cond_d
    const-string v1, "defaultGson"

    #@f
    .line 75
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Lcom/google/gson/Gson;

    #@15
    if-nez v2, :cond_1e

    #@17
    .line 77
    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->createGson()Lcom/google/gson/Gson;

    #@1a
    move-result-object v2

    #@1b
    .line 78
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    :cond_1e
    return-object v2
.end method

.method public static getGson(Ljava/lang/String;)Lcom/google/gson/Gson;
    .registers 2

    #@0
    .line 67
    sget-object v0, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lcom/google/gson/Gson;

    #@8
    return-object p0
.end method

.method static getGson4LogUtils()Lcom/google/gson/Gson;
    .registers 3

    #@0
    .line 272
    sget-object v0, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    #@2
    const-string v1, "logUtilsGson"

    #@4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Lcom/google/gson/Gson;

    #@a
    if-nez v2, :cond_20

    #@c
    .line 274
    new-instance v2, Lcom/google/gson/GsonBuilder;

    #@e
    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    #@11
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    #@1c
    move-result-object v2

    #@1d
    .line 275
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    :cond_20
    return-object v2
.end method

.method public static getListType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4

    #@0
    .line 226
    const-class v0, Ljava/util/List;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/reflect/Type;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object p0, v1, v2

    #@8
    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    #@b
    move-result-object p0

    #@c
    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method public static getMapType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 5

    #@0
    .line 247
    const-class v0, Ljava/util/Map;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/reflect/Type;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object p0, v1, v2

    #@8
    const/4 p0, 0x1

    #@9
    aput-object p1, v1, p0

    #@b
    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    #@e
    move-result-object p0

    #@f
    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    #@12
    move-result-object p0

    #@13
    return-object p0
.end method

.method public static getSetType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4

    #@0
    .line 236
    const-class v0, Ljava/util/Set;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/reflect/Type;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object p0, v1, v2

    #@8
    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    #@b
    move-result-object p0

    #@c
    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method public static varargs getType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2

    #@0
    .line 268
    invoke-static {p0, p1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static setGson(Ljava/lang/String;Lcom/google/gson/Gson;)V
    .registers 3

    #@0
    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    if-nez p1, :cond_9

    #@8
    goto :goto_e

    #@9
    .line 57
    :cond_9
    sget-object v0, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    #@b
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    :cond_e
    :goto_e
    return-void
.end method

.method public static setGsonDelegate(Lcom/google/gson/Gson;)V
    .registers 3

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 46
    :cond_3
    sget-object v0, Lcom/blankj/utilcode/util/GsonUtils;->GSONS:Ljava/util/Map;

    #@5
    const-string v1, "delegateGson"

    #@7
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    return-void
.end method

.method public static toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    #@0
    .line 112
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 3

    #@0
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    #@0
    .line 90
    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/GsonUtils;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 3

    #@0
    .line 101
    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/GsonUtils;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

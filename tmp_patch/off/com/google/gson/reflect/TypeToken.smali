.class public Lcom/google/gson/reflect/TypeToken;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .registers 3

    #@0
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    #@d
    .line 63
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    #@13
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lcom/google/gson/reflect/TypeToken;->hashCode:I

    #@19
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 3

    #@0
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object p1

    #@7
    check-cast p1, Ljava/lang/reflect/Type;

    #@9
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@c
    move-result-object p1

    #@d
    iput-object p1, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    #@f
    .line 73
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    #@15
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@18
    move-result p1

    #@19
    iput p1, p0, Lcom/google/gson/reflect/TypeToken;->hashCode:I

    #@1b
    return-void
.end method

.method private static varargs buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/AssertionError;"
        }
    .end annotation

    #@0
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "Unexpected type. Expected one of: "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 259
    array-length v1, p1

    #@8
    const/4 v2, 0x0

    #@9
    :goto_9
    if-ge v2, v1, :cond_1d

    #@b
    aget-object v3, p1, v2

    #@d
    .line 260
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    const-string v4, ", "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_9

    #@1d
    :cond_1d
    const-string p1, "but got: "

    #@1f
    .line 262
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object p1

    #@23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object p1

    #@2f
    const-string v1, ", for type token: "

    #@31
    .line 263
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object p1

    #@35
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@38
    move-result-object p0

    #@39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object p0

    #@3d
    const/16 p1, 0x2e

    #@3f
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    .line 265
    new-instance p0, Ljava/lang/AssertionError;

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object p1

    #@48
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@4b
    return-object p0
.end method

.method public static get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 303
    new-instance v0, Lcom/google/gson/reflect/TypeToken;

    #@2
    invoke-direct {v0, p0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    #@5
    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    #@0
    .line 296
    new-instance v0, Lcom/google/gson/reflect/TypeToken;

    #@2
    invoke-direct {v0, p0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    #@5
    return-object v0
.end method

.method public static getArray(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    #@0
    .line 318
    new-instance v0, Lcom/google/gson/reflect/TypeToken;

    #@2
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    #@5
    move-result-object p0

    #@6
    invoke-direct {v0, p0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    #@9
    return-object v0
.end method

.method public static varargs getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    #@0
    .line 311
    new-instance v0, Lcom/google/gson/reflect/TypeToken;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v1, p0, p1}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    #@6
    move-result-object p0

    #@7
    invoke-direct {v0, p0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    #@a
    return-object v0
.end method

.method static getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    #@0
    .line 82
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    #@3
    move-result-object p0

    #@4
    .line 83
    instance-of v0, p0, Ljava/lang/Class;

    #@6
    if-nez v0, :cond_16

    #@8
    .line 86
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    #@a
    .line 87
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@d
    move-result-object p0

    #@e
    const/4 v0, 0x0

    #@f
    aget-object p0, p0, v0

    #@11
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@14
    move-result-object p0

    #@15
    return-object p0

    #@16
    .line 84
    :cond_16
    new-instance p0, Ljava/lang/RuntimeException;

    #@18
    const-string v0, "Missing type parameter."

    #@1a
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    throw p0
.end method

.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z
    .registers 3

    #@0
    .line 161
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@3
    move-result-object p1

    #@4
    .line 162
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    #@6
    if-eqz v0, :cond_30

    #@8
    .line 164
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    #@a
    if-eqz v0, :cond_13

    #@c
    .line 165
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    #@e
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@11
    move-result-object p0

    #@12
    goto :goto_24

    #@13
    .line 166
    :cond_13
    instance-of v0, p0, Ljava/lang/Class;

    #@15
    if-eqz v0, :cond_24

    #@17
    .line 167
    check-cast p0, Ljava/lang/Class;

    #@19
    .line 168
    :goto_19
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_24

    #@1f
    .line 169
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@22
    move-result-object p0

    #@23
    goto :goto_19

    #@24
    .line 173
    :cond_24
    :goto_24
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    #@26
    new-instance v0, Ljava/util/HashMap;

    #@28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2b
    invoke-static {p0, p1, v0}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    #@2e
    move-result p0

    #@2f
    return p0

    #@30
    :cond_30
    const/4 p0, 0x1

    #@31
    return p0
.end method

.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    .line 192
    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    const/4 v2, 0x1

    #@9
    if-eqz v1, :cond_c

    #@b
    return v2

    #@c
    .line 197
    :cond_c
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    .line 199
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    #@12
    if-eqz v3, :cond_17

    #@14
    .line 200
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 p0, 0x0

    #@18
    :goto_18
    if-eqz p0, :cond_4c

    #@1a
    .line 205
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@1d
    move-result-object v3

    #@1e
    .line 206
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    #@21
    move-result-object v4

    #@22
    move v5, v0

    #@23
    .line 207
    :goto_23
    array-length v6, v3

    #@24
    if-ge v5, v6, :cond_45

    #@26
    .line 208
    aget-object v6, v3, v5

    #@28
    .line 209
    aget-object v7, v4, v5

    #@2a
    .line 210
    :goto_2a
    instance-of v8, v6, Ljava/lang/reflect/TypeVariable;

    #@2c
    if-eqz v8, :cond_3b

    #@2e
    .line 211
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    #@30
    .line 212
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v6

    #@38
    check-cast v6, Ljava/lang/reflect/Type;

    #@3a
    goto :goto_2a

    #@3b
    .line 214
    :cond_3b
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    add-int/lit8 v5, v5, 0x1

    #@44
    goto :goto_23

    #@45
    .line 218
    :cond_45
    invoke-static {p0, p1, p2}, Lcom/google/gson/reflect/TypeToken;->typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    #@48
    move-result p0

    #@49
    if-eqz p0, :cond_4c

    #@4b
    return v2

    #@4c
    .line 223
    :cond_4c
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    #@4f
    move-result-object p0

    #@50
    array-length v3, p0

    #@51
    :goto_51
    if-ge v0, v3, :cond_64

    #@53
    aget-object v4, p0, v0

    #@55
    .line 224
    new-instance v5, Ljava/util/HashMap;

    #@57
    invoke-direct {v5, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@5a
    invoke-static {v4, p1, v5}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    #@5d
    move-result v4

    #@5e
    if-eqz v4, :cond_61

    #@60
    return v2

    #@61
    :cond_61
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_51

    #@64
    .line 230
    :cond_64
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    #@67
    move-result-object p0

    #@68
    .line 231
    new-instance v0, Ljava/util/HashMap;

    #@6a
    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@6d
    invoke-static {p0, p1, v0}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    #@70
    move-result p0

    #@71
    return p0
.end method

.method private static matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    #@0
    .line 273
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1d

    #@6
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    #@8
    if-eqz v0, :cond_1b

    #@a
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    #@c
    .line 275
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object p0

    #@14
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result p0

    #@18
    if-eqz p0, :cond_1b

    #@1a
    goto :goto_1d

    #@1b
    :cond_1b
    const/4 p0, 0x0

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    #@1e
    :goto_1e
    return p0
.end method

.method private static typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    #@0
    .line 240
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    const/4 v1, 0x0

    #@d
    if-eqz v0, :cond_2b

    #@f
    .line 241
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@12
    move-result-object p0

    #@13
    .line 242
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@16
    move-result-object p1

    #@17
    move v0, v1

    #@18
    .line 243
    :goto_18
    array-length v2, p0

    #@19
    if-ge v0, v2, :cond_29

    #@1b
    .line 244
    aget-object v2, p0, v0

    #@1d
    aget-object v3, p1, v0

    #@1f
    invoke-static {v2, v3, p2}, Lcom/google/gson/reflect/TypeToken;->matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    #@22
    move-result v2

    #@23
    if-nez v2, :cond_26

    #@25
    return v1

    #@26
    :cond_26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_18

    #@29
    :cond_29
    const/4 p0, 0x1

    #@2a
    return p0

    #@2b
    :cond_2b
    return v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 284
    instance-of v0, p1, Lcom/google/gson/reflect/TypeToken;

    #@2
    if-eqz v0, :cond_12

    #@4
    iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    #@6
    check-cast p1, Lcom/google/gson/reflect/TypeToken;

    #@8
    iget-object p1, p1, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    #@a
    .line 285
    invoke-static {v0, p1}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_12

    #@10
    const/4 p1, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p1, 0x0

    #@13
    :goto_13
    return p1
.end method

.method public final getRawType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    #@0
    .line 94
    iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .registers 2

    #@0
    .line 101
    iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    #@0
    .line 280
    iget v0, p0, Lcom/google/gson/reflect/TypeToken;->hashCode:I

    #@2
    return v0
.end method

.method public isAssignableFrom(Lcom/google/gson/reflect/TypeToken;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 153
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;)Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 112
    invoke-virtual {p0, p1}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public isAssignableFrom(Ljava/lang/reflect/Type;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 127
    :cond_4
    iget-object v1, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    #@6
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    const/4 v2, 0x1

    #@b
    if-eqz v1, :cond_e

    #@d
    return v2

    #@e
    .line 131
    :cond_e
    iget-object v1, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    #@10
    instance-of v3, v1, Ljava/lang/Class;

    #@12
    if-eqz v3, :cond_1f

    #@14
    .line 132
    iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    #@16
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1d
    move-result p1

    #@1e
    return p1

    #@1f
    .line 133
    :cond_1f
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    #@21
    if-eqz v3, :cond_2f

    #@23
    .line 134
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    #@25
    new-instance v0, Ljava/util/HashMap;

    #@27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2a
    invoke-static {p1, v1, v0}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    #@2d
    move-result p1

    #@2e
    return p1

    #@2f
    .line 136
    :cond_2f
    instance-of v3, v1, Ljava/lang/reflect/GenericArrayType;

    #@31
    if-eqz v3, :cond_4b

    #@33
    .line 137
    iget-object v1, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    #@35
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_4a

    #@3f
    iget-object v1, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    #@41
    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    #@43
    .line 138
    invoke-static {p1, v1}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z

    #@46
    move-result p1

    #@47
    if-eqz p1, :cond_4a

    #@49
    move v0, v2

    #@4a
    :cond_4a
    return v0

    #@4b
    :cond_4b
    const/4 p1, 0x3

    #@4c
    new-array p1, p1, [Ljava/lang/Class;

    #@4e
    .line 140
    const-class v3, Ljava/lang/Class;

    #@50
    aput-object v3, p1, v0

    #@52
    const-class v0, Ljava/lang/reflect/ParameterizedType;

    #@54
    aput-object v0, p1, v2

    #@56
    const/4 v0, 0x2

    #@57
    const-class v2, Ljava/lang/reflect/GenericArrayType;

    #@59
    aput-object v2, p1, v0

    #@5b
    invoke-static {v1, p1}, Lcom/google/gson/reflect/TypeToken;->buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;

    #@5e
    move-result-object p1

    #@5f
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 289
    iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    #@2
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

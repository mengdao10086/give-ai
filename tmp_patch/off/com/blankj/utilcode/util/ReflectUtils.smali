.class public final Lcom/blankj/utilcode/util/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;,
        Lcom/blankj/utilcode/util/ReflectUtils$NULL;
    }
.end annotation


# instance fields
.field private final object:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    #@0
    .line 33
    invoke-direct {p0, p1, p1}, Lcom/blankj/utilcode/util/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Lcom/blankj/utilcode/util/ReflectUtils;->type:Ljava/lang/Class;

    #@5
    .line 38
    iput-object p2, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    #@7
    return-void
.end method

.method static synthetic access$000(Lcom/blankj/utilcode/util/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    #@0
    .line 26
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$100(Lcom/blankj/utilcode/util/ReflectUtils;)Ljava/lang/Object;
    .registers 1

    #@0
    .line 26
    iget-object p0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    #@0
    .line 26
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->property(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    return-object p1

    #@4
    .line 410
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/Member;

    #@6
    if-eqz v0, :cond_24

    #@8
    .line 411
    move-object v0, p1

    #@9
    check-cast v0, Ljava/lang/reflect/Member;

    #@b
    .line 412
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    #@e
    move-result v1

    #@f
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_24

    #@15
    .line 413
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    #@1c
    move-result v0

    #@1d
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_24

    #@23
    return-object p1

    #@24
    .line 417
    :cond_24
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_2e

    #@2a
    const/4 v0, 0x1

    #@2b
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    #@2e
    :cond_2e
    return-object p1
.end method

.method private exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .line 320
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->type()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 322
    :try_start_4
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@7
    move-result-object p1
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_8} :catch_9

    #@8
    return-object p1

    #@9
    .line 326
    :catch_9
    :goto_9
    :try_start_9
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@c
    move-result-object p1
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_d} :catch_e

    #@d
    return-object p1

    #@e
    .line 329
    :catch_e
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_15

    #@14
    goto :goto_9

    #@15
    .line 331
    :cond_15
    new-instance p1, Ljava/lang/NoSuchMethodException;

    #@17
    invoke-direct {p1}, Ljava/lang/NoSuchMethodException;-><init>()V

    #@1a
    throw p1
.end method

.method private static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    #@0
    .line 96
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return-object p0

    #@5
    :catch_5
    move-exception p0

    #@6
    .line 98
    new-instance v0, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    #@8
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v0
.end method

.method private static forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 104
    :try_start_1
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@4
    move-result-object p0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5} :catch_6

    #@5
    return-object p0

    #@6
    :catch_6
    move-exception p0

    #@7
    .line 106
    new-instance p1, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    #@9
    invoke-direct {p1, p0}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw p1
.end method

.method private getAccessibleField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5

    #@0
    .line 244
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->type()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 246
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/reflect/Field;
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_e} :catch_f

    #@e
    return-object v1

    #@f
    :catch_f
    move-exception v1

    #@10
    .line 250
    :goto_10
    :try_start_10
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@13
    move-result-object v2

    #@14
    invoke-direct {p0, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Ljava/lang/reflect/Field;
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_1a} :catch_1b

    #@1a
    return-object v2

    #@1b
    .line 253
    :catch_1b
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_22

    #@21
    goto :goto_10

    #@22
    .line 255
    :cond_22
    new-instance p1, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    #@24
    invoke-direct {p1, v1}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw p1
.end method

.method private varargs getArgsType([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_6

    #@3
    new-array p1, v0, [Ljava/lang/Class;

    #@5
    return-object p1

    #@6
    .line 152
    :cond_6
    array-length v1, p1

    #@7
    new-array v1, v1, [Ljava/lang/Class;

    #@9
    .line 153
    :goto_9
    array-length v2, p1

    #@a
    if-ge v0, v2, :cond_1c

    #@c
    .line 154
    aget-object v2, p1, v0

    #@e
    if-nez v2, :cond_13

    #@10
    .line 155
    const-class v2, Lcom/blankj/utilcode/util/ReflectUtils$NULL;

    #@12
    goto :goto_17

    #@13
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v2

    #@17
    :goto_17
    aput-object v2, v1, v0

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_9

    #@1c
    :cond_1c
    return-object v1
.end method

.method private getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    #@0
    .line 229
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->getAccessibleField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3
    move-result-object p1

    #@4
    .line 230
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    #@7
    move-result v0

    #@8
    const/16 v1, 0x10

    #@a
    and-int/2addr v0, v1

    #@b
    if-ne v0, v1, :cond_26

    #@d
    const/4 v0, 0x1

    #@e
    .line 232
    :try_start_e
    const-class v1, Ljava/lang/reflect/Field;

    #@10
    const-string v2, "modifiers"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@15
    move-result-object v1

    #@16
    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@19
    .line 234
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    #@1c
    move-result v2

    #@1d
    and-int/lit8 v2, v2, -0x11

    #@1f
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_22} :catch_23

    #@22
    goto :goto_26

    #@23
    .line 237
    :catch_23
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@26
    :cond_26
    :goto_26
    return-object p1
.end method

.method private isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 389
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result p2

    #@8
    if-eqz p2, :cond_16

    #@a
    .line 390
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@d
    move-result-object p1

    #@e
    invoke-direct {p0, p1, p3}, Lcom/blankj/utilcode/util/ReflectUtils;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    #@11
    move-result p1

    #@12
    if-eqz p1, :cond_16

    #@14
    const/4 p1, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 p1, 0x0

    #@17
    :goto_17
    return p1
.end method

.method private match([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 394
    array-length v0, p1

    #@1
    array-length v1, p2

    #@2
    const/4 v2, 0x0

    #@3
    if-ne v0, v1, :cond_28

    #@5
    move v0, v2

    #@6
    .line 395
    :goto_6
    array-length v1, p2

    #@7
    if-ge v0, v1, :cond_26

    #@9
    .line 396
    aget-object v1, p2, v0

    #@b
    const-class v3, Lcom/blankj/utilcode/util/ReflectUtils$NULL;

    #@d
    if-eq v1, v3, :cond_23

    #@f
    aget-object v1, p1, v0

    #@11
    .line 397
    invoke-direct {p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    #@14
    move-result-object v1

    #@15
    aget-object v3, p2, v0

    #@17
    invoke-direct {p0, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_22

    #@21
    goto :goto_23

    #@22
    :cond_22
    return v2

    #@23
    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_6

    #@26
    :cond_26
    const/4 p1, 0x1

    #@27
    return p1

    #@28
    :cond_28
    return v2
.end method

.method private varargs method(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 6

    #@0
    .line 306
    :try_start_0
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    #@3
    .line 307
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@9
    if-ne v0, v1, :cond_13

    #@b
    .line 308
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 309
    invoke-static {p2}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    #@11
    move-result-object p1

    #@12
    return-object p1

    #@13
    .line 311
    :cond_13
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    #@1a
    move-result-object p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    #@1b
    return-object p1

    #@1c
    :catch_1c
    move-exception p1

    #@1d
    .line 314
    new-instance p2, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    #@1f
    invoke-direct {p2, p1}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    #@22
    throw p2
.end method

.method private varargs newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/blankj/utilcode/util/ReflectUtils;"
        }
    .end annotation

    #@0
    .line 183
    :try_start_0
    new-instance v0, Lcom/blankj/utilcode/util/ReflectUtils;

    #@2
    .line 184
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    .line 185
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Ljava/lang/reflect/Constructor;

    #@c
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    invoke-direct {v0, v1, p1}, Lcom/blankj/utilcode/util/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    return-object v0

    #@14
    :catch_14
    move-exception p1

    #@15
    .line 188
    new-instance p2, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    #@17
    invoke-direct {p2, p1}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw p2
.end method

.method private static property(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 469
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    const-string p0, ""

    #@8
    return-object p0

    #@9
    :cond_9
    const/4 v1, 0x1

    #@a
    if-ne v0, v1, :cond_11

    #@c
    .line 474
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    return-object p0

    #@11
    .line 476
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const/4 v2, 0x0

    #@17
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@26
    move-result-object p0

    #@27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p0

    #@2b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object p0

    #@2f
    return-object p0
.end method

.method public static reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/blankj/utilcode/util/ReflectUtils;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;
        }
    .end annotation

    #@0
    .line 79
    new-instance v0, Lcom/blankj/utilcode/util/ReflectUtils;

    #@2
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ReflectUtils;-><init>(Ljava/lang/Class;)V

    #@5
    return-object v0
.end method

.method public static reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;
        }
    .end annotation

    #@0
    .line 91
    new-instance v0, Lcom/blankj/utilcode/util/ReflectUtils;

    #@2
    if-nez p0, :cond_7

    #@4
    const-class v1, Ljava/lang/Object;

    #@6
    goto :goto_b

    #@7
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    :goto_b
    invoke-direct {v0, v1, p0}, Lcom/blankj/utilcode/util/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    #@e
    return-object v0
.end method

.method public static reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;
        }
    .end annotation

    #@0
    .line 54
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static reflect(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;
        }
    .end annotation

    #@0
    .line 67
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .line 337
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->type()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 338
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 339
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    #@c
    move-result-object v2

    #@d
    array-length v3, v2

    #@e
    const/4 v4, 0x0

    #@f
    move v5, v4

    #@10
    :goto_10
    if-ge v5, v3, :cond_20

    #@12
    aget-object v6, v2, v5

    #@14
    .line 340
    invoke-direct {p0, v6, p1, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_1d

    #@1a
    .line 341
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d
    :cond_1d
    add-int/lit8 v5, v5, 0x1

    #@1f
    goto :goto_10

    #@20
    .line 344
    :cond_20
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_30

    #@26
    .line 345
    invoke-direct {p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->sortMethods(Ljava/util/List;)V

    #@29
    .line 346
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object p1

    #@2d
    check-cast p1, Ljava/lang/reflect/Method;

    #@2f
    return-object p1

    #@30
    .line 349
    :cond_30
    :goto_30
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    #@33
    move-result-object v2

    #@34
    array-length v3, v2

    #@35
    move v5, v4

    #@36
    :goto_36
    if-ge v5, v3, :cond_46

    #@38
    aget-object v6, v2, v5

    #@3a
    .line 350
    invoke-direct {p0, v6, p1, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    #@3d
    move-result v7

    #@3e
    if-eqz v7, :cond_43

    #@40
    .line 351
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    :cond_43
    add-int/lit8 v5, v5, 0x1

    #@45
    goto :goto_36

    #@46
    .line 354
    :cond_46
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@49
    move-result v2

    #@4a
    if-nez v2, :cond_56

    #@4c
    .line 355
    invoke-direct {p0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->sortMethods(Ljava/util/List;)V

    #@4f
    .line 356
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@52
    move-result-object p1

    #@53
    check-cast p1, Ljava/lang/reflect/Method;

    #@55
    return-object p1

    #@56
    .line 358
    :cond_56
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@59
    move-result-object v0

    #@5a
    if-eqz v0, :cond_5d

    #@5c
    goto :goto_30

    #@5d
    .line 361
    :cond_5d
    new-instance v0, Ljava/lang/NoSuchMethodException;

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    const-string v2, "No similar method "

    #@63
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object p1

    #@6a
    const-string v1, " with params "

    #@6c
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object p1

    #@70
    .line 362
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@73
    move-result-object p2

    #@74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object p1

    #@78
    const-string p2, " could be found on type "

    #@7a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object p1

    #@7e
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->type()Ljava/lang/Class;

    #@81
    move-result-object p2

    #@82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    move-result-object p1

    #@86
    const-string p2, "."

    #@88
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object p1

    #@8c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object p1

    #@90
    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    #@93
    throw v0
.end method

.method private sortConstructors(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;)V"
        }
    .end annotation

    #@0
    .line 161
    new-instance v0, Lcom/blankj/utilcode/util/ReflectUtils$1;

    #@2
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ReflectUtils$1;-><init>(Lcom/blankj/utilcode/util/ReflectUtils;)V

    #@5
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@8
    return-void
.end method

.method private sortMethods(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 366
    new-instance v0, Lcom/blankj/utilcode/util/ReflectUtils$2;

    #@2
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ReflectUtils$2;-><init>(Lcom/blankj/utilcode/util/ReflectUtils;)V

    #@5
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@8
    return-void
.end method

.method private type()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    #@0
    .line 481
    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->type:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method private unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    .line 260
    instance-of v0, p1, Lcom/blankj/utilcode/util/ReflectUtils;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 261
    check-cast p1, Lcom/blankj/utilcode/util/ReflectUtils;

    #@6
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    :cond_a
    return-object p1
.end method

.method private wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    return-object p1

    #@4
    .line 487
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_48

    #@a
    .line 488
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@c
    if-ne v0, p1, :cond_11

    #@e
    .line 489
    const-class p1, Ljava/lang/Boolean;

    #@10
    return-object p1

    #@11
    .line 490
    :cond_11
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@13
    if-ne v0, p1, :cond_18

    #@15
    .line 491
    const-class p1, Ljava/lang/Integer;

    #@17
    return-object p1

    #@18
    .line 492
    :cond_18
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@1a
    if-ne v0, p1, :cond_1f

    #@1c
    .line 493
    const-class p1, Ljava/lang/Long;

    #@1e
    return-object p1

    #@1f
    .line 494
    :cond_1f
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@21
    if-ne v0, p1, :cond_26

    #@23
    .line 495
    const-class p1, Ljava/lang/Short;

    #@25
    return-object p1

    #@26
    .line 496
    :cond_26
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@28
    if-ne v0, p1, :cond_2d

    #@2a
    .line 497
    const-class p1, Ljava/lang/Byte;

    #@2c
    return-object p1

    #@2d
    .line 498
    :cond_2d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@2f
    if-ne v0, p1, :cond_34

    #@31
    .line 499
    const-class p1, Ljava/lang/Double;

    #@33
    return-object p1

    #@34
    .line 500
    :cond_34
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@36
    if-ne v0, p1, :cond_3b

    #@38
    .line 501
    const-class p1, Ljava/lang/Float;

    #@3a
    return-object p1

    #@3b
    .line 502
    :cond_3b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@3d
    if-ne v0, p1, :cond_42

    #@3f
    .line 503
    const-class p1, Ljava/lang/Character;

    #@41
    return-object p1

    #@42
    .line 504
    :cond_42
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@44
    if-ne v0, p1, :cond_48

    #@46
    .line 505
    const-class p1, Ljava/lang/Void;

    #@48
    :cond_48
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 529
    instance-of v0, p1, Lcom/blankj/utilcode/util/ReflectUtils;

    #@2
    if-eqz v0, :cond_14

    #@4
    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    #@6
    check-cast p1, Lcom/blankj/utilcode/util/ReflectUtils;

    #@8
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@f
    move-result p1

    #@10
    if-eqz p1, :cond_14

    #@12
    const/4 p1, 0x1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 p1, 0x0

    #@15
    :goto_15
    return p1
.end method

.method public field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 5

    #@0
    .line 204
    :try_start_0
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3
    move-result-object p1

    #@4
    .line 205
    new-instance v0, Lcom/blankj/utilcode/util/ReflectUtils;

    #@6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    #@c
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    invoke-direct {v0, v1, p1}, Lcom/blankj/utilcode/util/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    return-object v0

    #@14
    :catch_14
    move-exception p1

    #@15
    .line 207
    new-instance v0, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    #@17
    invoke-direct {v0, p1}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v0
.end method

.method public field(Ljava/lang/String;Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 4

    #@0
    .line 220
    :try_start_0
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3
    move-result-object p1

    #@4
    .line 221
    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    #@6
    invoke-direct {p0, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p2

    #@a
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    #@d
    return-object p0

    #@e
    :catch_e
    move-exception p1

    #@f
    .line 224
    new-instance p2, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    #@11
    invoke-direct {p2, p1}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    #@14
    throw p2
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    #@0
    .line 519
    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 524
    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    .line 278
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;
        }
    .end annotation

    #@0
    .line 290
    invoke-direct {p0, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->getArgsType([Ljava/lang/Object;)[Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 292
    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@7
    move-result-object v1

    #@8
    .line 293
    iget-object v2, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    #@a
    invoke-direct {p0, v1, v2, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    #@d
    move-result-object p1
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_e} :catch_f

    #@e
    return-object p1

    #@f
    .line 296
    :catch_f
    :try_start_f
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@12
    move-result-object p1

    #@13
    .line 297
    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    #@15
    invoke-direct {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    #@18
    move-result-object p1
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_19} :catch_1a

    #@19
    return-object p1

    #@1a
    :catch_1a
    move-exception p1

    #@1b
    .line 299
    new-instance p2, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    #@1d
    invoke-direct {p2, p1}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    #@20
    throw p2
.end method

.method public newInstance()Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    .line 120
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public varargs newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    .registers 11

    #@0
    .line 130
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->getArgsType([Ljava/lang/Object;)[Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 132
    :try_start_4
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->type()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@b
    move-result-object v1

    #@c
    .line 133
    invoke-direct {p0, v1, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    #@f
    move-result-object p1
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_10} :catch_11

    #@10
    return-object p1

    #@11
    :catch_11
    move-exception v1

    #@12
    .line 135
    new-instance v2, Ljava/util/ArrayList;

    #@14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@17
    .line 136
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->type()Ljava/lang/Class;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    #@1e
    move-result-object v3

    #@1f
    array-length v4, v3

    #@20
    const/4 v5, 0x0

    #@21
    move v6, v5

    #@22
    :goto_22
    if-ge v6, v4, :cond_36

    #@24
    aget-object v7, v3, v6

    #@26
    .line 137
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@29
    move-result-object v8

    #@2a
    invoke-direct {p0, v8, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    #@2d
    move-result v8

    #@2e
    if-eqz v8, :cond_33

    #@30
    .line 138
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    :cond_33
    add-int/lit8 v6, v6, 0x1

    #@35
    goto :goto_22

    #@36
    .line 141
    :cond_36
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_4a

    #@3c
    .line 144
    invoke-direct {p0, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->sortConstructors(Ljava/util/List;)V

    #@3f
    .line 145
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Ljava/lang/reflect/Constructor;

    #@45
    invoke-direct {p0, v0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    #@48
    move-result-object p1

    #@49
    return-object p1

    #@4a
    .line 142
    :cond_4a
    new-instance p1, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;

    #@4c
    invoke-direct {p1, v1}, Lcom/blankj/utilcode/util/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    #@4f
    throw p1
.end method

.method public proxy(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    #@0
    .line 434
    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Ljava/util/Map;

    #@4
    .line 435
    new-instance v1, Lcom/blankj/utilcode/util/ReflectUtils$3;

    #@6
    invoke-direct {v1, p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils$3;-><init>(Lcom/blankj/utilcode/util/ReflectUtils;Z)V

    #@9
    .line 460
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@c
    move-result-object v0

    #@d
    const/4 v2, 0x1

    #@e
    new-array v2, v2, [Ljava/lang/Class;

    #@10
    const/4 v3, 0x0

    #@11
    aput-object p1, v2, v3

    #@13
    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 534
    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils;->object:Ljava/lang/Object;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

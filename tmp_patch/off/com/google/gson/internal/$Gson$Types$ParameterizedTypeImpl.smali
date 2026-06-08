.class final Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/$Gson$Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParameterizedTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;

.field private final typeArguments:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 8

    #@0
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 467
    instance-of v0, p2, Ljava/lang/Class;

    #@5
    const/4 v1, 0x0

    #@6
    if-eqz v0, :cond_29

    #@8
    .line 468
    move-object v0, p2

    #@9
    check-cast v0, Ljava/lang/Class;

    #@b
    .line 469
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    #@e
    move-result v2

    #@f
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@12
    move-result v2

    #@13
    const/4 v3, 0x1

    #@14
    if-nez v2, :cond_1f

    #@16
    .line 470
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    #@19
    move-result-object v0

    #@1a
    if-nez v0, :cond_1d

    #@1c
    goto :goto_1f

    #@1d
    :cond_1d
    move v0, v1

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    :goto_1f
    move v0, v3

    #@20
    :goto_20
    if-nez p1, :cond_26

    #@22
    if-eqz v0, :cond_25

    #@24
    goto :goto_26

    #@25
    :cond_25
    move v3, v1

    #@26
    .line 471
    :cond_26
    :goto_26
    invoke-static {v3}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    #@29
    :cond_29
    if-nez p1, :cond_2d

    #@2b
    const/4 p1, 0x0

    #@2c
    goto :goto_31

    #@2d
    .line 474
    :cond_2d
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@30
    move-result-object p1

    #@31
    :goto_31
    iput-object p1, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    #@33
    .line 475
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@36
    move-result-object p1

    #@37
    iput-object p1, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    #@39
    .line 476
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    #@3c
    move-result-object p1

    #@3d
    check-cast p1, [Ljava/lang/reflect/Type;

    #@3f
    iput-object p1, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    #@41
    .line 477
    array-length p1, p1

    #@42
    :goto_42
    if-ge v1, p1, :cond_5f

    #@44
    .line 478
    iget-object p2, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    #@46
    aget-object p2, p2, v1

    #@48
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 479
    iget-object p2, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    #@4d
    aget-object p2, p2, v1

    #@4f
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    #@52
    .line 480
    iget-object p2, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    #@54
    aget-object p3, p2, v1

    #@56
    invoke-static {p3}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@59
    move-result-object p3

    #@5a
    aput-object p3, p2, v1

    #@5c
    add-int/lit8 v1, v1, 0x1

    #@5e
    goto :goto_42

    #@5f
    :cond_5f
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 497
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    #@2
    if-eqz v0, :cond_e

    #@4
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    #@6
    .line 498
    invoke-static {p0, p1}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    return p1
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    #@0
    .line 485
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    #@2
    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/reflect/Type;

    #@8
    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    #@0
    .line 493
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    #@2
    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .registers 2

    #@0
    .line 489
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    .line 502
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    #@8
    .line 503
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    iget-object v1, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    #@f
    .line 504
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Types;->hashCodeOrZero(Ljava/lang/Object;)I

    #@12
    move-result v1

    #@13
    xor-int/2addr v0, v1

    #@14
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    .line 508
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    #@2
    array-length v0, v0

    #@3
    if-nez v0, :cond_c

    #@5
    .line 510
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    #@7
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 513
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    add-int/lit8 v2, v0, 0x1

    #@10
    mul-int/lit8 v2, v2, 0x1e

    #@12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@15
    .line 514
    iget-object v2, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    #@17
    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string v3, "<"

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    iget-object v3, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    #@27
    const/4 v4, 0x0

    #@28
    aget-object v3, v3, v4

    #@2a
    invoke-static {v3}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    const/4 v2, 0x1

    #@32
    :goto_32
    if-ge v2, v0, :cond_48

    #@34
    const-string v3, ", "

    #@36
    .line 516
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    iget-object v4, p0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    #@3c
    aget-object v4, v4, v2

    #@3e
    invoke-static {v4}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_32

    #@48
    :cond_48
    const-string v0, ">"

    #@4a
    .line 518
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    return-object v0
.end method

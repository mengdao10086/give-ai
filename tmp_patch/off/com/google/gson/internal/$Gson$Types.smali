.class public final Lcom/google/gson/internal/$Gson$Types;
.super Ljava/lang/Object;
.source "$Gson$Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;,
        Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;,
        Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;
    }
.end annotation


# static fields
.field static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/reflect/Type;

    #@3
    .line 40
    sput-object v0, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    #@5
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@8
    throw v0
.end method

.method public static arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .registers 2

    #@0
    .line 64
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    #@2
    invoke-direct {v0, p0}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    #@5
    return-object v0
.end method

.method public static canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4

    #@0
    .line 104
    instance-of v0, p0, Ljava/lang/Class;

    #@2
    if-eqz v0, :cond_1d

    #@4
    .line 105
    check-cast p0, Ljava/lang/Class;

    #@6
    .line 106
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1a

    #@c
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    #@e
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@11
    move-result-object p0

    #@12
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@15
    move-result-object p0

    #@16
    invoke-direct {v0, p0}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    #@19
    move-object p0, v0

    #@1a
    :cond_1a
    check-cast p0, Ljava/lang/reflect/Type;

    #@1c
    return-object p0

    #@1d
    .line 108
    :cond_1d
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    #@1f
    if-eqz v0, :cond_35

    #@21
    .line 109
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    #@23
    .line 110
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    #@25
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    #@28
    move-result-object v1

    #@29
    .line 111
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@30
    move-result-object p0

    #@31
    invoke-direct {v0, v1, v2, p0}, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    #@34
    return-object v0

    #@35
    .line 113
    :cond_35
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    #@37
    if-eqz v0, :cond_45

    #@39
    .line 114
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    #@3b
    .line 115
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    #@3d
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@40
    move-result-object p0

    #@41
    invoke-direct {v0, p0}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    #@44
    return-object v0

    #@45
    .line 117
    :cond_45
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    #@47
    if-eqz v0, :cond_59

    #@49
    .line 118
    check-cast p0, Ljava/lang/reflect/WildcardType;

    #@4b
    .line 119
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    #@4d
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    #@50
    move-result-object v1

    #@51
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    #@54
    move-result-object p0

    #@55
    invoke-direct {v0, v1, p0}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    #@58
    return-object v0

    #@59
    :cond_59
    return-object p0
.end method

.method static checkNotPrimitive(Ljava/lang/reflect/Type;)V
    .registers 2

    #@0
    .line 457
    instance-of v0, p0, Ljava/lang/Class;

    #@2
    if-eqz v0, :cond_f

    #@4
    check-cast p0, Ljava/lang/Class;

    #@6
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    #@9
    move-result p0

    #@a
    if-nez p0, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 p0, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 p0, 0x1

    #@10
    :goto_10
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    #@13
    return-void
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    #@0
    .line 450
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    #@3
    move-result-object p0

    #@4
    .line 451
    instance-of v0, p0, Ljava/lang/Class;

    #@6
    if-eqz v0, :cond_b

    #@8
    check-cast p0, Ljava/lang/Class;

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    :goto_c
    return-object p0
.end method

.method static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    #@0
    if-eq p0, p1, :cond_d

    #@2
    if-eqz p0, :cond_b

    #@4
    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result p0

    #@8
    if-eqz p0, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 p0, 0x1

    #@e
    :goto_e
    return p0
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 173
    :cond_4
    instance-of v1, p0, Ljava/lang/Class;

    #@6
    if-eqz v1, :cond_d

    #@8
    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result p0

    #@c
    return p0

    #@d
    .line 177
    :cond_d
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    #@f
    const/4 v2, 0x0

    #@10
    if-eqz v1, :cond_48

    #@12
    .line 178
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    #@14
    if-nez v1, :cond_17

    #@16
    return v2

    #@17
    .line 183
    :cond_17
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    #@19
    .line 184
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    #@1b
    .line 185
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    #@1e
    move-result-object v1

    #@1f
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    #@22
    move-result-object v3

    #@23
    invoke-static {v1, v3}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_46

    #@29
    .line 186
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@2c
    move-result-object v1

    #@2d
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_46

    #@37
    .line 187
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@3a
    move-result-object p0

    #@3b
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@3e
    move-result-object p1

    #@3f
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@42
    move-result p0

    #@43
    if-eqz p0, :cond_46

    #@45
    goto :goto_47

    #@46
    :cond_46
    move v0, v2

    #@47
    :goto_47
    return v0

    #@48
    .line 189
    :cond_48
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    #@4a
    if-eqz v1, :cond_62

    #@4c
    .line 190
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    #@4e
    if-nez v0, :cond_51

    #@50
    return v2

    #@51
    .line 194
    :cond_51
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    #@53
    .line 195
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    #@55
    .line 196
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@58
    move-result-object p0

    #@59
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@5c
    move-result-object p1

    #@5d
    invoke-static {p0, p1}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    #@60
    move-result p0

    #@61
    return p0

    #@62
    .line 198
    :cond_62
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    #@64
    if-eqz v1, :cond_8e

    #@66
    .line 199
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    #@68
    if-nez v1, :cond_6b

    #@6a
    return v2

    #@6b
    .line 203
    :cond_6b
    check-cast p0, Ljava/lang/reflect/WildcardType;

    #@6d
    .line 204
    check-cast p1, Ljava/lang/reflect/WildcardType;

    #@6f
    .line 205
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    #@72
    move-result-object v1

    #@73
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    #@76
    move-result-object v3

    #@77
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@7a
    move-result v1

    #@7b
    if-eqz v1, :cond_8c

    #@7d
    .line 206
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    #@80
    move-result-object p0

    #@81
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    #@84
    move-result-object p1

    #@85
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@88
    move-result p0

    #@89
    if-eqz p0, :cond_8c

    #@8b
    goto :goto_8d

    #@8c
    :cond_8c
    move v0, v2

    #@8d
    :goto_8d
    return v0

    #@8e
    .line 208
    :cond_8e
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    #@90
    if-eqz v1, :cond_b6

    #@92
    .line 209
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    #@94
    if-nez v1, :cond_97

    #@96
    return v2

    #@97
    .line 212
    :cond_97
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    #@99
    .line 213
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    #@9b
    .line 214
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    #@9e
    move-result-object v1

    #@9f
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    #@a2
    move-result-object v3

    #@a3
    if-ne v1, v3, :cond_b4

    #@a5
    .line 215
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    #@a8
    move-result-object p0

    #@a9
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    #@ac
    move-result-object p1

    #@ad
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result p0

    #@b1
    if-eqz p0, :cond_b4

    #@b3
    goto :goto_b5

    #@b4
    :cond_b4
    move v0, v2

    #@b5
    :goto_b5
    return v0

    #@b6
    :cond_b6
    return v2
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2

    #@0
    .line 292
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    #@6
    .line 293
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@9
    move-result-object p0

    #@a
    goto :goto_11

    #@b
    :cond_b
    check-cast p0, Ljava/lang/Class;

    #@d
    .line 294
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@10
    move-result-object p0

    #@11
    :goto_11
    return-object p0
.end method

.method public static getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    #@0
    .line 302
    const-class v0, Ljava/util/Collection;

    #@2
    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    #@5
    move-result-object p0

    #@6
    .line 304
    instance-of p1, p0, Ljava/lang/reflect/WildcardType;

    #@8
    const/4 v0, 0x0

    #@9
    if-eqz p1, :cond_13

    #@b
    .line 305
    check-cast p0, Ljava/lang/reflect/WildcardType;

    #@d
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    #@10
    move-result-object p0

    #@11
    aget-object p0, p0, v0

    #@13
    .line 307
    :cond_13
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    #@15
    if-eqz p1, :cond_20

    #@17
    .line 308
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    #@19
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@1c
    move-result-object p0

    #@1d
    aget-object p0, p0, v0

    #@1f
    return-object p0

    #@20
    .line 310
    :cond_20
    const-class p0, Ljava/lang/Object;

    #@22
    return-object p0
.end method

.method static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    #@0
    if-ne p2, p1, :cond_3

    #@2
    return-object p0

    #@3
    .line 242
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    #@6
    move-result p0

    #@7
    if-eqz p0, :cond_32

    #@9
    .line 243
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@c
    move-result-object p0

    #@d
    .line 244
    array-length v0, p0

    #@e
    const/4 v1, 0x0

    #@f
    :goto_f
    if-ge v1, v0, :cond_32

    #@11
    .line 245
    aget-object v2, p0, v1

    #@13
    if-ne v2, p2, :cond_1c

    #@15
    .line 246
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    #@18
    move-result-object p0

    #@19
    aget-object p0, p0, v1

    #@1b
    return-object p0

    #@1c
    .line 247
    :cond_1c
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_2f

    #@22
    .line 248
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    #@25
    move-result-object p1

    #@26
    aget-object p1, p1, v1

    #@28
    aget-object p0, p0, v1

    #@2a
    invoke-static {p1, p0, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    #@2d
    move-result-object p0

    #@2e
    return-object p0

    #@2f
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_f

    #@32
    .line 254
    :cond_32
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    #@35
    move-result p0

    #@36
    if-nez p0, :cond_58

    #@38
    .line 255
    :goto_38
    const-class p0, Ljava/lang/Object;

    #@3a
    if-eq p1, p0, :cond_58

    #@3c
    .line 256
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@3f
    move-result-object p0

    #@40
    if-ne p0, p2, :cond_47

    #@42
    .line 258
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    #@45
    move-result-object p0

    #@46
    return-object p0

    #@47
    .line 259
    :cond_47
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_56

    #@4d
    .line 260
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    #@50
    move-result-object p1

    #@51
    invoke-static {p1, p0, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    #@54
    move-result-object p0

    #@55
    return-object p0

    #@56
    :cond_56
    move-object p1, p0

    #@57
    goto :goto_38

    #@58
    :cond_58
    return-object p2
.end method

.method public static getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    #@0
    .line 323
    const-class v0, Ljava/util/Properties;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x2

    #@5
    if-ne p0, v0, :cond_12

    #@7
    new-array p0, v3, [Ljava/lang/reflect/Type;

    #@9
    .line 324
    const-class p1, Ljava/lang/String;

    #@b
    aput-object p1, p0, v2

    #@d
    const-class p1, Ljava/lang/String;

    #@f
    aput-object p1, p0, v1

    #@11
    return-object p0

    #@12
    .line 327
    :cond_12
    const-class v0, Ljava/util/Map;

    #@14
    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    #@17
    move-result-object p0

    #@18
    .line 329
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    #@1a
    if-eqz p1, :cond_23

    #@1c
    .line 330
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    #@1e
    .line 331
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@21
    move-result-object p0

    #@22
    return-object p0

    #@23
    :cond_23
    new-array p0, v3, [Ljava/lang/reflect/Type;

    #@25
    .line 333
    const-class p1, Ljava/lang/Object;

    #@27
    aput-object p1, p0, v2

    #@29
    const-class p1, Ljava/lang/Object;

    #@2b
    aput-object p1, p0, v1

    #@2d
    return-object p0
.end method

.method public static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    #@0
    .line 128
    instance-of v0, p0, Ljava/lang/Class;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 130
    check-cast p0, Ljava/lang/Class;

    #@6
    return-object p0

    #@7
    .line 132
    :cond_7
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    #@9
    if-eqz v0, :cond_19

    #@b
    .line 133
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    #@d
    .line 138
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@10
    move-result-object p0

    #@11
    .line 139
    instance-of v0, p0, Ljava/lang/Class;

    #@13
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    #@16
    .line 140
    check-cast p0, Ljava/lang/Class;

    #@18
    return-object p0

    #@19
    .line 142
    :cond_19
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    #@1b
    const/4 v1, 0x0

    #@1c
    if-eqz v0, :cond_31

    #@1e
    .line 143
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    #@20
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@23
    move-result-object p0

    #@24
    .line 144
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    #@27
    move-result-object p0

    #@28
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@2b
    move-result-object p0

    #@2c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2f
    move-result-object p0

    #@30
    return-object p0

    #@31
    .line 146
    :cond_31
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    #@33
    if-eqz v0, :cond_38

    #@35
    .line 149
    const-class p0, Ljava/lang/Object;

    #@37
    return-object p0

    #@38
    .line 151
    :cond_38
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    #@3a
    if-eqz v0, :cond_49

    #@3c
    .line 152
    check-cast p0, Ljava/lang/reflect/WildcardType;

    #@3e
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    #@41
    move-result-object p0

    #@42
    aget-object p0, p0, v1

    #@44
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    #@47
    move-result-object p0

    #@48
    return-object p0

    #@49
    :cond_49
    if-nez p0, :cond_4e

    #@4b
    const-string v0, "null"

    #@4d
    goto :goto_56

    #@4e
    .line 155
    :cond_4e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    .line 156
    :goto_56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@58
    new-instance v2, Ljava/lang/StringBuilder;

    #@5a
    const-string v3, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    #@5c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object p0

    #@63
    const-string v2, "> is of type "

    #@65
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object p0

    #@69
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object p0

    #@6d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object p0

    #@71
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@74
    throw v1
.end method

.method static getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    #@0
    .line 278
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    #@2
    if-eqz v0, :cond_d

    #@4
    .line 280
    check-cast p0, Ljava/lang/reflect/WildcardType;

    #@6
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    #@9
    move-result-object p0

    #@a
    const/4 v0, 0x0

    #@b
    aget-object p0, p0, v0

    #@d
    .line 282
    :cond_d
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@10
    move-result v0

    #@11
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    #@14
    .line 284
    invoke-static {p0, p1, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    #@17
    move-result-object p2

    #@18
    .line 283
    invoke-static {p0, p1, p2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@1b
    move-result-object p0

    #@1c
    return-object p0
.end method

.method static hashCodeOrZero(Ljava/lang/Object;)I
    .registers 1

    #@0
    if-eqz p0, :cond_7

    #@2
    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result p0

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p0, 0x0

    #@8
    :goto_8
    return p0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    #@0
    .line 437
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    :goto_2
    if-ge v1, v0, :cond_10

    #@4
    .line 438
    aget-object v2, p0, v1

    #@6
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_d

    #@c
    return v1

    #@d
    :cond_d
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_2

    #@10
    .line 442
    :cond_10
    new-instance p0, Ljava/util/NoSuchElementException;

    #@12
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    #@15
    throw p0
.end method

.method public static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 4

    #@0
    .line 54
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    #@5
    return-object v0
.end method

.method public static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    #@0
    .line 337
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    invoke-static {p0, p1, p2, v0}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method private static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/TypeVariable;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    #@0
    .line 344
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    #@2
    if-eqz v0, :cond_18

    #@4
    .line 345
    move-object v0, p2

    #@5
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    #@7
    .line 346
    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_e

    #@d
    return-object p2

    #@e
    .line 350
    :cond_e
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@11
    .line 352
    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    #@14
    move-result-object p2

    #@15
    if-ne p2, v0, :cond_0

    #@17
    return-object p2

    #@18
    .line 357
    :cond_18
    instance-of v0, p2, Ljava/lang/Class;

    #@1a
    if-eqz v0, :cond_35

    #@1c
    move-object v0, p2

    #@1d
    check-cast v0, Ljava/lang/Class;

    #@1f
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_35

    #@25
    .line 359
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@28
    move-result-object p2

    #@29
    .line 360
    invoke-static {p0, p1, p2, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    #@2c
    move-result-object p0

    #@2d
    if-ne p2, p0, :cond_30

    #@2f
    goto :goto_34

    #@30
    .line 363
    :cond_30
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    #@33
    move-result-object v0

    #@34
    :goto_34
    return-object v0

    #@35
    .line 365
    :cond_35
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    #@37
    if-eqz v0, :cond_4b

    #@39
    .line 366
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    #@3b
    .line 367
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    #@3e
    move-result-object v0

    #@3f
    .line 368
    invoke-static {p0, p1, v0, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    #@42
    move-result-object p0

    #@43
    if-ne v0, p0, :cond_46

    #@45
    goto :goto_4a

    #@46
    .line 371
    :cond_46
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    #@49
    move-result-object p2

    #@4a
    :goto_4a
    return-object p2

    #@4b
    .line 373
    :cond_4b
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    #@4d
    const/4 v1, 0x1

    #@4e
    const/4 v2, 0x0

    #@4f
    if-eqz v0, :cond_8b

    #@51
    .line 374
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    #@53
    .line 375
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    #@56
    move-result-object v0

    #@57
    .line 376
    invoke-static {p0, p1, v0, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    #@5a
    move-result-object v3

    #@5b
    if-eq v3, v0, :cond_5f

    #@5d
    move v0, v1

    #@5e
    goto :goto_60

    #@5f
    :cond_5f
    move v0, v2

    #@60
    .line 379
    :goto_60
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@63
    move-result-object v4

    #@64
    .line 380
    array-length v5, v4

    #@65
    :goto_65
    if-ge v2, v5, :cond_80

    #@67
    .line 381
    aget-object v6, v4, v2

    #@69
    invoke-static {p0, p1, v6, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    #@6c
    move-result-object v6

    #@6d
    .line 382
    aget-object v7, v4, v2

    #@6f
    if-eq v6, v7, :cond_7d

    #@71
    if-nez v0, :cond_7b

    #@73
    .line 384
    invoke-virtual {v4}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    #@76
    move-result-object v0

    #@77
    move-object v4, v0

    #@78
    check-cast v4, [Ljava/lang/reflect/Type;

    #@7a
    move v0, v1

    #@7b
    .line 387
    :cond_7b
    aput-object v6, v4, v2

    #@7d
    :cond_7d
    add-int/lit8 v2, v2, 0x1

    #@7f
    goto :goto_65

    #@80
    :cond_80
    if-eqz v0, :cond_8a

    #@82
    .line 392
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    #@85
    move-result-object p0

    #@86
    invoke-static {v3, p0, v4}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    #@89
    move-result-object p2

    #@8a
    :cond_8a
    return-object p2

    #@8b
    .line 395
    :cond_8b
    instance-of v0, p2, Ljava/lang/reflect/WildcardType;

    #@8d
    if-eqz v0, :cond_bd

    #@8f
    .line 396
    check-cast p2, Ljava/lang/reflect/WildcardType;

    #@91
    .line 397
    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    #@94
    move-result-object v0

    #@95
    .line 398
    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    #@98
    move-result-object v3

    #@99
    .line 400
    array-length v4, v0

    #@9a
    if-ne v4, v1, :cond_ab

    #@9c
    .line 401
    aget-object v1, v0, v2

    #@9e
    invoke-static {p0, p1, v1, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    #@a1
    move-result-object p0

    #@a2
    .line 402
    aget-object p1, v0, v2

    #@a4
    if-eq p0, p1, :cond_bd

    #@a6
    .line 403
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    #@a9
    move-result-object p0

    #@aa
    return-object p0

    #@ab
    .line 405
    :cond_ab
    array-length v0, v3

    #@ac
    if-ne v0, v1, :cond_bd

    #@ae
    .line 406
    aget-object v0, v3, v2

    #@b0
    invoke-static {p0, p1, v0, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/reflect/Type;

    #@b3
    move-result-object p0

    #@b4
    .line 407
    aget-object p1, v3, v2

    #@b6
    if-eq p0, p1, :cond_bd

    #@b8
    .line 408
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    #@bb
    move-result-object p0

    #@bc
    return-object p0

    #@bd
    :cond_bd
    return-object p2
.end method

.method static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    #@0
    .line 420
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-object p2

    #@7
    .line 427
    :cond_7
    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    #@a
    move-result-object p0

    #@b
    .line 428
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    #@d
    if-eqz p1, :cond_20

    #@f
    .line 429
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    #@12
    move-result-object p1

    #@13
    invoke-static {p1, p2}, Lcom/google/gson/internal/$Gson$Types;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    #@16
    move-result p1

    #@17
    .line 430
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    #@19
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@1c
    move-result-object p0

    #@1d
    aget-object p0, p0, p1

    #@1f
    return-object p0

    #@20
    :cond_20
    return-object p2
.end method

.method public static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 3

    #@0
    .line 75
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 76
    check-cast p0, Ljava/lang/reflect/WildcardType;

    #@6
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    #@9
    move-result-object p0

    #@a
    goto :goto_12

    #@b
    :cond_b
    const/4 v0, 0x1

    #@c
    new-array v0, v0, [Ljava/lang/reflect/Type;

    #@e
    const/4 v1, 0x0

    #@f
    aput-object p0, v0, v1

    #@11
    move-object p0, v0

    #@12
    .line 80
    :goto_12
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    #@14
    sget-object v1, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    #@16
    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    #@19
    return-object v0
.end method

.method public static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 5

    #@0
    .line 90
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 91
    check-cast p0, Ljava/lang/reflect/WildcardType;

    #@8
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    #@b
    move-result-object p0

    #@c
    goto :goto_12

    #@d
    :cond_d
    new-array v0, v2, [Ljava/lang/reflect/Type;

    #@f
    aput-object p0, v0, v1

    #@11
    move-object p0, v0

    #@12
    .line 95
    :goto_12
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    #@14
    new-array v2, v2, [Ljava/lang/reflect/Type;

    #@16
    const-class v3, Ljava/lang/Object;

    #@18
    aput-object v3, v2, v1

    #@1a
    invoke-direct {v0, v2, p0}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    #@1d
    return-object v0
.end method

.method public static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 2

    #@0
    .line 228
    instance-of v0, p0, Ljava/lang/Class;

    #@2
    if-eqz v0, :cond_b

    #@4
    check-cast p0, Ljava/lang/Class;

    #@6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    goto :goto_f

    #@b
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    :goto_f
    return-object p0
.end method

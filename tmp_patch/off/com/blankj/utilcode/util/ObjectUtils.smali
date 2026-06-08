.class public final Lcom/blankj/utilcode/util/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    #@0
    if-ne p0, p1, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_8

    #@4
    .line 198
    :cond_4
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@7
    move-result p0

    #@8
    :goto_8
    return p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    #@0
    if-eq p0, p1, :cond_d

    #@2
    if-eqz p0, :cond_b

    #@4
    .line 188
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

.method public static getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_3

    #@2
    return-object p1

    #@3
    :cond_3
    return-object p0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 1

    #@0
    if-eqz p0, :cond_7

    #@2
    .line 270
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

.method public static varargs hashCodes([Ljava/lang/Object;)I
    .registers 1

    #@0
    .line 277
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isEmpty(Landroid/util/LongSparseArray;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 124
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    #@5
    move-result p0

    #@6
    if-nez p0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method

.method public static isEmpty(Landroid/util/SparseArray;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 102
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    #@5
    move-result p0

    #@6
    if-nez p0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method

.method public static isEmpty(Landroid/util/SparseBooleanArray;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 106
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    #@5
    move-result p0

    #@6
    if-nez p0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method

.method public static isEmpty(Landroid/util/SparseIntArray;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 110
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    #@5
    move-result p0

    #@6
    if-nez p0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method

.method public static isEmpty(Landroid/util/SparseLongArray;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 119
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    #@5
    move-result p0

    #@6
    if-nez p0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method

.method public static isEmpty(Landroidx/collection/LongSparseArray;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 114
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    #@5
    move-result p0

    #@6
    if-nez p0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method

.method public static isEmpty(Landroidx/collection/SimpleArrayMap;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 98
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    #@5
    move-result p0

    #@6
    if-eqz p0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_f

    #@2
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

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
    return p0
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    .line 44
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_15

    #@e
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_15

    #@14
    return v0

    #@15
    .line 47
    :cond_15
    instance-of v1, p0, Ljava/lang/CharSequence;

    #@17
    if-eqz v1, :cond_24

    #@19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_24

    #@23
    return v0

    #@24
    .line 50
    :cond_24
    instance-of v1, p0, Ljava/util/Collection;

    #@26
    if-eqz v1, :cond_32

    #@28
    move-object v1, p0

    #@29
    check-cast v1, Ljava/util/Collection;

    #@2b
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_32

    #@31
    return v0

    #@32
    .line 53
    :cond_32
    instance-of v1, p0, Ljava/util/Map;

    #@34
    if-eqz v1, :cond_40

    #@36
    move-object v1, p0

    #@37
    check-cast v1, Ljava/util/Map;

    #@39
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_40

    #@3f
    return v0

    #@40
    .line 56
    :cond_40
    instance-of v1, p0, Landroidx/collection/SimpleArrayMap;

    #@42
    if-eqz v1, :cond_4e

    #@44
    move-object v1, p0

    #@45
    check-cast v1, Landroidx/collection/SimpleArrayMap;

    #@47
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_4e

    #@4d
    return v0

    #@4e
    .line 59
    :cond_4e
    instance-of v1, p0, Landroid/util/SparseArray;

    #@50
    if-eqz v1, :cond_5c

    #@52
    move-object v1, p0

    #@53
    check-cast v1, Landroid/util/SparseArray;

    #@55
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@58
    move-result v1

    #@59
    if-nez v1, :cond_5c

    #@5b
    return v0

    #@5c
    .line 62
    :cond_5c
    instance-of v1, p0, Landroid/util/SparseBooleanArray;

    #@5e
    if-eqz v1, :cond_6a

    #@60
    move-object v1, p0

    #@61
    check-cast v1, Landroid/util/SparseBooleanArray;

    #@63
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    #@66
    move-result v1

    #@67
    if-nez v1, :cond_6a

    #@69
    return v0

    #@6a
    .line 65
    :cond_6a
    instance-of v1, p0, Landroid/util/SparseIntArray;

    #@6c
    if-eqz v1, :cond_78

    #@6e
    move-object v1, p0

    #@6f
    check-cast v1, Landroid/util/SparseIntArray;

    #@71
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    #@74
    move-result v1

    #@75
    if-nez v1, :cond_78

    #@77
    return v0

    #@78
    .line 69
    :cond_78
    instance-of v1, p0, Landroid/util/SparseLongArray;

    #@7a
    if-eqz v1, :cond_86

    #@7c
    move-object v1, p0

    #@7d
    check-cast v1, Landroid/util/SparseLongArray;

    #@7f
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    #@82
    move-result v1

    #@83
    if-nez v1, :cond_86

    #@85
    return v0

    #@86
    .line 73
    :cond_86
    instance-of v1, p0, Landroidx/collection/LongSparseArray;

    #@88
    if-eqz v1, :cond_94

    #@8a
    move-object v1, p0

    #@8b
    check-cast v1, Landroidx/collection/LongSparseArray;

    #@8d
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    #@90
    move-result v1

    #@91
    if-nez v1, :cond_94

    #@93
    return v0

    #@94
    .line 77
    :cond_94
    instance-of v1, p0, Landroid/util/LongSparseArray;

    #@96
    if-eqz v1, :cond_a1

    #@98
    check-cast p0, Landroid/util/LongSparseArray;

    #@9a
    .line 78
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    #@9d
    move-result p0

    #@9e
    if-nez p0, :cond_a1

    #@a0
    return v0

    #@a1
    :cond_a1
    const/4 p0, 0x0

    #@a2
    return p0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 90
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    #@5
    move-result p0

    #@6
    if-eqz p0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 94
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result p0

    #@6
    if-eqz p0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method

.method public static isNotEmpty(Landroid/util/LongSparseArray;)Z
    .registers 1

    #@0
    .line 177
    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroid/util/LongSparseArray;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isNotEmpty(Landroid/util/SparseArray;)Z
    .registers 1

    #@0
    .line 155
    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroid/util/SparseArray;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isNotEmpty(Landroid/util/SparseBooleanArray;)Z
    .registers 1

    #@0
    .line 159
    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroid/util/SparseBooleanArray;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isNotEmpty(Landroid/util/SparseIntArray;)Z
    .registers 1

    #@0
    .line 163
    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroid/util/SparseIntArray;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isNotEmpty(Landroid/util/SparseLongArray;)Z
    .registers 1

    #@0
    .line 172
    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroid/util/SparseLongArray;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isNotEmpty(Landroidx/collection/LongSparseArray;)Z
    .registers 1

    #@0
    .line 167
    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroidx/collection/LongSparseArray;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isNotEmpty(Landroidx/collection/SimpleArrayMap;)Z
    .registers 1

    #@0
    .line 151
    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroidx/collection/SimpleArrayMap;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .registers 1

    #@0
    .line 139
    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isNotEmpty(Ljava/lang/Object;)Z
    .registers 1

    #@0
    .line 134
    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Ljava/lang/Object;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isNotEmpty(Ljava/util/Collection;)Z
    .registers 1

    #@0
    .line 143
    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Ljava/util/Collection;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isNotEmpty(Ljava/util/Map;)Z
    .registers 1

    #@0
    .line 147
    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Ljava/util/Map;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    return-object p0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_3

    #@2
    return-object p0

    #@3
    .line 214
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@8
    throw p0
.end method

.method public static varargs requireNonNulls([Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    .line 226
    array-length v0, p0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_f

    #@7
    aget-object v2, p0, v1

    #@9
    .line 227
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_5

    #@f
    :cond_f
    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    #@0
    .line 251
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    if-eqz p0, :cond_6

    #@2
    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    :cond_6
    return-object p1
.end method

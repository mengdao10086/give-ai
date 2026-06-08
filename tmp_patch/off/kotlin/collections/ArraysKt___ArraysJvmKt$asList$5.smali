.class public final Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;
.super Lkotlin/collections/AbstractList;
.source "_ArraysJvm.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([F)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Ljava/lang/Float;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_ArraysJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt$asList$5\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,3420:1\n12794#2,2:3421\n1687#2,6:3423\n1795#2,6:3429\n*S KotlinDebug\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt$asList$5\n*L\n199#1:3421,2\n201#1:3423,6\n202#1:3429,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H\u0096\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u0008\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "kotlin/collections/ArraysKt___ArraysJvmKt$asList$5",
        "Lkotlin/collections/AbstractList;",
        "",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "size",
        "",
        "getSize",
        "()I",
        "contains",
        "",
        "element",
        "get",
        "index",
        "(I)Ljava/lang/Float;",
        "indexOf",
        "isEmpty",
        "lastIndexOf",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_asList:[F


# direct methods
.method constructor <init>([F)V
    .registers 2

    #@0
    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    #@2
    .line 196
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public contains(F)Z
    .registers 9

    #@0
    .line 199
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    #@2
    .line 3421
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    move v3, v2

    #@5
    :goto_5
    if-ge v3, v1, :cond_1e

    #@7
    aget v4, v0, v3

    #@9
    .line 199
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    #@c
    move-result v4

    #@d
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@10
    move-result v5

    #@11
    const/4 v6, 0x1

    #@12
    if-ne v4, v5, :cond_16

    #@14
    move v4, v6

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v4, v2

    #@17
    :goto_17
    if-eqz v4, :cond_1b

    #@19
    move v2, v6

    #@1a
    goto :goto_1e

    #@1b
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_5

    #@1e
    :cond_1e
    :goto_1e
    return v2
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 196
    instance-of v0, p1, Ljava/lang/Float;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return p1

    #@6
    :cond_6
    check-cast p1, Ljava/lang/Number;

    #@8
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->contains(F)Z

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public get(I)Ljava/lang/Float;
    .registers 3

    #@0
    .line 200
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    #@2
    aget p1, v0, p1

    #@4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    #@0
    .line 196
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->get(I)Ljava/lang/Float;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public getSize()I
    .registers 2

    #@0
    .line 197
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public indexOf(F)I
    .registers 8

    #@0
    .line 201
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    #@2
    .line 3423
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    move v3, v2

    #@5
    :goto_5
    if-ge v3, v1, :cond_1c

    #@7
    .line 3424
    aget v4, v0, v3

    #@9
    .line 201
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    #@c
    move-result v4

    #@d
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@10
    move-result v5

    #@11
    if-ne v4, v5, :cond_15

    #@13
    const/4 v4, 0x1

    #@14
    goto :goto_16

    #@15
    :cond_15
    move v4, v2

    #@16
    :goto_16
    if-eqz v4, :cond_19

    #@18
    goto :goto_1d

    #@19
    :cond_19
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_5

    #@1c
    :cond_1c
    const/4 v3, -0x1

    #@1d
    :goto_1d
    return v3
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 196
    instance-of v0, p1, Ljava/lang/Float;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, -0x1

    #@5
    return p1

    #@6
    :cond_6
    check-cast p1, Ljava/lang/Number;

    #@8
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->indexOf(F)I

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 198
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    #@2
    array-length v0, v0

    #@3
    if-nez v0, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    return v0
.end method

.method public lastIndexOf(F)I
    .registers 8

    #@0
    .line 202
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->$this_asList:[F

    #@2
    .line 3429
    array-length v1, v0

    #@3
    const/4 v2, -0x1

    #@4
    add-int/2addr v1, v2

    #@5
    if-ltz v1, :cond_21

    #@7
    :goto_7
    add-int/lit8 v3, v1, -0x1

    #@9
    .line 3430
    aget v4, v0, v1

    #@b
    .line 202
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    #@e
    move-result v4

    #@f
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@12
    move-result v5

    #@13
    if-ne v4, v5, :cond_17

    #@15
    const/4 v4, 0x1

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 v4, 0x0

    #@18
    :goto_18
    if-eqz v4, :cond_1c

    #@1a
    move v2, v1

    #@1b
    goto :goto_21

    #@1c
    :cond_1c
    if-gez v3, :cond_1f

    #@1e
    goto :goto_21

    #@1f
    :cond_1f
    move v1, v3

    #@20
    goto :goto_7

    #@21
    :cond_21
    :goto_21
    return v2
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 196
    instance-of v0, p1, Ljava/lang/Float;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, -0x1

    #@5
    return p1

    #@6
    :cond_6
    check-cast p1, Ljava/lang/Number;

    #@8
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$5;->lastIndexOf(F)I

    #@f
    move-result p1

    #@10
    return p1
.end method

.class public final Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;
.super Lkotlin/collections/AbstractList;
.source "_ArraysJvm.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([D)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_ArraysJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt$asList$6\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,3420:1\n12804#2,2:3421\n1699#2,6:3423\n1807#2,6:3429\n*S KotlinDebug\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt$asList$6\n*L\n213#1:3421,2\n215#1:3423,6\n216#1:3429,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H\u0096\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u0008\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "kotlin/collections/ArraysKt___ArraysJvmKt$asList$6",
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
        "(I)Ljava/lang/Double;",
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
.field final synthetic $this_asList:[D


# direct methods
.method constructor <init>([D)V
    .registers 2

    #@0
    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->$this_asList:[D

    #@2
    .line 210
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public contains(D)Z
    .registers 11

    #@0
    .line 213
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->$this_asList:[D

    #@2
    .line 3421
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    move v3, v2

    #@5
    :goto_5
    if-ge v3, v1, :cond_20

    #@7
    aget-wide v4, v0, v3

    #@9
    .line 213
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@c
    move-result-wide v4

    #@d
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@10
    move-result-wide v6

    #@11
    cmp-long v4, v4, v6

    #@13
    const/4 v5, 0x1

    #@14
    if-nez v4, :cond_18

    #@16
    move v4, v5

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v4, v2

    #@19
    :goto_19
    if-eqz v4, :cond_1d

    #@1b
    move v2, v5

    #@1c
    goto :goto_20

    #@1d
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    #@1f
    goto :goto_5

    #@20
    :cond_20
    :goto_20
    return v2
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 4

    #@0
    .line 210
    instance-of v0, p1, Ljava/lang/Double;

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
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    #@b
    move-result-wide v0

    #@c
    invoke-virtual {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->contains(D)Z

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public get(I)Ljava/lang/Double;
    .registers 5

    #@0
    .line 214
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->$this_asList:[D

    #@2
    aget-wide v1, v0, p1

    #@4
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    #@0
    .line 210
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->get(I)Ljava/lang/Double;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public getSize()I
    .registers 2

    #@0
    .line 211
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->$this_asList:[D

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public indexOf(D)I
    .registers 11

    #@0
    .line 215
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->$this_asList:[D

    #@2
    .line 3423
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    move v3, v2

    #@5
    :goto_5
    if-ge v3, v1, :cond_1e

    #@7
    .line 3424
    aget-wide v4, v0, v3

    #@9
    .line 215
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@c
    move-result-wide v4

    #@d
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@10
    move-result-wide v6

    #@11
    cmp-long v4, v4, v6

    #@13
    if-nez v4, :cond_17

    #@15
    const/4 v4, 0x1

    #@16
    goto :goto_18

    #@17
    :cond_17
    move v4, v2

    #@18
    :goto_18
    if-eqz v4, :cond_1b

    #@1a
    goto :goto_1f

    #@1b
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_5

    #@1e
    :cond_1e
    const/4 v3, -0x1

    #@1f
    :goto_1f
    return v3
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 4

    #@0
    .line 210
    instance-of v0, p1, Ljava/lang/Double;

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
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    #@b
    move-result-wide v0

    #@c
    invoke-virtual {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->indexOf(D)I

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 212
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->$this_asList:[D

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

.method public lastIndexOf(D)I
    .registers 11

    #@0
    .line 216
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->$this_asList:[D

    #@2
    .line 3429
    array-length v1, v0

    #@3
    const/4 v2, -0x1

    #@4
    add-int/2addr v1, v2

    #@5
    if-ltz v1, :cond_23

    #@7
    :goto_7
    add-int/lit8 v3, v1, -0x1

    #@9
    .line 3430
    aget-wide v4, v0, v1

    #@b
    .line 216
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@e
    move-result-wide v4

    #@f
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@12
    move-result-wide v6

    #@13
    cmp-long v4, v4, v6

    #@15
    if-nez v4, :cond_19

    #@17
    const/4 v4, 0x1

    #@18
    goto :goto_1a

    #@19
    :cond_19
    const/4 v4, 0x0

    #@1a
    :goto_1a
    if-eqz v4, :cond_1e

    #@1c
    move v2, v1

    #@1d
    goto :goto_23

    #@1e
    :cond_1e
    if-gez v3, :cond_21

    #@20
    goto :goto_23

    #@21
    :cond_21
    move v1, v3

    #@22
    goto :goto_7

    #@23
    :cond_23
    :goto_23
    return v2
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    #@0
    .line 210
    instance-of v0, p1, Ljava/lang/Double;

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
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    #@b
    move-result-wide v0

    #@c
    invoke-virtual {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$6;->lastIndexOf(D)I

    #@f
    move-result p1

    #@10
    return p1
.end method

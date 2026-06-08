.class public final Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$2;
.super Lkotlin/collections/AbstractList;
.source "_ArraysJvm.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([S)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H\u0096\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u0008\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "kotlin/collections/ArraysKt___ArraysJvmKt$asList$2",
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
        "(I)Ljava/lang/Short;",
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
.field final synthetic $this_asList:[S


# direct methods
.method constructor <init>([S)V
    .registers 2

    #@0
    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$2;->$this_asList:[S

    #@2
    .line 154
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 154
    instance-of v0, p1, Ljava/lang/Short;

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
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$2;->contains(S)Z

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public contains(S)Z
    .registers 3

    #@0
    .line 157
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$2;->$this_asList:[S

    #@2
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([SS)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    #@0
    .line 154
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$2;->get(I)Ljava/lang/Short;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public get(I)Ljava/lang/Short;
    .registers 3

    #@0
    .line 158
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$2;->$this_asList:[S

    #@2
    aget-short p1, v0, p1

    #@4
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public getSize()I
    .registers 2

    #@0
    .line 155
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$2;->$this_asList:[S

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 154
    instance-of v0, p1, Ljava/lang/Short;

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
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$2;->indexOf(S)I

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public indexOf(S)I
    .registers 3

    #@0
    .line 159
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$2;->$this_asList:[S

    #@2
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->indexOf([SS)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 156
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$2;->$this_asList:[S

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

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 154
    instance-of v0, p1, Ljava/lang/Short;

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
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$2;->lastIndexOf(S)I

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public lastIndexOf(S)I
    .registers 3

    #@0
    .line 160
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$2;->$this_asList:[S

    #@2
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->lastIndexOf([SS)I

    #@5
    move-result p1

    #@6
    return p1
.end method

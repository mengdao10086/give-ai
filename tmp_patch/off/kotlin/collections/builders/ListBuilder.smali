.class public final Lkotlin/collections/builders/ListBuilder;
.super Lkotlin/collections/AbstractMutableList;
.source "ListBuilder.kt"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;
.implements Lkotlin/jvm/internal/markers/KMutableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/builders/ListBuilder$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableList<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;",
        "Lkotlin/jvm/internal/markers/KMutableList;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010)\n\u0002\u0008\u0002\n\u0002\u0010+\n\u0002\u0008\u0015\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u00052\u00060\u0006j\u0002`\u0007:\u0001VB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0008B\u000f\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bBM\u0008\u0002\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u0012\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u00a2\u0006\u0002\u0010\u0014J\u0015\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001dJ\u001d\u0010\u001b\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010 J\u001e\u0010!\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\n2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000#H\u0016J\u0016\u0010!\u001a\u00020\u00112\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000#H\u0016J&\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\n2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000#2\u0006\u0010&\u001a\u00020\nH\u0002J\u001d\u0010\'\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010 J\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00000)J\u0008\u0010*\u001a\u00020\u001eH\u0002J\u0008\u0010+\u001a\u00020\u001eH\u0016J\u0014\u0010,\u001a\u00020\u00112\n\u0010-\u001a\u0006\u0012\u0002\u0008\u00030)H\u0002J\u0010\u0010.\u001a\u00020\u001e2\u0006\u0010/\u001a\u00020\nH\u0002J\u0010\u00100\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\nH\u0002J\u0013\u00101\u001a\u00020\u00112\u0008\u0010-\u001a\u0004\u0018\u000102H\u0096\u0002J\u0016\u00103\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\nH\u0096\u0002\u00a2\u0006\u0002\u00104J\u0008\u00105\u001a\u00020\nH\u0016J\u0015\u00106\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00107J\u0018\u00108\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0002J\u0008\u00109\u001a\u00020\u0011H\u0016J\u000f\u0010:\u001a\u0008\u0012\u0004\u0012\u00028\u00000;H\u0096\u0002J\u0015\u0010<\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00107J\u000e\u0010=\u001a\u0008\u0012\u0004\u0012\u00028\u00000>H\u0016J\u0016\u0010=\u001a\u0008\u0012\u0004\u0012\u00028\u00000>2\u0006\u0010\u001f\u001a\u00020\nH\u0016J\u0015\u0010?\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010@\u001a\u00020\u00112\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000#H\u0016J\u0015\u0010A\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u00104J\u0015\u0010B\u001a\u00028\u00002\u0006\u0010%\u001a\u00020\nH\u0002\u00a2\u0006\u0002\u00104J\u0018\u0010C\u001a\u00020\u001e2\u0006\u0010D\u001a\u00020\n2\u0006\u0010E\u001a\u00020\nH\u0002J\u0016\u0010F\u001a\u00020\u00112\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000#H\u0016J.\u0010G\u001a\u00020\n2\u0006\u0010D\u001a\u00020\n2\u0006\u0010E\u001a\u00020\n2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000#2\u0006\u0010H\u001a\u00020\u0011H\u0002J\u001e\u0010I\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010JJ\u001e\u0010K\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010L\u001a\u00020\n2\u0006\u0010M\u001a\u00020\nH\u0016J\u0015\u0010N\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001020\rH\u0016\u00a2\u0006\u0002\u0010OJ\'\u0010N\u001a\u0008\u0012\u0004\u0012\u0002HP0\r\"\u0004\u0008\u0001\u0010P2\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u0002HP0\rH\u0016\u00a2\u0006\u0002\u0010RJ\u0008\u0010S\u001a\u00020TH\u0016J\u0008\u0010U\u001a\u000202H\u0002R\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00118BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006W"
    }
    d2 = {
        "Lkotlin/collections/builders/ListBuilder;",
        "E",
        "",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "Lkotlin/collections/AbstractMutableList;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "()V",
        "initialCapacity",
        "",
        "(I)V",
        "array",
        "",
        "offset",
        "length",
        "isReadOnly",
        "",
        "backing",
        "root",
        "([Ljava/lang/Object;IIZLkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V",
        "[Ljava/lang/Object;",
        "isEffectivelyReadOnly",
        "()Z",
        "size",
        "getSize",
        "()I",
        "add",
        "element",
        "(Ljava/lang/Object;)Z",
        "",
        "index",
        "(ILjava/lang/Object;)V",
        "addAll",
        "elements",
        "",
        "addAllInternal",
        "i",
        "n",
        "addAtInternal",
        "build",
        "",
        "checkIsMutable",
        "clear",
        "contentEquals",
        "other",
        "ensureCapacity",
        "minCapacity",
        "ensureExtraCapacity",
        "equals",
        "",
        "get",
        "(I)Ljava/lang/Object;",
        "hashCode",
        "indexOf",
        "(Ljava/lang/Object;)I",
        "insertAtInternal",
        "isEmpty",
        "iterator",
        "",
        "lastIndexOf",
        "listIterator",
        "",
        "remove",
        "removeAll",
        "removeAt",
        "removeAtInternal",
        "removeRangeInternal",
        "rangeOffset",
        "rangeLength",
        "retainAll",
        "retainOrRemoveAllInternal",
        "retain",
        "set",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "subList",
        "fromIndex",
        "toIndex",
        "toArray",
        "()[Ljava/lang/Object;",
        "T",
        "destination",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "toString",
        "",
        "writeReplace",
        "Itr",
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
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private final backing:Lkotlin/collections/builders/ListBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/ListBuilder<",
            "TE;>;"
        }
    .end annotation
.end field

.field private isReadOnly:Z

.field private length:I

.field private offset:I

.field private final root:Lkotlin/collections/builders/ListBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/ListBuilder<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/16 v0, 0xa

    #@2
    .line 21
    invoke-direct {p0, v0}, Lkotlin/collections/builders/ListBuilder;-><init>(I)V

    #@5
    return-void
.end method

.method public constructor <init>(I)V
    .registers 9

    #@0
    .line 24
    invoke-static {p1}, Lkotlin/collections/builders/ListBuilderKt;->arrayOfUninitializedElements(I)[Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v4, 0x0

    #@7
    const/4 v5, 0x0

    #@8
    const/4 v6, 0x0

    #@9
    move-object v0, p0

    #@a
    .line 23
    invoke-direct/range {v0 .. v6}, Lkotlin/collections/builders/ListBuilder;-><init>([Ljava/lang/Object;IIZLkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V

    #@d
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;IIZLkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;IIZ",
            "Lkotlin/collections/builders/ListBuilder<",
            "TE;>;",
            "Lkotlin/collections/builders/ListBuilder<",
            "TE;>;)V"
        }
    .end annotation

    #@0
    .line 19
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    #@3
    .line 13
    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@5
    .line 14
    iput p2, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@7
    .line 15
    iput p3, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@9
    .line 16
    iput-boolean p4, p0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    #@b
    .line 17
    iput-object p5, p0, Lkotlin/collections/builders/ListBuilder;->backing:Lkotlin/collections/builders/ListBuilder;

    #@d
    .line 18
    iput-object p6, p0, Lkotlin/collections/builders/ListBuilder;->root:Lkotlin/collections/builders/ListBuilder;

    #@f
    return-void
.end method

.method public static final synthetic access$getArray$p(Lkotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;
    .registers 1

    #@0
    .line 12
    iget-object p0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@2
    return-object p0
.end method

.method public static final synthetic access$getLength$p(Lkotlin/collections/builders/ListBuilder;)I
    .registers 1

    #@0
    .line 12
    iget p0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@2
    return p0
.end method

.method public static final synthetic access$getOffset$p(Lkotlin/collections/builders/ListBuilder;)I
    .registers 1

    #@0
    .line 12
    iget p0, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@2
    return p0
.end method

.method private final addAllInternal(ILjava/util/Collection;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;I)V"
        }
    .end annotation

    #@0
    .line 221
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:Lkotlin/collections/builders/ListBuilder;

    #@2
    if-eqz v0, :cond_13

    #@4
    .line 222
    invoke-direct {v0, p1, p2, p3}, Lkotlin/collections/builders/ListBuilder;->addAllInternal(ILjava/util/Collection;I)V

    #@7
    .line 223
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder;->backing:Lkotlin/collections/builders/ListBuilder;

    #@9
    iget-object p1, p1, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@b
    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@d
    .line 224
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@f
    add-int/2addr p1, p3

    #@10
    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@12
    goto :goto_2a

    #@13
    .line 226
    :cond_13
    invoke-direct {p0, p1, p3}, Lkotlin/collections/builders/ListBuilder;->insertAtInternal(II)V

    #@16
    .line 228
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object p2

    #@1a
    const/4 v0, 0x0

    #@1b
    :goto_1b
    if-ge v0, p3, :cond_2a

    #@1d
    .line 230
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@1f
    add-int v2, p1, v0

    #@21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    aput-object v3, v1, v2

    #@27
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_1b

    #@2a
    :cond_2a
    :goto_2a
    return-void
.end method

.method private final addAtInternal(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .line 210
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:Lkotlin/collections/builders/ListBuilder;

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_14

    #@5
    .line 211
    invoke-direct {v0, p1, p2}, Lkotlin/collections/builders/ListBuilder;->addAtInternal(ILjava/lang/Object;)V

    #@8
    .line 212
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder;->backing:Lkotlin/collections/builders/ListBuilder;

    #@a
    iget-object p1, p1, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@c
    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@e
    .line 213
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@10
    add-int/2addr p1, v1

    #@11
    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@13
    goto :goto_1b

    #@14
    .line 215
    :cond_14
    invoke-direct {p0, p1, v1}, Lkotlin/collections/builders/ListBuilder;->insertAtInternal(II)V

    #@17
    .line 216
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@19
    aput-object p2, v0, p1

    #@1b
    :goto_1b
    return-void
.end method

.method private final checkIsMutable()V
    .registers 2

    #@0
    .line 189
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->isEffectivelyReadOnly()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@c
    throw v0
.end method

.method private final contentEquals(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 200
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@2
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@4
    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@6
    # invokes: Lkotlin/collections/builders/ListBuilderKt;->subarrayContentEquals([Ljava/lang/Object;IILjava/util/List;)Z
    invoke-static {v0, v1, v2, p1}, Lkotlin/collections/builders/ListBuilderKt;->access$subarrayContentEquals([Ljava/lang/Object;IILjava/util/List;)Z

    #@9
    move-result p1

    #@a
    return p1
.end method

.method private final ensureCapacity(I)V
    .registers 4

    #@0
    .line 180
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:Lkotlin/collections/builders/ListBuilder;

    #@2
    if-nez v0, :cond_23

    #@4
    if-ltz p1, :cond_1d

    #@6
    .line 182
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@8
    array-length v0, v0

    #@9
    if-le p1, v0, :cond_1c

    #@b
    .line 183
    sget-object v0, Lkotlin/collections/ArrayDeque;->Companion:Lkotlin/collections/ArrayDeque$Companion;

    #@d
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@f
    array-length v1, v1

    #@10
    invoke-virtual {v0, v1, p1}, Lkotlin/collections/ArrayDeque$Companion;->newCapacity$kotlin_stdlib(II)I

    #@13
    move-result p1

    #@14
    .line 184
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@16
    invoke-static {v0, p1}, Lkotlin/collections/builders/ListBuilderKt;->copyOfUninitializedElements([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@19
    move-result-object p1

    #@1a
    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@1c
    :cond_1c
    return-void

    #@1d
    .line 181
    :cond_1d
    new-instance p1, Ljava/lang/OutOfMemoryError;

    #@1f
    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    #@22
    throw p1

    #@23
    .line 180
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    #@25
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    #@28
    throw p1
.end method

.method private final ensureExtraCapacity(I)V
    .registers 3

    #@0
    .line 196
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@2
    add-int/2addr v0, p1

    #@3
    invoke-direct {p0, v0}, Lkotlin/collections/builders/ListBuilder;->ensureCapacity(I)V

    #@6
    return-void
.end method

.method private final insertAtInternal(II)V
    .registers 6

    #@0
    .line 204
    invoke-direct {p0, p2}, Lkotlin/collections/builders/ListBuilder;->ensureExtraCapacity(I)V

    #@3
    .line 205
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@5
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@7
    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@9
    add-int/2addr v1, v2

    #@a
    add-int v2, p1, p2

    #@c
    invoke-static {v0, v0, v2, p1, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@f
    .line 206
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@11
    add-int/2addr p1, p2

    #@12
    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@14
    return-void
.end method

.method private final isEffectivelyReadOnly()Z
    .registers 2

    #@0
    .line 193
    iget-boolean v0, p0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    #@2
    if-nez v0, :cond_f

    #@4
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->root:Lkotlin/collections/builders/ListBuilder;

    #@6
    if-eqz v0, :cond_d

    #@8
    iget-boolean v0, v0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 v0, 0x1

    #@10
    :goto_10
    return v0
.end method

.method private final removeAtInternal(I)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .line 237
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:Lkotlin/collections/builders/ListBuilder;

    #@2
    if-eqz v0, :cond_f

    #@4
    .line 238
    invoke-direct {v0, p1}, Lkotlin/collections/builders/ListBuilder;->removeAtInternal(I)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    .line 239
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    iput v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@e
    return-object p1

    #@f
    .line 242
    :cond_f
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@11
    aget-object v1, v0, p1

    #@13
    add-int/lit8 v2, p1, 0x1

    #@15
    .line 243
    iget v3, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@17
    iget v4, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@19
    add-int/2addr v3, v4

    #@1a
    invoke-static {v0, v0, p1, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@1d
    .line 244
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@1f
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@21
    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@23
    add-int/2addr v0, v2

    #@24
    add-int/lit8 v0, v0, -0x1

    #@26
    invoke-static {p1, v0}, Lkotlin/collections/builders/ListBuilderKt;->resetAt([Ljava/lang/Object;I)V

    #@29
    .line 245
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@2b
    add-int/lit8 p1, p1, -0x1

    #@2d
    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@2f
    return-object v1
.end method

.method private final removeRangeInternal(II)V
    .registers 6

    #@0
    .line 251
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:Lkotlin/collections/builders/ListBuilder;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 252
    invoke-direct {v0, p1, p2}, Lkotlin/collections/builders/ListBuilder;->removeRangeInternal(II)V

    #@7
    goto :goto_1a

    #@8
    .line 254
    :cond_8
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@a
    add-int v1, p1, p2

    #@c
    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@e
    invoke-static {v0, v0, p1, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@11
    .line 255
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@13
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@15
    sub-int v1, v0, p2

    #@17
    invoke-static {p1, v1, v0}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    #@1a
    .line 257
    :goto_1a
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@1c
    sub-int/2addr p1, p2

    #@1d
    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@1f
    return-void
.end method

.method private final retainOrRemoveAllInternal(IILjava/util/Collection;Z)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "+TE;>;Z)I"
        }
    .end annotation

    #@0
    .line 262
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:Lkotlin/collections/builders/ListBuilder;

    #@2
    if-eqz v0, :cond_e

    #@4
    .line 263
    invoke-direct {v0, p1, p2, p3, p4}, Lkotlin/collections/builders/ListBuilder;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    #@7
    move-result p1

    #@8
    .line 264
    iget p2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@a
    sub-int/2addr p2, p1

    #@b
    iput p2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@d
    return p1

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    move v1, v0

    #@10
    :goto_10
    if-ge v0, p2, :cond_2e

    #@12
    .line 270
    iget-object v2, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@14
    add-int v3, p1, v0

    #@16
    aget-object v2, v2, v3

    #@18
    invoke-interface {p3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-ne v2, p4, :cond_2b

    #@1e
    .line 271
    iget-object v2, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@20
    add-int/lit8 v4, v1, 0x1

    #@22
    add-int/2addr v1, p1

    #@23
    add-int/lit8 v0, v0, 0x1

    #@25
    aget-object v3, v2, v3

    #@27
    aput-object v3, v2, v1

    #@29
    move v1, v4

    #@2a
    goto :goto_10

    #@2b
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_10

    #@2e
    :cond_2e
    sub-int p3, p2, v1

    #@30
    .line 277
    iget-object p4, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@32
    add-int/2addr p2, p1

    #@33
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@35
    add-int/2addr p1, v1

    #@36
    invoke-static {p4, p4, p1, p2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@39
    .line 278
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@3b
    iget p2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@3d
    sub-int p4, p2, p3

    #@3f
    invoke-static {p1, p4, p2}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    #@42
    .line 279
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@44
    sub-int/2addr p1, p3

    #@45
    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@47
    return p3
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 4

    #@0
    .line 34
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->isEffectivelyReadOnly()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_10

    #@6
    .line 35
    new-instance v0, Lkotlin/collections/builders/SerializedCollection;

    #@8
    move-object v1, p0

    #@9
    check-cast v1, Ljava/util/Collection;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-direct {v0, v1, v2}, Lkotlin/collections/builders/SerializedCollection;-><init>(Ljava/util/Collection;I)V

    #@f
    return-object v0

    #@10
    .line 37
    :cond_10
    new-instance v0, Ljava/io/NotSerializableException;

    #@12
    const-string v1, "The list cannot be serialized while it is being built."

    #@14
    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .line 90
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    #@3
    .line 91
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    #@5
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@7
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    #@a
    .line 92
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@c
    add-int/2addr v0, p1

    #@d
    invoke-direct {p0, v0, p2}, Lkotlin/collections/builders/ListBuilder;->addAtInternal(ILjava/lang/Object;)V

    #@10
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .line 84
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    #@3
    .line 85
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@5
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@7
    add-int/2addr v0, v1

    #@8
    invoke-direct {p0, v0, p1}, Lkotlin/collections/builders/ListBuilder;->addAtInternal(ILjava/lang/Object;)V

    #@b
    const/4 p1, 0x1

    #@c
    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    #@0
    const-string v0, "elements"

    #@2
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 103
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    #@8
    .line 104
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    #@a
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@c
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    #@f
    .line 105
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    #@12
    move-result v0

    #@13
    .line 106
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@15
    add-int/2addr v1, p1

    #@16
    invoke-direct {p0, v1, p2, v0}, Lkotlin/collections/builders/ListBuilder;->addAllInternal(ILjava/util/Collection;I)V

    #@19
    if-lez v0, :cond_1d

    #@1b
    const/4 p1, 0x1

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 p1, 0x0

    #@1e
    :goto_1e
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    #@0
    const-string v0, "elements"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 96
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    #@8
    .line 97
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@b
    move-result v0

    #@c
    .line 98
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@e
    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-direct {p0, v1, p1, v0}, Lkotlin/collections/builders/ListBuilder;->addAllInternal(ILjava/util/Collection;I)V

    #@14
    if-lez v0, :cond_18

    #@16
    const/4 p1, 0x1

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 p1, 0x0

    #@19
    :goto_19
    return p1
.end method

.method public final build()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    #@0
    .line 27
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:Lkotlin/collections/builders/ListBuilder;

    #@2
    if-nez v0, :cond_e

    #@4
    .line 28
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    #@7
    const/4 v0, 0x1

    #@8
    .line 29
    iput-boolean v0, p0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    #@a
    .line 30
    move-object v0, p0

    #@b
    check-cast v0, Ljava/util/List;

    #@d
    return-object v0

    #@e
    .line 27
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@13
    throw v0
.end method

.method public clear()V
    .registers 3

    #@0
    .line 111
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    #@3
    .line 112
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@5
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@7
    invoke-direct {p0, v0, v1}, Lkotlin/collections/builders/ListBuilder;->removeRangeInternal(II)V

    #@a
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-eq p1, p0, :cond_11

    #@2
    .line 166
    instance-of v0, p1, Ljava/util/List;

    #@4
    if-eqz v0, :cond_f

    #@6
    check-cast p1, Ljava/util/List;

    #@8
    invoke-direct {p0, p1}, Lkotlin/collections/builders/ListBuilder;->contentEquals(Ljava/util/List;)Z

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_f

    #@e
    goto :goto_11

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    goto :goto_12

    #@11
    :cond_11
    :goto_11
    const/4 p1, 0x1

    #@12
    :goto_12
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .line 45
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    #@2
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@4
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    #@7
    .line 46
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@9
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@b
    add-int/2addr v1, p1

    #@c
    aget-object p1, v0, v1

    #@e
    return-object p1
.end method

.method public getSize()I
    .registers 2

    #@0
    .line 40
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    .line 170
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@2
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@4
    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@6
    # invokes: Lkotlin/collections/builders/ListBuilderKt;->subarrayContentHashCode([Ljava/lang/Object;II)I
    invoke-static {v0, v1, v2}, Lkotlin/collections/builders/ListBuilderKt;->access$subarrayContentHashCode([Ljava/lang/Object;II)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 59
    :goto_1
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@3
    if-ge v0, v1, :cond_16

    #@5
    .line 60
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@7
    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@9
    add-int/2addr v2, v0

    #@a
    aget-object v1, v1, v2

    #@c
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_13

    #@12
    return v0

    #@13
    :cond_13
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_1

    #@16
    :cond_16
    const/4 p1, -0x1

    #@17
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 42
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    #@0
    .line 75
    new-instance v0, Lkotlin/collections/builders/ListBuilder$Itr;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lkotlin/collections/builders/ListBuilder$Itr;-><init>(Lkotlin/collections/builders/ListBuilder;I)V

    #@6
    check-cast v0, Ljava/util/Iterator;

    #@8
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    #@0
    .line 67
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    :goto_4
    if-ltz v0, :cond_17

    #@6
    .line 69
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@8
    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@a
    add-int/2addr v2, v0

    #@b
    aget-object v1, v1, v2

    #@d
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_14

    #@13
    return v0

    #@14
    :cond_14
    add-int/lit8 v0, v0, -0x1

    #@16
    goto :goto_4

    #@17
    :cond_17
    const/4 p1, -0x1

    #@18
    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    #@0
    .line 76
    new-instance v0, Lkotlin/collections/builders/ListBuilder$Itr;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lkotlin/collections/builders/ListBuilder$Itr;-><init>(Lkotlin/collections/builders/ListBuilder;I)V

    #@6
    check-cast v0, Ljava/util/ListIterator;

    #@8
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    #@0
    .line 79
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    #@2
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@4
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    #@7
    .line 80
    new-instance v0, Lkotlin/collections/builders/ListBuilder$Itr;

    #@9
    invoke-direct {v0, p0, p1}, Lkotlin/collections/builders/ListBuilder$Itr;-><init>(Lkotlin/collections/builders/ListBuilder;I)V

    #@c
    check-cast v0, Ljava/util/ListIterator;

    #@e
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 122
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    #@3
    .line 123
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/ListBuilder;->indexOf(Ljava/lang/Object;)I

    #@6
    move-result p1

    #@7
    if-ltz p1, :cond_c

    #@9
    .line 124
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/ListBuilder;->remove(I)Ljava/lang/Object;

    #@c
    :cond_c
    if-ltz p1, :cond_10

    #@e
    const/4 p1, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 p1, 0x0

    #@11
    :goto_11
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    #@0
    const-string v0, "elements"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 129
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    #@8
    .line 130
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@a
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@c
    const/4 v2, 0x0

    #@d
    invoke-direct {p0, v0, v1, p1, v2}, Lkotlin/collections/builders/ListBuilder;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    #@10
    move-result p1

    #@11
    if-lez p1, :cond_14

    #@13
    const/4 v2, 0x1

    #@14
    :cond_14
    return v2
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .line 116
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    #@3
    .line 117
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    #@5
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@7
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    #@a
    .line 118
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@c
    add-int/2addr v0, p1

    #@d
    invoke-direct {p0, v0}, Lkotlin/collections/builders/ListBuilder;->removeAtInternal(I)Ljava/lang/Object;

    #@10
    move-result-object p1

    #@11
    return-object p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    #@0
    const-string v0, "elements"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 134
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    #@8
    .line 135
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@a
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@c
    const/4 v2, 0x1

    #@d
    invoke-direct {p0, v0, v1, p1, v2}, Lkotlin/collections/builders/ListBuilder;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    #@10
    move-result p1

    #@11
    if-lez p1, :cond_14

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 v2, 0x0

    #@15
    :goto_15
    return v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .line 50
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    #@3
    .line 51
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    #@5
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@7
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    #@a
    .line 52
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@c
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@e
    add-int v2, v1, p1

    #@10
    aget-object v2, v0, v2

    #@12
    add-int/2addr v1, p1

    #@13
    .line 53
    aput-object p2, v0, v1

    #@15
    return-object v2
.end method

.method public subList(II)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    #@0
    .line 139
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    #@2
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@4
    invoke-virtual {v0, p1, p2, v1}, Lkotlin/collections/AbstractList$Companion;->checkRangeIndexes$kotlin_stdlib(III)V

    #@7
    .line 140
    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    #@9
    iget-object v3, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@b
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@d
    add-int v4, v1, p1

    #@f
    sub-int v5, p2, p1

    #@11
    iget-boolean v6, p0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    #@13
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder;->root:Lkotlin/collections/builders/ListBuilder;

    #@15
    if-nez p1, :cond_19

    #@17
    move-object v8, p0

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move-object v8, p1

    #@1a
    :goto_1a
    move-object v2, v0

    #@1b
    move-object v7, p0

    #@1c
    invoke-direct/range {v2 .. v8}, Lkotlin/collections/builders/ListBuilder;-><init>([Ljava/lang/Object;IIZLkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V

    #@1f
    check-cast v0, Ljava/util/List;

    #@21
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4

    #@0
    .line 161
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@2
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@4
    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@6
    add-int/2addr v2, v1

    #@7
    invoke-static {v0, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    const-string v0, "destination"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 144
    array-length v0, p1

    #@6
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@8
    if-ge v0, v1, :cond_1d

    #@a
    .line 145
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@c
    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@e
    add-int/2addr v1, v2

    #@f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@12
    move-result-object p1

    #@13
    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    const-string v0, "copyOfRange(array, offse\u2026h, destination.javaClass)"

    #@19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@1c
    return-object p1

    #@1d
    .line 149
    :cond_1d
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@1f
    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@21
    add-int/2addr v1, v2

    #@22
    const/4 v3, 0x0

    #@23
    invoke-static {v0, p1, v3, v2, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@26
    .line 151
    array-length v0, p1

    #@27
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@29
    if-le v0, v1, :cond_2e

    #@2b
    const/4 v0, 0x0

    #@2c
    .line 153
    aput-object v0, p1, v1

    #@2e
    :cond_2e
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 174
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->array:[Ljava/lang/Object;

    #@2
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->offset:I

    #@4
    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    #@6
    # invokes: Lkotlin/collections/builders/ListBuilderKt;->subarrayContentToString([Ljava/lang/Object;II)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lkotlin/collections/builders/ListBuilderKt;->access$subarrayContentToString([Ljava/lang/Object;II)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

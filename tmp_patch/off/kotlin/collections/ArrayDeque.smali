.class public final Lkotlin/collections/ArrayDeque;
.super Lkotlin/collections/AbstractMutableList;
.source "ArrayDeque.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/ArrayDeque$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableList<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayDeque.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,583:1\n467#1,51:586\n467#1,51:637\n37#2,2:584\n26#3:688\n*S KotlinDebug\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n*L\n462#1:586,51\n464#1:637,51\n47#1:584,2\n562#1:688\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0008\u0007\u0018\u0000 P*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001PB\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0006B\u0015\u0008\u0016\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\tJ\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u001d\u0010\u0013\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0019J\u001e\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u0016\u0010\u001a\u001a\u00020\u00142\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u0013\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010\u001e\u001a\u00020\u0017H\u0016J\u0016\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0016J\u001e\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0002J\u0010\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0004H\u0002J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0004H\u0002J\u001d\u0010\'\u001a\u00020\u00142\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00140)H\u0082\u0008J\u000b\u0010*\u001a\u00028\u0000\u00a2\u0006\u0002\u0010+J\r\u0010,\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010+J\u0016\u0010-\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0004H\u0096\u0002\u00a2\u0006\u0002\u0010.J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0015\u00100\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00101J\u0016\u00102\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u0004H\u0083\u0008\u00a2\u0006\u0002\u0010.J\u0011\u0010!\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0083\u0008JM\u00103\u001a\u00020\u00172>\u00104\u001a:\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u00086\u0012\u0008\u00087\u0012\u0004\u0008\u0008(\u000e\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b\u00a2\u0006\u000c\u00086\u0012\u0008\u00087\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u001705H\u0000\u00a2\u0006\u0002\u00088J\u0008\u00109\u001a\u00020\u0014H\u0016J\u000b\u0010:\u001a\u00028\u0000\u00a2\u0006\u0002\u0010+J\u0015\u0010;\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00101J\r\u0010<\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010+J\u0010\u0010=\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010>\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0015\u0010?\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0016\u0010@\u001a\u00020\u00142\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u0015\u0010A\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0004H\u0016\u00a2\u0006\u0002\u0010.J\u000b\u0010B\u001a\u00028\u0000\u00a2\u0006\u0002\u0010+J\r\u0010C\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010+J\u000b\u0010D\u001a\u00028\u0000\u00a2\u0006\u0002\u0010+J\r\u0010E\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010+J\u0016\u0010F\u001a\u00020\u00142\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u001e\u0010G\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010HJ\u0017\u0010I\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bH\u0000\u00a2\u0006\u0004\u0008J\u0010KJ)\u0010I\u001a\u0008\u0012\u0004\u0012\u0002HL0\u000b\"\u0004\u0008\u0001\u0010L2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u0002HL0\u000bH\u0000\u00a2\u0006\u0004\u0008J\u0010NJ\u0015\u0010O\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bH\u0016\u00a2\u0006\u0002\u0010KJ\'\u0010O\u001a\u0008\u0012\u0004\u0012\u0002HL0\u000b\"\u0004\u0008\u0001\u0010L2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u0002HL0\u000bH\u0016\u00a2\u0006\u0002\u0010NR\u0018\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006Q"
    }
    d2 = {
        "Lkotlin/collections/ArrayDeque;",
        "E",
        "Lkotlin/collections/AbstractMutableList;",
        "initialCapacity",
        "",
        "(I)V",
        "()V",
        "elements",
        "",
        "(Ljava/util/Collection;)V",
        "elementData",
        "",
        "",
        "[Ljava/lang/Object;",
        "head",
        "<set-?>",
        "size",
        "getSize",
        "()I",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "",
        "index",
        "(ILjava/lang/Object;)V",
        "addAll",
        "addFirst",
        "(Ljava/lang/Object;)V",
        "addLast",
        "clear",
        "contains",
        "copyCollectionElements",
        "internalIndex",
        "copyElements",
        "newCapacity",
        "decremented",
        "ensureCapacity",
        "minCapacity",
        "filterInPlace",
        "predicate",
        "Lkotlin/Function1;",
        "first",
        "()Ljava/lang/Object;",
        "firstOrNull",
        "get",
        "(I)Ljava/lang/Object;",
        "incremented",
        "indexOf",
        "(Ljava/lang/Object;)I",
        "internalGet",
        "internalStructure",
        "structure",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "internalStructure$kotlin_stdlib",
        "isEmpty",
        "last",
        "lastIndexOf",
        "lastOrNull",
        "negativeMod",
        "positiveMod",
        "remove",
        "removeAll",
        "removeAt",
        "removeFirst",
        "removeFirstOrNull",
        "removeLast",
        "removeLastOrNull",
        "retainAll",
        "set",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "testToArray",
        "testToArray$kotlin_stdlib",
        "()[Ljava/lang/Object;",
        "T",
        "array",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "toArray",
        "Companion",
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


# static fields
.field public static final Companion:Lkotlin/collections/ArrayDeque$Companion;

.field private static final defaultMinCapacity:I = 0xa

.field private static final emptyElementData:[Ljava/lang/Object;

.field private static final maxArraySize:I = 0x7ffffff7


# instance fields
.field private elementData:[Ljava/lang/Object;

.field private head:I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lkotlin/collections/ArrayDeque$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lkotlin/collections/ArrayDeque$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Lkotlin/collections/ArrayDeque;->Companion:Lkotlin/collections/ArrayDeque$Companion;

    #@8
    const/4 v0, 0x0

    #@9
    new-array v0, v0, [Ljava/lang/Object;

    #@b
    .line 562
    sput-object v0, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    #@d
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 39
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    #@3
    .line 40
    sget-object v0, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    #@5
    iput-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@7
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    #@0
    .line 28
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    #@3
    if-nez p1, :cond_8

    #@5
    .line 30
    sget-object p1, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    #@7
    goto :goto_c

    #@8
    :cond_8
    if-lez p1, :cond_f

    #@a
    .line 31
    new-array p1, p1, [Ljava/lang/Object;

    #@c
    .line 29
    :goto_c
    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@e
    return-void

    #@f
    .line 32
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    const-string v2, "Illegal Capacity: "

    #@15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object p1

    #@20
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "elements"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 46
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    #@8
    const/4 v0, 0x0

    #@9
    new-array v1, v0, [Ljava/lang/Object;

    #@b
    .line 585
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@e
    move-result-object p1

    #@f
    .line 47
    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@11
    .line 48
    array-length v1, p1

    #@12
    iput v1, p0, Lkotlin/collections/ArrayDeque;->size:I

    #@14
    .line 49
    array-length p1, p1

    #@15
    if-nez p1, :cond_18

    #@17
    const/4 v0, 0x1

    #@18
    :cond_18
    if-eqz v0, :cond_1e

    #@1a
    sget-object p1, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    #@1c
    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@1e
    :cond_1e
    return-void
.end method

.method private final copyCollectionElements(ILjava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    #@0
    .line 257
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 259
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@6
    array-length v1, v1

    #@7
    :goto_7
    if-ge p1, v1, :cond_1a

    #@9
    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1a

    #@f
    .line 261
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    aput-object v3, v2, p1

    #@17
    add-int/lit8 p1, p1, 0x1

    #@19
    goto :goto_7

    #@1a
    .line 263
    :cond_1a
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@1c
    const/4 v1, 0x0

    #@1d
    :goto_1d
    if-ge v1, p1, :cond_30

    #@1f
    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_30

    #@25
    .line 265
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    aput-object v3, v2, v1

    #@2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_1d

    #@30
    .line 268
    :cond_30
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@33
    move-result p1

    #@34
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    #@37
    move-result p2

    #@38
    add-int/2addr p1, p2

    #@39
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    #@3b
    return-void
.end method

.method private final copyElements(I)V
    .registers 6

    #@0
    .line 74
    new-array p1, p1, [Ljava/lang/Object;

    #@2
    .line 75
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@4
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@6
    array-length v2, v0

    #@7
    const/4 v3, 0x0

    #@8
    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@b
    .line 76
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@d
    array-length v1, v0

    #@e
    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@10
    sub-int/2addr v1, v2

    #@11
    invoke-static {v0, p1, v1, v3, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@14
    .line 77
    iput v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@16
    .line 78
    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@18
    return-void
.end method

.method private final decremented(I)I
    .registers 2

    #@0
    if-nez p1, :cond_9

    #@2
    .line 96
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@4
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    #@7
    move-result p1

    #@8
    goto :goto_b

    #@9
    :cond_9
    add-int/lit8 p1, p1, -0x1

    #@b
    :goto_b
    return p1
.end method

.method private final ensureCapacity(I)V
    .registers 4

    #@0
    if-ltz p1, :cond_22

    #@2
    .line 60
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@4
    array-length v1, v0

    #@5
    if-gt p1, v1, :cond_8

    #@7
    return-void

    #@8
    .line 61
    :cond_8
    sget-object v1, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    #@a
    if-ne v0, v1, :cond_17

    #@c
    const/16 v0, 0xa

    #@e
    .line 62
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    #@11
    move-result p1

    #@12
    new-array p1, p1, [Ljava/lang/Object;

    #@14
    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@16
    return-void

    #@17
    .line 66
    :cond_17
    sget-object v1, Lkotlin/collections/ArrayDeque;->Companion:Lkotlin/collections/ArrayDeque$Companion;

    #@19
    array-length v0, v0

    #@1a
    invoke-virtual {v1, v0, p1}, Lkotlin/collections/ArrayDeque$Companion;->newCapacity$kotlin_stdlib(II)I

    #@1d
    move-result p1

    #@1e
    .line 67
    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->copyElements(I)V

    #@21
    return-void

    #@22
    .line 59
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    #@24
    const-string v0, "Deque is too big."

    #@26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw p1
.end method

.method private final filterInPlace(Lkotlin/jvm/functions/Function1;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    #@0
    .line 467
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_a0

    #@7
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@9
    array-length v0, v0

    #@a
    const/4 v2, 0x1

    #@b
    if-nez v0, :cond_f

    #@d
    move v0, v2

    #@e
    goto :goto_10

    #@f
    :cond_f
    move v0, v1

    #@10
    :goto_10
    if-eqz v0, :cond_14

    #@12
    goto/16 :goto_a0

    #@14
    .line 470
    :cond_14
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@16
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@19
    move-result v3

    #@1a
    add-int/2addr v0, v3

    #@1b
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@1e
    move-result v0

    #@1f
    .line 471
    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@21
    const/4 v4, 0x0

    #@22
    if-ge v3, v0, :cond_49

    #@24
    move v5, v3

    #@25
    :goto_25
    if-ge v3, v0, :cond_43

    #@27
    .line 476
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@29
    aget-object v6, v6, v3

    #@2b
    .line 479
    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v7

    #@2f
    check-cast v7, Ljava/lang/Boolean;

    #@31
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    #@34
    move-result v7

    #@35
    if-eqz v7, :cond_3f

    #@37
    .line 480
    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@39
    add-int/lit8 v8, v5, 0x1

    #@3b
    aput-object v6, v7, v5

    #@3d
    move v5, v8

    #@3e
    goto :goto_40

    #@3f
    :cond_3f
    move v1, v2

    #@40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_25

    #@43
    .line 485
    :cond_43
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@45
    invoke-static {p1, v4, v5, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    #@48
    goto :goto_95

    #@49
    .line 488
    :cond_49
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@4b
    array-length v5, v5

    #@4c
    move v7, v1

    #@4d
    move v6, v3

    #@4e
    :goto_4e
    if-ge v3, v5, :cond_6e

    #@50
    .line 489
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@52
    aget-object v9, v8, v3

    #@54
    .line 490
    aput-object v4, v8, v3

    #@56
    .line 493
    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    move-result-object v8

    #@5a
    check-cast v8, Ljava/lang/Boolean;

    #@5c
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    #@5f
    move-result v8

    #@60
    if-eqz v8, :cond_6a

    #@62
    .line 494
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@64
    add-int/lit8 v10, v6, 0x1

    #@66
    aput-object v9, v8, v6

    #@68
    move v6, v10

    #@69
    goto :goto_6b

    #@6a
    :cond_6a
    move v7, v2

    #@6b
    :goto_6b
    add-int/lit8 v3, v3, 0x1

    #@6d
    goto :goto_4e

    #@6e
    .line 499
    :cond_6e
    invoke-direct {p0, v6}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@71
    move-result v3

    #@72
    move v5, v3

    #@73
    :goto_73
    if-ge v1, v0, :cond_94

    #@75
    .line 502
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@77
    aget-object v6, v3, v1

    #@79
    .line 503
    aput-object v4, v3, v1

    #@7b
    .line 506
    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    move-result-object v3

    #@7f
    check-cast v3, Ljava/lang/Boolean;

    #@81
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@84
    move-result v3

    #@85
    if-eqz v3, :cond_90

    #@87
    .line 507
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@89
    aput-object v6, v3, v5

    #@8b
    .line 508
    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    #@8e
    move-result v5

    #@8f
    goto :goto_91

    #@90
    :cond_90
    move v7, v2

    #@91
    :goto_91
    add-int/lit8 v1, v1, 0x1

    #@93
    goto :goto_73

    #@94
    :cond_94
    move v1, v7

    #@95
    :goto_95
    if-eqz v1, :cond_a0

    #@97
    .line 515
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@99
    sub-int/2addr v5, p1

    #@9a
    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->negativeMod(I)I

    #@9d
    move-result p1

    #@9e
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    #@a0
    :cond_a0
    :goto_a0
    return v1
.end method

.method private final incremented(I)I
    .registers 3

    #@0
    .line 94
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@2
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    if-ne p1, v0, :cond_a

    #@8
    const/4 p1, 0x0

    #@9
    goto :goto_c

    #@a
    :cond_a
    add-int/lit8 p1, p1, 0x1

    #@c
    :goto_c
    return p1
.end method

.method private final internalGet(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .line 84
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@2
    aget-object p1, v0, p1

    #@4
    return-object p1
.end method

.method private final internalIndex(I)I
    .registers 3

    #@0
    .line 92
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@2
    add-int/2addr v0, p1

    #@3
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@6
    move-result p1

    #@7
    return p1
.end method

.method private final negativeMod(I)I
    .registers 3

    #@0
    if-gez p1, :cond_6

    #@2
    .line 89
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@4
    array-length v0, v0

    #@5
    add-int/2addr p1, v0

    #@6
    :cond_6
    return p1
.end method

.method private final positiveMod(I)I
    .registers 4

    #@0
    .line 87
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@2
    array-length v1, v0

    #@3
    if-lt p1, v1, :cond_7

    #@5
    array-length v0, v0

    #@6
    sub-int/2addr p1, v0

    #@7
    :cond_7
    return p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .line 184
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    #@2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    #@9
    .line 186
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@c
    move-result v0

    #@d
    if-ne p1, v0, :cond_13

    #@f
    .line 187
    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@12
    return-void

    #@13
    :cond_13
    if-nez p1, :cond_19

    #@15
    .line 190
    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    #@18
    return-void

    #@19
    .line 194
    :cond_19
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@1c
    move-result v0

    #@1d
    const/4 v1, 0x1

    #@1e
    add-int/2addr v0, v1

    #@1f
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    #@22
    .line 221
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@24
    add-int/2addr v0, p1

    #@25
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@28
    move-result v0

    #@29
    .line 223
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@2c
    move-result v2

    #@2d
    add-int/2addr v2, v1

    #@2e
    shr-int/2addr v2, v1

    #@2f
    const/4 v3, 0x0

    #@30
    if-ge p1, v2, :cond_6a

    #@32
    .line 225
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->decremented(I)I

    #@35
    move-result p1

    #@36
    .line 226
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@38
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->decremented(I)I

    #@3b
    move-result v0

    #@3c
    .line 228
    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@3e
    if-lt p1, v2, :cond_4e

    #@40
    .line 229
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@42
    aget-object v4, v3, v2

    #@44
    aput-object v4, v3, v0

    #@46
    add-int/lit8 v4, v2, 0x1

    #@48
    add-int/lit8 v5, p1, 0x1

    #@4a
    .line 230
    invoke-static {v3, v3, v2, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@4d
    goto :goto_63

    #@4e
    .line 232
    :cond_4e
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@50
    add-int/lit8 v5, v2, -0x1

    #@52
    array-length v6, v4

    #@53
    invoke-static {v4, v4, v5, v2, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@56
    .line 233
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@58
    array-length v4, v2

    #@59
    sub-int/2addr v4, v1

    #@5a
    aget-object v5, v2, v3

    #@5c
    aput-object v5, v2, v4

    #@5e
    add-int/lit8 v4, p1, 0x1

    #@60
    .line 234
    invoke-static {v2, v2, v3, v1, v4}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@63
    .line 237
    :goto_63
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@65
    aput-object p2, v2, p1

    #@67
    .line 238
    iput v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@69
    goto :goto_97

    #@6a
    .line 241
    :cond_6a
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@6c
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@6f
    move-result v2

    #@70
    add-int/2addr p1, v2

    #@71
    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@74
    move-result p1

    #@75
    if-ge v0, p1, :cond_7f

    #@77
    .line 244
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@79
    add-int/lit8 v3, v0, 0x1

    #@7b
    invoke-static {v2, v2, v3, v0, p1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@7e
    goto :goto_93

    #@7f
    .line 246
    :cond_7f
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@81
    invoke-static {v2, v2, v1, v3, p1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@84
    .line 247
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@86
    array-length v2, p1

    #@87
    sub-int/2addr v2, v1

    #@88
    aget-object v2, p1, v2

    #@8a
    aput-object v2, p1, v3

    #@8c
    add-int/lit8 v2, v0, 0x1

    #@8e
    .line 248
    array-length v3, p1

    #@8f
    sub-int/2addr v3, v1

    #@90
    invoke-static {p1, p1, v2, v0, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@93
    .line 251
    :goto_93
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@95
    aput-object p2, p1, v0

    #@97
    .line 253
    :goto_97
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@9a
    move-result p1

    #@9b
    add-int/2addr p1, v1

    #@9c
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    #@9e
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .line 179
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@3
    const/4 p1, 0x1

    #@4
    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 11
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
    .line 279
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    #@7
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    #@e
    .line 281
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    #@11
    move-result v0

    #@12
    const/4 v1, 0x0

    #@13
    if-eqz v0, :cond_16

    #@15
    return v1

    #@16
    .line 283
    :cond_16
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@19
    move-result v0

    #@1a
    if-ne p1, v0, :cond_21

    #@1c
    .line 284
    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    #@1f
    move-result p1

    #@20
    return p1

    #@21
    .line 287
    :cond_21
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@24
    move-result v0

    #@25
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    #@28
    move-result v2

    #@29
    add-int/2addr v0, v2

    #@2a
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    #@2d
    .line 289
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@2f
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@32
    move-result v2

    #@33
    add-int/2addr v0, v2

    #@34
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@37
    move-result v0

    #@38
    .line 290
    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@3a
    add-int/2addr v2, p1

    #@3b
    invoke-direct {p0, v2}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@3e
    move-result v2

    #@3f
    .line 291
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    #@42
    move-result v3

    #@43
    .line 293
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@46
    move-result v4

    #@47
    const/4 v5, 0x1

    #@48
    add-int/2addr v4, v5

    #@49
    shr-int/2addr v4, v5

    #@4a
    if-ge p1, v4, :cond_9d

    #@4c
    .line 296
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@4e
    sub-int v0, p1, v3

    #@50
    if-lt v2, p1, :cond_76

    #@52
    if-ltz v0, :cond_5a

    #@54
    .line 300
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@56
    invoke-static {v1, v1, v0, p1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@59
    goto :goto_92

    #@5a
    .line 302
    :cond_5a
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@5c
    array-length v6, v4

    #@5d
    add-int/2addr v0, v6

    #@5e
    sub-int v6, v2, p1

    #@60
    .line 304
    array-length v7, v4

    #@61
    sub-int/2addr v7, v0

    #@62
    if-lt v7, v6, :cond_68

    #@64
    .line 307
    invoke-static {v4, v4, v0, p1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@67
    goto :goto_92

    #@68
    :cond_68
    add-int v6, p1, v7

    #@6a
    .line 309
    invoke-static {v4, v4, v0, p1, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@6d
    .line 310
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@6f
    iget v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@71
    add-int/2addr v4, v7

    #@72
    invoke-static {p1, p1, v1, v4, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@75
    goto :goto_92

    #@76
    .line 314
    :cond_76
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@78
    array-length v6, v4

    #@79
    invoke-static {v4, v4, v0, p1, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@7c
    if-lt v3, v2, :cond_86

    #@7e
    .line 316
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@80
    array-length v4, p1

    #@81
    sub-int/2addr v4, v3

    #@82
    invoke-static {p1, p1, v4, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@85
    goto :goto_92

    #@86
    .line 318
    :cond_86
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@88
    array-length v4, p1

    #@89
    sub-int/2addr v4, v3

    #@8a
    invoke-static {p1, p1, v4, v1, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@8d
    .line 319
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@8f
    invoke-static {p1, p1, v1, v3, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@92
    .line 322
    :goto_92
    iput v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@94
    sub-int/2addr v2, v3

    #@95
    .line 323
    invoke-direct {p0, v2}, Lkotlin/collections/ArrayDeque;->negativeMod(I)I

    #@98
    move-result p1

    #@99
    invoke-direct {p0, p1, p2}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    #@9c
    goto :goto_e2

    #@9d
    :cond_9d
    add-int p1, v2, v3

    #@9f
    if-ge v2, v0, :cond_c1

    #@a1
    add-int/2addr v3, v0

    #@a2
    .line 330
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@a4
    array-length v6, v4

    #@a5
    if-gt v3, v6, :cond_ab

    #@a7
    .line 331
    invoke-static {v4, v4, p1, v2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@aa
    goto :goto_df

    #@ab
    .line 333
    :cond_ab
    array-length v6, v4

    #@ac
    if-lt p1, v6, :cond_b4

    #@ae
    .line 334
    array-length v1, v4

    #@af
    sub-int/2addr p1, v1

    #@b0
    invoke-static {v4, v4, p1, v2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@b3
    goto :goto_df

    #@b4
    .line 336
    :cond_b4
    array-length v6, v4

    #@b5
    sub-int/2addr v3, v6

    #@b6
    sub-int v3, v0, v3

    #@b8
    .line 337
    invoke-static {v4, v4, v1, v3, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@bb
    .line 338
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@bd
    invoke-static {v0, v0, p1, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@c0
    goto :goto_df

    #@c1
    .line 342
    :cond_c1
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@c3
    invoke-static {v4, v4, v3, v1, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@c6
    .line 343
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@c8
    array-length v4, v0

    #@c9
    if-lt p1, v4, :cond_d2

    #@cb
    .line 344
    array-length v1, v0

    #@cc
    sub-int/2addr p1, v1

    #@cd
    array-length v1, v0

    #@ce
    invoke-static {v0, v0, p1, v2, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@d1
    goto :goto_df

    #@d2
    .line 346
    :cond_d2
    array-length v4, v0

    #@d3
    sub-int/2addr v4, v3

    #@d4
    array-length v6, v0

    #@d5
    invoke-static {v0, v0, v1, v4, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@d8
    .line 347
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@da
    array-length v1, v0

    #@db
    sub-int/2addr v1, v3

    #@dc
    invoke-static {v0, v0, p1, v2, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@df
    .line 350
    :goto_df
    invoke-direct {p0, v2, p2}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    #@e2
    :goto_e2
    return v5
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
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
    .line 272
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_d

    #@b
    const/4 p1, 0x0

    #@c
    return p1

    #@d
    .line 273
    :cond_d
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@10
    move-result v0

    #@11
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@14
    move-result v1

    #@15
    add-int/2addr v0, v1

    #@16
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    #@19
    .line 274
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@1b
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@23
    move-result v0

    #@24
    invoke-direct {p0, v0, p1}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    #@27
    const/4 p1, 0x1

    #@28
    return p1
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .line 124
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, 0x1

    #@6
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    #@9
    .line 126
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@b
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->decremented(I)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@11
    .line 127
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@13
    aput-object p1, v1, v0

    #@15
    .line 128
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@18
    move-result p1

    #@19
    add-int/lit8 p1, p1, 0x1

    #@1b
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    #@1d
    return-void
.end method

.method public final addLast(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .line 135
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, 0x1

    #@6
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    #@9
    .line 137
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@b
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@d
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@10
    move-result v2

    #@11
    add-int/2addr v1, v2

    #@12
    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@15
    move-result v1

    #@16
    aput-object p1, v0, v1

    #@18
    .line 138
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@1b
    move-result p1

    #@1c
    add-int/lit8 p1, p1, 0x1

    #@1e
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    #@20
    return-void
.end method

.method public clear()V
    .registers 7

    #@0
    .line 521
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@5
    move-result v1

    #@6
    add-int/2addr v0, v1

    #@7
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@a
    move-result v0

    #@b
    .line 522
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@d
    const/4 v2, 0x0

    #@e
    const/4 v3, 0x0

    #@f
    if-ge v1, v0, :cond_17

    #@11
    .line 523
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@13
    invoke-static {v4, v3, v1, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    #@16
    goto :goto_2f

    #@17
    .line 524
    :cond_17
    move-object v1, p0

    #@18
    check-cast v1, Ljava/util/Collection;

    #@1a
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    #@1d
    move-result v1

    #@1e
    xor-int/lit8 v1, v1, 0x1

    #@20
    if-eqz v1, :cond_2f

    #@22
    .line 525
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@24
    iget v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@26
    array-length v5, v1

    #@27
    invoke-static {v1, v3, v4, v5}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    #@2a
    .line 526
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@2c
    invoke-static {v1, v3, v2, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    #@2f
    .line 528
    :cond_2f
    :goto_2f
    iput v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@31
    .line 529
    iput v2, p0, Lkotlin/collections/ArrayDeque;->size:I

    #@33
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 372
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-eq p1, v0, :cond_9

    #@7
    const/4 p1, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    :goto_a
    return p1
.end method

.method public final first()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 103
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_d

    #@6
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@8
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@a
    aget-object v0, v0, v1

    #@c
    return-object v0

    #@d
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    #@f
    const-string v1, "ArrayDeque is empty."

    #@11
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public final firstOrNull()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 108
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    goto :goto_e

    #@8
    :cond_8
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@a
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@c
    aget-object v0, v0, v1

    #@e
    :goto_e
    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .line 357
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    #@2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    #@9
    .line 359
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@b
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@d
    add-int/2addr v1, p1

    #@e
    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@11
    move-result p1

    #@12
    aget-object p1, v0, p1

    #@14
    return-object p1
.end method

.method public getSize()I
    .registers 2

    #@0
    .line 22
    iget v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    #@2
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6

    #@0
    .line 375
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@5
    move-result v1

    #@6
    add-int/2addr v0, v1

    #@7
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@a
    move-result v0

    #@b
    .line 377
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@d
    if-ge v1, v0, :cond_22

    #@f
    :goto_f
    if-ge v1, v0, :cond_50

    #@11
    .line 379
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@13
    aget-object v2, v2, v1

    #@15
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1f

    #@1b
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@1d
    :goto_1d
    sub-int/2addr v1, p1

    #@1e
    return v1

    #@1f
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_f

    #@22
    :cond_22
    if-lt v1, v0, :cond_50

    #@24
    .line 382
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@26
    array-length v2, v2

    #@27
    :goto_27
    if-ge v1, v2, :cond_39

    #@29
    .line 383
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@2b
    aget-object v3, v3, v1

    #@2d
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_36

    #@33
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@35
    goto :goto_1d

    #@36
    :cond_36
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_27

    #@39
    :cond_39
    const/4 v1, 0x0

    #@3a
    :goto_3a
    if-ge v1, v0, :cond_50

    #@3c
    .line 386
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@3e
    aget-object v2, v2, v1

    #@40
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_4d

    #@46
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@48
    array-length p1, p1

    #@49
    add-int/2addr v1, p1

    #@4a
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@4c
    goto :goto_1d

    #@4d
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    #@4f
    goto :goto_3a

    #@50
    :cond_50
    const/4 p1, -0x1

    #@51
    return p1
.end method

.method public final internalStructure$kotlin_stdlib(Lkotlin/jvm/functions/Function2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-[",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "structure"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 579
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@7
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@a
    move-result v1

    #@b
    add-int/2addr v0, v1

    #@c
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@f
    move-result v0

    #@10
    .line 580
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_20

    #@16
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@18
    if-ge v1, v0, :cond_1b

    #@1a
    goto :goto_20

    #@1b
    :cond_1b
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@1d
    array-length v0, v0

    #@1e
    sub-int/2addr v1, v0

    #@1f
    goto :goto_22

    #@20
    :cond_20
    :goto_20
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@22
    .line 581
    :goto_22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->toArray()[Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 98
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public final last()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 113
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_19

    #@6
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@8
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@a
    move-object v2, p0

    #@b
    check-cast v2, Ljava/util/List;

    #@d
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    #@10
    move-result v2

    #@11
    add-int/2addr v1, v2

    #@12
    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@15
    move-result v1

    #@16
    aget-object v0, v0, v1

    #@18
    return-object v0

    #@19
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    #@1b
    const-string v1, "ArrayDeque is empty."

    #@1d
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 6

    #@0
    .line 394
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@5
    move-result v1

    #@6
    add-int/2addr v0, v1

    #@7
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@a
    move-result v0

    #@b
    .line 396
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@d
    const/4 v2, -0x1

    #@e
    if-ge v1, v0, :cond_27

    #@10
    add-int/lit8 v0, v0, -0x1

    #@12
    if-gt v1, v0, :cond_5d

    #@14
    .line 398
    :goto_14
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@16
    aget-object v3, v3, v0

    #@18
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_22

    #@1e
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@20
    :goto_20
    sub-int/2addr v0, p1

    #@21
    return v0

    #@22
    :cond_22
    if-eq v0, v1, :cond_5d

    #@24
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_14

    #@27
    :cond_27
    if-le v1, v0, :cond_5d

    #@29
    add-int/lit8 v0, v0, -0x1

    #@2b
    :goto_2b
    if-ge v2, v0, :cond_41

    #@2d
    .line 402
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@2f
    aget-object v1, v1, v0

    #@31
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_3e

    #@37
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@39
    array-length p1, p1

    #@3a
    add-int/2addr v0, p1

    #@3b
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@3d
    goto :goto_20

    #@3e
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    #@40
    goto :goto_2b

    #@41
    .line 404
    :cond_41
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@43
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    #@46
    move-result v0

    #@47
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@49
    if-gt v1, v0, :cond_5d

    #@4b
    .line 405
    :goto_4b
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@4d
    aget-object v3, v3, v0

    #@4f
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_58

    #@55
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@57
    goto :goto_20

    #@58
    :cond_58
    if-eq v0, v1, :cond_5d

    #@5a
    add-int/lit8 v0, v0, -0x1

    #@5c
    goto :goto_4b

    #@5d
    :cond_5d
    return v2
.end method

.method public final lastOrNull()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 118
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    goto :goto_1a

    #@8
    :cond_8
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@a
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@c
    move-object v2, p0

    #@d
    check-cast v2, Ljava/util/List;

    #@f
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    #@12
    move-result v2

    #@13
    add-int/2addr v1, v2

    #@14
    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@17
    move-result v1

    #@18
    aget-object v0, v0, v1

    #@1a
    :goto_1a
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 413
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-ne p1, v0, :cond_9

    #@7
    const/4 p1, 0x0

    #@8
    return p1

    #@9
    .line 415
    :cond_9
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->remove(I)Ljava/lang/Object;

    #@c
    const/4 p1, 0x1

    #@d
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 13
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
    .line 586
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    if-nez v0, :cond_96

    #@c
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@e
    array-length v0, v0

    #@f
    const/4 v2, 0x1

    #@10
    if-nez v0, :cond_14

    #@12
    move v0, v2

    #@13
    goto :goto_15

    #@14
    :cond_14
    move v0, v1

    #@15
    :goto_15
    if-eqz v0, :cond_19

    #@17
    goto/16 :goto_96

    #@19
    .line 589
    :cond_19
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@1b
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@1e
    move-result v3

    #@1f
    add-int/2addr v0, v3

    #@20
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@23
    move-result v0

    #@24
    .line 590
    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@26
    const/4 v4, 0x0

    #@27
    if-ge v3, v0, :cond_49

    #@29
    move v5, v3

    #@2a
    :goto_2a
    if-ge v3, v0, :cond_43

    #@2c
    .line 595
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@2e
    aget-object v6, v6, v3

    #@30
    .line 462
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@33
    move-result v7

    #@34
    xor-int/2addr v7, v2

    #@35
    if-eqz v7, :cond_3f

    #@37
    .line 599
    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@39
    add-int/lit8 v8, v5, 0x1

    #@3b
    aput-object v6, v7, v5

    #@3d
    move v5, v8

    #@3e
    goto :goto_40

    #@3f
    :cond_3f
    move v1, v2

    #@40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_2a

    #@43
    .line 604
    :cond_43
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@45
    invoke-static {p1, v4, v5, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    #@48
    goto :goto_8b

    #@49
    .line 607
    :cond_49
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@4b
    array-length v5, v5

    #@4c
    move v7, v1

    #@4d
    move v6, v3

    #@4e
    :goto_4e
    if-ge v3, v5, :cond_69

    #@50
    .line 608
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@52
    aget-object v9, v8, v3

    #@54
    .line 609
    aput-object v4, v8, v3

    #@56
    .line 462
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@59
    move-result v8

    #@5a
    xor-int/2addr v8, v2

    #@5b
    if-eqz v8, :cond_65

    #@5d
    .line 613
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@5f
    add-int/lit8 v10, v6, 0x1

    #@61
    aput-object v9, v8, v6

    #@63
    move v6, v10

    #@64
    goto :goto_66

    #@65
    :cond_65
    move v7, v2

    #@66
    :goto_66
    add-int/lit8 v3, v3, 0x1

    #@68
    goto :goto_4e

    #@69
    .line 618
    :cond_69
    invoke-direct {p0, v6}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@6c
    move-result v3

    #@6d
    move v5, v3

    #@6e
    :goto_6e
    if-ge v1, v0, :cond_8a

    #@70
    .line 621
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@72
    aget-object v6, v3, v1

    #@74
    .line 622
    aput-object v4, v3, v1

    #@76
    .line 462
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@79
    move-result v3

    #@7a
    xor-int/2addr v3, v2

    #@7b
    if-eqz v3, :cond_86

    #@7d
    .line 626
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@7f
    aput-object v6, v3, v5

    #@81
    .line 627
    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    #@84
    move-result v5

    #@85
    goto :goto_87

    #@86
    :cond_86
    move v7, v2

    #@87
    :goto_87
    add-int/lit8 v1, v1, 0x1

    #@89
    goto :goto_6e

    #@8a
    :cond_8a
    move v1, v7

    #@8b
    :goto_8b
    if-eqz v1, :cond_96

    #@8d
    .line 634
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@8f
    sub-int/2addr v5, p1

    #@90
    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->negativeMod(I)I

    #@93
    move-result p1

    #@94
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    #@96
    :cond_96
    :goto_96
    return v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .line 420
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    #@2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    #@9
    .line 422
    move-object v0, p0

    #@a
    check-cast v0, Ljava/util/List;

    #@c
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    #@f
    move-result v1

    #@10
    if-ne p1, v1, :cond_17

    #@12
    .line 423
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    return-object p1

    #@17
    :cond_17
    if-nez p1, :cond_1e

    #@19
    .line 425
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    #@1c
    move-result-object p1

    #@1d
    return-object p1

    #@1e
    .line 428
    :cond_1e
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@20
    add-int/2addr v1, p1

    #@21
    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@24
    move-result v1

    #@25
    .line 429
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@27
    aget-object v2, v2, v1

    #@29
    .line 431
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@2c
    move-result v3

    #@2d
    const/4 v4, 0x1

    #@2e
    shr-int/2addr v3, v4

    #@2f
    const/4 v5, 0x0

    #@30
    const/4 v6, 0x0

    #@31
    if-ge p1, v3, :cond_62

    #@33
    .line 433
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@35
    if-lt v1, p1, :cond_3f

    #@37
    .line 434
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@39
    add-int/lit8 v3, p1, 0x1

    #@3b
    invoke-static {v0, v0, v3, p1, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@3e
    goto :goto_55

    #@3f
    .line 436
    :cond_3f
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@41
    invoke-static {p1, p1, v4, v6, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@44
    .line 437
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@46
    array-length v0, p1

    #@47
    sub-int/2addr v0, v4

    #@48
    aget-object v0, p1, v0

    #@4a
    aput-object v0, p1, v6

    #@4c
    .line 438
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@4e
    add-int/lit8 v1, v0, 0x1

    #@50
    array-length v3, p1

    #@51
    sub-int/2addr v3, v4

    #@52
    invoke-static {p1, p1, v1, v0, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@55
    .line 441
    :goto_55
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@57
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@59
    aput-object v5, p1, v0

    #@5b
    .line 442
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    #@5e
    move-result p1

    #@5f
    iput p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@61
    goto :goto_92

    #@62
    .line 445
    :cond_62
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@64
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    #@67
    move-result v0

    #@68
    add-int/2addr p1, v0

    #@69
    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@6c
    move-result p1

    #@6d
    if-gt v1, p1, :cond_79

    #@6f
    .line 448
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@71
    add-int/lit8 v3, v1, 0x1

    #@73
    add-int/lit8 v6, p1, 0x1

    #@75
    invoke-static {v0, v0, v1, v3, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@78
    goto :goto_8e

    #@79
    .line 450
    :cond_79
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@7b
    add-int/lit8 v3, v1, 0x1

    #@7d
    array-length v7, v0

    #@7e
    invoke-static {v0, v0, v1, v3, v7}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@81
    .line 451
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@83
    array-length v1, v0

    #@84
    sub-int/2addr v1, v4

    #@85
    aget-object v3, v0, v6

    #@87
    aput-object v3, v0, v1

    #@89
    add-int/lit8 v1, p1, 0x1

    #@8b
    .line 452
    invoke-static {v0, v0, v6, v4, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@8e
    .line 455
    :goto_8e
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@90
    aput-object v5, v0, p1

    #@92
    .line 457
    :goto_92
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@95
    move-result p1

    #@96
    sub-int/2addr p1, v4

    #@97
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    #@99
    return-object v2
.end method

.method public final removeFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 145
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1e

    #@6
    .line 147
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@8
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@a
    aget-object v2, v0, v1

    #@c
    const/4 v3, 0x0

    #@d
    .line 148
    aput-object v3, v0, v1

    #@f
    .line 149
    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@15
    .line 150
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@18
    move-result v0

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    iput v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    #@1d
    return-object v2

    #@1e
    .line 145
    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    #@20
    const-string v1, "ArrayDeque is empty."

    #@22
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 157
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    goto :goto_c

    #@8
    :cond_8
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0
.end method

.method public final removeLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 163
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_24

    #@6
    .line 165
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@8
    move-object v1, p0

    #@9
    check-cast v1, Ljava/util/List;

    #@b
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@13
    move-result v0

    #@14
    .line 166
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@16
    aget-object v2, v1, v0

    #@18
    const/4 v3, 0x0

    #@19
    .line 167
    aput-object v3, v1, v0

    #@1b
    .line 168
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@1e
    move-result v0

    #@1f
    add-int/lit8 v0, v0, -0x1

    #@21
    iput v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    #@23
    return-object v2

    #@24
    .line 163
    :cond_24
    new-instance v0, Ljava/util/NoSuchElementException;

    #@26
    const-string v1, "ArrayDeque is empty."

    #@28
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
.end method

.method public final removeLastOrNull()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .line 175
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    goto :goto_c

    #@8
    :cond_8
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 13
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
    .line 637
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    if-nez v0, :cond_93

    #@c
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@e
    array-length v0, v0

    #@f
    const/4 v2, 0x1

    #@10
    if-nez v0, :cond_14

    #@12
    move v0, v2

    #@13
    goto :goto_15

    #@14
    :cond_14
    move v0, v1

    #@15
    :goto_15
    if-eqz v0, :cond_19

    #@17
    goto/16 :goto_93

    #@19
    .line 640
    :cond_19
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@1b
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@1e
    move-result v3

    #@1f
    add-int/2addr v0, v3

    #@20
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@23
    move-result v0

    #@24
    .line 641
    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@26
    const/4 v4, 0x0

    #@27
    if-ge v3, v0, :cond_48

    #@29
    move v5, v3

    #@2a
    :goto_2a
    if-ge v3, v0, :cond_42

    #@2c
    .line 646
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@2e
    aget-object v6, v6, v3

    #@30
    .line 464
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_3e

    #@36
    .line 650
    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@38
    add-int/lit8 v8, v5, 0x1

    #@3a
    aput-object v6, v7, v5

    #@3c
    move v5, v8

    #@3d
    goto :goto_3f

    #@3e
    :cond_3e
    move v1, v2

    #@3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    #@41
    goto :goto_2a

    #@42
    .line 655
    :cond_42
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@44
    invoke-static {p1, v4, v5, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    #@47
    goto :goto_88

    #@48
    .line 658
    :cond_48
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@4a
    array-length v5, v5

    #@4b
    move v7, v1

    #@4c
    move v6, v3

    #@4d
    :goto_4d
    if-ge v3, v5, :cond_67

    #@4f
    .line 659
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@51
    aget-object v9, v8, v3

    #@53
    .line 660
    aput-object v4, v8, v3

    #@55
    .line 464
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@58
    move-result v8

    #@59
    if-eqz v8, :cond_63

    #@5b
    .line 664
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@5d
    add-int/lit8 v10, v6, 0x1

    #@5f
    aput-object v9, v8, v6

    #@61
    move v6, v10

    #@62
    goto :goto_64

    #@63
    :cond_63
    move v7, v2

    #@64
    :goto_64
    add-int/lit8 v3, v3, 0x1

    #@66
    goto :goto_4d

    #@67
    .line 669
    :cond_67
    invoke-direct {p0, v6}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@6a
    move-result v3

    #@6b
    move v5, v3

    #@6c
    :goto_6c
    if-ge v1, v0, :cond_87

    #@6e
    .line 672
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@70
    aget-object v6, v3, v1

    #@72
    .line 673
    aput-object v4, v3, v1

    #@74
    .line 464
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@77
    move-result v3

    #@78
    if-eqz v3, :cond_83

    #@7a
    .line 677
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@7c
    aput-object v6, v3, v5

    #@7e
    .line 678
    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    #@81
    move-result v5

    #@82
    goto :goto_84

    #@83
    :cond_83
    move v7, v2

    #@84
    :goto_84
    add-int/lit8 v1, v1, 0x1

    #@86
    goto :goto_6c

    #@87
    :cond_87
    move v1, v7

    #@88
    :goto_88
    if-eqz v1, :cond_93

    #@8a
    .line 685
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@8c
    sub-int/2addr v5, p1

    #@8d
    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->negativeMod(I)I

    #@90
    move-result p1

    #@91
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    #@93
    :cond_93
    :goto_93
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .line 363
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    #@2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    #@9
    .line 365
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@b
    add-int/2addr v0, p1

    #@c
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@f
    move-result p1

    #@10
    .line 366
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@12
    aget-object v1, v0, p1

    #@14
    .line 367
    aput-object p2, v0, p1

    #@16
    return-object v1
.end method

.method public final testToArray$kotlin_stdlib()[Ljava/lang/Object;
    .registers 2

    #@0
    .line 559
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->toArray()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final testToArray$kotlin_stdlib([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    const-string v0, "array"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 558
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    #@0
    .line 554
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@3
    move-result v0

    #@4
    new-array v0, v0, [Ljava/lang/Object;

    #@6
    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    const-string v0, "array"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 535
    array-length v0, p1

    #@6
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@9
    move-result v1

    #@a
    if-lt v0, v1, :cond_d

    #@c
    goto :goto_15

    #@d
    :cond_d
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@10
    move-result v0

    #@11
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->arrayOfNulls([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@14
    move-result-object p1

    #@15
    .line 537
    :goto_15
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@17
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@1a
    move-result v1

    #@1b
    add-int/2addr v0, v1

    #@1c
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    #@1f
    move-result v4

    #@20
    .line 538
    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@22
    if-ge v3, v4, :cond_2e

    #@24
    .line 539
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@26
    const/4 v2, 0x0

    #@27
    const/4 v5, 0x2

    #@28
    const/4 v6, 0x0

    #@29
    move-object v1, p1

    #@2a
    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    #@2d
    goto :goto_4b

    #@2e
    .line 540
    :cond_2e
    move-object v0, p0

    #@2f
    check-cast v0, Ljava/util/Collection;

    #@31
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    #@34
    move-result v0

    #@35
    xor-int/lit8 v0, v0, 0x1

    #@37
    if-eqz v0, :cond_4b

    #@39
    .line 541
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@3b
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@3d
    array-length v2, v0

    #@3e
    const/4 v3, 0x0

    #@3f
    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@42
    .line 542
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    #@44
    array-length v1, v0

    #@45
    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    #@47
    sub-int/2addr v1, v2

    #@48
    invoke-static {v0, p1, v1, v3, v4}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    #@4b
    .line 544
    :cond_4b
    :goto_4b
    array-length v0, p1

    #@4c
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@4f
    move-result v1

    #@50
    if-le v0, v1, :cond_59

    #@52
    .line 545
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    #@55
    move-result v0

    #@56
    const/4 v1, 0x0

    #@57
    aput-object v1, p1, v0

    #@59
    :cond_59
    return-object p1
.end method

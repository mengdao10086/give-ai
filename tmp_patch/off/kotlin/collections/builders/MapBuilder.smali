.class public final Lkotlin/collections/builders/MapBuilder;
.super Ljava/lang/Object;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lkotlin/jvm/internal/markers/KMutableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/builders/MapBuilder$Companion;,
        Lkotlin/collections/builders/MapBuilder$Itr;,
        Lkotlin/collections/builders/MapBuilder$KeysItr;,
        Lkotlin/collections/builders/MapBuilder$ValuesItr;,
        Lkotlin/collections/builders/MapBuilder$EntriesItr;,
        Lkotlin/collections/builders/MapBuilder$EntryRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lkotlin/jvm/internal/markers/KMutableMap;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0008\n\u0002\u0010#\n\u0002\u0010\'\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001f\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0010&\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 }*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u00060\u0004j\u0002`\u0005:\t}~\u007f\u0080\u0001\u0081\u0001\u0082\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tBE\u0008\u0002\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000b\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0008\u0012\u0006\u0010\u0011\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u0012J\u0017\u00102\u001a\u00020\u00082\u0006\u00103\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u00084\u00105J\u0013\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000bH\u0002\u00a2\u0006\u0002\u00107J\u0012\u00108\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000109J\r\u0010:\u001a\u00020;H\u0000\u00a2\u0006\u0002\u0008<J\u0008\u0010=\u001a\u00020;H\u0016J\u0008\u0010>\u001a\u00020;H\u0002J\u0019\u0010?\u001a\u00020!2\n\u0010@\u001a\u0006\u0012\u0002\u0008\u00030AH\u0000\u00a2\u0006\u0002\u0008BJ!\u0010C\u001a\u00020!2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010EH\u0000\u00a2\u0006\u0002\u0008FJ\u0015\u0010G\u001a\u00020!2\u0006\u00103\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010HJ\u0015\u0010I\u001a\u00020!2\u0006\u0010J\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010HJ\u0018\u0010K\u001a\u00020!2\u000e\u0010L\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u000309H\u0002J\u0010\u0010M\u001a\u00020;2\u0006\u0010\u0013\u001a\u00020\u0008H\u0002J\u0010\u0010N\u001a\u00020;2\u0006\u0010O\u001a\u00020\u0008H\u0002J\u0019\u0010P\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010QH\u0000\u00a2\u0006\u0002\u0008RJ\u0013\u0010S\u001a\u00020!2\u0008\u0010L\u001a\u0004\u0018\u00010TH\u0096\u0002J\u0015\u0010U\u001a\u00020\u00082\u0006\u00103\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u00105J\u0015\u0010V\u001a\u00020\u00082\u0006\u0010J\u001a\u00028\u0001H\u0002\u00a2\u0006\u0002\u00105J\u0018\u0010W\u001a\u0004\u0018\u00018\u00012\u0006\u00103\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010XJ\u0015\u0010Y\u001a\u00020\u00082\u0006\u00103\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u00105J\u0008\u0010Z\u001a\u00020\u0008H\u0016J\u0008\u0010[\u001a\u00020!H\u0016J\u0019\u0010\\\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010]H\u0000\u00a2\u0006\u0002\u0008^J\u001f\u0010_\u001a\u0004\u0018\u00018\u00012\u0006\u00103\u001a\u00028\u00002\u0006\u0010J\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010`J\u001e\u0010a\u001a\u00020;2\u0014\u0010b\u001a\u0010\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000109H\u0016J\"\u0010c\u001a\u00020!2\u0018\u0010b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010E0AH\u0002J\u001c\u0010d\u001a\u00020!2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010EH\u0002J\u0010\u0010e\u001a\u00020!2\u0006\u0010f\u001a\u00020\u0008H\u0002J\u0010\u0010g\u001a\u00020;2\u0006\u0010h\u001a\u00020\u0008H\u0002J\u0017\u0010i\u001a\u0004\u0018\u00018\u00012\u0006\u00103\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010XJ!\u0010j\u001a\u00020!2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010EH\u0000\u00a2\u0006\u0002\u0008kJ\u0010\u0010l\u001a\u00020;2\u0006\u0010m\u001a\u00020\u0008H\u0002J\u0017\u0010n\u001a\u00020\u00082\u0006\u00103\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008o\u00105J\u0010\u0010p\u001a\u00020;2\u0006\u0010q\u001a\u00020\u0008H\u0002J\u0017\u0010r\u001a\u00020!2\u0006\u0010s\u001a\u00028\u0001H\u0000\u00a2\u0006\u0004\u0008t\u0010HJ\u0010\u0010u\u001a\u00020!2\u0006\u0010v\u001a\u00020\u0008H\u0002J\u0008\u0010w\u001a\u00020xH\u0016J\u0019\u0010y\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010zH\u0000\u00a2\u0006\u0002\u0008{J\u0008\u0010|\u001a\u00020TH\u0002R\u0014\u0010\u0013\u001a\u00020\u00088@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R&\u0010\u0016\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00180\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0015R\u001e\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020!@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u001aR\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\'R\u0016\u0010(\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010*\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u0008@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0015R\u001a\u0010,\u001a\u0008\u0012\u0004\u0012\u00028\u00010-8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0018\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\'R\u0016\u00100\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lkotlin/collections/builders/MapBuilder;",
        "K",
        "V",
        "",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "()V",
        "initialCapacity",
        "",
        "(I)V",
        "keysArray",
        "",
        "valuesArray",
        "presenceArray",
        "",
        "hashArray",
        "maxProbeDistance",
        "length",
        "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V",
        "capacity",
        "getCapacity$kotlin_stdlib",
        "()I",
        "entries",
        "",
        "",
        "getEntries",
        "()Ljava/util/Set;",
        "entriesView",
        "Lkotlin/collections/builders/MapBuilderEntries;",
        "hashShift",
        "hashSize",
        "getHashSize",
        "<set-?>",
        "",
        "isReadOnly",
        "isReadOnly$kotlin_stdlib",
        "()Z",
        "keys",
        "getKeys",
        "[Ljava/lang/Object;",
        "keysView",
        "Lkotlin/collections/builders/MapBuilderKeys;",
        "size",
        "getSize",
        "values",
        "",
        "getValues",
        "()Ljava/util/Collection;",
        "valuesView",
        "Lkotlin/collections/builders/MapBuilderValues;",
        "addKey",
        "key",
        "addKey$kotlin_stdlib",
        "(Ljava/lang/Object;)I",
        "allocateValuesArray",
        "()[Ljava/lang/Object;",
        "build",
        "",
        "checkIsMutable",
        "",
        "checkIsMutable$kotlin_stdlib",
        "clear",
        "compact",
        "containsAllEntries",
        "m",
        "",
        "containsAllEntries$kotlin_stdlib",
        "containsEntry",
        "entry",
        "",
        "containsEntry$kotlin_stdlib",
        "containsKey",
        "(Ljava/lang/Object;)Z",
        "containsValue",
        "value",
        "contentEquals",
        "other",
        "ensureCapacity",
        "ensureExtraCapacity",
        "n",
        "entriesIterator",
        "Lkotlin/collections/builders/MapBuilder$EntriesItr;",
        "entriesIterator$kotlin_stdlib",
        "equals",
        "",
        "findKey",
        "findValue",
        "get",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "hash",
        "hashCode",
        "isEmpty",
        "keysIterator",
        "Lkotlin/collections/builders/MapBuilder$KeysItr;",
        "keysIterator$kotlin_stdlib",
        "put",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "putAll",
        "from",
        "putAllEntries",
        "putEntry",
        "putRehash",
        "i",
        "rehash",
        "newHashSize",
        "remove",
        "removeEntry",
        "removeEntry$kotlin_stdlib",
        "removeHashAt",
        "removedHash",
        "removeKey",
        "removeKey$kotlin_stdlib",
        "removeKeyAt",
        "index",
        "removeValue",
        "element",
        "removeValue$kotlin_stdlib",
        "shouldCompact",
        "extraCapacity",
        "toString",
        "",
        "valuesIterator",
        "Lkotlin/collections/builders/MapBuilder$ValuesItr;",
        "valuesIterator$kotlin_stdlib",
        "writeReplace",
        "Companion",
        "EntriesItr",
        "EntryRef",
        "Itr",
        "KeysItr",
        "ValuesItr",
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
.field private static final Companion:Lkotlin/collections/builders/MapBuilder$Companion;

.field private static final INITIAL_CAPACITY:I = 0x8

.field private static final INITIAL_MAX_PROBE_DISTANCE:I = 0x2

.field private static final MAGIC:I = -0x61c88647

.field private static final TOMBSTONE:I = -0x1


# instance fields
.field private entriesView:Lkotlin/collections/builders/MapBuilderEntries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/MapBuilderEntries<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private hashArray:[I

.field private hashShift:I

.field private isReadOnly:Z

.field private keysArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keysView:Lkotlin/collections/builders/MapBuilderKeys;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/MapBuilderKeys<",
            "TK;>;"
        }
    .end annotation
.end field

.field private length:I

.field private maxProbeDistance:I

.field private presenceArray:[I

.field private size:I

.field private valuesArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private valuesView:Lkotlin/collections/builders/MapBuilderValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/MapBuilderValues<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lkotlin/collections/builders/MapBuilder$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lkotlin/collections/builders/MapBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/16 v0, 0x8

    #@2
    .line 40
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;-><init>(I)V

    #@5
    return-void
.end method

.method public constructor <init>(I)V
    .registers 9

    #@0
    .line 43
    invoke-static {p1}, Lkotlin/collections/builders/ListBuilderKt;->arrayOfUninitializedElements(I)[Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    .line 45
    new-array v3, p1, [I

    #@7
    .line 46
    sget-object v0, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    #@9
    # invokes: Lkotlin/collections/builders/MapBuilder$Companion;->computeHashSize(I)I
    invoke-static {v0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->access$computeHashSize(Lkotlin/collections/builders/MapBuilder$Companion;I)I

    #@c
    move-result p1

    #@d
    new-array v4, p1, [I

    #@f
    const/4 v5, 0x2

    #@10
    const/4 v6, 0x0

    #@11
    move-object v0, p0

    #@12
    .line 42
    invoke-direct/range {v0 .. v6}, Lkotlin/collections/builders/MapBuilder;-><init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V

    #@15
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;[I[III)V"
        }
    .end annotation

    #@0
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 14
    iput-object p1, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@5
    .line 16
    iput-object p2, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    #@7
    .line 18
    iput-object p3, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    #@9
    .line 20
    iput-object p4, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    #@b
    .line 22
    iput p5, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    #@d
    .line 24
    iput p6, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@f
    .line 26
    sget-object p1, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    #@11
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    #@14
    move-result p2

    #@15
    # invokes: Lkotlin/collections/builders/MapBuilder$Companion;->computeShift(I)I
    invoke-static {p1, p2}, Lkotlin/collections/builders/MapBuilder$Companion;->access$computeShift(Lkotlin/collections/builders/MapBuilder$Companion;I)I

    #@18
    move-result p1

    #@19
    iput p1, p0, Lkotlin/collections/builders/MapBuilder;->hashShift:I

    #@1b
    return-void
.end method

.method public static final synthetic access$allocateValuesArray(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;
    .registers 1

    #@0
    .line 12
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->allocateValuesArray()[Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static final synthetic access$getKeysArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;
    .registers 1

    #@0
    .line 12
    iget-object p0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@2
    return-object p0
.end method

.method public static final synthetic access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I
    .registers 1

    #@0
    .line 12
    iget p0, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@2
    return p0
.end method

.method public static final synthetic access$getPresenceArray$p(Lkotlin/collections/builders/MapBuilder;)[I
    .registers 1

    #@0
    .line 12
    iget-object p0, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    #@2
    return-object p0
.end method

.method public static final synthetic access$getValuesArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;
    .registers 1

    #@0
    .line 12
    iget-object p0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    #@2
    return-object p0
.end method

.method public static final synthetic access$removeKeyAt(Lkotlin/collections/builders/MapBuilder;I)V
    .registers 2

    #@0
    .line 12
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->removeKeyAt(I)V

    #@3
    return-void
.end method

.method private final allocateValuesArray()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TV;"
        }
    .end annotation

    #@0
    .line 212
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    .line 214
    :cond_5
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Lkotlin/collections/builders/ListBuilderKt;->arrayOfUninitializedElements(I)[Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    .line 215
    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    #@f
    return-object v0
.end method

.method private final compact()V
    .registers 6

    #@0
    .line 224
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    #@2
    const/4 v1, 0x0

    #@3
    move v2, v1

    #@4
    .line 225
    :goto_4
    iget v3, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@6
    if-ge v1, v3, :cond_1f

    #@8
    .line 226
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    #@a
    aget v3, v3, v1

    #@c
    if-ltz v3, :cond_1c

    #@e
    .line 227
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@10
    aget-object v4, v3, v1

    #@12
    aput-object v4, v3, v2

    #@14
    if-eqz v0, :cond_1a

    #@16
    .line 228
    aget-object v3, v0, v1

    #@18
    aput-object v3, v0, v2

    #@1a
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_4

    #@1f
    .line 233
    :cond_1f
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@21
    invoke-static {v1, v2, v3}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    #@24
    if-eqz v0, :cond_2b

    #@26
    .line 234
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@28
    invoke-static {v0, v2, v1}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    #@2b
    .line 235
    :cond_2b
    iput v2, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@2d
    return-void
.end method

.method private final contentEquals(Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    #@0
    .line 397
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    #@3
    move-result v0

    #@4
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_18

    #@a
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Ljava/util/Collection;

    #@10
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/MapBuilder;->containsAllEntries$kotlin_stdlib(Ljava/util/Collection;)Z

    #@13
    move-result p1

    #@14
    if-eqz p1, :cond_18

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

.method private final ensureCapacity(I)V
    .registers 4

    #@0
    if-ltz p1, :cond_45

    #@2
    .line 200
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    #@5
    move-result v0

    #@6
    if-le p1, v0, :cond_44

    #@8
    .line 201
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    #@b
    move-result v0

    #@c
    mul-int/lit8 v0, v0, 0x3

    #@e
    div-int/lit8 v0, v0, 0x2

    #@10
    if-le p1, v0, :cond_13

    #@12
    goto :goto_14

    #@13
    :cond_13
    move p1, v0

    #@14
    .line 203
    :goto_14
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@16
    invoke-static {v0, p1}, Lkotlin/collections/builders/ListBuilderKt;->copyOfUninitializedElements([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@1c
    .line 204
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    #@1e
    if-eqz v0, :cond_25

    #@20
    invoke-static {v0, p1}, Lkotlin/collections/builders/ListBuilderKt;->copyOfUninitializedElements([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    goto :goto_26

    #@25
    :cond_25
    const/4 v0, 0x0

    #@26
    :goto_26
    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    #@28
    .line 205
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    #@2a
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    #@2d
    move-result-object v0

    #@2e
    const-string v1, "copyOf(this, newSize)"

    #@30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@33
    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    #@35
    .line 206
    sget-object v0, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    #@37
    # invokes: Lkotlin/collections/builders/MapBuilder$Companion;->computeHashSize(I)I
    invoke-static {v0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->access$computeHashSize(Lkotlin/collections/builders/MapBuilder$Companion;I)I

    #@3a
    move-result p1

    #@3b
    .line 207
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    #@3e
    move-result v0

    #@3f
    if-le p1, v0, :cond_44

    #@41
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->rehash(I)V

    #@44
    :cond_44
    return-void

    #@45
    .line 199
    :cond_45
    new-instance p1, Ljava/lang/OutOfMemoryError;

    #@47
    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    #@4a
    throw p1
.end method

.method private final ensureExtraCapacity(I)V
    .registers 3

    #@0
    .line 183
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->shouldCompact(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 184
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    #@9
    move-result p1

    #@a
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->rehash(I)V

    #@d
    goto :goto_14

    #@e
    .line 186
    :cond_e
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@10
    add-int/2addr v0, p1

    #@11
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->ensureCapacity(I)V

    #@14
    :goto_14
    return-void
.end method

.method private final findKey(Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    #@0
    .line 272
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 273
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    #@6
    .line 275
    :goto_6
    iget-object v2, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    #@8
    aget v2, v2, v0

    #@a
    const/4 v3, -0x1

    #@b
    if-nez v2, :cond_e

    #@d
    return v3

    #@e
    :cond_e
    if-lez v2, :cond_1d

    #@10
    .line 277
    iget-object v4, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@12
    add-int/lit8 v2, v2, -0x1

    #@14
    aget-object v4, v4, v2

    #@16
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1d

    #@1c
    return v2

    #@1d
    :cond_1d
    add-int/2addr v1, v3

    #@1e
    if-gez v1, :cond_21

    #@20
    return v3

    #@21
    :cond_21
    add-int/lit8 v2, v0, -0x1

    #@23
    if-nez v0, :cond_2c

    #@25
    .line 279
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    #@28
    move-result v0

    #@29
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_6

    #@2c
    :cond_2c
    move v0, v2

    #@2d
    goto :goto_6
.end method

.method private final findValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    #@0
    .line 284
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@2
    :cond_2
    const/4 v1, -0x1

    #@3
    add-int/2addr v0, v1

    #@4
    if-ltz v0, :cond_1a

    #@6
    .line 286
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    #@8
    aget v1, v1, v0

    #@a
    if-ltz v1, :cond_2

    #@c
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    #@e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@11
    aget-object v1, v1, v0

    #@13
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    return v0

    #@1a
    :cond_1a
    return v1
.end method

.method private final getHashSize()I
    .registers 2

    #@0
    .line 176
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method private final hash(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_7

    #@2
    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result p1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    :goto_8
    const v0, -0x61c88647

    #@b
    mul-int/2addr p1, v0

    #@c
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->hashShift:I

    #@e
    ushr-int/2addr p1, v0

    #@f
    return p1
.end method

.method private final putAllEntries(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)Z"
        }
    .end annotation

    #@0
    .line 430
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 431
    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@b
    move-result v0

    #@c
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->ensureExtraCapacity(I)V

    #@f
    .line 432
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object p1

    #@13
    .line 434
    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_27

    #@19
    .line 435
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/util/Map$Entry;

    #@1f
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->putEntry(Ljava/util/Map$Entry;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_13

    #@25
    const/4 v1, 0x1

    #@26
    goto :goto_13

    #@27
    :cond_27
    return v1
.end method

.method private final putEntry(Ljava/util/Map$Entry;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    #@0
    .line 415
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder;->addKey$kotlin_stdlib(Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    .line 416
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->allocateValuesArray()[Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    const/4 v2, 0x1

    #@d
    if-ltz v0, :cond_16

    #@f
    .line 418
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    aput-object p1, v1, v0

    #@15
    return v2

    #@16
    :cond_16
    neg-int v0, v0

    #@17
    sub-int/2addr v0, v2

    #@18
    .line 421
    aget-object v3, v1, v0

    #@1a
    .line 422
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_2b

    #@24
    .line 423
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@27
    move-result-object p1

    #@28
    aput-object p1, v1, v0

    #@2a
    return v2

    #@2b
    :cond_2b
    const/4 p1, 0x0

    #@2c
    return p1
.end method

.method private final putRehash(I)Z
    .registers 7

    #@0
    .line 257
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    .line 258
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    #@a
    .line 260
    :goto_a
    iget-object v2, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    #@c
    aget v3, v2, v0

    #@e
    const/4 v4, 0x1

    #@f
    if-nez v3, :cond_1a

    #@11
    add-int/lit8 v1, p1, 0x1

    #@13
    .line 262
    aput v1, v2, v0

    #@15
    .line 263
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    #@17
    aput v0, v1, p1

    #@19
    return v4

    #@1a
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    #@1c
    if-gez v1, :cond_20

    #@1e
    const/4 p1, 0x0

    #@1f
    return p1

    #@20
    :cond_20
    add-int/lit8 v2, v0, -0x1

    #@22
    if-nez v0, :cond_2a

    #@24
    .line 267
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    #@27
    move-result v0

    #@28
    sub-int/2addr v0, v4

    #@29
    goto :goto_a

    #@2a
    :cond_2a
    move v0, v2

    #@2b
    goto :goto_a
.end method

.method private final rehash(I)V
    .registers 4

    #@0
    .line 240
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@2
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    #@5
    move-result v1

    #@6
    if-le v0, v1, :cond_b

    #@8
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->compact()V

    #@b
    .line 241
    :cond_b
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x0

    #@10
    if-eq p1, v0, :cond_1f

    #@12
    .line 242
    new-array v0, p1, [I

    #@14
    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    #@16
    .line 243
    sget-object v0, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    #@18
    # invokes: Lkotlin/collections/builders/MapBuilder$Companion;->computeShift(I)I
    invoke-static {v0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->access$computeShift(Lkotlin/collections/builders/MapBuilder$Companion;I)I

    #@1b
    move-result p1

    #@1c
    iput p1, p0, Lkotlin/collections/builders/MapBuilder;->hashShift:I

    #@1e
    goto :goto_28

    #@1f
    .line 245
    :cond_1f
    iget-object p1, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    #@21
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    #@24
    move-result v0

    #@25
    invoke-static {p1, v1, v1, v0}, Lkotlin/collections/ArraysKt;->fill([IIII)V

    #@28
    .line 248
    :goto_28
    iget p1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@2a
    if-ge v1, p1, :cond_3e

    #@2c
    add-int/lit8 p1, v1, 0x1

    #@2e
    .line 249
    invoke-direct {p0, v1}, Lkotlin/collections/builders/MapBuilder;->putRehash(I)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_36

    #@34
    move v1, p1

    #@35
    goto :goto_28

    #@36
    .line 250
    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    #@38
    const-string v0, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    #@3a
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3d
    throw p1

    #@3e
    :cond_3e
    return-void
.end method

.method private final removeHashAt(I)V
    .registers 11

    #@0
    .line 345
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    #@2
    mul-int/lit8 v0, v0, 0x2

    #@4
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    #@7
    move-result v1

    #@8
    div-int/lit8 v1, v1, 0x2

    #@a
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x0

    #@f
    move v2, v0

    #@10
    move v3, v1

    #@11
    move v0, p1

    #@12
    :cond_12
    add-int/lit8 v4, p1, -0x1

    #@14
    if-nez p1, :cond_1d

    #@16
    .line 347
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    #@19
    move-result p1

    #@1a
    add-int/lit8 p1, p1, -0x1

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    move p1, v4

    #@1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    #@20
    .line 348
    iget v4, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    #@22
    if-le v3, v4, :cond_29

    #@24
    .line 350
    iget-object p1, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    #@26
    aput v1, p1, v0

    #@28
    return-void

    #@29
    .line 353
    :cond_29
    iget-object v4, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    #@2b
    aget v5, v4, p1

    #@2d
    if-nez v5, :cond_32

    #@2f
    .line 356
    aput v1, v4, v0

    #@31
    return-void

    #@32
    :cond_32
    const/4 v6, -0x1

    #@33
    if-gez v5, :cond_3a

    #@35
    .line 365
    aput v6, v4, v0

    #@37
    :goto_37
    move v0, p1

    #@38
    move v3, v1

    #@39
    goto :goto_57

    #@3a
    .line 369
    :cond_3a
    iget-object v4, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@3c
    add-int/lit8 v7, v5, -0x1

    #@3e
    aget-object v4, v4, v7

    #@40
    invoke-direct {p0, v4}, Lkotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    #@43
    move-result v4

    #@44
    sub-int/2addr v4, p1

    #@45
    .line 374
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    #@48
    move-result v8

    #@49
    add-int/lit8 v8, v8, -0x1

    #@4b
    and-int/2addr v4, v8

    #@4c
    if-lt v4, v3, :cond_57

    #@4e
    .line 376
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    #@50
    aput v5, v3, v0

    #@52
    .line 377
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    #@54
    aput v0, v3, v7

    #@56
    goto :goto_37

    #@57
    :cond_57
    :goto_57
    add-int/2addr v2, v6

    #@58
    if-gez v2, :cond_12

    #@5a
    .line 385
    iget-object p1, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    #@5c
    aput v6, p1, v0

    #@5e
    return-void
.end method

.method private final removeKeyAt(I)V
    .registers 4

    #@0
    .line 335
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@2
    invoke-static {v0, p1}, Lkotlin/collections/builders/ListBuilderKt;->resetAt([Ljava/lang/Object;I)V

    #@5
    .line 336
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    #@7
    aget v0, v0, p1

    #@9
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->removeHashAt(I)V

    #@c
    .line 337
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    #@e
    const/4 v1, -0x1

    #@f
    aput v1, v0, p1

    #@11
    .line 338
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    #@14
    move-result p1

    #@15
    add-int/2addr p1, v1

    #@16
    iput p1, p0, Lkotlin/collections/builders/MapBuilder;->size:I

    #@18
    return-void
.end method

.method private final shouldCompact(I)Z
    .registers 5

    #@0
    .line 191
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@6
    sub-int/2addr v0, v1

    #@7
    .line 192
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    #@a
    move-result v2

    #@b
    sub-int/2addr v1, v2

    #@c
    if-ge v0, p1, :cond_1b

    #@e
    add-int/2addr v0, v1

    #@f
    if-lt v0, p1, :cond_1b

    #@11
    .line 195
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    #@14
    move-result p1

    #@15
    div-int/lit8 p1, p1, 0x4

    #@17
    if-lt v1, p1, :cond_1b

    #@19
    const/4 p1, 0x1

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    const/4 p1, 0x0

    #@1c
    :goto_1c
    return p1
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 3

    #@0
    .line 57
    iget-boolean v0, p0, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_d

    #@4
    .line 58
    new-instance v0, Lkotlin/collections/builders/SerializedMap;

    #@6
    move-object v1, p0

    #@7
    check-cast v1, Ljava/util/Map;

    #@9
    invoke-direct {v0, v1}, Lkotlin/collections/builders/SerializedMap;-><init>(Ljava/util/Map;)V

    #@c
    return-object v0

    #@d
    .line 60
    :cond_d
    new-instance v0, Ljava/io/NotSerializableException;

    #@f
    const-string v1, "The map cannot be serialized while it is being built."

    #@11
    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method


# virtual methods
.method public final addKey$kotlin_stdlib(Ljava/lang/Object;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    #@0
    .line 293
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    #@3
    .line 295
    :goto_3
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    .line 297
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    #@9
    mul-int/lit8 v1, v1, 0x2

    #@b
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    #@e
    move-result v2

    #@f
    div-int/lit8 v2, v2, 0x2

    #@11
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    #@14
    move-result v1

    #@15
    const/4 v2, 0x0

    #@16
    .line 300
    :goto_16
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    #@18
    aget v3, v3, v0

    #@1a
    const/4 v4, 0x1

    #@1b
    if-gtz v3, :cond_49

    #@1d
    .line 302
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@1f
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    #@22
    move-result v3

    #@23
    if-lt v1, v3, :cond_29

    #@25
    .line 303
    invoke-direct {p0, v4}, Lkotlin/collections/builders/MapBuilder;->ensureExtraCapacity(I)V

    #@28
    goto :goto_3

    #@29
    .line 306
    :cond_29
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@2b
    add-int/lit8 v3, v1, 0x1

    #@2d
    iput v3, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@2f
    .line 307
    iget-object v5, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@31
    aput-object p1, v5, v1

    #@33
    .line 308
    iget-object p1, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    #@35
    aput v0, p1, v1

    #@37
    .line 309
    iget-object p1, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    #@39
    aput v3, p1, v0

    #@3b
    .line 310
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    #@3e
    move-result p1

    #@3f
    add-int/2addr p1, v4

    #@40
    iput p1, p0, Lkotlin/collections/builders/MapBuilder;->size:I

    #@42
    .line 311
    iget p1, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    #@44
    if-le v2, p1, :cond_48

    #@46
    iput v2, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    #@48
    :cond_48
    return v1

    #@49
    .line 314
    :cond_49
    iget-object v5, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@4b
    add-int/lit8 v6, v3, -0x1

    #@4d
    aget-object v5, v5, v6

    #@4f
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@52
    move-result v5

    #@53
    if-eqz v5, :cond_57

    #@55
    neg-int p1, v3

    #@56
    return p1

    #@57
    :cond_57
    add-int/lit8 v2, v2, 0x1

    #@59
    if-le v2, v1, :cond_65

    #@5b
    .line 318
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    #@5e
    move-result v0

    #@5f
    mul-int/lit8 v0, v0, 0x2

    #@61
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->rehash(I)V

    #@64
    goto :goto_3

    #@65
    :cond_65
    add-int/lit8 v3, v0, -0x1

    #@67
    if-nez v0, :cond_6f

    #@69
    .line 321
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    #@6c
    move-result v0

    #@6d
    sub-int/2addr v0, v4

    #@6e
    goto :goto_16

    #@6f
    :cond_6f
    move v0, v3

    #@70
    goto :goto_16
.end method

.method public final build()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 51
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 52
    iput-boolean v0, p0, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    #@6
    .line 53
    move-object v0, p0

    #@7
    check-cast v0, Ljava/util/Map;

    #@9
    return-object v0
.end method

.method public final checkIsMutable$kotlin_stdlib()V
    .registers 2

    #@0
    .line 179
    iget-boolean v0, p0, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@7
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@a
    throw v0
.end method

.method public clear()V
    .registers 7

    #@0
    .line 101
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    #@3
    .line 103
    new-instance v0, Lkotlin/ranges/IntRange;

    #@5
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@7
    add-int/lit8 v1, v1, -0x1

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    #@d
    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    #@10
    move-result-object v0

    #@11
    :cond_11
    :goto_11
    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->hasNext()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_29

    #@17
    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    #@1a
    move-result v1

    #@1b
    .line 104
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    #@1d
    aget v4, v3, v1

    #@1f
    if-ltz v4, :cond_11

    #@21
    .line 106
    iget-object v5, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    #@23
    aput v2, v5, v4

    #@25
    const/4 v4, -0x1

    #@26
    .line 107
    aput v4, v3, v1

    #@28
    goto :goto_11

    #@29
    .line 110
    :cond_29
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@2b
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@2d
    invoke-static {v0, v2, v1}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    #@30
    .line 111
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    #@32
    if-eqz v0, :cond_39

    #@34
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@36
    invoke-static {v0, v2, v1}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    #@39
    .line 112
    :cond_39
    iput v2, p0, Lkotlin/collections/builders/MapBuilder;->size:I

    #@3b
    .line 113
    iput v2, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    #@3d
    return-void
.end method

.method public final containsAllEntries$kotlin_stdlib(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    #@0
    const-string v0, "m"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 400
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object p1

    #@9
    .line 401
    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_20

    #@f
    .line 402
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x0

    #@14
    if-eqz v0, :cond_1f

    #@16
    .line 405
    :try_start_16
    check-cast v0, Ljava/util/Map$Entry;

    #@18
    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder;->containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z

    #@1b
    move-result v0
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_1c} :catch_1f

    #@1c
    if-nez v0, :cond_9

    #@1e
    nop

    #@1f
    :catch_1f
    :cond_1f
    return v1

    #@20
    :cond_20
    const/4 p1, 0x1

    #@21
    return p1
.end method

.method public final containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    #@0
    const-string v0, "entry"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 392
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    #@c
    move-result v0

    #@d
    if-gez v0, :cond_11

    #@f
    const/4 p1, 0x0

    #@10
    return p1

    #@11
    .line 394
    :cond_11
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    #@13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@16
    aget-object v0, v1, v0

    #@18
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1b
    move-result-object p1

    #@1c
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1f
    move-result p1

    #@20
    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 63
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    :goto_9
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 64
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findValue(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    :goto_9
    return p1
.end method

.method public final entriesIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$EntriesItr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/MapBuilder$EntriesItr<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 460
    new-instance v0, Lkotlin/collections/builders/MapBuilder$EntriesItr;

    #@2
    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    #@5
    return-object v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    #@0
    .line 12
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getEntries()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-eq p1, p0, :cond_11

    #@2
    .line 145
    instance-of v0, p1, Ljava/util/Map;

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 146
    check-cast p1, Ljava/util/Map;

    #@8
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->contentEquals(Ljava/util/Map;)Z

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

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .line 67
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    if-gez p1, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return-object p1

    #@8
    .line 69
    :cond_8
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    #@a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@d
    aget-object p1, v0, p1

    #@f
    return-object p1
.end method

.method public final getCapacity$kotlin_stdlib()I
    .registers 2

    #@0
    .line 175
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getEntries()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    #@0
    .line 135
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->entriesView:Lkotlin/collections/builders/MapBuilderEntries;

    #@2
    if-nez v0, :cond_e

    #@4
    .line 137
    new-instance v0, Lkotlin/collections/builders/MapBuilderEntries;

    #@6
    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilderEntries;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    #@9
    .line 138
    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->entriesView:Lkotlin/collections/builders/MapBuilderEntries;

    #@b
    .line 139
    check-cast v0, Ljava/util/Set;

    #@d
    return-object v0

    #@e
    .line 140
    :cond_e
    check-cast v0, Ljava/util/Set;

    #@10
    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    #@0
    .line 117
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysView:Lkotlin/collections/builders/MapBuilderKeys;

    #@2
    if-nez v0, :cond_e

    #@4
    .line 119
    new-instance v0, Lkotlin/collections/builders/MapBuilderKeys;

    #@6
    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilderKeys;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    #@9
    .line 120
    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysView:Lkotlin/collections/builders/MapBuilderKeys;

    #@b
    .line 121
    check-cast v0, Ljava/util/Set;

    #@d
    goto :goto_10

    #@e
    .line 122
    :cond_e
    check-cast v0, Ljava/util/Set;

    #@10
    :goto_10
    return-object v0
.end method

.method public getSize()I
    .registers 2

    #@0
    .line 28
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->size:I

    #@2
    return v0
.end method

.method public getValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    #@0
    .line 126
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesView:Lkotlin/collections/builders/MapBuilderValues;

    #@2
    if-nez v0, :cond_e

    #@4
    .line 128
    new-instance v0, Lkotlin/collections/builders/MapBuilderValues;

    #@6
    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilderValues;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    #@9
    .line 129
    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesView:Lkotlin/collections/builders/MapBuilderValues;

    #@b
    .line 130
    check-cast v0, Ljava/util/Collection;

    #@d
    goto :goto_10

    #@e
    .line 131
    :cond_e
    check-cast v0, Ljava/util/Collection;

    #@10
    :goto_10
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    .line 151
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->entriesIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$EntriesItr;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    .line 152
    :goto_5
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_11

    #@b
    .line 153
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->nextHashCode$kotlin_stdlib()I

    #@e
    move-result v2

    #@f
    add-int/2addr v1, v2

    #@10
    goto :goto_5

    #@11
    :cond_11
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

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

.method public final isReadOnly$kotlin_stdlib()Z
    .registers 2

    #@0
    .line 35
    iget-boolean v0, p0, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    #@2
    return v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    #@0
    .line 12
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getKeys()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final keysIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$KeysItr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/MapBuilder$KeysItr<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 458
    new-instance v0, Lkotlin/collections/builders/MapBuilder$KeysItr;

    #@2
    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    #@5
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .line 73
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    #@3
    .line 74
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/MapBuilder;->addKey$kotlin_stdlib(Ljava/lang/Object;)I

    #@6
    move-result p1

    #@7
    .line 75
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->allocateValuesArray()[Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    if-gez p1, :cond_15

    #@d
    neg-int p1, p1

    #@e
    add-int/lit8 p1, p1, -0x1

    #@10
    .line 77
    aget-object v1, v0, p1

    #@12
    .line 78
    aput-object p2, v0, p1

    #@14
    return-object v1

    #@15
    .line 81
    :cond_15
    aput-object p2, v0, p1

    #@17
    const/4 p1, 0x0

    #@18
    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "from"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 87
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    #@8
    .line 88
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@b
    move-result-object p1

    #@c
    check-cast p1, Ljava/util/Collection;

    #@e
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->putAllEntries(Ljava/util/Collection;)Z

    #@11
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .line 92
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/MapBuilder;->removeKey$kotlin_stdlib(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    if-gez p1, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return-object p1

    #@8
    .line 94
    :cond_8
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    #@a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@d
    .line 95
    aget-object v1, v0, p1

    #@f
    .line 96
    invoke-static {v0, p1}, Lkotlin/collections/builders/ListBuilderKt;->resetAt([Ljava/lang/Object;I)V

    #@12
    return-object v1
.end method

.method public final removeEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    #@0
    const-string v0, "entry"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 442
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    #@8
    .line 443
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    const/4 v1, 0x0

    #@11
    if-gez v0, :cond_14

    #@13
    return v1

    #@14
    .line 445
    :cond_14
    iget-object v2, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    #@16
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@19
    aget-object v2, v2, v0

    #@1b
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object p1

    #@1f
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@22
    move-result p1

    #@23
    if-nez p1, :cond_26

    #@25
    return v1

    #@26
    .line 446
    :cond_26
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->removeKeyAt(I)V

    #@29
    const/4 p1, 0x1

    #@2a
    return p1
.end method

.method public final removeKey$kotlin_stdlib(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    #@0
    .line 327
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    #@3
    .line 328
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    #@6
    move-result p1

    #@7
    if-gez p1, :cond_b

    #@9
    const/4 p1, -0x1

    #@a
    return p1

    #@b
    .line 330
    :cond_b
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->removeKeyAt(I)V

    #@e
    return p1
.end method

.method public final removeValue$kotlin_stdlib(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    #@0
    .line 451
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    #@3
    .line 452
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findValue(Ljava/lang/Object;)I

    #@6
    move-result p1

    #@7
    if-gez p1, :cond_b

    #@9
    const/4 p1, 0x0

    #@a
    return p1

    #@b
    .line 454
    :cond_b
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->removeKeyAt(I)V

    #@e
    const/4 p1, 0x1

    #@f
    return p1
.end method

.method public final bridge size()I
    .registers 2

    #@0
    .line 12
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getSize()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    #@5
    move-result v1

    #@6
    mul-int/lit8 v1, v1, 0x3

    #@8
    add-int/lit8 v1, v1, 0x2

    #@a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    const-string v1, "{"

    #@f
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 162
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->entriesIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$EntriesItr;

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x0

    #@17
    .line 163
    :goto_17
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->hasNext()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_2a

    #@1d
    if-lez v2, :cond_24

    #@1f
    const-string v3, ", "

    #@21
    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 165
    :cond_24
    invoke-virtual {v1, v0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->nextAppendString(Ljava/lang/StringBuilder;)V

    #@27
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_17

    #@2a
    :cond_2a
    const-string v1, "}"

    #@2c
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    const-string v1, "sb.toString()"

    #@35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@38
    return-object v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    #@0
    .line 12
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getValues()Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final valuesIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$ValuesItr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/MapBuilder$ValuesItr<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 459
    new-instance v0, Lkotlin/collections/builders/MapBuilder$ValuesItr;

    #@2
    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilder$ValuesItr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    #@5
    return-object v0
.end method

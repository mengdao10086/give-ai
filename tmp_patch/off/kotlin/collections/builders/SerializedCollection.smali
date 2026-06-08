.class public final Lkotlin/collections/builders/SerializedCollection;
.super Ljava/lang/Object;
.source "ListBuilder.kt"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/builders/SerializedCollection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/SerializedCollection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,429:1\n1#2:430\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u0019\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0012\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/collections/builders/SerializedCollection;",
        "Ljava/io/Externalizable;",
        "()V",
        "collection",
        "",
        "tag",
        "",
        "(Ljava/util/Collection;I)V",
        "readExternal",
        "",
        "input",
        "Ljava/io/ObjectInput;",
        "readResolve",
        "",
        "writeExternal",
        "output",
        "Ljava/io/ObjectOutput;",
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
.field public static final Companion:Lkotlin/collections/builders/SerializedCollection$Companion;

.field private static final serialVersionUID:J = 0x0L

.field public static final tagList:I = 0x0

.field public static final tagSet:I = 0x1


# instance fields
.field private collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation
.end field

.field private final tag:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lkotlin/collections/builders/SerializedCollection$Companion;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lkotlin/collections/builders/SerializedCollection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    #@6
    sput-object v0, Lkotlin/collections/builders/SerializedCollection;->Companion:Lkotlin/collections/builders/SerializedCollection$Companion;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 391
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Collection;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {p0, v0, v1}, Lkotlin/collections/builders/SerializedCollection;-><init>(Ljava/util/Collection;I)V

    #@a
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;I)V"
        }
    .end annotation

    #@0
    const-string v0, "collection"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 387
    iput-object p1, p0, Lkotlin/collections/builders/SerializedCollection;->collection:Ljava/util/Collection;

    #@a
    .line 388
    iput p2, p0, Lkotlin/collections/builders/SerializedCollection;->tag:I

    #@c
    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 2

    #@0
    .line 422
    iget-object v0, p0, Lkotlin/collections/builders/SerializedCollection;->collection:Ljava/util/Collection;

    #@2
    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 7

    #@0
    const-string v0, "input"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 402
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    #@8
    move-result v0

    #@9
    and-int/lit8 v1, v0, 0x1

    #@b
    and-int/lit8 v2, v0, -0x2

    #@d
    const/16 v3, 0x2e

    #@f
    if-nez v2, :cond_7f

    #@11
    .line 408
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@14
    move-result v0

    #@15
    if-ltz v0, :cond_66

    #@17
    const/4 v2, 0x0

    #@18
    if-eqz v1, :cond_4d

    #@1a
    const/4 v4, 0x1

    #@1b
    if-ne v1, v4, :cond_34

    #@1d
    .line 414
    invoke-static {v0}, Lkotlin/collections/SetsKt;->createSetBuilder(I)Ljava/util/Set;

    #@20
    move-result-object v1

    #@21
    :goto_21
    if-ge v2, v0, :cond_2d

    #@23
    .line 415
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2a
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_21

    #@2d
    .line 414
    :cond_2d
    invoke-static {v1}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    #@30
    move-result-object p1

    #@31
    check-cast p1, Ljava/util/Collection;

    #@33
    goto :goto_63

    #@34
    .line 418
    :cond_34
    new-instance p1, Ljava/io/InvalidObjectException;

    #@36
    new-instance v0, Ljava/lang/StringBuilder;

    #@38
    const-string v2, "Unsupported collection type tag: "

    #@3a
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@4c
    throw p1

    #@4d
    .line 411
    :cond_4d
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->createListBuilder(I)Ljava/util/List;

    #@50
    move-result-object v1

    #@51
    :goto_51
    if-ge v2, v0, :cond_5d

    #@53
    .line 412
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    #@56
    move-result-object v3

    #@57
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5a
    add-int/lit8 v2, v2, 0x1

    #@5c
    goto :goto_51

    #@5d
    .line 411
    :cond_5d
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    #@60
    move-result-object p1

    #@61
    check-cast p1, Ljava/util/Collection;

    #@63
    .line 410
    :goto_63
    iput-object p1, p0, Lkotlin/collections/builders/SerializedCollection;->collection:Ljava/util/Collection;

    #@65
    return-void

    #@66
    .line 409
    :cond_66
    new-instance p1, Ljava/io/InvalidObjectException;

    #@68
    new-instance v1, Ljava/lang/StringBuilder;

    #@6a
    const-string v2, "Illegal size value: "

    #@6c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@7e
    throw p1

    #@7f
    .line 406
    :cond_7f
    new-instance p1, Ljava/io/InvalidObjectException;

    #@81
    new-instance v1, Ljava/lang/StringBuilder;

    #@83
    const-string v2, "Unsupported flags value: "

    #@85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v0

    #@94
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@97
    throw p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4

    #@0
    const-string v0, "output"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 394
    iget v0, p0, Lkotlin/collections/builders/SerializedCollection;->tag:I

    #@7
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    #@a
    .line 395
    iget-object v0, p0, Lkotlin/collections/builders/SerializedCollection;->collection:Ljava/util/Collection;

    #@c
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@f
    move-result v0

    #@10
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@13
    .line 396
    iget-object v0, p0, Lkotlin/collections/builders/SerializedCollection;->collection:Ljava/util/Collection;

    #@15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v0

    #@19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_27

    #@1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    .line 397
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    #@26
    goto :goto_19

    #@27
    :cond_27
    return-void
.end method

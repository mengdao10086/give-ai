.class public final Lkotlin/collections/builders/MapBuilder$EntriesItr;
.super Lkotlin/collections/builders/MapBuilder$Itr;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntriesItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/builders/MapBuilder$Itr<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0010\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00050\u0004B\u0019\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\nH\u0096\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000fJ\r\u0010\u0010\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlin/collections/builders/MapBuilder$EntriesItr;",
        "K",
        "V",
        "Lkotlin/collections/builders/MapBuilder$Itr;",
        "",
        "",
        "map",
        "Lkotlin/collections/builders/MapBuilder;",
        "(Lkotlin/collections/builders/MapBuilder;)V",
        "next",
        "Lkotlin/collections/builders/MapBuilder$EntryRef;",
        "nextAppendString",
        "",
        "sb",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "nextHashCode",
        "",
        "nextHashCode$kotlin_stdlib",
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


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/MapBuilder<",
            "TK;TV;>;)V"
        }
    .end annotation

    #@0
    const-string v0, "map"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 519
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Itr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    #@8
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    #@0
    .line 519
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->next()Lkotlin/collections/builders/MapBuilder$EntryRef;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Lkotlin/collections/builders/MapBuilder$EntryRef;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/MapBuilder$EntryRef<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 522
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getIndex$kotlin_stdlib()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    #@7
    move-result-object v1

    #@8
    # getter for: Lkotlin/collections/builders/MapBuilder;->length:I
    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    #@b
    move-result v1

    #@c
    if-ge v0, v1, :cond_2b

    #@e
    .line 523
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getIndex$kotlin_stdlib()I

    #@11
    move-result v0

    #@12
    add-int/lit8 v1, v0, 0x1

    #@14
    invoke-virtual {p0, v1}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->setIndex$kotlin_stdlib(I)V

    #@17
    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->setLastIndex$kotlin_stdlib(I)V

    #@1a
    .line 524
    new-instance v0, Lkotlin/collections/builders/MapBuilder$EntryRef;

    #@1c
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getLastIndex$kotlin_stdlib()I

    #@23
    move-result v2

    #@24
    invoke-direct {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder$EntryRef;-><init>(Lkotlin/collections/builders/MapBuilder;I)V

    #@27
    .line 525
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->initNext$kotlin_stdlib()V

    #@2a
    return-object v0

    #@2b
    .line 522
    :cond_2b
    new-instance v0, Ljava/util/NoSuchElementException;

    #@2d
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@30
    throw v0
.end method

.method public final nextAppendString(Ljava/lang/StringBuilder;)V
    .registers 5

    #@0
    const-string v0, "sb"

    #@2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 538
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getIndex$kotlin_stdlib()I

    #@8
    move-result v0

    #@9
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    #@c
    move-result-object v1

    #@d
    # getter for: Lkotlin/collections/builders/MapBuilder;->length:I
    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    #@10
    move-result v1

    #@11
    if-ge v0, v1, :cond_6b

    #@13
    .line 539
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getIndex$kotlin_stdlib()I

    #@16
    move-result v0

    #@17
    add-int/lit8 v1, v0, 0x1

    #@19
    invoke-virtual {p0, v1}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->setIndex$kotlin_stdlib(I)V

    #@1c
    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->setLastIndex$kotlin_stdlib(I)V

    #@1f
    .line 540
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    #@22
    move-result-object v0

    #@23
    # getter for: Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;
    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getKeysArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getLastIndex$kotlin_stdlib()I

    #@2a
    move-result v1

    #@2b
    aget-object v0, v0, v1

    #@2d
    .line 541
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    const-string v2, "(this Map)"

    #@37
    if-eqz v1, :cond_3d

    #@39
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    goto :goto_40

    #@3d
    :cond_3d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    :goto_40
    const/16 v0, 0x3d

    #@42
    .line 542
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@45
    .line 543
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    #@48
    move-result-object v0

    #@49
    # getter for: Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;
    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getValuesArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@50
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getLastIndex$kotlin_stdlib()I

    #@53
    move-result v1

    #@54
    aget-object v0, v0, v1

    #@56
    .line 544
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5d
    move-result v1

    #@5e
    if-eqz v1, :cond_64

    #@60
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    goto :goto_67

    #@64
    :cond_64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    .line 545
    :goto_67
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->initNext$kotlin_stdlib()V

    #@6a
    return-void

    #@6b
    .line 538
    :cond_6b
    new-instance p1, Ljava/util/NoSuchElementException;

    #@6d
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    #@70
    throw p1
.end method

.method public final nextHashCode$kotlin_stdlib()I
    .registers 5

    #@0
    .line 530
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getIndex$kotlin_stdlib()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    #@7
    move-result-object v1

    #@8
    # getter for: Lkotlin/collections/builders/MapBuilder;->length:I
    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    #@b
    move-result v1

    #@c
    if-ge v0, v1, :cond_4d

    #@e
    .line 531
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getIndex$kotlin_stdlib()I

    #@11
    move-result v0

    #@12
    add-int/lit8 v1, v0, 0x1

    #@14
    invoke-virtual {p0, v1}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->setIndex$kotlin_stdlib(I)V

    #@17
    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->setLastIndex$kotlin_stdlib(I)V

    #@1a
    .line 532
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    #@1d
    move-result-object v0

    #@1e
    # getter for: Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;
    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getKeysArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getLastIndex$kotlin_stdlib()I

    #@25
    move-result v1

    #@26
    aget-object v0, v0, v1

    #@28
    const/4 v1, 0x0

    #@29
    if-eqz v0, :cond_30

    #@2b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@2e
    move-result v0

    #@2f
    goto :goto_31

    #@30
    :cond_30
    move v0, v1

    #@31
    :goto_31
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    #@34
    move-result-object v2

    #@35
    # getter for: Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/collections/builders/MapBuilder;->access$getValuesArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@3c
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getLastIndex$kotlin_stdlib()I

    #@3f
    move-result v3

    #@40
    aget-object v2, v2, v3

    #@42
    if-eqz v2, :cond_48

    #@44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@47
    move-result v1

    #@48
    :cond_48
    xor-int/2addr v0, v1

    #@49
    .line 533
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->initNext$kotlin_stdlib()V

    #@4c
    return v0

    #@4d
    .line 530
    :cond_4d
    new-instance v0, Ljava/util/NoSuchElementException;

    #@4f
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@52
    throw v0
.end method

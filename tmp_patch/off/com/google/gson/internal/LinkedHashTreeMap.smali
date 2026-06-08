.class public final Lcom/google/gson/internal/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;,
        Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;,
        Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;,
        Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;,
        Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;,
        Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I

.field table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 42
    new-instance v0, Lcom/google/gson/internal/LinkedHashTreeMap$1;

    #@2
    invoke-direct {v0}, Lcom/google/gson/internal/LinkedHashTreeMap$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 61
    sget-object v0, Lcom/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@2
    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    #@5
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    #@0
    .line 72
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 51
    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    #@6
    .line 52
    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    #@8
    if-eqz p1, :cond_b

    #@a
    goto :goto_d

    #@b
    .line 73
    :cond_b
    sget-object p1, Lcom/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@d
    :goto_d
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    #@f
    .line 76
    new-instance p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@11
    invoke-direct {p1}, Lcom/google/gson/internal/LinkedHashTreeMap$Node;-><init>()V

    #@14
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@16
    const/16 p1, 0x10

    #@18
    new-array p1, p1, [Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@1a
    .line 77
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@1c
    .line 78
    array-length v0, p1

    #@1d
    div-int/lit8 v0, v0, 0x2

    #@1f
    array-length p1, p1

    #@20
    div-int/lit8 p1, p1, 0x4

    #@22
    add-int/2addr v0, p1

    #@23
    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->threshold:I

    #@25
    return-void
.end method

.method private doubleCapacity()V
    .registers 3

    #@0
    .line 558
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@2
    invoke-static {v0}, Lcom/google/gson/internal/LinkedHashTreeMap;->doubleCapacity([Lcom/google/gson/internal/LinkedHashTreeMap$Node;)[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@8
    .line 559
    array-length v1, v0

    #@9
    div-int/lit8 v1, v1, 0x2

    #@b
    array-length v0, v0

    #@c
    div-int/lit8 v0, v0, 0x4

    #@e
    add-int/2addr v1, v0

    #@f
    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->threshold:I

    #@11
    return-void
.end method

.method static doubleCapacity([Lcom/google/gson/internal/LinkedHashTreeMap$Node;)[Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)[",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 568
    array-length v0, p0

    #@1
    mul-int/lit8 v1, v0, 0x2

    #@3
    .line 570
    new-array v1, v1, [Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@5
    .line 571
    new-instance v2, Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;

    #@7
    invoke-direct {v2}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;-><init>()V

    #@a
    .line 572
    new-instance v3, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;

    #@c
    invoke-direct {v3}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    #@f
    .line 573
    new-instance v4, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;

    #@11
    invoke-direct {v4}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    #@14
    const/4 v5, 0x0

    #@15
    move v6, v5

    #@16
    :goto_16
    if-ge v6, v0, :cond_67

    #@18
    .line 577
    aget-object v7, p0, v6

    #@1a
    if-nez v7, :cond_1d

    #@1c
    goto :goto_64

    #@1d
    .line 583
    :cond_1d
    invoke-virtual {v2, v7}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@20
    move v8, v5

    #@21
    move v9, v8

    #@22
    .line 586
    :goto_22
    invoke-virtual {v2}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@25
    move-result-object v10

    #@26
    if-eqz v10, :cond_33

    #@28
    .line 587
    iget v10, v10, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    #@2a
    and-int/2addr v10, v0

    #@2b
    if-nez v10, :cond_30

    #@2d
    add-int/lit8 v8, v8, 0x1

    #@2f
    goto :goto_22

    #@30
    :cond_30
    add-int/lit8 v9, v9, 0x1

    #@32
    goto :goto_22

    #@33
    .line 595
    :cond_33
    invoke-virtual {v3, v8}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    #@36
    .line 596
    invoke-virtual {v4, v9}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    #@39
    .line 597
    invoke-virtual {v2, v7}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@3c
    .line 598
    :goto_3c
    invoke-virtual {v2}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@3f
    move-result-object v7

    #@40
    if-eqz v7, :cond_4f

    #@42
    .line 599
    iget v10, v7, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    #@44
    and-int/2addr v10, v0

    #@45
    if-nez v10, :cond_4b

    #@47
    .line 600
    invoke-virtual {v3, v7}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@4a
    goto :goto_3c

    #@4b
    .line 602
    :cond_4b
    invoke-virtual {v4, v7}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@4e
    goto :goto_3c

    #@4f
    :cond_4f
    const/4 v7, 0x0

    #@50
    if-lez v8, :cond_57

    #@52
    .line 607
    invoke-virtual {v3}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@55
    move-result-object v8

    #@56
    goto :goto_58

    #@57
    :cond_57
    move-object v8, v7

    #@58
    :goto_58
    aput-object v8, v1, v6

    #@5a
    add-int v8, v6, v0

    #@5c
    if-lez v9, :cond_62

    #@5e
    .line 608
    invoke-virtual {v4}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@61
    move-result-object v7

    #@62
    :cond_62
    aput-object v7, v1, v8

    #@64
    :goto_64
    add-int/lit8 v6, v6, 0x1

    #@66
    goto :goto_16

    #@67
    :cond_67
    return-object v1
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-eq p1, p2, :cond_d

    #@2
    if-eqz p1, :cond_b

    #@4
    .line 224
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 p1, 0x1

    #@e
    :goto_e
    return p1
.end method

.method private rebalance(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    #@0
    :goto_0
    if-eqz p1, :cond_79

    #@2
    .line 340
    iget-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@4
    .line 341
    iget-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v0, :cond_c

    #@9
    .line 342
    iget v3, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@b
    goto :goto_d

    #@c
    :cond_c
    move v3, v2

    #@d
    :goto_d
    if-eqz v1, :cond_12

    #@f
    .line 343
    iget v4, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@11
    goto :goto_13

    #@12
    :cond_12
    move v4, v2

    #@13
    :goto_13
    sub-int v5, v3, v4

    #@15
    const/4 v6, -0x2

    #@16
    if-ne v5, v6, :cond_3c

    #@18
    .line 347
    iget-object v0, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@1a
    .line 348
    iget-object v3, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@1c
    if-eqz v3, :cond_21

    #@1e
    .line 349
    iget v3, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@20
    goto :goto_22

    #@21
    :cond_21
    move v3, v2

    #@22
    :goto_22
    if-eqz v0, :cond_26

    #@24
    .line 350
    iget v2, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@26
    :cond_26
    sub-int/2addr v2, v3

    #@27
    const/4 v0, -0x1

    #@28
    if-eq v2, v0, :cond_36

    #@2a
    if-nez v2, :cond_2f

    #@2c
    if-nez p2, :cond_2f

    #@2e
    goto :goto_36

    #@2f
    .line 357
    :cond_2f
    invoke-direct {p0, v1}, Lcom/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@32
    .line 358
    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@35
    goto :goto_39

    #@36
    .line 354
    :cond_36
    :goto_36
    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@39
    :goto_39
    if-eqz p2, :cond_76

    #@3b
    goto :goto_79

    #@3c
    :cond_3c
    const/4 v1, 0x2

    #@3d
    const/4 v6, 0x1

    #@3e
    if-ne v5, v1, :cond_63

    #@40
    .line 365
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@42
    .line 366
    iget-object v3, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@44
    if-eqz v3, :cond_49

    #@46
    .line 367
    iget v3, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@48
    goto :goto_4a

    #@49
    :cond_49
    move v3, v2

    #@4a
    :goto_4a
    if-eqz v1, :cond_4e

    #@4c
    .line 368
    iget v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@4e
    :cond_4e
    sub-int/2addr v2, v3

    #@4f
    if-eq v2, v6, :cond_5d

    #@51
    if-nez v2, :cond_56

    #@53
    if-nez p2, :cond_56

    #@55
    goto :goto_5d

    #@56
    .line 375
    :cond_56
    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@59
    .line 376
    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@5c
    goto :goto_60

    #@5d
    .line 372
    :cond_5d
    :goto_5d
    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@60
    :goto_60
    if-eqz p2, :cond_76

    #@62
    goto :goto_79

    #@63
    :cond_63
    if-nez v5, :cond_6c

    #@65
    add-int/lit8 v3, v3, 0x1

    #@67
    .line 383
    iput v3, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@69
    if-eqz p2, :cond_76

    #@6b
    goto :goto_79

    #@6c
    .line 390
    :cond_6c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@6f
    move-result v0

    #@70
    add-int/2addr v0, v6

    #@71
    iput v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@73
    if-nez p2, :cond_76

    #@75
    goto :goto_79

    #@76
    .line 339
    :cond_76
    iget-object p1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@78
    goto :goto_0

    #@79
    :cond_79
    :goto_79
    return-void
.end method

.method private replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    #@0
    .line 312
    iget-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@2
    const/4 v1, 0x0

    #@3
    .line 313
    iput-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@5
    if-eqz p2, :cond_9

    #@7
    .line 315
    iput-object v0, p2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@9
    :cond_9
    if-eqz v0, :cond_15

    #@b
    .line 319
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@d
    if-ne v1, p1, :cond_12

    #@f
    .line 320
    iput-object p2, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@11
    goto :goto_1f

    #@12
    .line 323
    :cond_12
    iput-object p2, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@14
    goto :goto_1f

    #@15
    .line 326
    :cond_15
    iget p1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    #@17
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@19
    array-length v1, v0

    #@1a
    add-int/lit8 v1, v1, -0x1

    #@1c
    and-int/2addr p1, v1

    #@1d
    .line 327
    aput-object p2, v0, p1

    #@1f
    :goto_1f
    return-void
.end method

.method private rotateLeft(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    #@0
    .line 402
    iget-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@2
    .line 403
    iget-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@4
    .line 404
    iget-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@6
    .line 405
    iget-object v3, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@8
    .line 408
    iput-object v2, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@a
    if-eqz v2, :cond_e

    #@c
    .line 410
    iput-object p1, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@e
    .line 413
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@11
    .line 416
    iput-object p1, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@13
    .line 417
    iput-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@15
    const/4 v4, 0x0

    #@16
    if-eqz v0, :cond_1b

    #@18
    .line 420
    iget v0, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move v0, v4

    #@1c
    :goto_1c
    if-eqz v2, :cond_21

    #@1e
    iget v2, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@20
    goto :goto_22

    #@21
    :cond_21
    move v2, v4

    #@22
    :goto_22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v0

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    iput v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@2a
    .line 422
    iget p1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@2c
    if-eqz v3, :cond_30

    #@2e
    iget v4, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@30
    :cond_30
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    #@33
    move-result p1

    #@34
    add-int/lit8 p1, p1, 0x1

    #@36
    iput p1, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@38
    return-void
.end method

.method private rotateRight(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    #@0
    .line 430
    iget-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@2
    .line 431
    iget-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@4
    .line 432
    iget-object v2, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@6
    .line 433
    iget-object v3, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@8
    .line 436
    iput-object v3, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@a
    if-eqz v3, :cond_e

    #@c
    .line 438
    iput-object p1, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@e
    .line 441
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@11
    .line 444
    iput-object p1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@13
    .line 445
    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@15
    const/4 v4, 0x0

    #@16
    if-eqz v1, :cond_1b

    #@18
    .line 448
    iget v1, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move v1, v4

    #@1c
    :goto_1c
    if-eqz v3, :cond_21

    #@1e
    iget v3, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@20
    goto :goto_22

    #@21
    :cond_21
    move v3, v4

    #@22
    :goto_22
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v1

    #@26
    add-int/lit8 v1, v1, 0x1

    #@28
    iput v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@2a
    .line 450
    iget p1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@2c
    if-eqz v2, :cond_30

    #@2e
    iget v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@30
    :cond_30
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    #@33
    move-result p1

    #@34
    add-int/lit8 p1, p1, 0x1

    #@36
    iput p1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@38
    return-void
.end method

.method private static secondaryHash(I)I
    .registers 3

    #@0
    ushr-int/lit8 v0, p0, 0x14

    #@2
    ushr-int/lit8 v1, p0, 0xc

    #@4
    xor-int/2addr v0, v1

    #@5
    xor-int/2addr p0, v0

    #@6
    ushr-int/lit8 v0, p0, 0x7

    #@8
    xor-int/2addr v0, p0

    #@9
    ushr-int/lit8 p0, p0, 0x4

    #@b
    xor-int/2addr p0, v0

    #@c
    return p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .line 862
    new-instance v0, Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 5

    #@0
    .line 105
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@6
    const/4 v0, 0x0

    #@7
    .line 106
    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    #@9
    .line 107
    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    #@f
    .line 110
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@11
    .line 111
    iget-object v2, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@13
    :goto_13
    if-eq v2, v0, :cond_1d

    #@15
    .line 112
    iget-object v3, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@17
    .line 113
    iput-object v1, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@19
    iput-object v1, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@1b
    move-object v2, v3

    #@1c
    goto :goto_13

    #@1d
    .line 117
    :cond_1d
    iput-object v0, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@1f
    iput-object v0, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@21
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 91
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_8

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

.method public entrySet()Ljava/util/Set;
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
    .line 458
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->entrySet:Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_c

    #@5
    .line 459
    :cond_5
    new-instance v0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;

    #@7
    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V

    #@a
    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->entrySet:Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;

    #@c
    :goto_c
    return-object v0
.end method

.method find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 132
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    #@2
    .line 133
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@4
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v2

    #@8
    invoke-static {v2}, Lcom/google/gson/internal/LinkedHashTreeMap;->secondaryHash(I)I

    #@b
    move-result v6

    #@c
    .line 135
    array-length v2, v1

    #@d
    const/4 v9, 0x1

    #@e
    sub-int/2addr v2, v9

    #@f
    and-int/2addr v2, v6

    #@10
    .line 136
    aget-object v3, v1, v2

    #@12
    const/4 v4, 0x0

    #@13
    if-eqz v3, :cond_3c

    #@15
    .line 142
    sget-object v5, Lcom/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@17
    if-ne v0, v5, :cond_1d

    #@19
    move-object v5, p1

    #@1a
    check-cast v5, Ljava/lang/Comparable;

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    move-object v5, v4

    #@1e
    :goto_1e
    if-eqz v5, :cond_27

    #@20
    .line 147
    iget-object v7, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    #@22
    .line 148
    invoke-interface {v5, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@25
    move-result v7

    #@26
    goto :goto_2d

    #@27
    :cond_27
    iget-object v7, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    #@29
    .line 149
    invoke-interface {v0, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@2c
    move-result v7

    #@2d
    :goto_2d
    if-nez v7, :cond_30

    #@2f
    return-object v3

    #@30
    :cond_30
    if-gez v7, :cond_35

    #@32
    .line 157
    iget-object v8, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@34
    goto :goto_37

    #@35
    :cond_35
    iget-object v8, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@37
    :goto_37
    if-nez v8, :cond_3a

    #@39
    goto :goto_3d

    #@3a
    :cond_3a
    move-object v3, v8

    #@3b
    goto :goto_1e

    #@3c
    :cond_3c
    const/4 v7, 0x0

    #@3d
    :goto_3d
    move-object v10, v3

    #@3e
    move v11, v7

    #@3f
    if-nez p2, :cond_42

    #@41
    return-object v4

    #@42
    .line 172
    :cond_42
    iget-object v7, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@44
    if-nez v10, :cond_7d

    #@46
    .line 176
    sget-object p2, Lcom/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@48
    if-ne v0, p2, :cond_70

    #@4a
    instance-of p2, p1, Ljava/lang/Comparable;

    #@4c
    if-eqz p2, :cond_4f

    #@4e
    goto :goto_70

    #@4f
    .line 177
    :cond_4f
    new-instance p2, Ljava/lang/ClassCastException;

    #@51
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@59
    move-result-object p1

    #@5a
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5d
    move-result-object p1

    #@5e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object p1

    #@62
    const-string v0, " is not Comparable"

    #@64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object p1

    #@68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object p1

    #@6c
    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@6f
    throw p2

    #@70
    .line 179
    :cond_70
    :goto_70
    new-instance p2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@72
    iget-object v8, v7, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@74
    move-object v3, p2

    #@75
    move-object v4, v10

    #@76
    move-object v5, p1

    #@77
    invoke-direct/range {v3 .. v8}, Lcom/google/gson/internal/LinkedHashTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@7a
    .line 180
    aput-object p2, v1, v2

    #@7c
    goto :goto_91

    #@7d
    .line 182
    :cond_7d
    new-instance p2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@7f
    iget-object v8, v7, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@81
    move-object v3, p2

    #@82
    move-object v4, v10

    #@83
    move-object v5, p1

    #@84
    invoke-direct/range {v3 .. v8}, Lcom/google/gson/internal/LinkedHashTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@87
    if-gez v11, :cond_8c

    #@89
    .line 184
    iput-object p2, v10, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@8b
    goto :goto_8e

    #@8c
    .line 186
    :cond_8c
    iput-object p2, v10, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@8e
    .line 188
    :goto_8e
    invoke-direct {p0, v10, v9}, Lcom/google/gson/internal/LinkedHashTreeMap;->rebalance(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    #@91
    .line 191
    :goto_91
    iget p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    #@93
    add-int/lit8 v0, p1, 0x1

    #@95
    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    #@97
    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->threshold:I

    #@99
    if-le p1, v0, :cond_9e

    #@9b
    .line 192
    invoke-direct {p0}, Lcom/google/gson/internal/LinkedHashTreeMap;->doubleCapacity()V

    #@9e
    .line 194
    :cond_9e
    iget p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    #@a0
    add-int/2addr p1, v9

    #@a1
    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    #@a3
    return-object p2
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 218
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_18

    #@a
    .line 219
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    #@c
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    invoke-direct {p0, v1, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    if-eqz p1, :cond_1c

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    :goto_1d
    return-object v0
.end method

.method findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_9

    #@3
    const/4 v1, 0x0

    #@4
    .line 202
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/google/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@7
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_9

    #@8
    nop

    #@9
    :catch_9
    :cond_9
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .line 86
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 87
    iget-object p1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    :goto_a
    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    #@0
    .line 463
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->keySet:Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_c

    #@5
    .line 464
    :cond_5
    new-instance v0, Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;

    #@7
    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V

    #@a
    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->keySet:Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;

    #@c
    :goto_c
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_c

    #@2
    const/4 v0, 0x1

    #@3
    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@6
    move-result-object p1

    #@7
    .line 99
    iget-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    #@9
    .line 100
    iput-object p2, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    #@b
    return-object v0

    #@c
    .line 96
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    #@e
    const-string p2, "key == null"

    #@10
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .line 121
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 122
    iget-object p1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    :goto_a
    return-object p1
.end method

.method removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p2, :cond_13

    #@3
    .line 247
    iget-object p2, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@5
    iget-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@7
    iput-object v1, p2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@9
    .line 248
    iget-object p2, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@b
    iget-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@d
    iput-object v1, p2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@f
    .line 249
    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@11
    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@13
    .line 252
    :cond_13
    iget-object p2, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@15
    .line 253
    iget-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@17
    .line 254
    iget-object v2, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@19
    const/4 v3, 0x0

    #@1a
    if-eqz p2, :cond_56

    #@1c
    if-eqz v1, :cond_56

    #@1e
    .line 266
    iget v2, p2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@20
    iget v4, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@22
    if-le v2, v4, :cond_29

    #@24
    invoke-virtual {p2}, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->last()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@27
    move-result-object p2

    #@28
    goto :goto_2d

    #@29
    :cond_29
    invoke-virtual {v1}, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->first()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@2c
    move-result-object p2

    #@2d
    .line 267
    :goto_2d
    invoke-virtual {p0, p2, v3}, Lcom/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    #@30
    .line 270
    iget-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@32
    if-eqz v1, :cond_3d

    #@34
    .line 272
    iget v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@36
    .line 273
    iput-object v1, p2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@38
    .line 274
    iput-object p2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@3a
    .line 275
    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@3c
    goto :goto_3e

    #@3d
    :cond_3d
    move v2, v3

    #@3e
    .line 278
    :goto_3e
    iget-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@40
    if-eqz v1, :cond_4a

    #@42
    .line 280
    iget v3, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@44
    .line 281
    iput-object v1, p2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@46
    .line 282
    iput-object p2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@48
    .line 283
    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@4a
    .line 285
    :cond_4a
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@4d
    move-result v0

    #@4e
    add-int/lit8 v0, v0, 0x1

    #@50
    iput v0, p2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@52
    .line 286
    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@55
    return-void

    #@56
    :cond_56
    if-eqz p2, :cond_5e

    #@58
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@5b
    .line 290
    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@5d
    goto :goto_69

    #@5e
    :cond_5e
    if-eqz v1, :cond_66

    #@60
    .line 292
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@63
    .line 293
    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@65
    goto :goto_69

    #@66
    .line 295
    :cond_66
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    #@69
    .line 298
    :goto_69
    invoke-direct {p0, v2, v3}, Lcom/google/gson/internal/LinkedHashTreeMap;->rebalance(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    #@6c
    .line 299
    iget p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    #@6e
    add-int/lit8 p1, p1, -0x1

    #@70
    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    #@72
    .line 300
    iget p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    #@74
    add-int/lit8 p1, p1, 0x1

    #@76
    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    #@78
    return-void
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 304
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_a

    #@6
    const/4 v0, 0x1

    #@7
    .line 306
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    #@a
    :cond_a
    return-object p1
.end method

.method public size()I
    .registers 2

    #@0
    .line 82
    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    #@2
    return v0
.end method

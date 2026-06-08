.class public final Lcom/google/gson/internal/LinkedTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/LinkedTreeMap$KeySet;,
        Lcom/google/gson/internal/LinkedTreeMap$EntrySet;,
        Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;,
        Lcom/google/gson/internal/LinkedTreeMap$Node;
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

.field private entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 40
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$1;

    #@2
    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 60
    sget-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@2
    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>(Ljava/util/Comparator;)V

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
    .line 71
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 48
    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    #@6
    .line 49
    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    #@8
    .line 52
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@a
    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>()V

    #@d
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@f
    if-eqz p1, :cond_12

    #@11
    goto :goto_14

    #@12
    .line 72
    :cond_12
    sget-object p1, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@14
    :goto_14
    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    #@16
    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-eq p1, p2, :cond_d

    #@2
    if-eqz p1, :cond_b

    #@4
    .line 208
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

.method private rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    #@0
    :goto_0
    if-eqz p1, :cond_79

    #@2
    .line 312
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@4
    .line 313
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v0, :cond_c

    #@9
    .line 314
    iget v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@b
    goto :goto_d

    #@c
    :cond_c
    move v3, v2

    #@d
    :goto_d
    if-eqz v1, :cond_12

    #@f
    .line 315
    iget v4, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

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
    .line 319
    iget-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@1a
    .line 320
    iget-object v3, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@1c
    if-eqz v3, :cond_21

    #@1e
    .line 321
    iget v3, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@20
    goto :goto_22

    #@21
    :cond_21
    move v3, v2

    #@22
    :goto_22
    if-eqz v0, :cond_26

    #@24
    .line 322
    iget v2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

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
    .line 329
    :cond_2f
    invoke-direct {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    #@32
    .line 330
    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    #@35
    goto :goto_39

    #@36
    .line 326
    :cond_36
    :goto_36
    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

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
    .line 337
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@42
    .line 338
    iget-object v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@44
    if-eqz v3, :cond_49

    #@46
    .line 339
    iget v3, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@48
    goto :goto_4a

    #@49
    :cond_49
    move v3, v2

    #@4a
    :goto_4a
    if-eqz v1, :cond_4e

    #@4c
    .line 340
    iget v2, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

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
    .line 347
    :cond_56
    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    #@59
    .line 348
    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    #@5c
    goto :goto_60

    #@5d
    .line 344
    :cond_5d
    :goto_5d
    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

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
    .line 355
    iput v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@69
    if-eqz p2, :cond_76

    #@6b
    goto :goto_79

    #@6c
    .line 362
    :cond_6c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@6f
    move-result v0

    #@70
    add-int/2addr v0, v6

    #@71
    iput v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@73
    if-nez p2, :cond_76

    #@75
    goto :goto_79

    #@76
    .line 311
    :cond_76
    iget-object p1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@78
    goto :goto_0

    #@79
    :cond_79
    :goto_79
    return-void
.end method

.method private replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    #@0
    .line 285
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@2
    const/4 v1, 0x0

    #@3
    .line 286
    iput-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@5
    if-eqz p2, :cond_9

    #@7
    .line 288
    iput-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@9
    :cond_9
    if-eqz v0, :cond_15

    #@b
    .line 292
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@d
    if-ne v1, p1, :cond_12

    #@f
    .line 293
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@11
    goto :goto_17

    #@12
    .line 296
    :cond_12
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@14
    goto :goto_17

    #@15
    .line 299
    :cond_15
    iput-object p2, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@17
    :goto_17
    return-void
.end method

.method private rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    #@0
    .line 374
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@2
    .line 375
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@4
    .line 376
    iget-object v2, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@6
    .line 377
    iget-object v3, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@8
    .line 380
    iput-object v2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@a
    if-eqz v2, :cond_e

    #@c
    .line 382
    iput-object p1, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@e
    .line 385
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    #@11
    .line 388
    iput-object p1, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@13
    .line 389
    iput-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@15
    const/4 v4, 0x0

    #@16
    if-eqz v0, :cond_1b

    #@18
    .line 392
    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move v0, v4

    #@1c
    :goto_1c
    if-eqz v2, :cond_21

    #@1e
    iget v2, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

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
    iput v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@2a
    .line 394
    iget p1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@2c
    if-eqz v3, :cond_30

    #@2e
    iget v4, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@30
    :cond_30
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    #@33
    move-result p1

    #@34
    add-int/lit8 p1, p1, 0x1

    #@36
    iput p1, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@38
    return-void
.end method

.method private rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    #@0
    .line 402
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@2
    .line 403
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@4
    .line 404
    iget-object v2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@6
    .line 405
    iget-object v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@8
    .line 408
    iput-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@a
    if-eqz v3, :cond_e

    #@c
    .line 410
    iput-object p1, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@e
    .line 413
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    #@11
    .line 416
    iput-object p1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@13
    .line 417
    iput-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@15
    const/4 v4, 0x0

    #@16
    if-eqz v1, :cond_1b

    #@18
    .line 420
    iget v1, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move v1, v4

    #@1c
    :goto_1c
    if-eqz v3, :cond_21

    #@1e
    iget v3, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

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
    iput v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@2a
    .line 422
    iget p1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@2c
    if-eqz v2, :cond_30

    #@2e
    iget v4, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@30
    :cond_30
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    #@33
    move-result p1

    #@34
    add-int/lit8 p1, p1, 0x1

    #@36
    iput p1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@38
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .line 628
    new-instance v0, Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 101
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@3
    const/4 v0, 0x0

    #@4
    .line 102
    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    #@6
    .line 103
    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    #@c
    .line 106
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@e
    .line 107
    iput-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@10
    iput-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@12
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 87
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

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
    .line 430
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_c

    #@5
    .line 431
    :cond_5
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    #@7
    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    #@a
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    #@c
    :goto_c
    return-object v0
.end method

.method find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 122
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    #@2
    .line 123
    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@4
    const/4 v2, 0x0

    #@5
    if-eqz v1, :cond_2e

    #@7
    .line 129
    sget-object v3, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@9
    if-ne v0, v3, :cond_f

    #@b
    move-object v3, p1

    #@c
    check-cast v3, Ljava/lang/Comparable;

    #@e
    goto :goto_10

    #@f
    :cond_f
    move-object v3, v2

    #@10
    :goto_10
    if-eqz v3, :cond_19

    #@12
    .line 134
    iget-object v4, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    #@14
    .line 135
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@17
    move-result v4

    #@18
    goto :goto_1f

    #@19
    :cond_19
    iget-object v4, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    #@1b
    .line 136
    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1e
    move-result v4

    #@1f
    :goto_1f
    if-nez v4, :cond_22

    #@21
    return-object v1

    #@22
    :cond_22
    if-gez v4, :cond_27

    #@24
    .line 144
    iget-object v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@26
    goto :goto_29

    #@27
    :cond_27
    iget-object v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@29
    :goto_29
    if-nez v5, :cond_2c

    #@2b
    goto :goto_2f

    #@2c
    :cond_2c
    move-object v1, v5

    #@2d
    goto :goto_10

    #@2e
    :cond_2e
    const/4 v4, 0x0

    #@2f
    :goto_2f
    if-nez p2, :cond_32

    #@31
    return-object v2

    #@32
    .line 159
    :cond_32
    iget-object p2, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@34
    const/4 v2, 0x1

    #@35
    if-nez v1, :cond_6b

    #@37
    .line 163
    sget-object v3, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@39
    if-ne v0, v3, :cond_61

    #@3b
    instance-of v0, p1, Ljava/lang/Comparable;

    #@3d
    if-eqz v0, :cond_40

    #@3f
    goto :goto_61

    #@40
    .line 164
    :cond_40
    new-instance p2, Ljava/lang/ClassCastException;

    #@42
    new-instance v0, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4a
    move-result-object p1

    #@4b
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4e
    move-result-object p1

    #@4f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object p1

    #@53
    const-string v0, " is not Comparable"

    #@55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object p1

    #@59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object p1

    #@5d
    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@60
    throw p2

    #@61
    .line 166
    :cond_61
    :goto_61
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@63
    iget-object v3, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@65
    invoke-direct {v0, v1, p1, p2, v3}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    #@68
    .line 167
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@6a
    goto :goto_7c

    #@6b
    .line 169
    :cond_6b
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@6d
    iget-object v3, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@6f
    invoke-direct {v0, v1, p1, p2, v3}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    #@72
    if-gez v4, :cond_77

    #@74
    .line 171
    iput-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@76
    goto :goto_79

    #@77
    .line 173
    :cond_77
    iput-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@79
    .line 175
    :goto_79
    invoke-direct {p0, v1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    #@7c
    .line 177
    :goto_7c
    iget p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    #@7e
    add-int/2addr p1, v2

    #@7f
    iput p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    #@81
    .line 178
    iget p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    #@83
    add-int/2addr p1, v2

    #@84
    iput p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    #@86
    return-object v0
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 202
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_18

    #@a
    .line 203
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    #@c
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    invoke-direct {p0, v1, p1}, Lcom/google/gson/internal/LinkedTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
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
    .line 186
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

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
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 83
    iget-object p1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

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
    .line 435
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    #@2
    if-eqz v0, :cond_5

    #@4
    goto :goto_c

    #@5
    .line 436
    :cond_5
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    #@7
    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedTreeMap$KeySet;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    #@a
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;

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
    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@6
    move-result-object p1

    #@7
    .line 95
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    #@9
    .line 96
    iput-object p2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    #@b
    return-object v0

    #@c
    .line 92
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
    .line 111
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 112
    iget-object p1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    :goto_a
    return-object p1
.end method

.method removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_e

    #@2
    .line 219
    iget-object p2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@4
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@6
    iput-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@8
    .line 220
    iget-object p2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@a
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@c
    iput-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@e
    .line 223
    :cond_e
    iget-object p2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@10
    .line 224
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@12
    .line 225
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@14
    const/4 v2, 0x0

    #@15
    const/4 v3, 0x0

    #@16
    if-eqz p2, :cond_52

    #@18
    if-eqz v0, :cond_52

    #@1a
    .line 237
    iget v1, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@1c
    iget v4, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@1e
    if-le v1, v4, :cond_25

    #@20
    invoke-virtual {p2}, Lcom/google/gson/internal/LinkedTreeMap$Node;->last()Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@23
    move-result-object p2

    #@24
    goto :goto_29

    #@25
    :cond_25
    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap$Node;->first()Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@28
    move-result-object p2

    #@29
    .line 238
    :goto_29
    invoke-virtual {p0, p2, v2}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    #@2c
    .line 241
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@2e
    if-eqz v0, :cond_39

    #@30
    .line 243
    iget v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@32
    .line 244
    iput-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@34
    .line 245
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@36
    .line 246
    iput-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@38
    goto :goto_3a

    #@39
    :cond_39
    move v1, v2

    #@3a
    .line 250
    :goto_3a
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@3c
    if-eqz v0, :cond_46

    #@3e
    .line 252
    iget v2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@40
    .line 253
    iput-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@42
    .line 254
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@44
    .line 255
    iput-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@46
    .line 258
    :cond_46
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@49
    move-result v0

    #@4a
    add-int/lit8 v0, v0, 0x1

    #@4c
    iput v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    #@4e
    .line 259
    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    #@51
    return-void

    #@52
    :cond_52
    if-eqz p2, :cond_5a

    #@54
    .line 262
    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    #@57
    .line 263
    iput-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@59
    goto :goto_65

    #@5a
    :cond_5a
    if-eqz v0, :cond_62

    #@5c
    .line 265
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    #@5f
    .line 266
    iput-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@61
    goto :goto_65

    #@62
    .line 268
    :cond_62
    invoke-direct {p0, p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    #@65
    .line 271
    :goto_65
    invoke-direct {p0, v1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    #@68
    .line 272
    iget p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    #@6a
    add-int/lit8 p1, p1, -0x1

    #@6c
    iput p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    #@6e
    .line 273
    iget p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    #@70
    add-int/lit8 p1, p1, 0x1

    #@72
    iput p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    #@74
    return-void
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 277
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_a

    #@6
    const/4 v0, 0x1

    #@7
    .line 279
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    #@a
    :cond_a
    return-object p1
.end method

.method public size()I
    .registers 2

    #@0
    .line 78
    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    #@2
    return v0
.end method

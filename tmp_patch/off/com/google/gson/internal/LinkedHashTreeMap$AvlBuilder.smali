.class final Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvlBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method add(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 687
    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@3
    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@5
    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@7
    const/4 v0, 0x1

    #@8
    .line 688
    iput v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@a
    .line 691
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    #@c
    if-lez v1, :cond_1f

    #@e
    iget v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    #@10
    and-int/lit8 v3, v2, 0x1

    #@12
    if-nez v3, :cond_1f

    #@14
    add-int/2addr v2, v0

    #@15
    .line 692
    iput v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    #@17
    sub-int/2addr v1, v0

    #@18
    .line 693
    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    #@1a
    .line 694
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    #@1c
    add-int/2addr v1, v0

    #@1d
    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    #@1f
    .line 697
    :cond_1f
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@21
    iput-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@23
    .line 698
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@25
    .line 699
    iget p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    #@27
    add-int/2addr p1, v0

    #@28
    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    #@2a
    .line 702
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    #@2c
    if-lez v1, :cond_3d

    #@2e
    and-int/lit8 v2, p1, 0x1

    #@30
    if-nez v2, :cond_3d

    #@32
    add-int/2addr p1, v0

    #@33
    .line 703
    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    #@35
    sub-int/2addr v1, v0

    #@36
    .line 704
    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    #@38
    .line 705
    iget p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    #@3a
    add-int/2addr p1, v0

    #@3b
    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    #@3d
    :cond_3d
    const/4 p1, 0x4

    #@3e
    .line 721
    :goto_3e
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    #@40
    add-int/lit8 v2, p1, -0x1

    #@42
    and-int/2addr v1, v2

    #@43
    if-ne v1, v2, :cond_80

    #@45
    .line 722
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    #@47
    if-nez v1, :cond_63

    #@49
    .line 724
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@4b
    .line 725
    iget-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@4d
    .line 726
    iget-object v3, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@4f
    .line 727
    iget-object v4, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@51
    iput-object v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@53
    .line 728
    iput-object v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@55
    .line 730
    iput-object v3, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@57
    .line 731
    iput-object v1, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@59
    .line 732
    iget v4, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@5b
    add-int/2addr v4, v0

    #@5c
    iput v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@5e
    .line 733
    iput-object v2, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@60
    .line 734
    iput-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@62
    goto :goto_7d

    #@63
    :cond_63
    const/4 v2, 0x0

    #@64
    if-ne v1, v0, :cond_78

    #@66
    .line 737
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@68
    .line 738
    iget-object v3, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@6a
    .line 739
    iput-object v3, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@6c
    .line 741
    iput-object v1, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@6e
    .line 742
    iget v4, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@70
    add-int/2addr v4, v0

    #@71
    iput v4, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    #@73
    .line 743
    iput-object v3, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@75
    .line 744
    iput v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    #@77
    goto :goto_7d

    #@78
    :cond_78
    const/4 v3, 0x2

    #@79
    if-ne v1, v3, :cond_7d

    #@7b
    .line 746
    iput v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    #@7d
    :cond_7d
    :goto_7d
    mul-int/lit8 p1, p1, 0x2

    #@7f
    goto :goto_3e

    #@80
    :cond_80
    return-void
.end method

.method reset(I)V
    .registers 3

    #@0
    .line 679
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x2

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    sub-int/2addr v0, p1

    #@9
    .line 680
    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    #@b
    const/4 p1, 0x0

    #@c
    .line 681
    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    #@e
    .line 682
    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    #@10
    const/4 p1, 0x0

    #@11
    .line 683
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@13
    return-void
.end method

.method root()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 752
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@2
    .line 753
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@4
    if-nez v1, :cond_7

    #@6
    return-object v0

    #@7
    .line 754
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@c
    throw v0
.end method

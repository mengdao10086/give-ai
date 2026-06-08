.class final Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V
    .registers 2

    #@0
    .line 794
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    #@0
    .line 825
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    #@2
    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedHashTreeMap;->clear()V

    #@5
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 808
    instance-of v0, p1, Ljava/util/Map$Entry;

    #@2
    if-eqz v0, :cond_10

    #@4
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    #@6
    check-cast p1, Ljava/util/Map$Entry;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@b
    move-result-object p1

    #@c
    if-eqz p1, :cond_10

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

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    #@0
    .line 800
    new-instance v0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;

    #@2
    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;)V

    #@5
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    #@0
    .line 812
    instance-of v0, p1, Ljava/util/Map$Entry;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 816
    :cond_6
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    #@8
    check-cast p1, Ljava/util/Map$Entry;

    #@a
    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    #@d
    move-result-object p1

    #@e
    if-nez p1, :cond_11

    #@10
    return v1

    #@11
    .line 820
    :cond_11
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    #@13
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    #@17
    return v1
.end method

.method public size()I
    .registers 2

    #@0
    .line 796
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    #@2
    iget v0, v0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    #@4
    return v0
.end method

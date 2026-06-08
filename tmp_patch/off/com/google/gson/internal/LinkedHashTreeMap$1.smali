.class final Lcom/google/gson/internal/LinkedHashTreeMap$1;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Comparable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3

    #@0
    .line 44
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 42
    check-cast p1, Ljava/lang/Comparable;

    #@2
    check-cast p2, Ljava/lang/Comparable;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/LinkedHashTreeMap$1;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    #@7
    move-result p1

    #@8
    return p1
.end method

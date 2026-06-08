.class public Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
.super Ljava/lang/Object;
.source "AppendOnlyLinkedArrayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final capacity:I

.field final head:[Ljava/lang/Object;

.field offset:I

.field tail:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput p1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    #@5
    add-int/lit8 p1, p1, 0x1

    #@7
    .line 38
    new-array p1, p1, [Ljava/lang/Object;

    #@9
    iput-object p1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    #@b
    .line 39
    iput-object p1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    #@d
    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/Observer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observer<",
            "-TU;>;)Z"
        }
    .end annotation

    #@0
    .line 137
    iget-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    #@2
    .line 138
    iget v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    #@4
    :goto_4
    const/4 v2, 0x0

    #@5
    if-eqz v0, :cond_20

    #@7
    :goto_7
    if-ge v2, v1, :cond_19

    #@9
    .line 141
    aget-object v3, v0, v2

    #@b
    if-nez v3, :cond_e

    #@d
    goto :goto_19

    #@e
    .line 146
    :cond_e
    invoke-static {v3, p1}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_16

    #@14
    const/4 p1, 0x1

    #@15
    return p1

    #@16
    :cond_16
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_7

    #@19
    .line 150
    :cond_19
    :goto_19
    aget-object v0, v0, v1

    #@1b
    check-cast v0, [Ljava/lang/Object;

    #@1d
    check-cast v0, [Ljava/lang/Object;

    #@1f
    goto :goto_4

    #@20
    :cond_20
    return v2
.end method

.method public accept(Lorg/reactivestreams/Subscriber;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "-TU;>;)Z"
        }
    .end annotation

    #@0
    .line 110
    iget-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    #@2
    .line 111
    iget v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    #@4
    :goto_4
    const/4 v2, 0x0

    #@5
    if-eqz v0, :cond_20

    #@7
    :goto_7
    if-ge v2, v1, :cond_19

    #@9
    .line 114
    aget-object v3, v0, v2

    #@b
    if-nez v3, :cond_e

    #@d
    goto :goto_19

    #@e
    .line 119
    :cond_e
    invoke-static {v3, p1}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_16

    #@14
    const/4 p1, 0x1

    #@15
    return p1

    #@16
    :cond_16
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_7

    #@19
    .line 123
    :cond_19
    :goto_19
    aget-object v0, v0, v1

    #@1b
    check-cast v0, [Ljava/lang/Object;

    #@1d
    check-cast v0, [Ljava/lang/Object;

    #@1f
    goto :goto_4

    #@20
    :cond_20
    return v2
.end method

.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 48
    iget v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    #@2
    .line 49
    iget v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->offset:I

    #@4
    if-ne v1, v0, :cond_11

    #@6
    add-int/lit8 v1, v0, 0x1

    #@8
    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    .line 52
    iget-object v2, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    #@c
    aput-object v1, v2, v0

    #@e
    .line 53
    iput-object v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    #@10
    const/4 v1, 0x0

    #@11
    .line 56
    :cond_11
    iget-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    #@13
    aput-object p1, v0, v1

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    .line 57
    iput v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->offset:I

    #@19
    return-void
.end method

.method public forEachWhile(Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    .line 85
    iget-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    #@2
    .line 86
    iget v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    #@4
    :goto_4
    if-eqz v0, :cond_1f

    #@6
    const/4 v2, 0x0

    #@7
    :goto_7
    if-ge v2, v1, :cond_18

    #@9
    .line 89
    aget-object v3, v0, v2

    #@b
    if-nez v3, :cond_e

    #@d
    goto :goto_18

    #@e
    .line 93
    :cond_e
    invoke-interface {p1, v3}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;->test(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_15

    #@14
    return-void

    #@15
    :cond_15
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_7

    #@18
    .line 97
    :cond_18
    :goto_18
    aget-object v0, v0, v1

    #@1a
    check-cast v0, [Ljava/lang/Object;

    #@1c
    check-cast v0, [Ljava/lang/Object;

    #@1e
    goto :goto_4

    #@1f
    :cond_1f
    return-void
.end method

.method public forEachWhile(Ljava/lang/Object;Lio/reactivex/functions/BiPredicate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lio/reactivex/functions/BiPredicate<",
            "-TS;-TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 165
    iget-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    #@2
    .line 166
    iget v1, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->capacity:I

    #@4
    :goto_4
    const/4 v2, 0x0

    #@5
    :goto_5
    if-ge v2, v1, :cond_16

    #@7
    .line 169
    aget-object v3, v0, v2

    #@9
    if-nez v3, :cond_c

    #@b
    return-void

    #@c
    .line 173
    :cond_c
    invoke-interface {p2, p1, v3}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_13

    #@12
    return-void

    #@13
    :cond_13
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_5

    #@16
    .line 177
    :cond_16
    aget-object v0, v0, v1

    #@18
    check-cast v0, [Ljava/lang/Object;

    #@1a
    check-cast v0, [Ljava/lang/Object;

    #@1c
    goto :goto_4
.end method

.method public setFirst(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 65
    iget-object v0, p0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    #@2
    const/4 v1, 0x0

    #@3
    aput-object p1, v0, v1

    #@5
    return-void
.end method

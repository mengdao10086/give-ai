.class public final Lcom/blankj/utilcode/util/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/CollectionUtils$Predicate;,
        Lcom/blankj/utilcode/util/CollectionUtils$Transformer;,
        Lcom/blankj/utilcode/util/CollectionUtils$Closure;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Enumeration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Enumeration<",
            "TE;>;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_13

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_13

    #@5
    .line 661
    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_13

    #@b
    .line 662
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@12
    goto :goto_5

    #@13
    :cond_13
    :goto_13
    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Iterator<",
            "TE;>;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_13

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_13

    #@5
    .line 648
    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_13

    #@b
    .line 649
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@12
    goto :goto_5

    #@13
    :cond_13
    :goto_13
    return-void
.end method

.method public static addAll(Ljava/util/Collection;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;[TE;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_f

    #@2
    if-eqz p1, :cond_f

    #@4
    .line 673
    array-length v0, p1

    #@5
    if-nez v0, :cond_8

    #@7
    goto :goto_f

    #@8
    .line 674
    :cond_8
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@b
    move-result-object p1

    #@c
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    #@f
    :cond_f
    :goto_f
    return-void
.end method

.method public static addIgnoreNull(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;TE;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-eqz p1, :cond_d

    #@6
    .line 637
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@9
    move-result p0

    #@a
    if-eqz p0, :cond_d

    #@c
    const/4 v0, 0x1

    #@d
    :cond_d
    return v0
.end method

.method public static cardinality(Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/util/Collection<",
            "TE;>;)I"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 420
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    #@6
    if-eqz v1, :cond_d

    #@8
    .line 421
    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@b
    move-result p0

    #@c
    return p0

    #@d
    :cond_d
    if-nez p0, :cond_22

    #@f
    .line 425
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object p0

    #@13
    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result p1

    #@17
    if-eqz p1, :cond_39

    #@19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object p1

    #@1d
    if-nez p1, :cond_13

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_13

    #@22
    .line 431
    :cond_22
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object p1

    #@26
    :cond_26
    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_39

    #@2c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    .line 432
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_26

    #@36
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_26

    #@39
    :cond_39
    return v0
.end method

.method public static collect(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Transformer;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Object;",
            "E2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE1;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Transformer<",
            "TE1;TE2;>;)",
            "Ljava/util/Collection<",
            "TE2;>;"
        }
    .end annotation

    #@0
    .line 581
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    if-eqz p0, :cond_20

    #@7
    if-nez p1, :cond_a

    #@9
    goto :goto_20

    #@a
    .line 583
    :cond_a
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object p0

    #@e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_20

    #@14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    .line 584
    invoke-interface {p1, v1}, Lcom/blankj/utilcode/util/CollectionUtils$Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    goto :goto_e

    #@20
    :cond_20
    :goto_20
    return-object v0
.end method

.method public static containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_3b

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_3b

    #@6
    .line 287
    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@9
    move-result v1

    #@a
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@d
    move-result v2

    #@e
    const/4 v3, 0x1

    #@f
    if-ge v1, v2, :cond_26

    #@11
    .line 288
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object p0

    #@15
    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_3b

    #@1b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    .line 289
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_15

    #@25
    return v3

    #@26
    .line 294
    :cond_26
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object p1

    #@2a
    :cond_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_3b

    #@30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    .line 295
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_2a

    #@3a
    return v3

    #@3b
    :cond_3b
    :goto_3b
    return v0
.end method

.method public static countMatches(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Predicate;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Predicate<",
            "TE;>;)I"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_1d

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_1d

    #@6
    .line 601
    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object p0

    #@a
    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1d

    #@10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 602
    invoke-interface {p1, v1}, Lcom/blankj/utilcode/util/CollectionUtils$Predicate;->evaluate(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_a

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_a

    #@1d
    :cond_1d
    :goto_1d
    return v0
.end method

.method public static disjunction(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 8

    #@0
    if-nez p0, :cond_a

    #@2
    if-nez p1, :cond_a

    #@4
    .line 236
    new-instance p0, Ljava/util/ArrayList;

    #@6
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@9
    return-object p0

    #@a
    :cond_a
    if-nez p0, :cond_12

    #@c
    .line 237
    new-instance p0, Ljava/util/ArrayList;

    #@e
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@11
    return-object p0

    #@12
    :cond_12
    if-nez p1, :cond_1a

    #@14
    .line 238
    new-instance p1, Ljava/util/ArrayList;

    #@16
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@19
    return-object p1

    #@1a
    .line 239
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1f
    .line 240
    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    #@22
    move-result-object v1

    #@23
    .line 241
    invoke-static {p1}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    #@26
    move-result-object v2

    #@27
    .line 242
    new-instance v3, Ljava/util/HashSet;

    #@29
    invoke-direct {v3, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@2c
    .line 243
    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@2f
    .line 244
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object p0

    #@33
    :cond_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result p1

    #@37
    if-eqz p1, :cond_5f

    #@39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object p1

    #@3d
    .line 245
    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    #@40
    move-result v3

    #@41
    invoke-static {p1, v2}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    #@44
    move-result v4

    #@45
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@48
    move-result v3

    #@49
    .line 246
    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    #@4c
    move-result v4

    #@4d
    invoke-static {p1, v2}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    #@50
    move-result v5

    #@51
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@54
    move-result v4

    #@55
    sub-int/2addr v3, v4

    #@56
    const/4 v4, 0x0

    #@57
    :goto_57
    if-ge v4, v3, :cond_33

    #@59
    .line 247
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c
    add-int/lit8 v4, v4, 0x1

    #@5e
    goto :goto_57

    #@5f
    :cond_5f
    return-object v0
.end method

.method public static exists(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Predicate<",
            "TE;>;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_1c

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_1c

    #@6
    .line 620
    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object p0

    #@a
    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1c

    #@10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 621
    invoke-interface {p1, v1}, Lcom/blankj/utilcode/util/CollectionUtils$Predicate;->evaluate(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_a

    #@1a
    const/4 p0, 0x1

    #@1b
    return p0

    #@1c
    :cond_1c
    :goto_1c
    return v0
.end method

.method public static filter(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Predicate<",
            "TE;>;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_1d

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_1d

    #@5
    .line 487
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object p0

    #@9
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1d

    #@f
    .line 488
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    invoke-interface {p1, v0}, Lcom/blankj/utilcode/util/CollectionUtils$Predicate;->evaluate(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_9

    #@19
    .line 489
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    #@1c
    goto :goto_9

    #@1d
    :cond_1d
    :goto_1d
    return-void
.end method

.method public static find(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Predicate;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Predicate<",
            "TE;>;)TE;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_1b

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_1b

    #@6
    .line 452
    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object p0

    #@a
    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1b

    #@10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 453
    invoke-interface {p1, v1}, Lcom/blankj/utilcode/util/CollectionUtils$Predicate;->evaluate(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_a

    #@1a
    return-object v1

    #@1b
    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public static forAllDo(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Closure;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Closure<",
            "TE;>;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_1b

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_1b

    #@5
    .line 471
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object p0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1b

    #@10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    add-int/lit8 v2, v0, 0x1

    #@16
    .line 472
    invoke-interface {p1, v0, v1}, Lcom/blankj/utilcode/util/CollectionUtils$Closure;->execute(ILjava/lang/Object;)V

    #@19
    move v0, v2

    #@1a
    goto :goto_a

    #@1b
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    if-ltz p1, :cond_b9

    #@6
    .line 712
    instance-of v0, p0, Ljava/util/Map;

    #@8
    if-eqz v0, :cond_19

    #@a
    .line 713
    check-cast p0, Ljava/util/Map;

    #@c
    .line 714
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@f
    move-result-object p0

    #@10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object p0

    #@14
    .line 715
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/CollectionUtils;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@17
    move-result-object p0

    #@18
    return-object p0

    #@19
    .line 716
    :cond_19
    instance-of v0, p0, Ljava/util/List;

    #@1b
    if-eqz v0, :cond_24

    #@1d
    .line 717
    check-cast p0, Ljava/util/List;

    #@1f
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object p0

    #@23
    return-object p0

    #@24
    .line 718
    :cond_24
    instance-of v0, p0, [Ljava/lang/Object;

    #@26
    if-eqz v0, :cond_2d

    #@28
    .line 719
    check-cast p0, [Ljava/lang/Object;

    #@2a
    aget-object p0, p0, p1

    #@2c
    return-object p0

    #@2d
    .line 720
    :cond_2d
    instance-of v0, p0, Ljava/util/Iterator;

    #@2f
    const-string v1, "Entry does not exist: "

    #@31
    const/4 v2, -0x1

    #@32
    if-eqz v0, :cond_5c

    #@34
    .line 721
    check-cast p0, Ljava/util/Iterator;

    #@36
    .line 722
    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_49

    #@3c
    add-int/lit8 p1, p1, -0x1

    #@3e
    if-ne p1, v2, :cond_45

    #@40
    .line 725
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object p0

    #@44
    return-object p0

    #@45
    .line 727
    :cond_45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    goto :goto_36

    #@49
    .line 730
    :cond_49
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    #@4b
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object p1

    #@54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object p1

    #@58
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@5b
    throw p0

    #@5c
    .line 731
    :cond_5c
    instance-of v0, p0, Ljava/util/Collection;

    #@5e
    if-eqz v0, :cond_6b

    #@60
    .line 732
    check-cast p0, Ljava/util/Collection;

    #@62
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@65
    move-result-object p0

    #@66
    .line 733
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/CollectionUtils;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@69
    move-result-object p0

    #@6a
    return-object p0

    #@6b
    .line 734
    :cond_6b
    instance-of v0, p0, Ljava/util/Enumeration;

    #@6d
    if-eqz v0, :cond_97

    #@6f
    .line 735
    check-cast p0, Ljava/util/Enumeration;

    #@71
    .line 736
    :goto_71
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@74
    move-result v0

    #@75
    if-eqz v0, :cond_84

    #@77
    add-int/lit8 p1, p1, -0x1

    #@79
    if-ne p1, v2, :cond_80

    #@7b
    .line 739
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@7e
    move-result-object p0

    #@7f
    return-object p0

    #@80
    .line 741
    :cond_80
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@83
    goto :goto_71

    #@84
    .line 744
    :cond_84
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    #@86
    new-instance v0, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e
    move-result-object p1

    #@8f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object p1

    #@93
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@96
    throw p0

    #@97
    .line 747
    :cond_97
    :try_start_97
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@9a
    move-result-object p0
    :try_end_9b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_97 .. :try_end_9b} :catch_9c

    #@9b
    return-object p0

    #@9c
    .line 749
    :catch_9c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@9e
    new-instance v0, Ljava/lang/StringBuilder;

    #@a0
    const-string v1, "Unsupported object type: "

    #@a2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a8
    move-result-object p0

    #@a9
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@ac
    move-result-object p0

    #@ad
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object p0

    #@b1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object p0

    #@b5
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b8
    throw p1

    #@b9
    .line 710
    :cond_b9
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    #@bb
    new-instance v0, Ljava/lang/StringBuilder;

    #@bd
    const-string v1, "Index cannot be negative: "

    #@bf
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    move-result-object p1

    #@c6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object p1

    #@ca
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@cd
    throw p0
.end method

.method public static getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 316
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    if-nez p0, :cond_8

    #@7
    return-object v0

    #@8
    .line 318
    :cond_8
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object p0

    #@c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_34

    #@12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    .line 319
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Ljava/lang/Integer;

    #@1c
    const/4 v3, 0x1

    #@1d
    if-nez v2, :cond_27

    #@1f
    .line 321
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v2

    #@23
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    goto :goto_c

    #@27
    .line 323
    :cond_27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@2a
    move-result v2

    #@2b
    add-int/2addr v2, v3

    #@2c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v2

    #@30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    goto :goto_c

    #@34
    :cond_34
    return-object v0
.end method

.method private static getFreq(Ljava/lang/Object;Ljava/util/Map;)I
    .registers 2

    #@0
    .line 211
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Ljava/lang/Integer;

    #@6
    if-eqz p0, :cond_d

    #@8
    .line 213
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result p0

    #@c
    return p0

    #@d
    :cond_d
    const/4 p0, 0x0

    #@e
    return p0
.end method

.method public static intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 7

    #@0
    if-eqz p0, :cond_3e

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_3e

    #@5
    .line 197
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 198
    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    #@d
    move-result-object v1

    #@e
    .line 199
    invoke-static {p1}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    #@11
    move-result-object v2

    #@12
    .line 200
    new-instance v3, Ljava/util/HashSet;

    #@14
    invoke-direct {v3, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@17
    .line 201
    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@1a
    .line 202
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object p0

    #@1e
    :cond_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result p1

    #@22
    if-eqz p1, :cond_3d

    #@24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object p1

    #@28
    .line 203
    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    #@2b
    move-result v3

    #@2c
    invoke-static {p1, v2}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    #@2f
    move-result v4

    #@30
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@33
    move-result v3

    #@34
    const/4 v4, 0x0

    #@35
    :goto_35
    if-ge v4, v3, :cond_1e

    #@37
    .line 204
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    add-int/lit8 v4, v4, 0x1

    #@3c
    goto :goto_35

    #@3d
    :cond_3d
    return-object v0

    #@3e
    .line 196
    :cond_3e
    :goto_3e
    new-instance p0, Ljava/util/ArrayList;

    #@40
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@43
    return-object p0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 850
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@5
    move-result p0

    #@6
    if-nez p0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method

.method public static isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_43

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_43

    #@6
    .line 393
    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@9
    move-result v1

    #@a
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@d
    move-result v2

    #@e
    if-eq v1, v2, :cond_11

    #@10
    return v0

    #@11
    .line 396
    :cond_11
    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    #@14
    move-result-object p0

    #@15
    .line 397
    invoke-static {p1}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    #@18
    move-result-object p1

    #@19
    .line 398
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@1c
    move-result v1

    #@1d
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@20
    move-result v2

    #@21
    if-eq v1, v2, :cond_24

    #@23
    return v0

    #@24
    .line 401
    :cond_24
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@27
    move-result-object v1

    #@28
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v1

    #@2c
    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_41

    #@32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    .line 402
    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    #@39
    move-result v3

    #@3a
    invoke-static {v2, p1}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    #@3d
    move-result v2

    #@3e
    if-eq v3, v2, :cond_2c

    #@40
    return v0

    #@41
    :cond_41
    const/4 p0, 0x1

    #@42
    return p0

    #@43
    :cond_43
    :goto_43
    return v0
.end method

.method public static isNotEmpty(Ljava/util/Collection;)Z
    .registers 1

    #@0
    .line 862
    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    #@3
    move-result p0

    #@4
    xor-int/lit8 p0, p0, 0x1

    #@6
    return p0
.end method

.method public static isProperSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_17

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_17

    #@6
    .line 376
    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@9
    move-result v1

    #@a
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@d
    move-result v2

    #@e
    if-ge v1, v2, :cond_17

    #@10
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/CollectionUtils;->isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@13
    move-result p0

    #@14
    if-eqz p0, :cond_17

    #@16
    const/4 v0, 0x1

    #@17
    :cond_17
    :goto_17
    return v0
.end method

.method public static isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_29

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_29

    #@6
    .line 343
    :cond_6
    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    #@9
    move-result-object v1

    #@a
    .line 344
    invoke-static {p1}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    #@d
    move-result-object p1

    #@e
    .line 345
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object p0

    #@12
    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_27

    #@18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    .line 346
    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    #@1f
    move-result v3

    #@20
    invoke-static {v2, p1}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    #@23
    move-result v2

    #@24
    if-le v3, v2, :cond_12

    #@26
    return v0

    #@27
    :cond_27
    const/4 p0, 0x1

    #@28
    return p0

    #@29
    :cond_29
    :goto_29
    return v0
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    if-eqz p0, :cond_17

    #@7
    .line 63
    array-length v1, p0

    #@8
    if-nez v1, :cond_b

    #@a
    goto :goto_17

    #@b
    .line 64
    :cond_b
    array-length v1, p0

    #@c
    const/4 v2, 0x0

    #@d
    :goto_d
    if-ge v2, v1, :cond_17

    #@f
    aget-object v3, p0, v2

    #@11
    .line 65
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_d

    #@17
    :cond_17
    :goto_17
    return-object v0
.end method

.method public static varargs newArrayListNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    if-eqz p0, :cond_1a

    #@7
    .line 73
    array-length v1, p0

    #@8
    if-nez v1, :cond_b

    #@a
    goto :goto_1a

    #@b
    .line 74
    :cond_b
    array-length v1, p0

    #@c
    const/4 v2, 0x0

    #@d
    :goto_d
    if-ge v2, v1, :cond_1a

    #@f
    aget-object v3, p0, v2

    #@11
    if-nez v3, :cond_14

    #@13
    goto :goto_17

    #@14
    .line 76
    :cond_14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    :goto_17
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_d

    #@1a
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static varargs newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .line 104
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    if-eqz p0, :cond_17

    #@7
    .line 105
    array-length v1, p0

    #@8
    if-nez v1, :cond_b

    #@a
    goto :goto_17

    #@b
    .line 106
    :cond_b
    array-length v1, p0

    #@c
    const/4 v2, 0x0

    #@d
    :goto_d
    if-ge v2, v1, :cond_17

    #@f
    aget-object v3, p0, v2

    #@11
    .line 107
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_d

    #@17
    :cond_17
    :goto_17
    return-object v0
.end method

.method public static varargs newHashSetNotNull([Ljava/lang/Object;)Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .line 114
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    if-eqz p0, :cond_1a

    #@7
    .line 115
    array-length v1, p0

    #@8
    if-nez v1, :cond_b

    #@a
    goto :goto_1a

    #@b
    .line 116
    :cond_b
    array-length v1, p0

    #@c
    const/4 v2, 0x0

    #@d
    :goto_d
    if-ge v2, v1, :cond_1a

    #@f
    aget-object v3, p0, v2

    #@11
    if-nez v3, :cond_14

    #@13
    goto :goto_17

    #@14
    .line 118
    :cond_14
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@17
    :goto_17
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_d

    #@1a
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static varargs newLinkedList([Ljava/lang/Object;)Ljava/util/LinkedList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .line 83
    new-instance v0, Ljava/util/LinkedList;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@5
    if-eqz p0, :cond_17

    #@7
    .line 84
    array-length v1, p0

    #@8
    if-nez v1, :cond_b

    #@a
    goto :goto_17

    #@b
    .line 85
    :cond_b
    array-length v1, p0

    #@c
    const/4 v2, 0x0

    #@d
    :goto_d
    if-ge v2, v1, :cond_17

    #@f
    aget-object v3, p0, v2

    #@11
    .line 86
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_d

    #@17
    :cond_17
    :goto_17
    return-object v0
.end method

.method public static varargs newLinkedListNotNull([Ljava/lang/Object;)Ljava/util/LinkedList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .line 93
    new-instance v0, Ljava/util/LinkedList;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@5
    if-eqz p0, :cond_1a

    #@7
    .line 94
    array-length v1, p0

    #@8
    if-nez v1, :cond_b

    #@a
    goto :goto_1a

    #@b
    .line 95
    :cond_b
    array-length v1, p0

    #@c
    const/4 v2, 0x0

    #@d
    :goto_d
    if-ge v2, v1, :cond_1a

    #@f
    aget-object v3, p0, v2

    #@11
    if-nez v3, :cond_14

    #@13
    goto :goto_17

    #@14
    .line 97
    :cond_14
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@17
    :goto_17
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_d

    #@1a
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static newSynchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 1

    #@0
    .line 145
    invoke-static {p0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static varargs newTreeSet(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/TreeSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;[TE;)",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .line 125
    new-instance v0, Ljava/util/TreeSet;

    #@2
    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@5
    if-eqz p1, :cond_17

    #@7
    .line 126
    array-length p0, p1

    #@8
    if-nez p0, :cond_b

    #@a
    goto :goto_17

    #@b
    .line 127
    :cond_b
    array-length p0, p1

    #@c
    const/4 v1, 0x0

    #@d
    :goto_d
    if-ge v1, p0, :cond_17

    #@f
    aget-object v2, p1, v1

    #@11
    .line 128
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_d

    #@17
    :cond_17
    :goto_17
    return-object v0
.end method

.method public static varargs newTreeSetNotNull(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/TreeSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;[TE;)",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .line 135
    new-instance v0, Ljava/util/TreeSet;

    #@2
    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@5
    if-eqz p1, :cond_1a

    #@7
    .line 136
    array-length p0, p1

    #@8
    if-nez p0, :cond_b

    #@a
    goto :goto_1a

    #@b
    .line 137
    :cond_b
    array-length p0, p1

    #@c
    const/4 v1, 0x0

    #@d
    :goto_d
    if-ge v1, p0, :cond_1a

    #@f
    aget-object v2, p1, v1

    #@11
    if-nez v2, :cond_14

    #@13
    goto :goto_17

    #@14
    .line 139
    :cond_14
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@17
    :goto_17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_d

    #@1a
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static newUnmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 1

    #@0
    .line 149
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static varargs newUnmodifiableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .line 46
    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static varargs newUnmodifiableListNotNull([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .line 57
    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->newArrayListNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_8

    #@2
    .line 905
    new-instance p0, Ljava/util/ArrayList;

    #@4
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@7
    return-object p0

    #@8
    :cond_8
    if-nez p1, :cond_10

    #@a
    .line 906
    new-instance p1, Ljava/util/ArrayList;

    #@c
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@f
    return-object p1

    #@10
    .line 907
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 908
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object p0

    #@19
    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2d

    #@1f
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    .line 909
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_19

    #@29
    .line 910
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_19

    #@2d
    :cond_2d
    return-object v0
.end method

.method public static retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_23

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_23

    #@5
    .line 881
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 882
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object p0

    #@e
    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_22

    #@14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    .line 883
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_e

    #@1e
    .line 884
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    goto :goto_e

    #@22
    :cond_22
    return-object v0

    #@23
    .line 880
    :cond_23
    :goto_23
    new-instance p0, Ljava/util/ArrayList;

    #@25
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@28
    return-object p0
.end method

.method public static select(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Predicate;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Predicate<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_27

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_27

    #@5
    .line 507
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@a
    move-result v1

    #@b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 508
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object p0

    #@12
    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_26

    #@18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    .line 509
    invoke-interface {p1, v1}, Lcom/blankj/utilcode/util/CollectionUtils$Predicate;->evaluate(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_12

    #@22
    .line 510
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_12

    #@26
    :cond_26
    return-object v0

    #@27
    .line 506
    :cond_27
    :goto_27
    new-instance p0, Ljava/util/ArrayList;

    #@29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@2c
    return-object p0
.end method

.method public static selectRejected(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Predicate;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Predicate<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_27

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_27

    #@5
    .line 529
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@a
    move-result v1

    #@b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 530
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object p0

    #@12
    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_26

    #@18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    .line 531
    invoke-interface {p1, v1}, Lcom/blankj/utilcode/util/CollectionUtils$Predicate;->evaluate(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_12

    #@22
    .line 532
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_12

    #@26
    :cond_26
    return-object v0

    #@27
    .line 528
    :cond_27
    :goto_27
    new-instance p0, Ljava/util/ArrayList;

    #@29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@2c
    return-object p0
.end method

.method public static shuffle(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 924
    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    #@3
    return-void
.end method

.method public static size(Ljava/lang/Object;)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    .line 773
    :cond_4
    instance-of v1, p0, Ljava/util/Map;

    #@6
    if-eqz v1, :cond_f

    #@8
    .line 774
    check-cast p0, Ljava/util/Map;

    #@a
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@d
    move-result p0

    #@e
    goto :goto_4c

    #@f
    .line 775
    :cond_f
    instance-of v1, p0, Ljava/util/Collection;

    #@11
    if-eqz v1, :cond_1a

    #@13
    .line 776
    check-cast p0, Ljava/util/Collection;

    #@15
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@18
    move-result p0

    #@19
    goto :goto_4c

    #@1a
    .line 777
    :cond_1a
    instance-of v1, p0, [Ljava/lang/Object;

    #@1c
    if-eqz v1, :cond_22

    #@1e
    .line 778
    check-cast p0, [Ljava/lang/Object;

    #@20
    array-length p0, p0

    #@21
    goto :goto_4c

    #@22
    .line 779
    :cond_22
    instance-of v1, p0, Ljava/util/Iterator;

    #@24
    if-eqz v1, :cond_36

    #@26
    .line 780
    check-cast p0, Ljava/util/Iterator;

    #@28
    .line 781
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_34

    #@2e
    add-int/lit8 v0, v0, 0x1

    #@30
    .line 783
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    goto :goto_28

    #@34
    :cond_34
    move p0, v0

    #@35
    goto :goto_4c

    #@36
    .line 785
    :cond_36
    instance-of v1, p0, Ljava/util/Enumeration;

    #@38
    if-eqz v1, :cond_48

    #@3a
    .line 786
    check-cast p0, Ljava/util/Enumeration;

    #@3c
    .line 787
    :goto_3c
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_34

    #@42
    add-int/lit8 v0, v0, 0x1

    #@44
    .line 789
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@47
    goto :goto_3c

    #@48
    .line 793
    :cond_48
    :try_start_48
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@4b
    move-result p0
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_4c} :catch_4d

    #@4c
    :goto_4c
    return p0

    #@4d
    .line 795
    :catch_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4f
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    const-string v2, "Unsupported object type: "

    #@53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@59
    move-result-object p0

    #@5a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5d
    move-result-object p0

    #@5e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object p0

    #@62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object p0

    #@66
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@69
    throw v0
.end method

.method public static sizeIsEmpty(Ljava/lang/Object;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    .line 822
    :cond_4
    instance-of v1, p0, Ljava/util/Collection;

    #@6
    if-eqz v1, :cond_f

    #@8
    .line 823
    check-cast p0, Ljava/util/Collection;

    #@a
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    #@d
    move-result p0

    #@e
    return p0

    #@f
    .line 824
    :cond_f
    instance-of v1, p0, Ljava/util/Map;

    #@11
    if-eqz v1, :cond_1a

    #@13
    .line 825
    check-cast p0, Ljava/util/Map;

    #@15
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    #@18
    move-result p0

    #@19
    return p0

    #@1a
    .line 826
    :cond_1a
    instance-of v1, p0, [Ljava/lang/Object;

    #@1c
    const/4 v2, 0x0

    #@1d
    if-eqz v1, :cond_27

    #@1f
    .line 827
    check-cast p0, [Ljava/lang/Object;

    #@21
    array-length p0, p0

    #@22
    if-nez p0, :cond_25

    #@24
    goto :goto_26

    #@25
    :cond_25
    move v0, v2

    #@26
    :goto_26
    return v0

    #@27
    .line 828
    :cond_27
    instance-of v1, p0, Ljava/util/Iterator;

    #@29
    if-eqz v1, :cond_33

    #@2b
    .line 829
    check-cast p0, Ljava/util/Iterator;

    #@2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result p0

    #@31
    xor-int/2addr p0, v0

    #@32
    return p0

    #@33
    .line 830
    :cond_33
    instance-of v1, p0, Ljava/util/Enumeration;

    #@35
    if-eqz v1, :cond_3f

    #@37
    .line 831
    check-cast p0, Ljava/util/Enumeration;

    #@39
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@3c
    move-result p0

    #@3d
    xor-int/2addr p0, v0

    #@3e
    return p0

    #@3f
    .line 834
    :cond_3f
    :try_start_3f
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@42
    move-result p0
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_43} :catch_48

    #@43
    if-nez p0, :cond_46

    #@45
    goto :goto_47

    #@46
    :cond_46
    move v0, v2

    #@47
    :goto_47
    return v0

    #@48
    .line 836
    :catch_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4a
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    const-string v2, "Unsupported object type: "

    #@4e
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@54
    move-result-object p0

    #@55
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@58
    move-result-object p0

    #@59
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object p0

    #@5d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object p0

    #@61
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@64
    throw v0
.end method

.method public static subtract(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3

    #@0
    if-nez p0, :cond_8

    #@2
    .line 265
    new-instance p0, Ljava/util/ArrayList;

    #@4
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@7
    return-object p0

    #@8
    :cond_8
    if-nez p1, :cond_10

    #@a
    .line 266
    new-instance p1, Ljava/util/ArrayList;

    #@c
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@f
    return-object p1

    #@10
    .line 267
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@15
    .line 268
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object p0

    #@19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result p1

    #@1d
    if-eqz p1, :cond_27

    #@1f
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object p1

    #@23
    .line 269
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@26
    goto :goto_19

    #@27
    :cond_27
    return-object v0
.end method

.method public static toString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 1

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, "null"

    #@4
    return-object p0

    #@5
    .line 935
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static transform(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Transformer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Object;",
            "E2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE1;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Transformer<",
            "TE1;TE2;>;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_2b

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_2b

    #@5
    .line 556
    :cond_5
    instance-of v0, p0, Ljava/util/List;

    #@7
    if-eqz v0, :cond_21

    #@9
    .line 557
    check-cast p0, Ljava/util/List;

    #@b
    .line 558
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@e
    move-result-object p0

    #@f
    :goto_f
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2b

    #@15
    .line 559
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    invoke-interface {p1, v0}, Lcom/blankj/utilcode/util/CollectionUtils$Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    invoke-interface {p0, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@20
    goto :goto_f

    #@21
    .line 562
    :cond_21
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/CollectionUtils;->collect(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Transformer;)Ljava/util/Collection;

    #@24
    move-result-object p1

    #@25
    .line 563
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    #@28
    .line 564
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    #@2b
    :cond_2b
    :goto_2b
    return-void
.end method

.method public static union(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 7

    #@0
    if-nez p0, :cond_a

    #@2
    if-nez p1, :cond_a

    #@4
    .line 166
    new-instance p0, Ljava/util/ArrayList;

    #@6
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@9
    return-object p0

    #@a
    :cond_a
    if-nez p0, :cond_12

    #@c
    .line 167
    new-instance p0, Ljava/util/ArrayList;

    #@e
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@11
    return-object p0

    #@12
    :cond_12
    if-nez p1, :cond_1a

    #@14
    .line 168
    new-instance p1, Ljava/util/ArrayList;

    #@16
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@19
    return-object p1

    #@1a
    .line 169
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1f
    .line 170
    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    #@22
    move-result-object v1

    #@23
    .line 171
    invoke-static {p1}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    #@26
    move-result-object v2

    #@27
    .line 172
    new-instance v3, Ljava/util/HashSet;

    #@29
    invoke-direct {v3, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@2c
    .line 173
    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@2f
    .line 174
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object p0

    #@33
    :cond_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result p1

    #@37
    if-eqz p1, :cond_52

    #@39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object p1

    #@3d
    .line 175
    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    #@40
    move-result v3

    #@41
    invoke-static {p1, v2}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    #@44
    move-result v4

    #@45
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@48
    move-result v3

    #@49
    const/4 v4, 0x0

    #@4a
    :goto_4a
    if-ge v4, v3, :cond_33

    #@4c
    .line 176
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    add-int/lit8 v4, v4, 0x1

    #@51
    goto :goto_4a

    #@52
    :cond_52
    return-object v0
.end method

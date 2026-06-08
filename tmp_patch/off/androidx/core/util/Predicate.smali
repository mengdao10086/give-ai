.class public interface abstract Landroidx/core/util/Predicate;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static isEqual(Ljava/lang/Object;)Landroidx/core/util/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_8

    #@2
    .line 110
    new-instance p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;

    #@4
    invoke-direct {p0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;-><init>()V

    #@7
    goto :goto_e

    #@8
    .line 111
    :cond_8
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;

    #@a
    invoke-direct {v0, p0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;)V

    #@d
    move-object p0, v0

    #@e
    :goto_e
    return-object p0
.end method

.method public static synthetic lambda$and$0(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    #@0
    .line 60
    invoke-interface {p0, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    invoke-interface {p1, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    return p1
.end method

.method public static synthetic lambda$isEqual$3(Ljava/lang/Object;)Z
    .registers 1

    #@0
    .line 110
    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static synthetic lambda$isEqual$4(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static synthetic lambda$negate$1(Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .registers 2
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    #@0
    .line 72
    invoke-interface {p0, p1}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@3
    move-result p1

    #@4
    xor-int/lit8 p1, p1, 0x1

    #@6
    return p1
.end method

.method public static synthetic lambda$or$2(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "_this"    # Landroidx/core/util/Predicate;

    #@0
    .line 94
    invoke-interface {p0, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_f

    #@6
    invoke-interface {p1, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 p1, 0x1

    #@10
    :goto_10
    return p1
.end method

.method public static not(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 129
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 130
    invoke-interface {p0}, Landroidx/core/util/Predicate;->negate()Landroidx/core/util/Predicate;

    #@6
    move-result-object p0

    #@7
    return-object p0
.end method


# virtual methods
.method public and(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 60
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda3;

    #@5
    invoke-direct {v0, p0, p1}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda3;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V

    #@8
    return-object v0
.end method

.method public negate()Landroidx/core/util/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 72
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;-><init>(Landroidx/core/util/Predicate;)V

    #@5
    return-object v0
.end method

.method public or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 94
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda0;

    #@5
    invoke-direct {v0, p0, p1}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda0;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V

    #@8
    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

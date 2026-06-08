.class public final Lio/reactivex/internal/functions/ObjectHelper;
.super Ljava/lang/Object;
.source "ObjectHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/functions/ObjectHelper$BiObjectPredicate;
    }
.end annotation


# static fields
.field static final EQUALS:Lio/reactivex/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiPredicate<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 83
    new-instance v0, Lio/reactivex/internal/functions/ObjectHelper$BiObjectPredicate;

    #@2
    invoke-direct {v0}, Lio/reactivex/internal/functions/ObjectHelper$BiObjectPredicate;-><init>()V

    #@5
    sput-object v0, Lio/reactivex/internal/functions/ObjectHelper;->EQUALS:Lio/reactivex/functions/BiPredicate;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string v1, "No instances!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static compare(II)I
    .registers 2

    #@0
    if-ge p0, p1, :cond_4

    #@2
    const/4 p0, -0x1

    #@3
    goto :goto_9

    #@4
    :cond_4
    if-le p0, p1, :cond_8

    #@6
    const/4 p0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p0, 0x0

    #@9
    :goto_9
    return p0
.end method

.method public static compare(JJ)I
    .registers 4

    #@0
    cmp-long p0, p0, p2

    #@2
    if-gez p0, :cond_6

    #@4
    const/4 p0, -0x1

    #@5
    goto :goto_b

    #@6
    :cond_6
    if-lez p0, :cond_a

    #@8
    const/4 p0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p0, 0x0

    #@b
    :goto_b
    return p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    #@0
    if-eq p0, p1, :cond_d

    #@2
    if-eqz p0, :cond_b

    #@4
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result p0

    #@8
    if-eqz p0, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 p0, 0x1

    #@e
    :goto_e
    return p0
.end method

.method public static equalsPredicate()Lio/reactivex/functions/BiPredicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/functions/BiPredicate<",
            "TT;TT;>;"
        }
    .end annotation

    #@0
    .line 92
    sget-object v0, Lio/reactivex/internal/functions/ObjectHelper;->EQUALS:Lio/reactivex/functions/BiPredicate;

    #@2
    return-object v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 1

    #@0
    if-eqz p0, :cond_7

    #@2
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result p0

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p0, 0x0

    #@8
    :goto_8
    return p0
.end method

.method public static requireNonNull(JLjava/lang/String;)J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 142
    new-instance p0, Ljava/lang/InternalError;

    #@2
    new-instance p1, Ljava/lang/StringBuilder;

    #@4
    const-string v0, "Null check on a primitive: "

    #@6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object p1

    #@d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object p1

    #@11
    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@14
    throw p0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_3

    #@2
    return-object p0

    #@3
    .line 39
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@8
    throw p0
.end method

.method public static verifyPositive(ILjava/lang/String;)I
    .registers 4

    #@0
    if-lez p0, :cond_3

    #@2
    return p0

    #@3
    .line 105
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object p1

    #@e
    const-string v1, " > 0 required but it was "

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object p1

    #@14
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object p0

    #@18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object p0

    #@1c
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
.end method

.method public static verifyPositive(JLjava/lang/String;)J
    .registers 5

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-lez v0, :cond_7

    #@6
    return-wide p0

    #@7
    .line 120
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object p2

    #@12
    const-string v1, " > 0 required but it was "

    #@14
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object p2

    #@18
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p0

    #@1c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object p0

    #@20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

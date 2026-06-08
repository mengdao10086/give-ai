.class final Lio/reactivex/internal/functions/Functions$Array3Func;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Array3Func"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "[",
        "Ljava/lang/Object;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final f:Lio/reactivex/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function3<",
            "TT1;TT2;TT3;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/functions/Function3;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function3<",
            "TT1;TT2;TT3;TR;>;)V"
        }
    .end annotation

    #@0
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 537
    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$Array3Func;->f:Lio/reactivex/functions/Function3;

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 533
    check-cast p1, [Ljava/lang/Object;

    #@2
    invoke-virtual {p0, p1}, Lio/reactivex/internal/functions/Functions$Array3Func;->apply([Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public apply([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 543
    array-length v0, p1

    #@1
    const/4 v1, 0x3

    #@2
    if-ne v0, v1, :cond_14

    #@4
    .line 546
    iget-object v0, p0, Lio/reactivex/internal/functions/Functions$Array3Func;->f:Lio/reactivex/functions/Function3;

    #@6
    const/4 v1, 0x0

    #@7
    aget-object v1, p1, v1

    #@9
    const/4 v2, 0x1

    #@a
    aget-object v2, p1, v2

    #@c
    const/4 v3, 0x2

    #@d
    aget-object p1, p1, v3

    #@f
    invoke-interface {v0, v1, v2, p1}, Lio/reactivex/functions/Function3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    return-object p1

    #@14
    .line 544
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    const-string v2, "Array of size 3 expected but got "

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1d
    array-length p1, p1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p1

    #@26
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0
.end method

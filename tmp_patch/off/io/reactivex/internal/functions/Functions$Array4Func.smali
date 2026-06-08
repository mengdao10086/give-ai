.class final Lio/reactivex/internal/functions/Functions$Array4Func;
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
    name = "Array4Func"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "T4:",
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
.field final f:Lio/reactivex/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function4<",
            "TT1;TT2;TT3;TT4;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/functions/Function4;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function4<",
            "TT1;TT2;TT3;TT4;TR;>;)V"
        }
    .end annotation

    #@0
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 554
    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$Array4Func;->f:Lio/reactivex/functions/Function4;

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
    .line 550
    check-cast p1, [Ljava/lang/Object;

    #@2
    invoke-virtual {p0, p1}, Lio/reactivex/internal/functions/Functions$Array4Func;->apply([Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public apply([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
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
    .line 560
    array-length v0, p1

    #@1
    const/4 v1, 0x4

    #@2
    if-ne v0, v1, :cond_17

    #@4
    .line 563
    iget-object v0, p0, Lio/reactivex/internal/functions/Functions$Array4Func;->f:Lio/reactivex/functions/Function4;

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
    aget-object v3, p1, v3

    #@f
    const/4 v4, 0x3

    #@10
    aget-object p1, p1, v4

    #@12
    invoke-interface {v0, v1, v2, v3, p1}, Lio/reactivex/functions/Function4;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    return-object p1

    #@17
    .line 561
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    const-string v2, "Array of size 4 expected but got "

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@20
    array-length p1, p1

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object p1

    #@25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object p1

    #@29
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
.end method

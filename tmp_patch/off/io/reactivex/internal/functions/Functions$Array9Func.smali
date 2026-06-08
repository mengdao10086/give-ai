.class final Lio/reactivex/internal/functions/Functions$Array9Func;
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
    name = "Array9Func"
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
        "T5:",
        "Ljava/lang/Object;",
        "T6:",
        "Ljava/lang/Object;",
        "T7:",
        "Ljava/lang/Object;",
        "T8:",
        "Ljava/lang/Object;",
        "T9:",
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
.field final f:Lio/reactivex/functions/Function9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/functions/Function9;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;)V"
        }
    .end annotation

    #@0
    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 639
    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$Array9Func;->f:Lio/reactivex/functions/Function9;

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
    .line 635
    check-cast p1, [Ljava/lang/Object;

    #@2
    invoke-virtual {p0, p1}, Lio/reactivex/internal/functions/Functions$Array9Func;->apply([Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public apply([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
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
    .line 645
    array-length v0, p1

    #@1
    const/16 v1, 0x9

    #@3
    if-ne v0, v1, :cond_28

    #@5
    .line 648
    iget-object v2, p0, Lio/reactivex/internal/functions/Functions$Array9Func;->f:Lio/reactivex/functions/Function9;

    #@7
    const/4 v0, 0x0

    #@8
    aget-object v3, p1, v0

    #@a
    const/4 v0, 0x1

    #@b
    aget-object v4, p1, v0

    #@d
    const/4 v0, 0x2

    #@e
    aget-object v5, p1, v0

    #@10
    const/4 v0, 0x3

    #@11
    aget-object v6, p1, v0

    #@13
    const/4 v0, 0x4

    #@14
    aget-object v7, p1, v0

    #@16
    const/4 v0, 0x5

    #@17
    aget-object v8, p1, v0

    #@19
    const/4 v0, 0x6

    #@1a
    aget-object v9, p1, v0

    #@1c
    const/4 v0, 0x7

    #@1d
    aget-object v10, p1, v0

    #@1f
    const/16 v0, 0x8

    #@21
    aget-object v11, p1, v0

    #@23
    invoke-interface/range {v2 .. v11}, Lio/reactivex/functions/Function9;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object p1

    #@27
    return-object p1

    #@28
    .line 646
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    const-string v2, "Array of size 9 expected but got "

    #@2e
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@31
    array-length p1, p1

    #@32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object p1

    #@36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object p1

    #@3a
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0
.end method

.class Lkotlin/collections/ArraysUtilJVM;
.super Ljava/lang/Object;
.source "ArraysUtilJVM.java"


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static asList([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 13
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

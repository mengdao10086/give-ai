.class public Landroidx/lifecycle/MethodCallsLogger;
.super Ljava/lang/Object;
.source "MethodCallsLogger.java"


# instance fields
.field private mCalledMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/lifecycle/MethodCallsLogger;->mCalledMethods:Ljava/util/Map;

    #@a
    return-void
.end method


# virtual methods
.method public approveCall(Ljava/lang/String;I)Z
    .registers 7

    #@0
    .line 36
    iget-object v0, p0, Landroidx/lifecycle/MethodCallsLogger;->mCalledMethods:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    const/4 v1, 0x0

    #@9
    if-eqz v0, :cond_10

    #@b
    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@e
    move-result v0

    #@f
    goto :goto_11

    #@10
    :cond_10
    move v0, v1

    #@11
    :goto_11
    and-int v2, v0, p2

    #@13
    const/4 v3, 0x1

    #@14
    if-eqz v2, :cond_17

    #@16
    move v1, v3

    #@17
    .line 39
    :cond_17
    iget-object v2, p0, Landroidx/lifecycle/MethodCallsLogger;->mCalledMethods:Ljava/util/Map;

    #@19
    or-int/2addr p2, v0

    #@1a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object p2

    #@1e
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    xor-int/lit8 p1, v1, 0x1

    #@23
    return p1
.end method

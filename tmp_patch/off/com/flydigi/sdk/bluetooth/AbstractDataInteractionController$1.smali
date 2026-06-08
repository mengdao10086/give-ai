.class final Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AbstractDataInteractionController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;-><init>(Landroid/content/Context;Lcom/flydigi/sdk/bluetooth/DeviceFilter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.flydigi.sdk.bluetooth.AbstractDataInteractionController$1"
    f = "AbstractDataInteractionController.kt"
    i = {}
    l = {
        0x2c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;


# direct methods
.method constructor <init>(Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController$1;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;

    #@2
    const/4 p1, 0x2

    #@3
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    #@6
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    #@0
    new-instance p1, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController$1;

    #@2
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;

    #@4
    invoke-direct {p1, v0, p2}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController$1;-><init>(Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;Lkotlin/coroutines/Continuation;)V

    #@7
    check-cast p1, Lkotlin/coroutines/Continuation;

    #@9
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    #@2
    check-cast p2, Lkotlin/coroutines/Continuation;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController$1;

    #@6
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@8
    invoke-virtual {p1, p2}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    #@0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 43
    iget v1, p0, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController$1;->label:I

    #@6
    const/4 v2, 0x1

    #@7
    if-eqz v1, :cond_17

    #@9
    if-ne v1, v2, :cond_f

    #@b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    #@e
    goto :goto_28

    #@f
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    #@11
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    #@13
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw p1

    #@17
    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    #@1a
    .line 44
    iget-object p1, p0, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController$1;->this$0:Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;

    #@1c
    move-object v1, p0

    #@1d
    check-cast v1, Lkotlin/coroutines/Continuation;

    #@1f
    iput v2, p0, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController$1;->label:I

    #@21
    # invokes: Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;->runFetchLoop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v1}, Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;->access$runFetchLoop(Lcom/flydigi/sdk/bluetooth/AbstractDataInteractionController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    #@24
    move-result-object p1

    #@25
    if-ne p1, v0, :cond_28

    #@27
    return-object v0

    #@28
    .line 45
    :cond_28
    :goto_28
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@2a
    return-object p1
.end method

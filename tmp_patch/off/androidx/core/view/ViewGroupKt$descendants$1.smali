.class final Landroidx/core/view/ViewGroupKt$descendants$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "ViewGroup.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewGroupKt;->getDescendants(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Landroid/view/View;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewGroup.kt\nandroidx/core/view/ViewGroupKt$descendants$1\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,175:1\n55#2,4:176\n*S KotlinDebug\n*F\n+ 1 ViewGroup.kt\nandroidx/core/view/ViewGroupKt$descendants$1\n*L\n118#1:176,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Landroid/view/View;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.core.view.ViewGroupKt$descendants$1"
    f = "ViewGroup.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x77,
        0x79
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "$this$forEach$iv",
        "child",
        "index$iv",
        "$this$sequence",
        "$this$forEach$iv",
        "index$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $this_descendants:Landroid/view/ViewGroup;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/core/view/ViewGroupKt$descendants$1;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    #@2
    const/4 p1, 0x2

    #@3
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    #@6
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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
    new-instance v0, Landroidx/core/view/ViewGroupKt$descendants$1;

    #@2
    iget-object v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    #@4
    invoke-direct {v0, v1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;-><init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    #@7
    iput-object p1, v0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    #@9
    check-cast v0, Lkotlin/coroutines/Continuation;

    #@b
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    check-cast p1, Lkotlin/sequences/SequenceScope;

    #@2
    check-cast p2, Lkotlin/coroutines/Continuation;

    #@4
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Landroid/view/View;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/core/view/ViewGroupKt$descendants$1;

    #@6
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@8
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    #@0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 117
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    #@6
    const/4 v2, 0x2

    #@7
    const/4 v3, 0x1

    #@8
    if-eqz v1, :cond_3d

    #@a
    if-eq v1, v3, :cond_28

    #@c
    if-ne v1, v2, :cond_20

    #@e
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    #@10
    iget v4, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    #@12
    iget-object v5, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    #@14
    check-cast v5, Landroid/view/ViewGroup;

    #@16
    iget-object v6, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    #@18
    check-cast v6, Lkotlin/sequences/SequenceScope;

    #@1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    #@1d
    move-object p1, p0

    #@1e
    goto/16 :goto_91

    #@20
    .line 124
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    #@22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    #@24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw p1

    #@28
    .line 117
    :cond_28
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    #@2a
    iget v4, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    #@2c
    iget-object v5, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    #@2e
    check-cast v5, Landroid/view/View;

    #@30
    iget-object v6, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    #@32
    check-cast v6, Landroid/view/ViewGroup;

    #@34
    iget-object v7, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    #@36
    check-cast v7, Lkotlin/sequences/SequenceScope;

    #@38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    #@3b
    move-object p1, p0

    #@3c
    goto :goto_71

    #@3d
    :cond_3d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    #@40
    iget-object p1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    #@42
    check-cast p1, Lkotlin/sequences/SequenceScope;

    #@44
    .line 118
    iget-object v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    #@46
    .line 176
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    #@49
    move-result v4

    #@4a
    const/4 v5, 0x0

    #@4b
    move-object v6, p0

    #@4c
    :goto_4c
    if-ge v5, v4, :cond_a1

    #@4e
    .line 177
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@51
    move-result-object v7

    #@52
    const-string v8, "getChildAt(index)"

    #@54
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@57
    .line 119
    iput-object p1, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    #@59
    iput-object v1, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    #@5b
    iput-object v7, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    #@5d
    iput v5, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    #@5f
    iput v4, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    #@61
    iput v3, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    #@63
    invoke-virtual {p1, v7, v6}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    #@66
    move-result-object v8

    #@67
    if-ne v8, v0, :cond_6a

    #@69
    return-object v0

    #@6a
    :cond_6a
    move-object v9, v7

    #@6b
    move-object v7, p1

    #@6c
    move-object p1, v6

    #@6d
    move-object v6, v1

    #@6e
    move v1, v4

    #@6f
    move v4, v5

    #@70
    move-object v5, v9

    #@71
    .line 120
    :goto_71
    instance-of v8, v5, Landroid/view/ViewGroup;

    #@73
    if-eqz v8, :cond_98

    #@75
    .line 121
    check-cast v5, Landroid/view/ViewGroup;

    #@77
    invoke-static {v5}, Landroidx/core/view/ViewGroupKt;->getDescendants(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    #@7a
    move-result-object v5

    #@7b
    iput-object v7, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    #@7d
    iput-object v6, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    #@7f
    const/4 v8, 0x0

    #@80
    iput-object v8, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    #@82
    iput v4, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    #@84
    iput v1, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    #@86
    iput v2, p1, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    #@88
    invoke-virtual {v7, v5, p1}, Lkotlin/sequences/SequenceScope;->yieldAll(Lkotlin/sequences/Sequence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    #@8b
    move-result-object v5

    #@8c
    if-ne v5, v0, :cond_8f

    #@8e
    return-object v0

    #@8f
    :cond_8f
    move-object v5, v6

    #@90
    move-object v6, v7

    #@91
    :goto_91
    move-object v9, v6

    #@92
    move-object v6, p1

    #@93
    move-object p1, v9

    #@94
    move-object v10, v5

    #@95
    move v5, v1

    #@96
    move-object v1, v10

    #@97
    goto :goto_9c

    #@98
    :cond_98
    move v5, v1

    #@99
    move-object v1, v6

    #@9a
    move-object v6, p1

    #@9b
    move-object p1, v7

    #@9c
    :goto_9c
    add-int/2addr v4, v3

    #@9d
    move v9, v5

    #@9e
    move v5, v4

    #@9f
    move v4, v9

    #@a0
    goto :goto_4c

    #@a1
    .line 124
    :cond_a1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@a3
    return-object p1
.end method

.class final Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SlidingWindow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
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
        "Ljava/util/List<",
        "+TT;>;>;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;",
        ""
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
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x2,
        0x2,
        0x3,
        0x3
    }
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "buffer",
        "gap",
        "$this$iterator",
        "buffer",
        "$this$iterator",
        "buffer"
    }
    s = {
        "L$0",
        "L$1",
        "I$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $partialWindows:Z

.field final synthetic $reuseBuffer:Z

.field final synthetic $size:I

.field final synthetic $step:I

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Iterator<",
            "+TT;>;ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/collections/SlidingWindowKt$windowedIterator$1;",
            ">;)V"
        }
    .end annotation

    #@0
    iput p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    #@2
    iput p2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    #@4
    iput-object p3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    #@6
    iput-boolean p4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    #@8
    iput-boolean p5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    #@a
    const/4 p1, 0x2

    #@b
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    #@e
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11
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
    new-instance v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    #@2
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    #@4
    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    #@6
    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    #@8
    iget-boolean v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    #@a
    iget-boolean v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    #@c
    move-object v0, v7

    #@d
    move-object v6, p2

    #@e
    invoke-direct/range {v0 .. v6}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V

    #@11
    iput-object p1, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    #@13
    check-cast v7, Lkotlin/coroutines/Continuation;

    #@15
    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    check-cast p1, Lkotlin/sequences/SequenceScope;

    #@2
    check-cast p2, Lkotlin/coroutines/Continuation;

    #@4
    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    #@6
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@8
    invoke-virtual {p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 24
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    #@6
    const/4 v2, 0x5

    #@7
    const/4 v3, 0x4

    #@8
    const/4 v4, 0x3

    #@9
    const/4 v5, 0x2

    #@a
    const/4 v6, 0x1

    #@b
    const/4 v7, 0x0

    #@c
    if-eqz v1, :cond_5a

    #@e
    if-eq v1, v6, :cond_46

    #@10
    if-eq v1, v5, :cond_41

    #@12
    if-eq v1, v4, :cond_2f

    #@14
    if-eq v1, v3, :cond_21

    #@16
    if-ne v1, v2, :cond_19

    #@18
    goto :goto_41

    #@19
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    #@1b
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    #@1d
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw p1

    #@21
    :cond_21
    iget-object v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    #@23
    check-cast v1, Lkotlin/collections/RingBuffer;

    #@25
    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    #@27
    check-cast v4, Lkotlin/sequences/SequenceScope;

    #@29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    #@2c
    move-object p1, p0

    #@2d
    goto/16 :goto_16b

    #@2f
    :cond_2f
    iget-object v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    #@31
    check-cast v1, Ljava/util/Iterator;

    #@33
    iget-object v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    #@35
    check-cast v5, Lkotlin/collections/RingBuffer;

    #@37
    iget-object v8, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    #@39
    check-cast v8, Lkotlin/sequences/SequenceScope;

    #@3b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    #@3e
    move-object p1, p0

    #@3f
    goto/16 :goto_133

    #@41
    :cond_41
    :goto_41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    #@44
    goto/16 :goto_18d

    #@46
    :cond_46
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    #@48
    iget-object v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    #@4a
    check-cast v2, Ljava/util/Iterator;

    #@4c
    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    #@4e
    check-cast v3, Ljava/util/ArrayList;

    #@50
    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    #@52
    check-cast v4, Lkotlin/sequences/SequenceScope;

    #@54
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    #@57
    move-object v8, p0

    #@58
    :cond_58
    move p1, v1

    #@59
    goto :goto_ac

    #@5a
    :cond_5a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    #@5d
    iget-object p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    #@5f
    check-cast p1, Lkotlin/sequences/SequenceScope;

    #@61
    .line 25
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    #@63
    const/16 v8, 0x400

    #@65
    invoke-static {v1, v8}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    #@68
    move-result v1

    #@69
    .line 26
    iget v8, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    #@6b
    iget v9, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    #@6d
    sub-int/2addr v8, v9

    #@6e
    if-ltz v8, :cond_e6

    #@70
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    #@72
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@75
    .line 30
    iget-object v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    #@77
    const/4 v3, 0x0

    #@78
    move-object v4, p1

    #@79
    move p1, v3

    #@7a
    move-object v3, v2

    #@7b
    move-object v2, v1

    #@7c
    move v1, v8

    #@7d
    move-object v8, p0

    #@7e
    :cond_7e
    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@81
    move-result v9

    #@82
    if-eqz v9, :cond_be

    #@84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@87
    move-result-object v9

    #@88
    if-lez p1, :cond_8d

    #@8a
    add-int/lit8 p1, p1, -0x1

    #@8c
    goto :goto_7e

    #@8d
    .line 32
    :cond_8d
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@90
    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@93
    move-result v9

    #@94
    iget v10, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    #@96
    if-ne v9, v10, :cond_7e

    #@98
    .line 34
    move-object p1, v8

    #@99
    check-cast p1, Lkotlin/coroutines/Continuation;

    #@9b
    iput-object v4, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    #@9d
    iput-object v3, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    #@9f
    iput-object v2, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    #@a1
    iput v1, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    #@a3
    iput v6, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    #@a5
    invoke-virtual {v4, v3, p1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    #@a8
    move-result-object p1

    #@a9
    if-ne p1, v0, :cond_58

    #@ab
    return-object v0

    #@ac
    .line 35
    :goto_ac
    iget-boolean v1, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    #@ae
    if-eqz v1, :cond_b4

    #@b0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@b3
    goto :goto_bc

    #@b4
    :cond_b4
    new-instance v1, Ljava/util/ArrayList;

    #@b6
    iget v3, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    #@b8
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@bb
    move-object v3, v1

    #@bc
    :goto_bc
    move v1, p1

    #@bd
    goto :goto_7e

    #@be
    .line 39
    :cond_be
    move-object p1, v3

    #@bf
    check-cast p1, Ljava/util/Collection;

    #@c1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@c4
    move-result p1

    #@c5
    xor-int/2addr p1, v6

    #@c6
    if-eqz p1, :cond_18d

    #@c8
    .line 40
    iget-boolean p1, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    #@ca
    if-nez p1, :cond_d4

    #@cc
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@cf
    move-result p1

    #@d0
    iget v1, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    #@d2
    if-ne p1, v1, :cond_18d

    #@d4
    :cond_d4
    move-object p1, v8

    #@d5
    check-cast p1, Lkotlin/coroutines/Continuation;

    #@d7
    iput-object v7, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    #@d9
    iput-object v7, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    #@db
    iput-object v7, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    #@dd
    iput v5, v8, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    #@df
    invoke-virtual {v4, v3, p1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    #@e2
    move-result-object p1

    #@e3
    if-ne p1, v0, :cond_18d

    #@e5
    return-object v0

    #@e6
    .line 43
    :cond_e6
    new-instance v5, Lkotlin/collections/RingBuffer;

    #@e8
    invoke-direct {v5, v1}, Lkotlin/collections/RingBuffer;-><init>(I)V

    #@eb
    .line 44
    iget-object v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    #@ed
    move-object v8, p1

    #@ee
    move-object p1, p0

    #@ef
    :cond_ef
    :goto_ef
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f2
    move-result v9

    #@f3
    if-eqz v9, :cond_139

    #@f5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f8
    move-result-object v9

    #@f9
    .line 45
    invoke-virtual {v5, v9}, Lkotlin/collections/RingBuffer;->add(Ljava/lang/Object;)V

    #@fc
    .line 46
    invoke-virtual {v5}, Lkotlin/collections/RingBuffer;->isFull()Z

    #@ff
    move-result v9

    #@100
    if-eqz v9, :cond_ef

    #@102
    .line 47
    invoke-virtual {v5}, Lkotlin/collections/RingBuffer;->size()I

    #@105
    move-result v9

    #@106
    iget v10, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    #@108
    if-ge v9, v10, :cond_10f

    #@10a
    invoke-virtual {v5, v10}, Lkotlin/collections/RingBuffer;->expanded(I)Lkotlin/collections/RingBuffer;

    #@10d
    move-result-object v5

    #@10e
    goto :goto_ef

    #@10f
    .line 49
    :cond_10f
    iget-boolean v9, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    #@111
    if-eqz v9, :cond_117

    #@113
    move-object v9, v5

    #@114
    check-cast v9, Ljava/util/List;

    #@116
    goto :goto_121

    #@117
    :cond_117
    new-instance v9, Ljava/util/ArrayList;

    #@119
    move-object v10, v5

    #@11a
    check-cast v10, Ljava/util/Collection;

    #@11c
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@11f
    check-cast v9, Ljava/util/List;

    #@121
    :goto_121
    move-object v10, p1

    #@122
    check-cast v10, Lkotlin/coroutines/Continuation;

    #@124
    iput-object v8, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    #@126
    iput-object v5, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    #@128
    iput-object v1, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    #@12a
    iput v4, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    #@12c
    invoke-virtual {v8, v9, v10}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    #@12f
    move-result-object v9

    #@130
    if-ne v9, v0, :cond_133

    #@132
    return-object v0

    #@133
    .line 50
    :cond_133
    :goto_133
    iget v9, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    #@135
    invoke-virtual {v5, v9}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    #@138
    goto :goto_ef

    #@139
    .line 53
    :cond_139
    iget-boolean v1, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    #@13b
    if-eqz v1, :cond_18d

    #@13d
    move-object v1, v5

    #@13e
    move-object v4, v8

    #@13f
    .line 54
    :goto_13f
    invoke-virtual {v1}, Lkotlin/collections/RingBuffer;->size()I

    #@142
    move-result v5

    #@143
    iget v8, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    #@145
    if-le v5, v8, :cond_171

    #@147
    .line 55
    iget-boolean v5, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    #@149
    if-eqz v5, :cond_14f

    #@14b
    move-object v5, v1

    #@14c
    check-cast v5, Ljava/util/List;

    #@14e
    goto :goto_159

    #@14f
    :cond_14f
    new-instance v5, Ljava/util/ArrayList;

    #@151
    move-object v8, v1

    #@152
    check-cast v8, Ljava/util/Collection;

    #@154
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@157
    check-cast v5, Ljava/util/List;

    #@159
    :goto_159
    move-object v8, p1

    #@15a
    check-cast v8, Lkotlin/coroutines/Continuation;

    #@15c
    iput-object v4, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    #@15e
    iput-object v1, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    #@160
    iput-object v7, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    #@162
    iput v3, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    #@164
    invoke-virtual {v4, v5, v8}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    #@167
    move-result-object v5

    #@168
    if-ne v5, v0, :cond_16b

    #@16a
    return-object v0

    #@16b
    .line 56
    :cond_16b
    :goto_16b
    iget v5, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    #@16d
    invoke-virtual {v1, v5}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    #@170
    goto :goto_13f

    #@171
    .line 58
    :cond_171
    move-object v3, v1

    #@172
    check-cast v3, Ljava/util/Collection;

    #@174
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    #@177
    move-result v3

    #@178
    xor-int/2addr v3, v6

    #@179
    if-eqz v3, :cond_18d

    #@17b
    move-object v3, p1

    #@17c
    check-cast v3, Lkotlin/coroutines/Continuation;

    #@17e
    iput-object v7, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    #@180
    iput-object v7, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    #@182
    iput-object v7, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    #@184
    iput v2, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    #@186
    invoke-virtual {v4, v1, v3}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    #@189
    move-result-object p1

    #@18a
    if-ne p1, v0, :cond_18d

    #@18c
    return-object v0

    #@18d
    .line 61
    :cond_18d
    :goto_18d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@18f
    return-object p1
.end method

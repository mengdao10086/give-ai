.class public final synthetic Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    #@5
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 21

    #@0
    move-object v0, p0

    #@1
    iget-object v1, v0, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move/from16 v6, p5

    #@9
    move/from16 v7, p6

    #@b
    move/from16 v8, p7

    #@d
    move/from16 v9, p8

    #@f
    move/from16 v10, p9

    #@11
    invoke-static/range {v1 .. v10}, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1;->$r8$lambda$4ion0smgNNILo7u6DNVHbCOCSDk(Lkotlinx/coroutines/channels/ProducerScope;Landroid/view/View;IIIIIIII)V

    #@14
    return-void
.end method

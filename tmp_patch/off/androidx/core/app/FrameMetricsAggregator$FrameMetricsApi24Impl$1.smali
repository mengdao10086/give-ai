.class Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;


# direct methods
.method constructor <init>(Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)V
    .registers 2

    #@0
    .line 349
    iput-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .registers 12

    #@0
    .line 353
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@2
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    #@4
    const/4 p3, 0x1

    #@5
    and-int/2addr p1, p3

    #@6
    const/4 v0, 0x0

    #@7
    const/16 v1, 0x8

    #@9
    if-eqz p1, :cond_18

    #@b
    .line 354
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@d
    iget-object v2, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@f
    aget-object v2, v2, v0

    #@11
    .line 355
    invoke-virtual {p2, v1}, Landroid/view/FrameMetrics;->getMetric(I)J

    #@14
    move-result-wide v3

    #@15
    .line 354
    invoke-virtual {p1, v2, v3, v4}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    #@18
    .line 357
    :cond_18
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@1a
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    #@1c
    const/4 v2, 0x2

    #@1d
    and-int/2addr p1, v2

    #@1e
    if-eqz p1, :cond_2d

    #@20
    .line 358
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@22
    iget-object v3, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@24
    aget-object v3, v3, p3

    #@26
    .line 359
    invoke-virtual {p2, p3}, Landroid/view/FrameMetrics;->getMetric(I)J

    #@29
    move-result-wide v4

    #@2a
    .line 358
    invoke-virtual {p1, v3, v4, v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    #@2d
    .line 362
    :cond_2d
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@2f
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    #@31
    const/4 p3, 0x4

    #@32
    and-int/2addr p1, p3

    #@33
    const/4 v3, 0x3

    #@34
    if-eqz p1, :cond_43

    #@36
    .line 363
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@38
    iget-object v4, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@3a
    aget-object v4, v4, v2

    #@3c
    .line 364
    invoke-virtual {p2, v3}, Landroid/view/FrameMetrics;->getMetric(I)J

    #@3f
    move-result-wide v5

    #@40
    .line 363
    invoke-virtual {p1, v4, v5, v6}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    #@43
    .line 367
    :cond_43
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@45
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    #@47
    and-int/2addr p1, v1

    #@48
    if-eqz p1, :cond_57

    #@4a
    .line 368
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@4c
    iget-object v4, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@4e
    aget-object v3, v4, v3

    #@50
    .line 369
    invoke-virtual {p2, p3}, Landroid/view/FrameMetrics;->getMetric(I)J

    #@53
    move-result-wide v4

    #@54
    .line 368
    invoke-virtual {p1, v3, v4, v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    #@57
    .line 371
    :cond_57
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@59
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    #@5b
    and-int/lit8 p1, p1, 0x10

    #@5d
    const/4 v3, 0x5

    #@5e
    if-eqz p1, :cond_6d

    #@60
    .line 372
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@62
    iget-object v4, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@64
    aget-object p3, v4, p3

    #@66
    .line 373
    invoke-virtual {p2, v3}, Landroid/view/FrameMetrics;->getMetric(I)J

    #@69
    move-result-wide v4

    #@6a
    .line 372
    invoke-virtual {p1, p3, v4, v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    #@6d
    .line 375
    :cond_6d
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@6f
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    #@71
    and-int/lit8 p1, p1, 0x40

    #@73
    const/4 p3, 0x7

    #@74
    const/4 v4, 0x6

    #@75
    if-eqz p1, :cond_84

    #@77
    .line 376
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@79
    iget-object v5, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@7b
    aget-object v5, v5, v4

    #@7d
    .line 377
    invoke-virtual {p2, p3}, Landroid/view/FrameMetrics;->getMetric(I)J

    #@80
    move-result-wide v6

    #@81
    .line 376
    invoke-virtual {p1, v5, v6, v7}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    #@84
    .line 380
    :cond_84
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@86
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    #@88
    and-int/lit8 p1, p1, 0x20

    #@8a
    if-eqz p1, :cond_99

    #@8c
    .line 381
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@8e
    iget-object v5, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@90
    aget-object v3, v5, v3

    #@92
    .line 382
    invoke-virtual {p2, v4}, Landroid/view/FrameMetrics;->getMetric(I)J

    #@95
    move-result-wide v4

    #@96
    .line 381
    invoke-virtual {p1, v3, v4, v5}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    #@99
    .line 385
    :cond_99
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@9b
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    #@9d
    and-int/lit16 p1, p1, 0x80

    #@9f
    if-eqz p1, :cond_ae

    #@a1
    .line 386
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@a3
    iget-object v3, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@a5
    aget-object p3, v3, p3

    #@a7
    .line 387
    invoke-virtual {p2, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    #@aa
    move-result-wide v3

    #@ab
    .line 386
    invoke-virtual {p1, p3, v3, v4}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    #@ae
    .line 390
    :cond_ae
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@b0
    iget p1, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    #@b2
    and-int/lit16 p1, p1, 0x100

    #@b4
    if-eqz p1, :cond_c3

    #@b6
    .line 391
    iget-object p1, p0, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    #@b8
    iget-object p3, p1, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    #@ba
    aget-object p3, p3, v1

    #@bc
    .line 392
    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    #@bf
    move-result-wide v0

    #@c0
    .line 391
    invoke-virtual {p1, p3, v0, v1}, Landroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    #@c3
    :cond_c3
    return-void
.end method

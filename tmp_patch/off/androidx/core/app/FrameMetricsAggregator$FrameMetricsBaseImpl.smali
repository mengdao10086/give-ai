.class Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FrameMetricsAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameMetricsBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .registers 2

    #@0
    return-void
.end method

.method public getMetrics()[Landroid/util/SparseIntArray;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public reset()[Landroid/util/SparseIntArray;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public stop()[Landroid/util/SparseIntArray;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

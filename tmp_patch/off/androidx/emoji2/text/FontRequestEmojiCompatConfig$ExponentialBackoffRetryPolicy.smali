.class public Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;
.super Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;
.source "FontRequestEmojiCompatConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/FontRequestEmojiCompatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExponentialBackoffRetryPolicy"
.end annotation


# instance fields
.field private mRetryOrigin:J

.field private final mTotalMs:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    #@0
    .line 92
    invoke-direct {p0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$RetryPolicy;-><init>()V

    #@3
    .line 93
    iput-wide p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;->mTotalMs:J

    #@5
    return-void
.end method


# virtual methods
.method public getRetryDelay()J
    .registers 7

    #@0
    .line 98
    iget-wide v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;->mRetryOrigin:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_f

    #@8
    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;->mRetryOrigin:J

    #@e
    return-wide v2

    #@f
    .line 106
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v0

    #@13
    iget-wide v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;->mRetryOrigin:J

    #@15
    sub-long/2addr v0, v2

    #@16
    .line 107
    iget-wide v2, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;->mTotalMs:J

    #@18
    cmp-long v2, v0, v2

    #@1a
    if-lez v2, :cond_1f

    #@1c
    const-wide/16 v0, -0x1

    #@1e
    return-wide v0

    #@1f
    :cond_1f
    const-wide/16 v2, 0x3e8

    #@21
    .line 112
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@24
    move-result-wide v2

    #@25
    iget-wide v4, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy;->mTotalMs:J

    #@27
    sub-long/2addr v4, v0

    #@28
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@2b
    move-result-wide v0

    #@2c
    return-wide v0
.end method

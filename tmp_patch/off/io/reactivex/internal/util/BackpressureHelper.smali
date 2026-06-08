.class public final Lio/reactivex/internal/util/BackpressureHelper;
.super Ljava/lang/Object;
.source "BackpressureHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5
    const-string v1, "No instances!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static add(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .registers 8

    #@0
    .line 67
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    const-wide v2, 0x7fffffffffffffffL

    #@9
    cmp-long v4, v0, v2

    #@b
    if-nez v4, :cond_e

    #@d
    return-wide v2

    #@e
    .line 71
    :cond_e
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    #@11
    move-result-wide v2

    #@12
    .line 72
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    return-wide v0
.end method

.method public static addCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .registers 8

    #@0
    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    const-wide/high16 v2, -0x8000000000000000L

    #@6
    cmp-long v4, v0, v2

    #@8
    if-nez v4, :cond_b

    #@a
    return-wide v2

    #@b
    :cond_b
    const-wide v2, 0x7fffffffffffffffL

    #@10
    cmp-long v4, v0, v2

    #@12
    if-nez v4, :cond_15

    #@14
    return-wide v2

    #@15
    .line 95
    :cond_15
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    #@18
    move-result-wide v2

    #@19
    .line 96
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    return-wide v0
.end method

.method public static addCap(JJ)J
    .registers 4

    #@0
    add-long/2addr p0, p2

    #@1
    const-wide/16 p2, 0x0

    #@3
    cmp-long p2, p0, p2

    #@5
    if-gez p2, :cond_c

    #@7
    const-wide p0, 0x7fffffffffffffffL

    #@c
    :cond_c
    return-wide p0
.end method

.method public static multiplyCap(JJ)J
    .registers 10

    #@0
    mul-long v0, p0, p2

    #@2
    or-long v2, p0, p2

    #@4
    const/16 v4, 0x1f

    #@6
    ushr-long/2addr v2, v4

    #@7
    const-wide/16 v4, 0x0

    #@9
    cmp-long v2, v2, v4

    #@b
    if-eqz v2, :cond_19

    #@d
    .line 51
    div-long p0, v0, p0

    #@f
    cmp-long p0, p0, p2

    #@11
    if-eqz p0, :cond_19

    #@13
    const-wide p0, 0x7fffffffffffffffL

    #@18
    return-wide p0

    #@19
    :cond_19
    return-wide v0
.end method

.method public static produced(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .registers 12

    #@0
    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    const-wide v2, 0x7fffffffffffffffL

    #@9
    cmp-long v4, v0, v2

    #@b
    if-nez v4, :cond_e

    #@d
    return-wide v2

    #@e
    :cond_e
    sub-long v2, v0, p1

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v6, v2, v4

    #@14
    if-gez v6, :cond_2e

    #@16
    .line 116
    new-instance v6, Ljava/lang/IllegalStateException;

    #@18
    new-instance v7, Ljava/lang/StringBuilder;

    #@1a
    const-string v8, "More produced than requested: "

    #@1c
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    invoke-static {v6}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@2d
    move-wide v2, v4

    #@2e
    .line 119
    :cond_2e
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_0

    #@34
    return-wide v2
.end method

.method public static producedCancel(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .registers 12

    #@0
    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@3
    move-result-wide v0

    #@4
    const-wide/high16 v2, -0x8000000000000000L

    #@6
    cmp-long v4, v0, v2

    #@8
    if-nez v4, :cond_b

    #@a
    return-wide v2

    #@b
    :cond_b
    const-wide v2, 0x7fffffffffffffffL

    #@10
    cmp-long v4, v0, v2

    #@12
    if-nez v4, :cond_15

    #@14
    return-wide v2

    #@15
    :cond_15
    sub-long v2, v0, p1

    #@17
    const-wide/16 v4, 0x0

    #@19
    cmp-long v6, v2, v4

    #@1b
    if-gez v6, :cond_35

    #@1d
    .line 143
    new-instance v6, Ljava/lang/IllegalStateException;

    #@1f
    new-instance v7, Ljava/lang/StringBuilder;

    #@21
    const-string v8, "More produced than requested: "

    #@23
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@26
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    invoke-static {v6}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    #@34
    move-wide v2, v4

    #@35
    .line 146
    :cond_35
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_0

    #@3b
    return-wide v2
.end method

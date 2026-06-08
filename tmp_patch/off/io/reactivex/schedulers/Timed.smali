.class public final Lio/reactivex/schedulers/Timed;
.super Ljava/lang/Object;
.source "Timed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final time:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    #@0
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Lio/reactivex/schedulers/Timed;->value:Ljava/lang/Object;

    #@5
    .line 40
    iput-wide p2, p0, Lio/reactivex/schedulers/Timed;->time:J

    #@7
    const-string p1, "unit is null"

    #@9
    .line 41
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object p1

    #@d
    check-cast p1, Ljava/util/concurrent/TimeUnit;

    #@f
    iput-object p1, p0, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    #@11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    #@0
    .line 81
    instance-of v0, p1, Lio/reactivex/schedulers/Timed;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_24

    #@5
    .line 82
    check-cast p1, Lio/reactivex/schedulers/Timed;

    #@7
    .line 83
    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->value:Ljava/lang/Object;

    #@9
    iget-object v2, p1, Lio/reactivex/schedulers/Timed;->value:Ljava/lang/Object;

    #@b
    invoke-static {v0, v2}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_24

    #@11
    iget-wide v2, p0, Lio/reactivex/schedulers/Timed;->time:J

    #@13
    iget-wide v4, p1, Lio/reactivex/schedulers/Timed;->time:J

    #@15
    cmp-long v0, v2, v4

    #@17
    if-nez v0, :cond_24

    #@19
    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    #@1b
    iget-object p1, p1, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    #@1d
    .line 85
    invoke-static {v0, p1}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result p1

    #@21
    if-eqz p1, :cond_24

    #@23
    const/4 v1, 0x1

    #@24
    :cond_24
    return v1
.end method

.method public hashCode()I
    .registers 7

    #@0
    .line 92
    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->value:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    const/16 v1, 0x1f

    #@c
    mul-int/2addr v0, v1

    #@d
    .line 93
    iget-wide v2, p0, Lio/reactivex/schedulers/Timed;->time:J

    #@f
    ushr-long v4, v2, v1

    #@11
    xor-long/2addr v2, v4

    #@12
    long-to-int v2, v2

    #@13
    add-int/2addr v0, v2

    #@14
    mul-int/2addr v0, v1

    #@15
    .line 94
    iget-object v1, p0, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    #@17
    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->hashCode()I

    #@1a
    move-result v1

    #@1b
    add-int/2addr v0, v1

    #@1c
    return v0
.end method

.method public time()J
    .registers 3

    #@0
    .line 67
    iget-wide v0, p0, Lio/reactivex/schedulers/Timed;->time:J

    #@2
    return-wide v0
.end method

.method public time(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    #@0
    .line 76
    iget-wide v0, p0, Lio/reactivex/schedulers/Timed;->time:J

    #@2
    iget-object v2, p0, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    #@4
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "Timed[time="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-wide v1, p0, Lio/reactivex/schedulers/Timed;->time:J

    #@9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", unit="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, ", value="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Lio/reactivex/schedulers/Timed;->value:Ljava/lang/Object;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string v1, "]"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method public unit()Ljava/util/concurrent/TimeUnit;
    .registers 2

    #@0
    .line 59
    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->unit:Ljava/util/concurrent/TimeUnit;

    #@2
    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .line 50
    iget-object v0, p0, Lio/reactivex/schedulers/Timed;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

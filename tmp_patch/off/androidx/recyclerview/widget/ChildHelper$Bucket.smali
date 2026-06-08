.class Landroidx/recyclerview/widget/ChildHelper$Bucket;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bucket"
.end annotation


# static fields
.field static final BITS_PER_WORD:I = 0x40

.field static final LAST_BIT:J = -0x8000000000000000L


# instance fields
.field mData:J

.field mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;


# direct methods
.method constructor <init>()V
    .registers 3

    #@0
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-wide/16 v0, 0x0

    #@5
    .line 401
    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@7
    return-void
.end method

.method private ensureNext()V
    .registers 2

    #@0
    .line 415
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 416
    new-instance v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@6
    invoke-direct {v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@b
    :cond_b
    return-void
.end method


# virtual methods
.method clear(I)V
    .registers 6

    #@0
    const/16 v0, 0x40

    #@2
    if-lt p1, v0, :cond_d

    #@4
    .line 422
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@6
    if-eqz v1, :cond_16

    #@8
    sub-int/2addr p1, v0

    #@9
    .line 423
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->clear(I)V

    #@c
    goto :goto_16

    #@d
    .line 426
    :cond_d
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@f
    const-wide/16 v2, 0x1

    #@11
    shl-long/2addr v2, p1

    #@12
    not-long v2, v2

    #@13
    and-long/2addr v0, v2

    #@14
    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@16
    :cond_16
    :goto_16
    return-void
.end method

.method countOnesBefore(I)I
    .registers 8

    #@0
    .line 493
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@2
    const/16 v1, 0x40

    #@4
    const-wide/16 v2, 0x1

    #@6
    if-nez v0, :cond_1c

    #@8
    if-lt p1, v1, :cond_11

    #@a
    .line 495
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@c
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    #@f
    move-result p1

    #@10
    return p1

    #@11
    .line 497
    :cond_11
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@13
    shl-long v4, v2, p1

    #@15
    sub-long/2addr v4, v2

    #@16
    and-long/2addr v0, v4

    #@17
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    #@1a
    move-result p1

    #@1b
    return p1

    #@1c
    :cond_1c
    if-ge p1, v1, :cond_29

    #@1e
    .line 500
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@20
    shl-long v4, v2, p1

    #@22
    sub-long/2addr v4, v2

    #@23
    and-long/2addr v0, v4

    #@24
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    #@27
    move-result p1

    #@28
    return p1

    #@29
    :cond_29
    sub-int/2addr p1, v1

    #@2a
    .line 502
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    #@2d
    move-result p1

    #@2e
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@30
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    #@33
    move-result v0

    #@34
    add-int/2addr p1, v0

    #@35
    return p1
.end method

.method get(I)Z
    .registers 6

    #@0
    const/16 v0, 0x40

    #@2
    if-lt p1, v0, :cond_f

    #@4
    .line 433
    invoke-direct {p0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    #@7
    .line 434
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@9
    sub-int/2addr p1, v0

    #@a
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    #@d
    move-result p1

    #@e
    return p1

    #@f
    .line 436
    :cond_f
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@11
    const-wide/16 v2, 0x1

    #@13
    shl-long/2addr v2, p1

    #@14
    and-long/2addr v0, v2

    #@15
    const-wide/16 v2, 0x0

    #@17
    cmp-long p1, v0, v2

    #@19
    if-eqz p1, :cond_1d

    #@1b
    const/4 p1, 0x1

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 p1, 0x0

    #@1e
    :goto_1e
    return p1
.end method

.method insert(IZ)V
    .registers 12

    #@0
    const/16 v0, 0x40

    #@2
    if-lt p1, v0, :cond_e

    #@4
    .line 449
    invoke-direct {p0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    #@7
    .line 450
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@9
    sub-int/2addr p1, v0

    #@a
    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    #@d
    goto :goto_42

    #@e
    .line 452
    :cond_e
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@10
    const-wide/high16 v2, -0x8000000000000000L

    #@12
    and-long/2addr v2, v0

    #@13
    const-wide/16 v4, 0x0

    #@15
    cmp-long v2, v2, v4

    #@17
    const/4 v3, 0x1

    #@18
    const/4 v4, 0x0

    #@19
    if-eqz v2, :cond_1d

    #@1b
    move v2, v3

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    move v2, v4

    #@1e
    :goto_1e
    const-wide/16 v5, 0x1

    #@20
    shl-long v7, v5, p1

    #@22
    sub-long/2addr v7, v5

    #@23
    and-long v5, v0, v7

    #@25
    not-long v7, v7

    #@26
    and-long/2addr v0, v7

    #@27
    shl-long/2addr v0, v3

    #@28
    or-long/2addr v0, v5

    #@29
    .line 456
    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@2b
    if-eqz p2, :cond_31

    #@2d
    .line 458
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    #@30
    goto :goto_34

    #@31
    .line 460
    :cond_31
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->clear(I)V

    #@34
    :goto_34
    if-nez v2, :cond_3a

    #@36
    .line 462
    iget-object p1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@38
    if-eqz p1, :cond_42

    #@3a
    .line 463
    :cond_3a
    invoke-direct {p0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    #@3d
    .line 464
    iget-object p1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@3f
    invoke-virtual {p1, v4, v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    #@42
    :cond_42
    :goto_42
    return-void
.end method

.method remove(I)Z
    .registers 12

    #@0
    const/16 v0, 0x40

    #@2
    if-lt p1, v0, :cond_f

    #@4
    .line 471
    invoke-direct {p0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    #@7
    .line 472
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@9
    sub-int/2addr p1, v0

    #@a
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    #@d
    move-result p1

    #@e
    return p1

    #@f
    :cond_f
    const-wide/16 v0, 0x1

    #@11
    shl-long v2, v0, p1

    #@13
    .line 475
    iget-wide v4, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@15
    and-long v6, v4, v2

    #@17
    const-wide/16 v8, 0x0

    #@19
    cmp-long p1, v6, v8

    #@1b
    const/4 v6, 0x1

    #@1c
    const/4 v7, 0x0

    #@1d
    if-eqz p1, :cond_21

    #@1f
    move p1, v6

    #@20
    goto :goto_22

    #@21
    :cond_21
    move p1, v7

    #@22
    :goto_22
    not-long v8, v2

    #@23
    and-long/2addr v4, v8

    #@24
    .line 476
    iput-wide v4, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@26
    sub-long/2addr v2, v0

    #@27
    and-long v0, v4, v2

    #@29
    not-long v2, v2

    #@2a
    and-long/2addr v2, v4

    #@2b
    .line 480
    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    #@2e
    move-result-wide v2

    #@2f
    or-long/2addr v0, v2

    #@30
    .line 481
    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@32
    .line 482
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@34
    if-eqz v0, :cond_46

    #@36
    .line 483
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_41

    #@3c
    const/16 v0, 0x3f

    #@3e
    .line 484
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    #@41
    .line 486
    :cond_41
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@43
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    #@46
    :cond_46
    return p1
.end method

.method reset()V
    .registers 3

    #@0
    const-wide/16 v0, 0x0

    #@2
    .line 441
    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@4
    .line 442
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 443
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->reset()V

    #@b
    :cond_b
    return-void
.end method

.method set(I)V
    .registers 6

    #@0
    const/16 v0, 0x40

    #@2
    if-lt p1, v0, :cond_e

    #@4
    .line 407
    invoke-direct {p0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    #@7
    .line 408
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@9
    sub-int/2addr p1, v0

    #@a
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    #@d
    goto :goto_16

    #@e
    .line 410
    :cond_e
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@10
    const-wide/16 v2, 0x1

    #@12
    shl-long/2addr v2, p1

    #@13
    or-long/2addr v0, v2

    #@14
    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@16
    :goto_16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 508
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@2
    if-nez v0, :cond_b

    #@4
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@6
    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    goto :goto_2e

    #@b
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    #@12
    .line 509
    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string v1, "xx"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    iget-wide v1, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    #@22
    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    :goto_2e
    return-object v0
.end method

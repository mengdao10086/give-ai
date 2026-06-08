.class public Landroidx/databinding/CallbackRegistry;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/CallbackRegistry$NotifierCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackRegistry"


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation
.end field

.field private mFirst64Removed:J

.field private mNotificationLevel:I

.field private final mNotifier:Landroidx/databinding/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;"
        }
    .end annotation
.end field

.field private mRemainderRemoved:[J


# direct methods
.method public constructor <init>(Landroidx/databinding/CallbackRegistry$NotifierCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;)V"
        }
    .end annotation

    #@0
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@a
    const-wide/16 v0, 0x0

    #@c
    .line 56
    iput-wide v0, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    #@e
    .line 76
    iput-object p1, p0, Landroidx/databinding/CallbackRegistry;->mNotifier:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    #@10
    return-void
.end method

.method private isRemoved(I)Z
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    #@0
    const-wide/16 v0, 0x0

    #@2
    const-wide/16 v2, 0x1

    #@4
    const/4 v4, 0x1

    #@5
    const/4 v5, 0x0

    #@6
    const/16 v6, 0x40

    #@8
    if-ge p1, v6, :cond_15

    #@a
    shl-long/2addr v2, p1

    #@b
    .line 232
    iget-wide v6, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    #@d
    and-long/2addr v2, v6

    #@e
    cmp-long p1, v2, v0

    #@10
    if-eqz p1, :cond_13

    #@12
    goto :goto_14

    #@13
    :cond_13
    move v4, v5

    #@14
    :goto_14
    return v4

    #@15
    .line 233
    :cond_15
    iget-object v7, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    #@17
    if-nez v7, :cond_1a

    #@19
    return v5

    #@1a
    .line 237
    :cond_1a
    div-int/lit8 v8, p1, 0x40

    #@1c
    sub-int/2addr v8, v4

    #@1d
    .line 238
    array-length v9, v7

    #@1e
    if-lt v8, v9, :cond_21

    #@20
    return v5

    #@21
    .line 243
    :cond_21
    aget-wide v8, v7, v8

    #@23
    .line 244
    rem-int/2addr p1, v6

    #@24
    shl-long/2addr v2, p1

    #@25
    and-long/2addr v2, v8

    #@26
    cmp-long p1, v2, v0

    #@28
    if-eqz p1, :cond_2b

    #@2a
    goto :goto_2c

    #@2b
    :cond_2b
    move v4, v5

    #@2c
    :goto_2c
    return v4
.end method

.method private notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;IIJ)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sender",
            "arg",
            "arg2",
            "startIndex",
            "endIndex",
            "bits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    #@0
    const-wide/16 v0, 0x1

    #@2
    :goto_2
    if-ge p4, p5, :cond_1c

    #@4
    and-long v2, p6, v0

    #@6
    const-wide/16 v4, 0x0

    #@8
    cmp-long v2, v2, v4

    #@a
    if-nez v2, :cond_17

    #@c
    .line 201
    iget-object v2, p0, Landroidx/databinding/CallbackRegistry;->mNotifier:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    #@e
    iget-object v3, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@10
    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3, p1, p2, p3}, Landroidx/databinding/CallbackRegistry$NotifierCallback;->onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    #@17
    :cond_17
    const/4 v2, 0x1

    #@18
    shl-long/2addr v0, v2

    #@19
    add-int/lit8 p4, p4, 0x1

    #@1b
    goto :goto_2

    #@1c
    :cond_1c
    return-void
.end method

.method private notifyFirst64(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    #@0
    .line 121
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x40

    #@8
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v7

    #@c
    const/4 v6, 0x0

    #@d
    .line 122
    iget-wide v8, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    #@f
    move-object v2, p0

    #@10
    move-object v3, p1

    #@11
    move v4, p2

    #@12
    move-object v5, p3

    #@13
    invoke-direct/range {v2 .. v9}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    #@16
    return-void
.end method

.method private notifyRecurse(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    #@0
    .line 140
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v6

    #@6
    .line 141
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, -0x1

    #@b
    goto :goto_f

    #@c
    :cond_c
    array-length v0, v0

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    .line 145
    :goto_f
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/databinding/CallbackRegistry;->notifyRemainder(Ljava/lang/Object;ILjava/lang/Object;I)V

    #@12
    add-int/lit8 v0, v0, 0x2

    #@14
    mul-int/lit8 v5, v0, 0x40

    #@16
    const-wide/16 v7, 0x0

    #@18
    move-object v1, p0

    #@19
    move-object v2, p1

    #@1a
    move v3, p2

    #@1b
    move-object v4, p3

    #@1c
    .line 152
    invoke-direct/range {v1 .. v8}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    #@1f
    return-void
.end method

.method private notifyRemainder(Ljava/lang/Object;ILjava/lang/Object;I)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2",
            "remainderIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    #@0
    if-gez p4, :cond_6

    #@2
    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/CallbackRegistry;->notifyFirst64(Ljava/lang/Object;ILjava/lang/Object;)V

    #@5
    goto :goto_26

    #@6
    .line 171
    :cond_6
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    #@8
    aget-wide v7, v0, p4

    #@a
    add-int/lit8 v0, p4, 0x1

    #@c
    mul-int/lit8 v5, v0, 0x40

    #@e
    .line 173
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@10
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@13
    move-result v0

    #@14
    add-int/lit8 v1, v5, 0x40

    #@16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v6

    #@1a
    add-int/lit8 p4, p4, -0x1

    #@1c
    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/databinding/CallbackRegistry;->notifyRemainder(Ljava/lang/Object;ILjava/lang/Object;I)V

    #@1f
    move-object v1, p0

    #@20
    move-object v2, p1

    #@21
    move v3, p2

    #@22
    move-object v4, p3

    #@23
    .line 175
    invoke-direct/range {v1 .. v8}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    #@26
    :goto_26
    return-void
.end method

.method private removeRemovedCallbacks(IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIndex",
            "removed"
        }
    .end annotation

    #@0
    add-int/lit8 v0, p1, 0x40

    #@2
    const/4 v1, 0x1

    #@3
    sub-int/2addr v0, v1

    #@4
    const-wide/high16 v2, -0x8000000000000000L

    #@6
    :goto_6
    if-lt v0, p1, :cond_19

    #@8
    and-long v4, p2, v2

    #@a
    const-wide/16 v6, 0x0

    #@c
    cmp-long v4, v4, v6

    #@e
    if-eqz v4, :cond_15

    #@10
    .line 265
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@12
    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@15
    :cond_15
    ushr-long/2addr v2, v1

    #@16
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_6

    #@19
    :cond_19
    return-void
.end method

.method private setRemovalBit(I)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    #@0
    const-wide/16 v0, 0x1

    #@2
    const/16 v2, 0x40

    #@4
    if-ge p1, v2, :cond_d

    #@6
    shl-long/2addr v0, p1

    #@7
    .line 291
    iget-wide v2, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    #@9
    or-long/2addr v0, v2

    #@a
    iput-wide v0, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    #@c
    goto :goto_3f

    #@d
    .line 293
    :cond_d
    div-int/lit8 v3, p1, 0x40

    #@f
    add-int/lit8 v3, v3, -0x1

    #@11
    .line 294
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    #@13
    if-nez v4, :cond_21

    #@15
    .line 295
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@17
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@1a
    move-result v4

    #@1b
    div-int/2addr v4, v2

    #@1c
    new-array v4, v4, [J

    #@1e
    iput-object v4, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    #@20
    goto :goto_36

    #@21
    .line 296
    :cond_21
    array-length v4, v4

    #@22
    if-gt v4, v3, :cond_36

    #@24
    .line 298
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@26
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@29
    move-result v4

    #@2a
    div-int/2addr v4, v2

    #@2b
    new-array v4, v4, [J

    #@2d
    .line 299
    iget-object v5, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    #@2f
    array-length v6, v5

    #@30
    const/4 v7, 0x0

    #@31
    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@34
    .line 300
    iput-object v4, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    #@36
    .line 302
    :cond_36
    :goto_36
    rem-int/2addr p1, v2

    #@37
    shl-long/2addr v0, p1

    #@38
    .line 303
    iget-object p1, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    #@3a
    aget-wide v4, p1, v3

    #@3c
    or-long/2addr v0, v4

    #@3d
    aput-wide v0, p1, v3

    #@3f
    :goto_3f
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    if-eqz p1, :cond_1a

    #@3
    .line 216
    :try_start_3
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    #@8
    move-result v0

    #@9
    if-ltz v0, :cond_11

    #@b
    .line 217
    invoke-direct {p0, v0}, Landroidx/databinding/CallbackRegistry;->isRemoved(I)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_16

    #@11
    .line 218
    :cond_11
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    #@16
    .line 220
    :cond_16
    monitor-exit p0

    #@17
    return-void

    #@18
    :catchall_18
    move-exception p1

    #@19
    goto :goto_22

    #@1a
    .line 214
    :cond_1a
    :try_start_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string v0, "callback cannot be null"

    #@1e
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw p1
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_18

    #@22
    :goto_22
    monitor-exit p0

    #@23
    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    .line 363
    :try_start_1
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    #@3
    if-nez v0, :cond_b

    #@5
    .line 364
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@a
    goto :goto_23

    #@b
    .line 365
    :cond_b
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_23

    #@13
    .line 366
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@15
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@18
    move-result v0

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    :goto_1b
    if-ltz v0, :cond_23

    #@1d
    .line 367
    invoke-direct {p0, v0}, Landroidx/databinding/CallbackRegistry;->setRemovalBit(I)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_25

    #@20
    add-int/lit8 v0, v0, -0x1

    #@22
    goto :goto_1b

    #@23
    .line 370
    :cond_23
    :goto_23
    monitor-exit p0

    #@24
    return-void

    #@25
    :catchall_25
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0
.end method

.method public declared-synchronized clone()Landroidx/databinding/CallbackRegistry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/CallbackRegistry<",
            "TC;TT;TA;>;"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    const/4 v0, 0x0

    #@2
    .line 380
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroidx/databinding/CallbackRegistry;
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_8} :catch_38
    .catchall {:try_start_2 .. :try_end_8} :catchall_36

    #@8
    const-wide/16 v2, 0x0

    #@a
    .line 381
    :try_start_a
    iput-wide v2, v1, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    #@c
    .line 382
    iput-object v0, v1, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    #@e
    const/4 v0, 0x0

    #@f
    .line 383
    iput v0, v1, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    #@11
    .line 384
    new-instance v2, Ljava/util/ArrayList;

    #@13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v2, v1, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@18
    .line 385
    iget-object v2, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1d
    move-result v2

    #@1e
    :goto_1e
    if-ge v0, v2, :cond_3f

    #@20
    .line 387
    invoke-direct {p0, v0}, Landroidx/databinding/CallbackRegistry;->isRemoved(I)Z

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_31

    #@26
    .line 388
    iget-object v3, v1, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@28
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@2a
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_a .. :try_end_31} :catch_34
    .catchall {:try_start_a .. :try_end_31} :catchall_36

    #@31
    :cond_31
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_1e

    #@34
    :catch_34
    move-exception v0

    #@35
    goto :goto_3c

    #@36
    :catchall_36
    move-exception v0

    #@37
    goto :goto_41

    #@38
    :catch_38
    move-exception v1

    #@39
    move-object v5, v1

    #@3a
    move-object v1, v0

    #@3b
    move-object v0, v5

    #@3c
    .line 392
    :goto_3c
    :try_start_3c
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_36

    #@3f
    .line 394
    :cond_3f
    monitor-exit p0

    #@40
    return-object v1

    #@41
    :goto_41
    monitor-exit p0

    #@42
    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .line 44
    invoke-virtual {p0}, Landroidx/databinding/CallbackRegistry;->clone()Landroidx/databinding/CallbackRegistry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized copyCallbacks()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TC;>;"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    .line 313
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    #@3
    iget-object v1, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@5
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@8
    move-result v1

    #@9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    .line 314
    iget-object v1, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@e
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x0

    #@13
    :goto_13
    if-ge v2, v1, :cond_27

    #@15
    .line 316
    invoke-direct {p0, v2}, Landroidx/databinding/CallbackRegistry;->isRemoved(I)Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_24

    #@1b
    .line 317
    iget-object v3, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@1d
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_29

    #@24
    :cond_24
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_13

    #@27
    .line 320
    :cond_27
    monitor-exit p0

    #@28
    return-object v0

    #@29
    :catchall_29
    move-exception v0

    #@2a
    monitor-exit p0

    #@2b
    throw v0
.end method

.method public declared-synchronized copyCallbacks(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TC;>;)V"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    .line 329
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@4
    .line 330
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@6
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x0

    #@b
    :goto_b
    if-ge v1, v0, :cond_1f

    #@d
    .line 332
    invoke-direct {p0, v1}, Landroidx/databinding/CallbackRegistry;->isRemoved(I)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_1c

    #@13
    .line 333
    iget-object v2, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@15
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_21

    #@1c
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_b

    #@1f
    .line 336
    :cond_1f
    monitor-exit p0

    #@20
    return-void

    #@21
    :catchall_21
    move-exception p1

    #@22
    monitor-exit p0

    #@23
    throw p1
.end method

.method public declared-synchronized isEmpty()Z
    .registers 6

    #@0
    monitor-enter p0

    #@1
    .line 344
    :try_start_1
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@6
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_29

    #@7
    const/4 v1, 0x1

    #@8
    if-eqz v0, :cond_c

    #@a
    .line 345
    monitor-exit p0

    #@b
    return v1

    #@c
    .line 346
    :cond_c
    :try_start_c
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_29

    #@e
    const/4 v2, 0x0

    #@f
    if-nez v0, :cond_13

    #@11
    .line 347
    monitor-exit p0

    #@12
    return v2

    #@13
    .line 349
    :cond_13
    :try_start_13
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@15
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@18
    move-result v0

    #@19
    move v3, v2

    #@1a
    :goto_1a
    if-ge v3, v0, :cond_27

    #@1c
    .line 351
    invoke-direct {p0, v3}, Landroidx/databinding/CallbackRegistry;->isRemoved(I)Z

    #@1f
    move-result v4
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_29

    #@20
    if-nez v4, :cond_24

    #@22
    .line 352
    monitor-exit p0

    #@23
    return v2

    #@24
    :cond_24
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_1a

    #@27
    .line 355
    :cond_27
    monitor-exit p0

    #@28
    return v1

    #@29
    :catchall_29
    move-exception v0

    #@2a
    monitor-exit p0

    #@2b
    throw v0
.end method

.method public declared-synchronized notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    .line 90
    :try_start_1
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    #@7
    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/CallbackRegistry;->notifyRecurse(Ljava/lang/Object;ILjava/lang/Object;)V

    #@a
    .line 92
    iget p1, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    #@c
    add-int/lit8 p1, p1, -0x1

    #@e
    iput p1, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    #@10
    if-nez p1, :cond_3f

    #@12
    .line 94
    iget-object p1, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    #@14
    const-wide/16 p2, 0x0

    #@16
    if-eqz p1, :cond_33

    #@18
    .line 95
    array-length p1, p1

    #@19
    add-int/lit8 p1, p1, -0x1

    #@1b
    :goto_1b
    if-ltz p1, :cond_33

    #@1d
    .line 96
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    #@1f
    aget-wide v1, v0, p1

    #@21
    cmp-long v0, v1, p2

    #@23
    if-eqz v0, :cond_30

    #@25
    add-int/lit8 v0, p1, 0x1

    #@27
    mul-int/lit8 v0, v0, 0x40

    #@29
    .line 98
    invoke-direct {p0, v0, v1, v2}, Landroidx/databinding/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    #@2c
    .line 99
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    #@2e
    aput-wide p2, v0, p1

    #@30
    :cond_30
    add-int/lit8 p1, p1, -0x1

    #@32
    goto :goto_1b

    #@33
    .line 103
    :cond_33
    iget-wide v0, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    #@35
    cmp-long p1, v0, p2

    #@37
    if-eqz p1, :cond_3f

    #@39
    const/4 p1, 0x0

    #@3a
    .line 104
    invoke-direct {p0, p1, v0, v1}, Landroidx/databinding/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    #@3d
    .line 105
    iput-wide p2, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    #@3f
    .line 108
    :cond_3f
    monitor-exit p0

    #@40
    return-void

    #@41
    :catchall_41
    move-exception p1

    #@42
    monitor-exit p0

    #@43
    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    .line 277
    :try_start_1
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    #@3
    if-nez v0, :cond_b

    #@5
    .line 278
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@a
    goto :goto_16

    #@b
    .line 280
    :cond_b
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    #@10
    move-result p1

    #@11
    if-ltz p1, :cond_16

    #@13
    .line 282
    invoke-direct {p0, p1}, Landroidx/databinding/CallbackRegistry;->setRemovalBit(I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    #@16
    .line 285
    :cond_16
    :goto_16
    monitor-exit p0

    #@17
    return-void

    #@18
    :catchall_18
    move-exception p1

    #@19
    monitor-exit p0

    #@1a
    throw p1
.end method

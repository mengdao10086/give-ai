.class public final Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mDesiredHeight:I

.field private mDesiredHeightResId:I

.field private mFlags:I

.field private mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mShortcutId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 7060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V
    .registers 3

    #@0
    .line 7106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-eqz p1, :cond_14

    #@5
    if-eqz p2, :cond_c

    #@7
    .line 7113
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    #@9
    .line 7114
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@b
    return-void

    #@c
    .line 7111
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    #@e
    const-string p2, "Bubbles require non-null icon"

    #@10
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw p1

    #@14
    .line 7108
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    #@16
    const-string p2, "Bubble requires non-null pending intent"

    #@18
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 7085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 7086
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_c

    #@9
    .line 7089
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    #@b
    return-void

    #@c
    .line 7087
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    #@e
    const-string v0, "Bubble requires a non-null shortcut id"

    #@10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw p1
.end method

.method private setFlag(IZ)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .registers 3

    #@0
    if-eqz p2, :cond_8

    #@2
    .line 7268
    iget p2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    #@4
    or-int/2addr p1, p2

    #@5
    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    #@7
    goto :goto_e

    #@8
    .line 7270
    :cond_8
    iget p2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    #@a
    not-int p1, p1

    #@b
    and-int/2addr p1, p2

    #@c
    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    #@e
    :goto_e
    return-object p0
.end method


# virtual methods
.method public build()Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .registers 12

    #@0
    .line 7251
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    #@2
    if-nez v0, :cond_11

    #@4
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    #@6
    if-eqz v1, :cond_9

    #@8
    goto :goto_11

    #@9
    .line 7252
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string v1, "Must supply pending intent or shortcut to bubble"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_11
    :goto_11
    if-nez v0, :cond_20

    #@13
    .line 7255
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@15
    if-eqz v0, :cond_18

    #@17
    goto :goto_20

    #@18
    .line 7256
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    #@1a
    const-string v1, "Must supply an icon or shortcut for the bubble"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 7259
    :cond_20
    :goto_20
    new-instance v0, Landroidx/core/app/NotificationCompat$BubbleMetadata;

    #@22
    iget-object v3, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    #@24
    iget-object v4, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    #@26
    iget-object v5, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@28
    iget v6, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    #@2a
    iget v7, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    #@2c
    iget v8, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    #@2e
    iget-object v9, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    #@30
    const/4 v10, 0x0

    #@31
    move-object v2, v0

    #@32
    invoke-direct/range {v2 .. v10}, Landroidx/core/app/NotificationCompat$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;Landroidx/core/app/NotificationCompat$1;)V

    #@35
    .line 7261
    iget v1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mFlags:I

    #@37
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->setFlags(I)V

    #@3a
    return-object v0
.end method

.method public setAutoExpandBubble(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 7212
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setFlag(IZ)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    #@4
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .registers 2

    #@0
    .line 7239
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    #@2
    return-object p0
.end method

.method public setDesiredHeight(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 7178
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@4
    move-result p1

    #@5
    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    #@7
    .line 7179
    iput v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    #@9
    return-object p0
.end method

.method public setDesiredHeightResId(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .registers 2

    #@0
    .line 7194
    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeightResId:I

    #@2
    const/4 p1, 0x0

    #@3
    .line 7195
    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mDesiredHeight:I

    #@5
    return-object p0
.end method

.method public setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .registers 3

    #@0
    .line 7155
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    #@2
    if-nez v0, :cond_11

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 7163
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@8
    return-object p0

    #@9
    .line 7161
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    #@b
    const-string v0, "Bubbles require non-null icon"

    #@d
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw p1

    #@11
    .line 7156
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    #@13
    const-string v0, "Created as a shortcut bubble, cannot set an Icon. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    #@15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw p1
.end method

.method public setIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .registers 3

    #@0
    .line 7127
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    #@2
    if-nez v0, :cond_11

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 7135
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    #@8
    return-object p0

    #@9
    .line 7133
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    #@b
    const-string v0, "Bubble requires non-null pending intent"

    #@d
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw p1

    #@11
    .line 7128
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    #@13
    const-string v0, "Created as a shortcut bubble, cannot set a PendingIntent. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    #@15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw p1
.end method

.method public setSuppressNotification(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    .line 7230
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setFlag(IZ)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    #@4
    return-object p0
.end method

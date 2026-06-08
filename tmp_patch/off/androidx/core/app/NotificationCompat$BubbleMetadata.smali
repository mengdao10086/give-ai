.class public final Landroidx/core/app/NotificationCompat$BubbleMetadata;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BubbleMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;,
        Landroidx/core/app/NotificationCompat$BubbleMetadata$Api29Impl;,
        Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    }
.end annotation


# static fields
.field private static final FLAG_AUTO_EXPAND_BUBBLE:I = 0x1

.field private static final FLAG_SUPPRESS_NOTIFICATION:I = 0x2


# instance fields
.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mDesiredHeight:I

.field private mDesiredHeightResId:I

.field private mFlags:I

.field private mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mShortcutId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;)V
    .registers 8

    #@0
    .line 6907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 6908
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    #@5
    .line 6909
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@7
    .line 6910
    iput p4, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeight:I

    #@9
    .line 6911
    iput p5, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeightResId:I

    #@b
    .line 6912
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    #@d
    .line 6913
    iput p6, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    #@f
    .line 6914
    iput-object p7, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    #@11
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;Landroidx/core/app/NotificationCompat$1;)V
    .registers 9

    #@0
    .line 6862
    invoke-direct/range {p0 .. p7}, Landroidx/core/app/NotificationCompat$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;)V

    #@3
    return-void
.end method

.method public static fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 7033
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v2, 0x1e

    #@8
    if-lt v1, v2, :cond_f

    #@a
    .line 7034
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;->fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;

    #@d
    move-result-object p0

    #@e
    return-object p0

    #@f
    .line 7035
    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@11
    const/16 v2, 0x1d

    #@13
    if-ne v1, v2, :cond_1a

    #@15
    .line 7036
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api29Impl;->fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;

    #@18
    move-result-object p0

    #@19
    return-object p0

    #@1a
    :cond_1a
    return-object v0
.end method

.method public static toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 7012
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v2, 0x1e

    #@8
    if-lt v1, v2, :cond_f

    #@a
    .line 7013
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;->toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    #@d
    move-result-object p0

    #@e
    return-object p0

    #@f
    .line 7014
    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@11
    const/16 v2, 0x1d

    #@13
    if-ne v1, v2, :cond_1a

    #@15
    .line 7015
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api29Impl;->toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    #@18
    move-result-object p0

    #@19
    return-object p0

    #@1a
    :cond_1a
    return-object v0
.end method


# virtual methods
.method public getAutoExpandBubble()Z
    .registers 3

    #@0
    .line 6981
    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    #@2
    const/4 v1, 0x1

    #@3
    and-int/2addr v0, v1

    #@4
    if-eqz v0, :cond_7

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v1, 0x0

    #@8
    :goto_8
    return v1
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .registers 2

    #@0
    .line 6942
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getDesiredHeight()I
    .registers 2

    #@0
    .line 6962
    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeight:I

    #@2
    return v0
.end method

.method public getDesiredHeightResId()I
    .registers 2

    #@0
    .line 6972
    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeightResId:I

    #@2
    return v0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .registers 2

    #@0
    .line 6952
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@2
    return-object v0
.end method

.method public getIntent()Landroid/app/PendingIntent;
    .registers 2

    #@0
    .line 6924
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .registers 2

    #@0
    .line 6934
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isNotificationSuppressed()Z
    .registers 2

    #@0
    .line 6990
    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public setFlags(I)V
    .registers 2

    #@0
    .line 6996
    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    #@2
    return-void
.end method

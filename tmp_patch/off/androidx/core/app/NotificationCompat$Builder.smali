.class public Landroidx/core/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400


# instance fields
.field public mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mAllowSystemGeneratedContextualActions:Z

.field mBadgeIcon:I

.field mBigContentView:Landroid/widget/RemoteViews;

.field mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

.field mCategory:Ljava/lang/String;

.field mChannelId:Ljava/lang/String;

.field mChronometerCountDown:Z

.field mColor:I

.field mColorized:Z

.field mColorizedSet:Z

.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContentView:Landroid/widget/RemoteViews;

.field public mContext:Landroid/content/Context;

.field mExtras:Landroid/os/Bundle;

.field mFgsDeferBehavior:I

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mGroupAlertBehavior:I

.field mGroupKey:Ljava/lang/String;

.field mGroupSummary:Z

.field mHeadsUpContentView:Landroid/widget/RemoteViews;

.field mInvisibleActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mLocalOnly:Z

.field mLocusId:Landroidx/core/content/LocusIdCompat;

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field public mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/Person;",
            ">;"
        }
    .end annotation
.end field

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mPublicVersion:Landroid/app/Notification;

.field mRemoteInputHistory:[Ljava/lang/CharSequence;

.field mSettingsText:Ljava/lang/CharSequence;

.field mShortcutId:Ljava/lang/String;

.field mShowWhen:Z

.field mSilent:Z

.field mSmallIcon:Landroid/graphics/drawable/Icon;

.field mSortKey:Ljava/lang/String;

.field mStyle:Landroidx/core/app/NotificationCompat$Style;

.field mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field mTimeout:J

.field mUseChronometer:Z

.field mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 1168
    move-object v1, v0

    #@2
    check-cast v1, Ljava/lang/String;

    #@4
    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .registers 8

    #@0
    .line 986
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getChannelId(Landroid/app/Notification;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@7
    .line 987
    iget-object p1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@9
    .line 988
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Style;->extractStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Style;

    #@c
    move-result-object v0

    #@d
    .line 989
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getContentTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    #@14
    move-result-object v1

    #@15
    .line 990
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getContentText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    #@1c
    move-result-object v1

    #@1d
    .line 991
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getContentInfo(Landroid/app/Notification;)Ljava/lang/CharSequence;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    #@24
    move-result-object v1

    #@25
    .line 992
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getSubText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    #@2c
    move-result-object v1

    #@2d
    .line 993
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getSettingsText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    #@34
    move-result-object v1

    #@35
    .line 994
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    #@38
    move-result-object v1

    #@39
    iget-object v2, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@3b
    .line 995
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    #@3e
    move-result-object v1

    #@3f
    .line 996
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    #@46
    move-result-object v1

    #@47
    .line 997
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->isGroupSummary(Landroid/app/Notification;)Z

    #@4a
    move-result v2

    #@4b
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    #@4e
    move-result-object v1

    #@4f
    .line 998
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getLocusId(Landroid/app/Notification;)Landroidx/core/content/LocusIdCompat;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLocusId(Landroidx/core/content/LocusIdCompat;)Landroidx/core/app/NotificationCompat$Builder;

    #@56
    move-result-object v1

    #@57
    iget-wide v2, p2, Landroid/app/Notification;->when:J

    #@59
    .line 999
    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    #@5c
    move-result-object v1

    #@5d
    .line 1000
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getShowWhen(Landroid/app/Notification;)Z

    #@60
    move-result v2

    #@61
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    #@64
    move-result-object v1

    #@65
    .line 1001
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getUsesChronometer(Landroid/app/Notification;)Z

    #@68
    move-result v2

    #@69
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    #@6c
    move-result-object v1

    #@6d
    .line 1002
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getAutoCancel(Landroid/app/Notification;)Z

    #@70
    move-result v2

    #@71
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    #@74
    move-result-object v1

    #@75
    .line 1003
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getOnlyAlertOnce(Landroid/app/Notification;)Z

    #@78
    move-result v2

    #@79
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    #@7c
    move-result-object v1

    #@7d
    .line 1004
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getOngoing(Landroid/app/Notification;)Z

    #@80
    move-result v2

    #@81
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    #@84
    move-result-object v1

    #@85
    .line 1005
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getLocalOnly(Landroid/app/Notification;)Z

    #@88
    move-result v2

    #@89
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    #@8c
    move-result-object v1

    #@8d
    iget-object v2, p2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@8f
    .line 1006
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    #@92
    move-result-object v1

    #@93
    .line 1007
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getBadgeIconType(Landroid/app/Notification;)I

    #@96
    move-result v2

    #@97
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setBadgeIconType(I)Landroidx/core/app/NotificationCompat$Builder;

    #@9a
    move-result-object v1

    #@9b
    .line 1008
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getCategory(Landroid/app/Notification;)Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    #@a2
    move-result-object v1

    #@a3
    .line 1009
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getBubbleMetadata(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$BubbleMetadata;

    #@a6
    move-result-object v2

    #@a7
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setBubbleMetadata(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroidx/core/app/NotificationCompat$Builder;

    #@aa
    move-result-object v1

    #@ab
    iget v2, p2, Landroid/app/Notification;->number:I

    #@ad
    .line 1010
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    #@b0
    move-result-object v1

    #@b1
    iget-object v2, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@b3
    .line 1011
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    #@b6
    move-result-object v1

    #@b7
    iget-object v2, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@b9
    .line 1012
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    #@bc
    move-result-object v1

    #@bd
    iget-object v2, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@bf
    .line 1013
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    #@c2
    move-result-object v1

    #@c3
    iget-object v2, p2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@c5
    .line 1015
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getHighPriority(Landroid/app/Notification;)Z

    #@c8
    move-result v3

    #@c9
    .line 1014
    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;

    #@cc
    move-result-object v1

    #@cd
    iget-object v2, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@cf
    iget v3, p2, Landroid/app/Notification;->audioStreamType:I

    #@d1
    .line 1016
    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;

    #@d4
    move-result-object v1

    #@d5
    iget-object v2, p2, Landroid/app/Notification;->vibrate:[J

    #@d7
    .line 1017
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    #@da
    move-result-object v1

    #@db
    iget v2, p2, Landroid/app/Notification;->ledARGB:I

    #@dd
    iget v3, p2, Landroid/app/Notification;->ledOnMS:I

    #@df
    iget v4, p2, Landroid/app/Notification;->ledOffMS:I

    #@e1
    .line 1018
    invoke-virtual {v1, v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    #@e4
    move-result-object v1

    #@e5
    iget v2, p2, Landroid/app/Notification;->defaults:I

    #@e7
    .line 1019
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    #@ea
    move-result-object v1

    #@eb
    iget v2, p2, Landroid/app/Notification;->priority:I

    #@ed
    .line 1020
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    #@f0
    move-result-object v1

    #@f1
    .line 1021
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getColor(Landroid/app/Notification;)I

    #@f4
    move-result v2

    #@f5
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    #@f8
    move-result-object v1

    #@f9
    .line 1022
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getVisibility(Landroid/app/Notification;)I

    #@fc
    move-result v2

    #@fd
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    #@100
    move-result-object v1

    #@101
    .line 1023
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getPublicVersion(Landroid/app/Notification;)Landroid/app/Notification;

    #@104
    move-result-object v2

    #@105
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Builder;

    #@108
    move-result-object v1

    #@109
    .line 1024
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getSortKey(Landroid/app/Notification;)Ljava/lang/String;

    #@10c
    move-result-object v2

    #@10d
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    #@110
    move-result-object v1

    #@111
    .line 1025
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getTimeoutAfter(Landroid/app/Notification;)J

    #@114
    move-result-wide v2

    #@115
    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    #@118
    move-result-object v1

    #@119
    .line 1026
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getShortcutId(Landroid/app/Notification;)Ljava/lang/String;

    #@11c
    move-result-object v2

    #@11d
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShortcutId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    #@120
    move-result-object v1

    #@121
    const-string v2, "android.progressMax"

    #@123
    .line 1027
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@126
    move-result v2

    #@127
    const-string v3, "android.progress"

    #@129
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@12c
    move-result v3

    #@12d
    const-string v4, "android.progressIndeterminate"

    #@12f
    .line 1028
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@132
    move-result v4

    #@133
    .line 1027
    invoke-virtual {v1, v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    #@136
    move-result-object v1

    #@137
    .line 1030
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getAllowSystemGeneratedContextualActions(Landroid/app/Notification;)Z

    #@13a
    move-result v2

    #@13b
    .line 1029
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroidx/core/app/NotificationCompat$Builder;

    #@13e
    move-result-object v1

    #@13f
    iget v2, p2, Landroid/app/Notification;->icon:I

    #@141
    iget v3, p2, Landroid/app/Notification;->iconLevel:I

    #@143
    .line 1031
    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(II)Landroidx/core/app/NotificationCompat$Builder;

    #@146
    move-result-object v1

    #@147
    .line 1032
    invoke-static {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->getExtrasWithoutDuplicateData(Landroid/app/Notification;Landroidx/core/app/NotificationCompat$Style;)Landroid/os/Bundle;

    #@14a
    move-result-object v0

    #@14b
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;

    #@14e
    .line 1038
    invoke-virtual {p2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@151
    move-result-object v0

    #@152
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@154
    .line 1042
    iget-object v0, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@156
    const/4 v1, 0x0

    #@157
    if-eqz v0, :cond_174

    #@159
    iget-object v0, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@15b
    array-length v0, v0

    #@15c
    if-eqz v0, :cond_174

    #@15e
    .line 1043
    iget-object v0, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@160
    array-length v2, v0

    #@161
    move v3, v1

    #@162
    :goto_162
    if-ge v3, v2, :cond_174

    #@164
    aget-object v4, v0, v3

    #@166
    .line 1044
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Action$Builder;->fromAndroidAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action$Builder;

    #@169
    move-result-object v4

    #@16a
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    #@16d
    move-result-object v4

    #@16e
    invoke-virtual {p0, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    #@171
    add-int/lit8 v3, v3, 0x1

    #@173
    goto :goto_162

    #@174
    .line 1050
    :cond_174
    invoke-static {p2}, Landroidx/core/app/NotificationCompat;->getInvisibleActions(Landroid/app/Notification;)Ljava/util/List;

    #@177
    move-result-object v0

    #@178
    .line 1051
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@17b
    move-result v2

    #@17c
    if-nez v2, :cond_192

    #@17e
    .line 1052
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@181
    move-result-object v0

    #@182
    :goto_182
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@185
    move-result v2

    #@186
    if-eqz v2, :cond_192

    #@188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18b
    move-result-object v2

    #@18c
    check-cast v2, Landroidx/core/app/NotificationCompat$Action;

    #@18e
    .line 1053
    invoke-virtual {p0, v2}, Landroidx/core/app/NotificationCompat$Builder;->addInvisibleAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    #@191
    goto :goto_182

    #@192
    .line 1059
    :cond_192
    iget-object v0, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@194
    const-string v2, "android.people"

    #@196
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@199
    move-result-object v0

    #@19a
    if-eqz v0, :cond_1aa

    #@19c
    .line 1060
    array-length v2, v0

    #@19d
    if-eqz v2, :cond_1aa

    #@19f
    .line 1061
    array-length v2, v0

    #@1a0
    :goto_1a0
    if-ge v1, v2, :cond_1aa

    #@1a2
    aget-object v3, v0, v1

    #@1a4
    .line 1062
    invoke-virtual {p0, v3}, Landroidx/core/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    #@1a7
    add-int/lit8 v1, v1, 0x1

    #@1a9
    goto :goto_1a0

    #@1aa
    .line 1066
    :cond_1aa
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@1ac
    const/16 v1, 0x1c

    #@1ae
    if-lt v0, v1, :cond_1d8

    #@1b0
    .line 1067
    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@1b2
    const-string v0, "android.people.list"

    #@1b4
    .line 1068
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@1b7
    move-result-object p2

    #@1b8
    if-eqz p2, :cond_1d8

    #@1ba
    .line 1069
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    #@1bd
    move-result v0

    #@1be
    if-nez v0, :cond_1d8

    #@1c0
    .line 1070
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1c3
    move-result-object p2

    #@1c4
    :goto_1c4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@1c7
    move-result v0

    #@1c8
    if-eqz v0, :cond_1d8

    #@1ca
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1cd
    move-result-object v0

    #@1ce
    check-cast v0, Landroid/app/Person;

    #@1d0
    .line 1071
    invoke-static {v0}, Landroidx/core/app/Person;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    #@1d3
    move-result-object v0

    #@1d4
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->addPerson(Landroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$Builder;

    #@1d7
    goto :goto_1c4

    #@1d8
    :cond_1d8
    const-string p2, "android.chronometerCountDown"

    #@1da
    .line 1079
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@1dd
    move-result v0

    #@1de
    if-eqz v0, :cond_1e7

    #@1e0
    .line 1081
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1e3
    move-result p2

    #@1e4
    .line 1080
    invoke-virtual {p0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setChronometerCountDown(Z)Landroidx/core/app/NotificationCompat$Builder;

    #@1e7
    :cond_1e7
    const-string p2, "android.colorized"

    #@1e9
    .line 1085
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@1ec
    move-result v0

    #@1ed
    if-eqz v0, :cond_1f6

    #@1ef
    .line 1086
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1f2
    move-result p1

    #@1f3
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    #@1f6
    :cond_1f6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    #@0
    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 912
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    #@a
    .line 916
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    #@11
    .line 923
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    #@18
    const/4 v0, 0x1

    #@19
    .line 934
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    #@1b
    const/4 v1, 0x0

    #@1c
    .line 947
    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    #@1e
    .line 952
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    #@20
    .line 953
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    #@22
    .line 959
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    #@24
    .line 963
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    #@26
    .line 964
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    #@28
    .line 967
    new-instance v2, Landroid/app/Notification;

    #@2a
    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    #@2d
    iput-object v2, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2f
    .line 1152
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@31
    .line 1153
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    #@33
    .line 1155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@36
    move-result-wide p1

    #@37
    iput-wide p1, v2, Landroid/app/Notification;->when:J

    #@39
    .line 1156
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@3b
    const/4 p2, -0x1

    #@3c
    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    #@3e
    .line 1157
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    #@40
    .line 1158
    new-instance p1, Ljava/util/ArrayList;

    #@42
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@45
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    #@47
    .line 1159
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    #@49
    return-void
.end method

.method private static getExtrasWithoutDuplicateData(Landroid/app/Notification;Landroidx/core/app/NotificationCompat$Style;)Landroid/os/Bundle;
    .registers 5

    #@0
    .line 1096
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p0, 0x0

    #@5
    return-object p0

    #@6
    .line 1099
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    #@8
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@a
    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@d
    const-string p0, "android.title"

    #@f
    .line 1102
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@12
    const-string p0, "android.text"

    #@14
    .line 1103
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@17
    const-string p0, "android.infoText"

    #@19
    .line 1104
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@1c
    const-string p0, "android.subText"

    #@1e
    .line 1105
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@21
    const-string p0, "android.intent.extra.CHANNEL_ID"

    #@23
    .line 1106
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@26
    const-string p0, "android.intent.extra.CHANNEL_GROUP_ID"

    #@28
    .line 1107
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@2b
    const-string p0, "android.showWhen"

    #@2d
    .line 1108
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@30
    const-string p0, "android.progress"

    #@32
    .line 1109
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@35
    const-string p0, "android.progressMax"

    #@37
    .line 1110
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@3a
    const-string p0, "android.progressIndeterminate"

    #@3c
    .line 1111
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@3f
    const-string p0, "android.chronometerCountDown"

    #@41
    .line 1112
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@44
    const-string p0, "android.colorized"

    #@46
    .line 1113
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@49
    const-string p0, "android.people.list"

    #@4b
    .line 1114
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@4e
    const-string p0, "android.people"

    #@50
    .line 1115
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@53
    const-string p0, "android.support.sortKey"

    #@55
    .line 1116
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@58
    const-string p0, "android.support.groupKey"

    #@5a
    .line 1117
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@5d
    const-string p0, "android.support.isGroupSummary"

    #@5f
    .line 1118
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@62
    const-string p0, "android.support.localOnly"

    #@64
    .line 1119
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@67
    const-string p0, "android.support.actionExtras"

    #@69
    .line 1120
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@6c
    const-string p0, "android.car.EXTENSIONS"

    #@6e
    .line 1123
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@71
    move-result-object v1

    #@72
    if-eqz v1, :cond_81

    #@74
    .line 1125
    new-instance v2, Landroid/os/Bundle;

    #@76
    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@79
    const-string v1, "invisible_actions"

    #@7b
    .line 1126
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@7e
    .line 1127
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@81
    :cond_81
    if-eqz p1, :cond_86

    #@83
    .line 1132
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    #@86
    :cond_86
    return-object v0
.end method

.method protected static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    #@0
    if-nez p0, :cond_3

    #@2
    return-object p0

    #@3
    .line 2453
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v0

    #@7
    const/16 v1, 0x1400

    #@9
    if-le v0, v1, :cond_10

    #@b
    const/4 v0, 0x0

    #@c
    .line 2454
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@f
    move-result-object p0

    #@10
    :cond_10
    return-object p0
.end method

.method private reduceLargeIconSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11

    #@0
    if-eqz p1, :cond_5d

    #@2
    .line 1503
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    const/16 v1, 0x1b

    #@6
    if-lt v0, v1, :cond_9

    #@8
    goto :goto_5d

    #@9
    .line 1507
    :cond_9
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v0

    #@f
    .line 1508
    sget v1, Landroidx/core/R$dimen;->compat_notification_large_icon_max_width:I

    #@11
    .line 1509
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@14
    move-result v1

    #@15
    .line 1510
    sget v2, Landroidx/core/R$dimen;->compat_notification_large_icon_max_height:I

    #@17
    .line 1511
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1a
    move-result v0

    #@1b
    .line 1512
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@1e
    move-result v2

    #@1f
    if-gt v2, v1, :cond_28

    #@21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@24
    move-result v2

    #@25
    if-gt v2, v0, :cond_28

    #@27
    return-object p1

    #@28
    :cond_28
    int-to-double v1, v1

    #@29
    .line 1517
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@2c
    move-result v3

    #@2d
    const/4 v4, 0x1

    #@2e
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@31
    move-result v3

    #@32
    int-to-double v5, v3

    #@33
    div-double/2addr v1, v5

    #@34
    int-to-double v5, v0

    #@35
    .line 1518
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@38
    move-result v0

    #@39
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    #@3c
    move-result v0

    #@3d
    int-to-double v7, v0

    #@3e
    div-double/2addr v5, v7

    #@3f
    .line 1516
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    #@42
    move-result-wide v0

    #@43
    .line 1521
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@46
    move-result v2

    #@47
    int-to-double v2, v2

    #@48
    mul-double/2addr v2, v0

    #@49
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@4c
    move-result-wide v2

    #@4d
    double-to-int v2, v2

    #@4e
    .line 1522
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@51
    move-result v3

    #@52
    int-to-double v5, v3

    #@53
    mul-double/2addr v5, v0

    #@54
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    #@57
    move-result-wide v0

    #@58
    double-to-int v0, v0

    #@59
    .line 1519
    invoke-static {p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@5c
    move-result-object p1

    #@5d
    :cond_5d
    :goto_5d
    return-object p1
.end method

.method private setFlag(IZ)V
    .registers 4

    #@0
    if-eqz p2, :cond_a

    #@2
    .line 1740
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@4
    iget v0, p2, Landroid/app/Notification;->flags:I

    #@6
    or-int/2addr p1, v0

    #@7
    iput p1, p2, Landroid/app/Notification;->flags:I

    #@9
    goto :goto_12

    #@a
    .line 1742
    :cond_a
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@c
    iget v0, p2, Landroid/app/Notification;->flags:I

    #@e
    not-int p1, p1

    #@f
    and-int/2addr p1, v0

    #@10
    iput p1, p2, Landroid/app/Notification;->flags:I

    #@12
    :goto_12
    return-void
.end method

.method private useExistingRemoteView()Z
    .registers 2

    #@0
    .line 2100
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    #@2
    if-eqz v0, :cond_d

    #@4
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Style;->displayCustomViewInline()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 v0, 0x1

    #@e
    :goto_e
    return v0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 6

    #@0
    .line 1956
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    #@2
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    #@4
    invoke-direct {v1, p1, p2, p3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    return-object p0
.end method

.method public addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    if-eqz p1, :cond_7

    #@2
    .line 1976
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7
    :cond_7
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    if-eqz p1, :cond_11

    #@2
    .line 1895
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@4
    if-nez v0, :cond_e

    #@6
    .line 1896
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@b
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@d
    goto :goto_11

    #@e
    .line 1898
    :cond_e
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@11
    :cond_11
    :goto_11
    return-object p0
.end method

.method public addInvisibleAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 6

    #@0
    .line 2003
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    #@2
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    #@4
    invoke-direct {v1, p1, p2, p3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    return-object p0
.end method

.method public addInvisibleAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    if-eqz p1, :cond_7

    #@2
    .line 2018
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7
    :cond_7
    return-object p0
.end method

.method public addPerson(Landroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    if-eqz p1, :cond_7

    #@2
    .line 1826
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7
    :cond_7
    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    if-eqz p1, :cond_d

    #@2
    .line 1798
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_d

    #@8
    .line 1799
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    :cond_d
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .registers 2

    #@0
    .line 2448
    new-instance v0, Landroidx/core/app/NotificationCompatBuilder;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompatBuilder;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    #@5
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompatBuilder;->build()Landroid/app/Notification;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public clearActions()Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1985
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    return-object p0
.end method

.method public clearInvisibleActions()Landroidx/core/app/NotificationCompat$Builder;
    .registers 4

    #@0
    .line 2027
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 2030
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@7
    const-string v1, "android.car.EXTENSIONS"

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_1e

    #@f
    .line 2032
    new-instance v2, Landroid/os/Bundle;

    #@11
    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@14
    const-string v0, "invisible_actions"

    #@16
    .line 2033
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@19
    .line 2034
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1e
    :cond_1e
    return-object p0
.end method

.method public clearPeople()Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1836
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 1837
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@a
    return-object p0
.end method

.method public createBigContentView()Landroid/widget/RemoteViews;
    .registers 3

    #@0
    .line 2143
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    #@2
    if-eqz v0, :cond_d

    #@4
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Builder;->useExistingRemoteView()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 2144
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    #@c
    return-object v0

    #@d
    .line 2149
    :cond_d
    new-instance v0, Landroidx/core/app/NotificationCompatBuilder;

    #@f
    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompatBuilder;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    #@12
    .line 2150
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    #@14
    if-eqz v1, :cond_1d

    #@16
    .line 2151
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Style;->makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    #@19
    move-result-object v1

    #@1a
    if-eqz v1, :cond_1d

    #@1c
    return-object v1

    #@1d
    .line 2156
    :cond_1d
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompatBuilder;->build()Landroid/app/Notification;

    #@20
    move-result-object v0

    #@21
    .line 2159
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@23
    invoke-static {v1, v0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    #@26
    move-result-object v0

    #@27
    .line 2160
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public createContentView()Landroid/widget/RemoteViews;
    .registers 3

    #@0
    .line 2109
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    #@2
    if-eqz v0, :cond_d

    #@4
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Builder;->useExistingRemoteView()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 2110
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    #@c
    return-object v0

    #@d
    .line 2115
    :cond_d
    new-instance v0, Landroidx/core/app/NotificationCompatBuilder;

    #@f
    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompatBuilder;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    #@12
    .line 2116
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    #@14
    if-eqz v1, :cond_1d

    #@16
    .line 2117
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Style;->makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    #@19
    move-result-object v1

    #@1a
    if-eqz v1, :cond_1d

    #@1c
    return-object v1

    #@1d
    .line 2122
    :cond_1d
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompatBuilder;->build()Landroid/app/Notification;

    #@20
    move-result-object v0

    #@21
    .line 2125
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@23
    invoke-static {v1, v0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    #@26
    move-result-object v0

    #@27
    .line 2126
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public createHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 3

    #@0
    .line 2177
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    #@2
    if-eqz v0, :cond_d

    #@4
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Builder;->useExistingRemoteView()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 2178
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    #@c
    return-object v0

    #@d
    .line 2183
    :cond_d
    new-instance v0, Landroidx/core/app/NotificationCompatBuilder;

    #@f
    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompatBuilder;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    #@12
    .line 2184
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    #@14
    if-eqz v1, :cond_1d

    #@16
    .line 2185
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Style;->makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    #@19
    move-result-object v1

    #@1a
    if-eqz v1, :cond_1d

    #@1c
    return-object v1

    #@1d
    .line 2190
    :cond_1d
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompatBuilder;->build()Landroid/app/Notification;

    #@20
    move-result-object v0

    #@21
    .line 2193
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@23
    .line 2194
    invoke-static {v1, v0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    #@26
    move-result-object v0

    #@27
    .line 2195
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2422
    invoke-interface {p1, p0}, Landroidx/core/app/NotificationCompat$Extender;->extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;

    #@3
    return-object p0
.end method

.method public getBigContentView()Landroid/widget/RemoteViews;
    .registers 2

    #@0
    .line 2472
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    #@2
    return-object v0
.end method

.method public getBubbleMetadata()Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .registers 2

    #@0
    .line 2531
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

    #@2
    return-object v0
.end method

.method public getColor()I
    .registers 2

    #@0
    .line 2521
    iget v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    #@2
    return v0
.end method

.method public getContentView()Landroid/widget/RemoteViews;
    .registers 2

    #@0
    .line 2464
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    #@0
    .line 1932
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 1933
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@b
    .line 1935
    :cond_b
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@d
    return-object v0
.end method

.method public getForegroundServiceBehavior()I
    .registers 2

    #@0
    .line 2510
    iget v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    #@2
    return v0
.end method

.method public getHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 2

    #@0
    .line 2480
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    #@2
    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2440
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPriority()I
    .registers 2

    #@0
    .line 2500
    iget v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    #@2
    return v0
.end method

.method public getWhenIfShowing()J
    .registers 3

    #@0
    .line 2490
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@6
    iget-wide v0, v0, Landroid/app/Notification;->when:J

    #@8
    goto :goto_b

    #@9
    :cond_9
    const-wide/16 v0, 0x0

    #@b
    :goto_b
    return-wide v0
.end method

.method public setAllowSystemGeneratedContextualActions(Z)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2431
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    #@2
    return-object p0
.end method

.method public setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    const/16 v0, 0x10

    #@2
    .line 1683
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    #@5
    return-object p0
.end method

.method public setBadgeIconType(I)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2357
    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    #@2
    return-object p0
.end method

.method public setBubbleMetadata(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2413
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

    #@2
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1706
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2245
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setChronometerCountDown(Z)Landroidx/core/app/NotificationCompat$Builder;
    .registers 4

    #@0
    .line 1234
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mChronometerCountDown:Z

    #@2
    .line 1235
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    const-string v1, "android.chronometerCountDown"

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@b
    return-object p0
.end method

.method public setColor(I)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2065
    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    #@2
    return-object p0
.end method

.method public setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1664
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    #@2
    const/4 p1, 0x1

    #@3
    .line 1665
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    #@5
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    .line 1408
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@4
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1389
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #@6
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1421
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    #@2
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1301
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    #@6
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1293
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@6
    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2222
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    #@2
    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2209
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    #@2
    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2235
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    #@2
    return-object p0
.end method

.method public setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    .line 1731
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput p1, v0, Landroid/app/Notification;->defaults:I

    #@4
    and-int/lit8 p1, p1, 0x4

    #@6
    if-eqz p1, :cond_10

    #@8
    .line 1733
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@a
    iget v0, p1, Landroid/app/Notification;->flags:I

    #@c
    or-int/lit8 v0, v0, 0x1

    #@e
    iput v0, p1, Landroid/app/Notification;->flags:I

    #@10
    :cond_10
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    .line 1433
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@4
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1917
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    return-object p0
.end method

.method public setForegroundServiceBehavior(I)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2397
    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    #@2
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    .line 1459
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    #@2
    const/16 p1, 0x80

    #@4
    .line 1460
    invoke-direct {p0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    #@7
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1853
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2372
    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    #@2
    return-object p0
.end method

.method public setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1865
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    #@2
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1494
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->reduceLargeIconSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    #@6
    return-object p0
.end method

.method public setLights(III)Landroidx/core/app/NotificationCompat$Builder;
    .registers 5

    #@0
    .line 1619
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    #@4
    .line 1620
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@6
    iput p2, p1, Landroid/app/Notification;->ledOnMS:I

    #@8
    .line 1621
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@a
    iput p3, p1, Landroid/app/Notification;->ledOffMS:I

    #@c
    .line 1622
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@e
    iget p1, p1, Landroid/app/Notification;->ledOnMS:I

    #@10
    if-eqz p1, :cond_1a

    #@12
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@14
    iget p1, p1, Landroid/app/Notification;->ledOffMS:I

    #@16
    if-eqz p1, :cond_1a

    #@18
    const/4 p1, 0x1

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 p1, 0x0

    #@1b
    .line 1623
    :goto_1b
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@1d
    iget p3, p2, Landroid/app/Notification;->flags:I

    #@1f
    and-int/lit8 p3, p3, -0x2

    #@21
    or-int/2addr p1, p3

    #@22
    .line 1624
    iput p1, p2, Landroid/app/Notification;->flags:I

    #@24
    return-object p0
.end method

.method public setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1694
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    #@2
    return-object p0
.end method

.method public setLocusId(Landroidx/core/content/LocusIdCompat;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2343
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    #@2
    return-object p0
.end method

.method public setNotificationSilent()Landroidx/core/app/NotificationCompat$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 1275
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    #@3
    return-object p0
.end method

.method public setNumber(I)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1375
    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    #@2
    return-object p0
.end method

.method public setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    .line 1641
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    #@4
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    const/16 v0, 0x8

    #@2
    .line 1674
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    #@5
    return-object p0
.end method

.method public setPriority(I)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1769
    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    #@2
    return-object p0
.end method

.method public setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;
    .registers 4

    #@0
    .line 1398
    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    #@2
    .line 1399
    iput p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    #@4
    .line 1400
    iput-boolean p3, p0, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    #@6
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2090
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    #@2
    return-object p0
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1362
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    #@2
    return-object p0
.end method

.method public setSettingsText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1343
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mSettingsText:Ljava/lang/CharSequence;

    #@6
    return-object p0
.end method

.method public setShortcutId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2302
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setShortcutInfo(Landroidx/core/content/pm/ShortcutInfoCompat;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 4

    #@0
    if-nez p1, :cond_3

    #@2
    return-object p0

    #@3
    .line 2319
    :cond_3
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    #@9
    .line 2320
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    #@b
    if-nez v0, :cond_2b

    #@d
    .line 2321
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getLocusId()Landroidx/core/content/LocusIdCompat;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_1a

    #@13
    .line 2322
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getLocusId()Landroidx/core/content/LocusIdCompat;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    #@19
    goto :goto_2b

    #@1a
    .line 2323
    :cond_1a
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    if-eqz v0, :cond_2b

    #@20
    .line 2324
    new-instance v0, Landroidx/core/content/LocusIdCompat;

    #@22
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    #@29
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    #@2b
    .line 2327
    :cond_2b
    :goto_2b
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@2d
    if-nez v0, :cond_36

    #@2f
    .line 2328
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    #@32
    move-result-object p1

    #@33
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    #@36
    :cond_36
    return-object p0
.end method

.method public setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1191
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    #@2
    return-object p0
.end method

.method public setSilent(Z)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1285
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    #@2
    return-object p0
.end method

.method public setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    .line 1247
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput p1, v0, Landroid/app/Notification;->icon:I

    #@4
    return-object p0
.end method

.method public setSmallIcon(II)Landroidx/core/app/NotificationCompat$Builder;
    .registers 4

    #@0
    .line 1262
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput p1, v0, Landroid/app/Notification;->icon:I

    #@4
    .line 1263
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@6
    iput p2, p1, Landroid/app/Notification;->iconLevel:I

    #@8
    return-object p0
.end method

.method public setSmallIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    .line 1204
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@8
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1882
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 4

    #@0
    .line 1542
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@4
    .line 1543
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@6
    const/4 v0, -0x1

    #@7
    iput v0, p1, Landroid/app/Notification;->audioStreamType:I

    #@9
    .line 1545
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@b
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@d
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@10
    const/4 v1, 0x4

    #@11
    .line 1546
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@14
    move-result-object v0

    #@15
    const/4 v1, 0x5

    #@16
    .line 1547
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@19
    move-result-object v0

    #@1a
    .line 1548
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@20
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;
    .registers 5

    #@0
    .line 1571
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@4
    .line 1572
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@6
    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    #@8
    .line 1574
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@a
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@c
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@f
    const/4 v1, 0x4

    #@10
    .line 1575
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@13
    move-result-object v0

    #@14
    .line 1576
    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    #@17
    move-result-object p2

    #@18
    .line 1577
    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@1b
    move-result-object p2

    #@1c
    iput-object p2, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@1e
    return-object p0
.end method

.method public setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    .line 2048
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    #@2
    if-eq v0, p1, :cond_b

    #@4
    .line 2049
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    #@6
    if-eqz p1, :cond_b

    #@8
    .line 2051
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Style;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    #@b
    :cond_b
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1324
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    #@6
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    .line 1470
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    move-result-object p1

    #@6
    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@8
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1485
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    move-result-object p1

    #@6
    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@8
    .line 1486
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    #@a
    return-object p0
.end method

.method public setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    .line 2256
    iput-wide p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    #@2
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 1220
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    #@2
    return-object p0
.end method

.method public setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;
    .registers 3

    #@0
    .line 1601
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    #@4
    return-object p0
.end method

.method public setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    #@0
    .line 2077
    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    #@2
    return-object p0
.end method

.method public setWhen(J)Landroidx/core/app/NotificationCompat$Builder;
    .registers 4

    #@0
    .line 1179
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iput-wide p1, v0, Landroid/app/Notification;->when:J

    #@4
    return-object p0
.end method

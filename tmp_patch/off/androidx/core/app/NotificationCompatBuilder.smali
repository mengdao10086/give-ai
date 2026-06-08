.class Landroidx/core/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"

# interfaces
.implements Landroidx/core/app/NotificationBuilderWithBuilderAccessor;


# instance fields
.field private final mActionExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBigContentView:Landroid/widget/RemoteViews;

.field private final mBuilder:Landroid/app/Notification$Builder;

.field private final mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

.field private mContentView:Landroid/widget/RemoteViews;

.field private final mContext:Landroid/content/Context;

.field private final mExtras:Landroid/os/Bundle;

.field private mGroupAlertBehavior:I

.field private mHeadsUpContentView:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 14

    #@0
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    #@a
    .line 61
    new-instance v0, Landroid/os/Bundle;

    #@c
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    #@11
    .line 69
    iput-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    #@13
    .line 70
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@15
    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Landroid/content/Context;

    #@17
    .line 72
    new-instance v0, Landroid/app/Notification$Builder;

    #@19
    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@1b
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    #@1d
    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@20
    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@22
    .line 76
    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@24
    .line 77
    iget-wide v2, v1, Landroid/app/Notification;->when:J

    #@26
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@29
    move-result-object v2

    #@2a
    iget v3, v1, Landroid/app/Notification;->icon:I

    #@2c
    iget v4, v1, Landroid/app/Notification;->iconLevel:I

    #@2e
    .line 78
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    #@31
    move-result-object v2

    #@32
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@34
    .line 79
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@37
    move-result-object v2

    #@38
    iget-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@3a
    iget-object v4, p1, Landroidx/core/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    #@3c
    .line 80
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@3f
    move-result-object v2

    #@40
    iget-object v3, v1, Landroid/app/Notification;->vibrate:[J

    #@42
    .line 81
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    #@45
    move-result-object v2

    #@46
    iget v3, v1, Landroid/app/Notification;->ledARGB:I

    #@48
    iget v4, v1, Landroid/app/Notification;->ledOnMS:I

    #@4a
    iget v5, v1, Landroid/app/Notification;->ledOffMS:I

    #@4c
    .line 82
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    #@4f
    move-result-object v2

    #@50
    iget v3, v1, Landroid/app/Notification;->flags:I

    #@52
    const/4 v4, 0x2

    #@53
    and-int/2addr v3, v4

    #@54
    const/4 v5, 0x1

    #@55
    const/4 v6, 0x0

    #@56
    if-eqz v3, :cond_5a

    #@58
    move v3, v5

    #@59
    goto :goto_5b

    #@5a
    :cond_5a
    move v3, v6

    #@5b
    .line 83
    :goto_5b
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@5e
    move-result-object v2

    #@5f
    iget v3, v1, Landroid/app/Notification;->flags:I

    #@61
    and-int/lit8 v3, v3, 0x8

    #@63
    if-eqz v3, :cond_67

    #@65
    move v3, v5

    #@66
    goto :goto_68

    #@67
    :cond_67
    move v3, v6

    #@68
    .line 84
    :goto_68
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@6b
    move-result-object v2

    #@6c
    iget v3, v1, Landroid/app/Notification;->flags:I

    #@6e
    and-int/lit8 v3, v3, 0x10

    #@70
    if-eqz v3, :cond_74

    #@72
    move v3, v5

    #@73
    goto :goto_75

    #@74
    :cond_74
    move v3, v6

    #@75
    .line 85
    :goto_75
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@78
    move-result-object v2

    #@79
    iget v3, v1, Landroid/app/Notification;->defaults:I

    #@7b
    .line 86
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@7e
    move-result-object v2

    #@7f
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@81
    .line 87
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@84
    move-result-object v2

    #@85
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    #@87
    .line 88
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@8a
    move-result-object v2

    #@8b
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #@8d
    .line 89
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@90
    move-result-object v2

    #@91
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    #@93
    .line 90
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@96
    move-result-object v2

    #@97
    iget-object v3, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@99
    .line 91
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@9c
    move-result-object v2

    #@9d
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    #@9f
    iget v7, v1, Landroid/app/Notification;->flags:I

    #@a1
    and-int/lit16 v7, v7, 0x80

    #@a3
    if-eqz v7, :cond_a7

    #@a5
    move v7, v5

    #@a6
    goto :goto_a8

    #@a7
    :cond_a7
    move v7, v6

    #@a8
    .line 92
    :goto_a8
    invoke-virtual {v2, v3, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    #@ab
    move-result-object v2

    #@ac
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    #@ae
    .line 94
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    #@b1
    move-result-object v2

    #@b2
    iget v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    #@b4
    .line 95
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    #@b7
    move-result-object v2

    #@b8
    iget v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    #@ba
    iget v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    #@bc
    iget-boolean v8, p1, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    #@be
    .line 96
    invoke-virtual {v2, v3, v7, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    #@c1
    .line 101
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    #@c3
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@c6
    move-result-object v0

    #@c7
    iget-boolean v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    #@c9
    .line 102
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    #@cc
    move-result-object v0

    #@cd
    iget v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    #@cf
    .line 103
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@d2
    .line 104
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    #@d4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@d7
    move-result-object v0

    #@d8
    :goto_d8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@db
    move-result v2

    #@dc
    if-eqz v2, :cond_e8

    #@de
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e1
    move-result-object v2

    #@e2
    check-cast v2, Landroidx/core/app/NotificationCompat$Action;

    #@e4
    .line 105
    invoke-direct {p0, v2}, Landroidx/core/app/NotificationCompatBuilder;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    #@e7
    goto :goto_d8

    #@e8
    .line 108
    :cond_e8
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@ea
    if-eqz v0, :cond_f3

    #@ec
    .line 109
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    #@ee
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@f0
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@f3
    .line 129
    :cond_f3
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    #@f5
    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    #@f7
    .line 130
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    #@f9
    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    #@fb
    .line 133
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@fd
    iget-boolean v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    #@ff
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    #@102
    .line 145
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@104
    iget-boolean v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    #@106
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    #@109
    move-result-object v0

    #@10a
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    #@10c
    .line 146
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@10f
    move-result-object v0

    #@110
    iget-boolean v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    #@112
    .line 147
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    #@115
    move-result-object v0

    #@116
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    #@118
    .line 148
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@11b
    .line 150
    iget v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    #@11d
    iput v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    #@11f
    .line 153
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@121
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    #@123
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@126
    move-result-object v0

    #@127
    iget v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    #@129
    .line 154
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@12c
    move-result-object v0

    #@12d
    iget v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    #@12f
    .line 155
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    #@132
    move-result-object v0

    #@133
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    #@135
    .line 156
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    #@138
    move-result-object v0

    #@139
    iget-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@13b
    iget-object v3, v1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@13d
    .line 157
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    #@140
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@142
    const/16 v2, 0x1c

    #@144
    if-ge v0, v2, :cond_153

    #@146
    .line 162
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    #@148
    invoke-static {v0}, Landroidx/core/app/NotificationCompatBuilder;->getPeople(Ljava/util/List;)Ljava/util/List;

    #@14b
    move-result-object v0

    #@14c
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    #@14e
    invoke-static {v0, v3}, Landroidx/core/app/NotificationCompatBuilder;->combineLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    #@151
    move-result-object v0

    #@152
    goto :goto_155

    #@153
    .line 164
    :cond_153
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    #@155
    :goto_155
    if-eqz v0, :cond_173

    #@157
    .line 166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@15a
    move-result v3

    #@15b
    if-nez v3, :cond_173

    #@15d
    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@160
    move-result-object v0

    #@161
    :goto_161
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@164
    move-result v3

    #@165
    if-eqz v3, :cond_173

    #@167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16a
    move-result-object v3

    #@16b
    check-cast v3, Ljava/lang/String;

    #@16d
    .line 168
    iget-object v7, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@16f
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@172
    goto :goto_161

    #@173
    .line 172
    :cond_173
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    #@175
    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    #@177
    .line 174
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    #@179
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@17c
    move-result v0

    #@17d
    if-lez v0, :cond_1cd

    #@17f
    .line 178
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    #@182
    move-result-object v0

    #@183
    const-string v3, "android.car.EXTENSIONS"

    #@185
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@188
    move-result-object v0

    #@189
    if-nez v0, :cond_190

    #@18b
    .line 180
    new-instance v0, Landroid/os/Bundle;

    #@18d
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@190
    .line 182
    :cond_190
    new-instance v7, Landroid/os/Bundle;

    #@192
    invoke-direct {v7, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@195
    .line 183
    new-instance v8, Landroid/os/Bundle;

    #@197
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    #@19a
    move v9, v6

    #@19b
    .line 184
    :goto_19b
    iget-object v10, p1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    #@19d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@1a0
    move-result v10

    #@1a1
    if-ge v9, v10, :cond_1b9

    #@1a3
    .line 186
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1a6
    move-result-object v10

    #@1a7
    iget-object v11, p1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    #@1a9
    .line 188
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1ac
    move-result-object v11

    #@1ad
    check-cast v11, Landroidx/core/app/NotificationCompat$Action;

    #@1af
    .line 187
    invoke-static {v11}, Landroidx/core/app/NotificationCompatJellybean;->getBundleForAction(Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;

    #@1b2
    move-result-object v11

    #@1b3
    .line 185
    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1b6
    add-int/lit8 v9, v9, 0x1

    #@1b8
    goto :goto_19b

    #@1b9
    :cond_1b9
    const-string v9, "invisible_actions"

    #@1bb
    .line 190
    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1be
    .line 192
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1c1
    .line 194
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    #@1c4
    move-result-object v8

    #@1c5
    invoke-virtual {v8, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1c8
    .line 196
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    #@1ca
    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1cd
    .line 201
    :cond_1cd
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@1cf
    if-eqz v0, :cond_1d8

    #@1d1
    .line 202
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@1d3
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@1d5
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    #@1d8
    .line 206
    :cond_1d8
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@1da
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@1dc
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    #@1df
    move-result-object v0

    #@1e0
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    #@1e2
    .line 207
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@1e5
    .line 208
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    #@1e7
    if-eqz v0, :cond_1f0

    #@1e9
    .line 209
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@1eb
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    #@1ed
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@1f0
    .line 211
    :cond_1f0
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    #@1f2
    if-eqz v0, :cond_1fb

    #@1f4
    .line 212
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@1f6
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    #@1f8
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@1fb
    .line 214
    :cond_1fb
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    #@1fd
    if-eqz v0, :cond_206

    #@1ff
    .line 215
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@201
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    #@203
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@206
    .line 219
    :cond_206
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@208
    iget v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    #@20a
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    #@20d
    move-result-object v0

    #@20e
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mSettingsText:Ljava/lang/CharSequence;

    #@210
    .line 220
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@213
    move-result-object v0

    #@214
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    #@216
    .line 221
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@219
    move-result-object v0

    #@21a
    iget-wide v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    #@21c
    .line 222
    invoke-virtual {v0, v7, v8}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    #@21f
    move-result-object v0

    #@220
    iget v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    #@222
    .line 223
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    #@225
    .line 224
    iget-boolean v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    #@227
    if-eqz v0, :cond_230

    #@229
    .line 225
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@22b
    iget-boolean v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    #@22d
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    #@230
    .line 228
    :cond_230
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    #@232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@235
    move-result v0

    #@236
    const/4 v3, 0x0

    #@237
    if-nez v0, :cond_24a

    #@239
    .line 229
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@23b
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    #@23e
    move-result-object v0

    #@23f
    .line 230
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@242
    move-result-object v0

    #@243
    .line 231
    invoke-virtual {v0, v6, v6, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    #@246
    move-result-object v0

    #@247
    .line 232
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    #@24a
    .line 235
    :cond_24a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@24c
    if-lt v0, v2, :cond_26a

    #@24e
    .line 236
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    #@250
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@253
    move-result-object v0

    #@254
    :goto_254
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@257
    move-result v2

    #@258
    if-eqz v2, :cond_26a

    #@25a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25d
    move-result-object v2

    #@25e
    check-cast v2, Landroidx/core/app/Person;

    #@260
    .line 237
    iget-object v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@262
    invoke-virtual {v2}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    #@265
    move-result-object v2

    #@266
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    #@269
    goto :goto_254

    #@26a
    .line 240
    :cond_26a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@26c
    const/16 v2, 0x1d

    #@26e
    if-lt v0, v2, :cond_291

    #@270
    .line 241
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@272
    iget-boolean v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    #@274
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    #@277
    .line 244
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@279
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

    #@27b
    .line 245
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    #@27e
    move-result-object v2

    #@27f
    .line 244
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    #@282
    .line 246
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    #@284
    if-eqz v0, :cond_291

    #@286
    .line 247
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@288
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    #@28a
    invoke-virtual {v2}, Landroidx/core/content/LocusIdCompat;->toLocusId()Landroid/content/LocusId;

    #@28d
    move-result-object v2

    #@28e
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setLocusId(Landroid/content/LocusId;)Landroid/app/Notification$Builder;

    #@291
    .line 250
    :cond_291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@293
    const/16 v2, 0x1f

    #@295
    if-lt v0, v2, :cond_2a2

    #@297
    .line 251
    iget v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    #@299
    if-eqz v0, :cond_2a2

    #@29b
    .line 252
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@29d
    iget v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    #@29f
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;

    #@2a2
    .line 256
    :cond_2a2
    iget-boolean p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    #@2a4
    if-eqz p1, :cond_2e6

    #@2a6
    .line 257
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    #@2a8
    iget-boolean p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    #@2aa
    if-eqz p1, :cond_2af

    #@2ac
    .line 258
    iput v4, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    #@2ae
    goto :goto_2b1

    #@2af
    .line 260
    :cond_2af
    iput v5, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    #@2b1
    .line 263
    :goto_2b1
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@2b3
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    #@2b6
    .line 264
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@2b8
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    #@2bb
    .line 265
    iget p1, v1, Landroid/app/Notification;->defaults:I

    #@2bd
    and-int/lit8 p1, p1, -0x2

    #@2bf
    iput p1, v1, Landroid/app/Notification;->defaults:I

    #@2c1
    .line 266
    iget p1, v1, Landroid/app/Notification;->defaults:I

    #@2c3
    and-int/lit8 p1, p1, -0x3

    #@2c5
    iput p1, v1, Landroid/app/Notification;->defaults:I

    #@2c7
    .line 267
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@2c9
    iget v0, v1, Landroid/app/Notification;->defaults:I

    #@2cb
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@2ce
    .line 270
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    #@2d0
    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    #@2d2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2d5
    move-result p1

    #@2d6
    if-eqz p1, :cond_2df

    #@2d8
    .line 271
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@2da
    const-string v0, "silent"

    #@2dc
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@2df
    .line 273
    :cond_2df
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@2e1
    iget v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    #@2e3
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    #@2e6
    :cond_2e6
    return-void
.end method

.method private addAction(Landroidx/core/app/NotificationCompat$Action;)V
    .registers 7

    #@0
    .line 356
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    #@3
    move-result-object v0

    #@4
    .line 358
    new-instance v1, Landroid/app/Notification$Action$Builder;

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 359
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    #@b
    move-result-object v0

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    .line 360
    :goto_e
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    #@11
    move-result-object v2

    #@12
    .line 361
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@19
    .line 368
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    #@1c
    move-result-object v0

    #@1d
    if-eqz v0, :cond_33

    #@1f
    .line 370
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    #@22
    move-result-object v0

    #@23
    .line 369
    invoke-static {v0}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    #@26
    move-result-object v0

    #@27
    array-length v2, v0

    #@28
    const/4 v3, 0x0

    #@29
    :goto_29
    if-ge v3, v2, :cond_33

    #@2b
    aget-object v4, v0, v3

    #@2d
    .line 371
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    #@30
    add-int/lit8 v3, v3, 0x1

    #@32
    goto :goto_29

    #@33
    .line 375
    :cond_33
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    #@36
    move-result-object v0

    #@37
    if-eqz v0, :cond_43

    #@39
    .line 376
    new-instance v0, Landroid/os/Bundle;

    #@3b
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    #@3e
    move-result-object v2

    #@3f
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@42
    goto :goto_48

    #@43
    .line 378
    :cond_43
    new-instance v0, Landroid/os/Bundle;

    #@45
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@48
    :goto_48
    const-string v2, "android.support.allowGeneratedReplies"

    #@4a
    .line 381
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    #@4d
    move-result v3

    #@4e
    .line 380
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@51
    .line 383
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    #@54
    move-result v2

    #@55
    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    #@58
    const-string v2, "android.support.action.semanticAction"

    #@5a
    .line 387
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    #@5d
    move-result v3

    #@5e
    .line 386
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@61
    .line 388
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@63
    const/16 v3, 0x1c

    #@65
    if-lt v2, v3, :cond_6e

    #@67
    .line 389
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    #@6a
    move-result v2

    #@6b
    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    #@6e
    .line 392
    :cond_6e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@70
    const/16 v3, 0x1d

    #@72
    if-lt v2, v3, :cond_7b

    #@74
    .line 393
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->isContextual()Z

    #@77
    move-result v2

    #@78
    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    #@7b
    .line 396
    :cond_7b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@7d
    const/16 v3, 0x1f

    #@7f
    if-lt v2, v3, :cond_88

    #@81
    .line 397
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->isAuthenticationRequired()Z

    #@84
    move-result v2

    #@85
    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setAuthenticationRequired(Z)Landroid/app/Notification$Action$Builder;

    #@88
    :cond_88
    const-string v2, "android.support.action.showsUserInterface"

    #@8a
    .line 401
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getShowsUserInterface()Z

    #@8d
    move-result p1

    #@8e
    .line 400
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@91
    .line 402
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    #@94
    .line 403
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@96
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    #@9d
    return-void
.end method

.method private static combineLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_3

    #@2
    return-object p1

    #@3
    :cond_3
    if-nez p1, :cond_6

    #@5
    return-object p0

    #@6
    .line 287
    :cond_6
    new-instance v0, Landroidx/collection/ArraySet;

    #@8
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@f
    move-result v2

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    #@14
    .line 288
    invoke-virtual {v0, p0}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@17
    .line 289
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@1a
    .line 290
    new-instance p0, Ljava/util/ArrayList;

    #@1c
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1f
    return-object p0
.end method

.method private static getPeople(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/Person;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 298
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@9
    move-result v1

    #@a
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 299
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object p0

    #@11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_25

    #@17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroidx/core/app/Person;

    #@1d
    .line 300
    invoke-virtual {v1}, Landroidx/core/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_11

    #@25
    :cond_25
    return-object v0
.end method

.method private removeSoundAndVibration(Landroid/app/Notification;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 536
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@3
    .line 537
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    #@5
    .line 538
    iget v0, p1, Landroid/app/Notification;->defaults:I

    #@7
    and-int/lit8 v0, v0, -0x2

    #@9
    iput v0, p1, Landroid/app/Notification;->defaults:I

    #@b
    .line 539
    iget v0, p1, Landroid/app/Notification;->defaults:I

    #@d
    and-int/lit8 v0, v0, -0x3

    #@f
    iput v0, p1, Landroid/app/Notification;->defaults:I

    #@11
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .registers 4

    #@0
    .line 315
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    #@2
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 317
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V

    #@9
    :cond_9
    if-eqz v0, :cond_10

    #@b
    .line 321
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    #@e
    move-result-object v1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v1, 0x0

    #@11
    .line 323
    :goto_11
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->buildInternal()Landroid/app/Notification;

    #@14
    move-result-object v2

    #@15
    if-eqz v1, :cond_1a

    #@17
    .line 325
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@19
    goto :goto_26

    #@1a
    .line 326
    :cond_1a
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    #@1c
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    #@1e
    if-eqz v1, :cond_26

    #@20
    .line 327
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    #@22
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    #@24
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@26
    :cond_26
    :goto_26
    if-eqz v0, :cond_30

    #@28
    .line 330
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    #@2b
    move-result-object v1

    #@2c
    if-eqz v1, :cond_30

    #@2e
    .line 332
    iput-object v1, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@30
    :cond_30
    if-eqz v0, :cond_3e

    #@32
    .line 336
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    #@34
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    #@36
    .line 337
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Style;->makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    #@39
    move-result-object v1

    #@3a
    if-eqz v1, :cond_3e

    #@3c
    .line 339
    iput-object v1, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@3e
    :cond_3e
    if-eqz v0, :cond_49

    #@40
    .line 344
    invoke-static {v2}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@43
    move-result-object v1

    #@44
    if-eqz v1, :cond_49

    #@46
    .line 346
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    #@49
    :cond_49
    return-object v2
.end method

.method protected buildInternal()Landroid/app/Notification;
    .registers 2

    #@0
    .line 413
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .registers 2

    #@0
    .line 307
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    #@0
    .line 311
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

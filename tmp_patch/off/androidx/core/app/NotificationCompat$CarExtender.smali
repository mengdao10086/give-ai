.class public final Landroidx/core/app/NotificationCompat$CarExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    }
.end annotation


# static fields
.field static final EXTRA_CAR_EXTENDER:Ljava/lang/String; = "android.car.EXTENSIONS"

.field private static final EXTRA_COLOR:Ljava/lang/String; = "app_color"

.field private static final EXTRA_CONVERSATION:Ljava/lang/String; = "car_conversation"

.field static final EXTRA_INVISIBLE_ACTIONS:Ljava/lang/String; = "invisible_actions"

.field private static final EXTRA_LARGE_ICON:Ljava/lang/String; = "large_icon"

.field private static final KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_ON_READ:Ljava/lang/String; = "on_read"

.field private static final KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field private static final KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private mColor:I

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 6453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 6448
    iput v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .registers 4

    #@0
    .line 6462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 6448
    iput v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    #@6
    .line 6467
    invoke-static {p1}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@9
    move-result-object v1

    #@a
    if-nez v1, :cond_e

    #@c
    const/4 p1, 0x0

    #@d
    goto :goto_18

    #@e
    .line 6468
    :cond_e
    invoke-static {p1}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@11
    move-result-object p1

    #@12
    const-string v1, "android.car.EXTENSIONS"

    #@14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@17
    move-result-object p1

    #@18
    :goto_18
    if-eqz p1, :cond_38

    #@1a
    const-string v1, "large_icon"

    #@1c
    .line 6470
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/graphics/Bitmap;

    #@22
    iput-object v1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@24
    const-string v1, "app_color"

    #@26
    .line 6471
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    #@2c
    const-string v0, "car_conversation"

    #@2e
    .line 6473
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@31
    move-result-object p1

    #@32
    .line 6474
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$CarExtender;->getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    #@35
    move-result-object p1

    #@36
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    #@38
    :cond_38
    return-void
.end method

.method private static getBundleForUnreadConversation(Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/os/Bundle;
    .registers 9

    #@0
    .line 6535
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 6537
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    if-eqz v1, :cond_1b

    #@c
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    array-length v1, v1

    #@11
    const/4 v3, 0x1

    #@12
    if-le v1, v3, :cond_1b

    #@14
    .line 6538
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    aget-object v1, v1, v2

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    const/4 v1, 0x0

    #@1c
    .line 6540
    :goto_1c
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getMessages()[Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    array-length v3, v3

    #@21
    new-array v4, v3, [Landroid/os/Parcelable;

    #@23
    :goto_23
    if-ge v2, v3, :cond_3f

    #@25
    .line 6542
    new-instance v5, Landroid/os/Bundle;

    #@27
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@2a
    .line 6543
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getMessages()[Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    aget-object v6, v6, v2

    #@30
    const-string v7, "text"

    #@32
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@35
    const-string v6, "author"

    #@37
    .line 6544
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    .line 6545
    aput-object v5, v4, v2

    #@3c
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_23

    #@3f
    :cond_3f
    const-string v1, "messages"

    #@41
    .line 6547
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@44
    .line 6548
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getRemoteInput()Landroidx/core/app/RemoteInput;

    #@47
    move-result-object v1

    #@48
    if-eqz v1, :cond_7c

    #@4a
    .line 6550
    new-instance v2, Landroid/app/RemoteInput$Builder;

    #@4c
    .line 6551
    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-direct {v2, v3}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    #@53
    .line 6552
    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v2, v3}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    #@5a
    move-result-object v2

    #@5b
    .line 6553
    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v2, v3}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    #@62
    move-result-object v2

    #@63
    .line 6554
    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    #@66
    move-result v3

    #@67
    invoke-virtual {v2, v3}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    #@6a
    move-result-object v2

    #@6b
    .line 6555
    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v2, v1}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    #@72
    move-result-object v1

    #@73
    .line 6556
    invoke-virtual {v1}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    #@76
    move-result-object v1

    #@77
    const-string v2, "remote_input"

    #@79
    .line 6557
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@7c
    :cond_7c
    const-string v1, "on_reply"

    #@7e
    .line 6559
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getReplyPendingIntent()Landroid/app/PendingIntent;

    #@81
    move-result-object v2

    #@82
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@85
    const-string v1, "on_read"

    #@87
    .line 6560
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getReadPendingIntent()Landroid/app/PendingIntent;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@8e
    const-string v1, "participants"

    #@90
    .line 6561
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@97
    const-string v1, "timestamp"

    #@99
    .line 6562
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getLatestTimestamp()J

    #@9c
    move-result-wide v2

    #@9d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@a0
    return-object v0
.end method

.method private static getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .registers 22

    #@0
    move-object/from16 v0, p0

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return-object v1

    #@6
    :cond_6
    const-string v2, "messages"

    #@8
    .line 6484
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x1

    #@d
    const/4 v4, 0x0

    #@e
    if-eqz v2, :cond_34

    #@10
    .line 6487
    array-length v5, v2

    #@11
    new-array v6, v5, [Ljava/lang/String;

    #@13
    move v7, v4

    #@14
    :goto_14
    if-ge v7, v5, :cond_2e

    #@16
    .line 6490
    aget-object v8, v2, v7

    #@18
    instance-of v9, v8, Landroid/os/Bundle;

    #@1a
    if-nez v9, :cond_1e

    #@1c
    :goto_1c
    move v2, v4

    #@1d
    goto :goto_2f

    #@1e
    .line 6494
    :cond_1e
    check-cast v8, Landroid/os/Bundle;

    #@20
    const-string v9, "text"

    #@22
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v8

    #@26
    aput-object v8, v6, v7

    #@28
    if-nez v8, :cond_2b

    #@2a
    goto :goto_1c

    #@2b
    :cond_2b
    add-int/lit8 v7, v7, 0x1

    #@2d
    goto :goto_14

    #@2e
    :cond_2e
    move v2, v3

    #@2f
    :goto_2f
    if-eqz v2, :cond_33

    #@31
    move-object v8, v6

    #@32
    goto :goto_35

    #@33
    :cond_33
    return-object v1

    #@34
    :cond_34
    move-object v8, v1

    #@35
    :goto_35
    const-string v2, "on_read"

    #@37
    .line 6507
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@3a
    move-result-object v2

    #@3b
    move-object v11, v2

    #@3c
    check-cast v11, Landroid/app/PendingIntent;

    #@3e
    const-string v2, "on_reply"

    #@40
    .line 6508
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@43
    move-result-object v2

    #@44
    move-object v10, v2

    #@45
    check-cast v10, Landroid/app/PendingIntent;

    #@47
    const-string v2, "remote_input"

    #@49
    .line 6510
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@4c
    move-result-object v2

    #@4d
    check-cast v2, Landroid/app/RemoteInput;

    #@4f
    const-string v5, "participants"

    #@51
    .line 6512
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@54
    move-result-object v12

    #@55
    if-eqz v12, :cond_92

    #@57
    .line 6513
    array-length v5, v12

    #@58
    if-eq v5, v3, :cond_5b

    #@5a
    goto :goto_92

    #@5b
    :cond_5b
    if-eqz v2, :cond_85

    #@5d
    .line 6518
    new-instance v1, Landroidx/core/app/RemoteInput;

    #@5f
    invoke-virtual {v2}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    #@62
    move-result-object v14

    #@63
    .line 6519
    invoke-virtual {v2}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    #@66
    move-result-object v15

    #@67
    .line 6520
    invoke-virtual {v2}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    #@6a
    move-result-object v16

    #@6b
    .line 6521
    invoke-virtual {v2}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    #@6e
    move-result v17

    #@6f
    .line 6522
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@71
    const/16 v5, 0x1d

    #@73
    if-lt v3, v5, :cond_79

    #@75
    .line 6523
    invoke-virtual {v2}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    #@78
    move-result v4

    #@79
    :cond_79
    move/from16 v18, v4

    #@7b
    .line 6525
    invoke-virtual {v2}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    #@7e
    move-result-object v19

    #@7f
    const/16 v20, 0x0

    #@81
    move-object v13, v1

    #@82
    invoke-direct/range {v13 .. v20}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    #@85
    :cond_85
    move-object v9, v1

    #@86
    .line 6529
    new-instance v1, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    #@88
    const-string v2, "timestamp"

    #@8a
    .line 6530
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@8d
    move-result-wide v13

    #@8e
    move-object v7, v1

    #@8f
    invoke-direct/range {v7 .. v14}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroidx/core/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    #@92
    :cond_92
    :goto_92
    return-object v1
.end method


# virtual methods
.method public extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 5

    #@0
    .line 6578
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 6580
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@7
    if-eqz v1, :cond_e

    #@9
    const-string v2, "large_icon"

    #@b
    .line 6581
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@e
    .line 6583
    :cond_e
    iget v1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    #@10
    if-eqz v1, :cond_17

    #@12
    const-string v2, "app_color"

    #@14
    .line 6584
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@17
    .line 6587
    :cond_17
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    #@19
    if-eqz v1, :cond_24

    #@1b
    .line 6588
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$CarExtender;->getBundleForUnreadConversation(Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/os/Bundle;

    #@1e
    move-result-object v1

    #@1f
    const-string v2, "car_conversation"

    #@21
    .line 6589
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@24
    .line 6592
    :cond_24
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    #@27
    move-result-object v1

    #@28
    const-string v2, "android.car.EXTENSIONS"

    #@2a
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@2d
    return-object p1
.end method

.method public getColor()I
    .registers 2

    #@0
    .line 6616
    iget v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    #@2
    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .registers 2

    #@0
    .line 6640
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getUnreadConversation()Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 6668
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    #@2
    return-object v0
.end method

.method public setColor(I)Landroidx/core/app/NotificationCompat$CarExtender;
    .registers 2

    #@0
    .line 6605
    iput p1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    #@2
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$CarExtender;
    .registers 2

    #@0
    .line 6629
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    #@2
    return-object p0
.end method

.method public setUnreadConversation(Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;)Landroidx/core/app/NotificationCompat$CarExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 6655
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    #@2
    return-object p0
.end method

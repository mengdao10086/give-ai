.class public Landroidx/core/app/NotificationChannelCompat;
.super Ljava/lang/Object;
.source "NotificationChannelCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationChannelCompat$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "miscellaneous"

.field private static final DEFAULT_LIGHT_COLOR:I = 0x0

.field private static final DEFAULT_SHOW_BADGE:Z = true


# instance fields
.field mAudioAttributes:Landroid/media/AudioAttributes;

.field private mBypassDnd:Z

.field private mCanBubble:Z

.field mConversationId:Ljava/lang/String;

.field mDescription:Ljava/lang/String;

.field mGroupId:Ljava/lang/String;

.field final mId:Ljava/lang/String;

.field mImportance:I

.field private mImportantConversation:Z

.field mLightColor:I

.field mLights:Z

.field private mLockscreenVisibility:I

.field mName:Ljava/lang/CharSequence;

.field mParentId:Ljava/lang/String;

.field mShowBadge:Z

.field mSound:Landroid/net/Uri;

.field mVibrationEnabled:Z

.field mVibrationPattern:[J


# direct methods
.method constructor <init>(Landroid/app/NotificationChannel;)V
    .registers 5

    #@0
    .line 284
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v0, v1}, Landroidx/core/app/NotificationChannelCompat;-><init>(Ljava/lang/String;I)V

    #@b
    .line 286
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    #@11
    .line 287
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    #@17
    .line 288
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    #@1d
    .line 289
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    #@20
    move-result v0

    #@21
    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    #@23
    .line 290
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    #@29
    .line 291
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@2f
    .line 292
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    #@32
    move-result v0

    #@33
    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    #@35
    .line 293
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    #@38
    move-result v0

    #@39
    iput v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    #@3b
    .line 294
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    #@3e
    move-result v0

    #@3f
    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    #@41
    .line 295
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    #@47
    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@49
    const/16 v1, 0x1e

    #@4b
    if-lt v0, v1, :cond_59

    #@4d
    .line 297
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    #@53
    .line 298
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    #@59
    .line 301
    :cond_59
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    #@5c
    move-result v0

    #@5d
    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mBypassDnd:Z

    #@5f
    .line 302
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    #@62
    move-result v0

    #@63
    iput v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLockscreenVisibility:I

    #@65
    .line 303
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@67
    const/16 v2, 0x1d

    #@69
    if-lt v0, v2, :cond_71

    #@6b
    .line 304
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBubble()Z

    #@6e
    move-result v0

    #@6f
    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mCanBubble:Z

    #@71
    .line 306
    :cond_71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@73
    if-lt v0, v1, :cond_7b

    #@75
    .line 307
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    #@78
    move-result p1

    #@79
    iput-boolean p1, p0, Landroidx/core/app/NotificationChannelCompat;->mImportantConversation:Z

    #@7b
    :cond_7b
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    #@0
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 59
    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    #@6
    .line 60
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #@8
    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    #@a
    const/4 v0, 0x0

    #@b
    .line 63
    iput v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    #@d
    .line 275
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object p1

    #@11
    check-cast p1, Ljava/lang/String;

    #@13
    iput-object p1, p0, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    #@15
    .line 276
    iput p2, p0, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    #@17
    .line 278
    sget-object p1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@19
    iput-object p1, p0, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@1b
    return-void
.end method


# virtual methods
.method public canBubble()Z
    .registers 2

    #@0
    .line 508
    iget-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mCanBubble:Z

    #@2
    return v0
.end method

.method public canBypassDnd()Z
    .registers 2

    #@0
    .line 485
    iget-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mBypassDnd:Z

    #@2
    return v0
.end method

.method public canShowBadge()Z
    .registers 2

    #@0
    .line 444
    iget-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    #@2
    return v0
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    #@0
    .line 403
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@2
    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 2

    #@0
    .line 474
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    .line 374
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .registers 2

    #@0
    .line 454
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    .line 358
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getImportance()I
    .registers 2

    #@0
    .line 387
    iget v0, p0, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    #@2
    return v0
.end method

.method public getLightColor()I
    .registers 2

    #@0
    .line 418
    iget v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    #@2
    return v0
.end method

.method public getLockscreenVisibility()I
    .registers 2

    #@0
    .line 497
    iget v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLockscreenVisibility:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 366
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method getNotificationChannel()Landroid/app/NotificationChannel;
    .registers 5

    #@0
    .line 320
    new-instance v0, Landroid/app/NotificationChannel;

    #@2
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    #@6
    iget v3, p0, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    #@8
    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    #@b
    .line 321
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    #@10
    .line 322
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    #@15
    .line 323
    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    #@17
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    #@1a
    .line 324
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    #@1c
    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    #@21
    .line 325
    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    #@23
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    #@26
    .line 326
    iget v1, p0, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    #@28
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    #@2b
    .line 327
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    #@2d
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    #@30
    .line 328
    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    #@32
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    #@35
    .line 329
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@37
    const/16 v2, 0x1e

    #@39
    if-lt v1, v2, :cond_46

    #@3b
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    #@3d
    if-eqz v1, :cond_46

    #@3f
    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    #@41
    if-eqz v2, :cond_46

    #@43
    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    #@46
    :cond_46
    return-object v0
.end method

.method public getParentChannelId()Ljava/lang/String;
    .registers 2

    #@0
    .line 464
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSound()Landroid/net/Uri;
    .registers 2

    #@0
    .line 395
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getVibrationPattern()[J
    .registers 2

    #@0
    .line 434
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    #@2
    return-object v0
.end method

.method public isImportantConversation()Z
    .registers 2

    #@0
    .line 523
    iget-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mImportantConversation:Z

    #@2
    return v0
.end method

.method public shouldShowLights()Z
    .registers 2

    #@0
    .line 410
    iget-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    #@2
    return v0
.end method

.method public shouldVibrate()Z
    .registers 2

    #@0
    .line 425
    iget-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    #@2
    return v0
.end method

.method public toBuilder()Landroidx/core/app/NotificationChannelCompat$Builder;
    .registers 4

    #@0
    .line 340
    new-instance v0, Landroidx/core/app/NotificationChannelCompat$Builder;

    #@2
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    #@4
    iget v2, p0, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    #@6
    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;-><init>(Ljava/lang/String;I)V

    #@9
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    #@b
    .line 341
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationChannelCompat$Builder;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    #@11
    .line 342
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setDescription(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    #@17
    .line 343
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    #@1a
    move-result-object v0

    #@1b
    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    #@1d
    .line 344
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setShowBadge(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    #@23
    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@25
    .line 345
    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroidx/core/app/NotificationChannelCompat$Builder;

    #@28
    move-result-object v0

    #@29
    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    #@2b
    .line 346
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setLightsEnabled(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    #@2e
    move-result-object v0

    #@2f
    iget v1, p0, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    #@31
    .line 347
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setLightColor(I)Landroidx/core/app/NotificationChannelCompat$Builder;

    #@34
    move-result-object v0

    #@35
    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    #@37
    .line 348
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setVibrationEnabled(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    #@3a
    move-result-object v0

    #@3b
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    #@3d
    .line 349
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setVibrationPattern([J)Landroidx/core/app/NotificationChannelCompat$Builder;

    #@40
    move-result-object v0

    #@41
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    #@43
    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    #@45
    .line 350
    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setConversationId(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    #@48
    move-result-object v0

    #@49
    return-object v0
.end method

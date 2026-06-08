.class public Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/NotificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelConfig"
.end annotation


# static fields
.field public static final DEFAULT_CHANNEL_CONFIG:Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;


# instance fields
.field private mNotificationChannel:Landroid/app/NotificationChannel;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 175
    new-instance v0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;

    #@2
    .line 176
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    const/4 v3, 0x3

    #@13
    invoke-direct {v0, v1, v2, v3}, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    #@16
    sput-object v0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->DEFAULT_CHANNEL_CONFIG:Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;

    #@18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 5

    #@0
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 183
    new-instance v0, Landroid/app/NotificationChannel;

    #@5
    invoke-direct {v0, p1, p2, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    #@8
    iput-object v0, p0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    #@a
    return-void
.end method

.method static synthetic access$000(Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;)Landroid/app/NotificationChannel;
    .registers 1

    #@0
    .line 173
    iget-object p0, p0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    #@2
    return-object p0
.end method


# virtual methods
.method public getNotificationChannel()Landroid/app/NotificationChannel;
    .registers 2

    #@0
    .line 188
    iget-object v0, p0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    #@2
    return-object v0
.end method

.method public setBypassDnd(Z)Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;
    .registers 3

    #@0
    .line 199
    iget-object v0, p0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    #@5
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;
    .registers 3

    #@0
    .line 212
    iget-object v0, p0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;
    .registers 3

    #@0
    .line 231
    iget-object v0, p0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public setImportance(I)Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;
    .registers 3

    #@0
    .line 247
    iget-object v0, p0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setImportance(I)V

    #@5
    return-object p0
.end method

.method public setLightColor(I)Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;
    .registers 3

    #@0
    .line 261
    iget-object v0, p0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    #@5
    return-object p0
.end method

.method public setLockscreenVisibility(I)Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;
    .registers 3

    #@0
    .line 274
    iget-object v0, p0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    #@5
    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;
    .registers 3

    #@0
    .line 287
    iget-object v0, p0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    #@5
    return-object p0
.end method

.method public setShowBadge(Z)Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;
    .registers 3

    #@0
    .line 303
    iget-object v0, p0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    #@5
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;
    .registers 4

    #@0
    .line 318
    iget-object v0, p0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    #@5
    return-object p0
.end method

.method public setVibrationPattern([J)Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;
    .registers 3

    #@0
    .line 333
    iget-object v0, p0, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    #@5
    return-object p0
.end method

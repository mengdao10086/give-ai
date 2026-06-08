.class public Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadConversation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mLatestTimestamp:J

.field private final mMessages:[Ljava/lang/String;

.field private final mParticipants:[Ljava/lang/String;

.field private final mReadPendingIntent:Landroid/app/PendingIntent;

.field private final mRemoteInput:Landroidx/core/app/RemoteInput;

.field private final mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroidx/core/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V
    .registers 8

    #@0
    .line 6689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 6690
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    #@5
    .line 6691
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mRemoteInput:Landroidx/core/app/RemoteInput;

    #@7
    .line 6692
    iput-object p4, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    #@9
    .line 6693
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    #@b
    .line 6694
    iput-object p5, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@d
    .line 6695
    iput-wide p6, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mLatestTimestamp:J

    #@f
    return-void
.end method


# virtual methods
.method public getLatestTimestamp()J
    .registers 3

    #@0
    .line 6747
    iget-wide v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mLatestTimestamp:J

    #@2
    return-wide v0
.end method

.method public getMessages()[Ljava/lang/String;
    .registers 2

    #@0
    .line 6702
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParticipant()Ljava/lang/String;
    .registers 3

    #@0
    .line 6740
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@2
    array-length v1, v0

    #@3
    if-lez v1, :cond_9

    #@5
    const/4 v1, 0x0

    #@6
    aget-object v0, v0, v1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public getParticipants()[Ljava/lang/String;
    .registers 2

    #@0
    .line 6733
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getReadPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    #@0
    .line 6726
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getRemoteInput()Landroidx/core/app/RemoteInput;
    .registers 2

    #@0
    .line 6710
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mRemoteInput:Landroidx/core/app/RemoteInput;

    #@2
    return-object v0
.end method

.method public getReplyPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    #@0
    .line 6718
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.class public final Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final KEY_EXTRAS_BUNDLE:Ljava/lang/String; = "extras"

.field static final KEY_NOTIFICATION_PERSON:Ljava/lang/String; = "sender_person"

.field static final KEY_PERSON:Ljava/lang/String; = "person"

.field static final KEY_SENDER:Ljava/lang/String; = "sender"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private mDataMimeType:Ljava/lang/String;

.field private mDataUri:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private final mPerson:Landroidx/core/app/Person;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V
    .registers 6

    #@0
    .line 4012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3997
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    #@a
    .line 4013
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    #@c
    .line 4014
    iput-wide p2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    #@e
    .line 4015
    iput-object p4, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    #@10
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 4034
    new-instance v0, Landroidx/core/app/Person$Builder;

    #@2
    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    #@5
    invoke-virtual {v0, p4}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    #@8
    move-result-object p4

    #@9
    invoke-virtual {p4}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    #@c
    move-result-object p4

    #@d
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    #@10
    return-void
.end method

.method static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    #@0
    .line 4156
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    new-array v0, v0, [Landroid/os/Bundle;

    #@6
    .line 4157
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x0

    #@b
    :goto_b
    if-ge v2, v1, :cond_1c

    #@d
    .line 4159
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    #@13
    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    #@16
    move-result-object v3

    #@17
    aput-object v3, v0, v2

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_b

    #@1c
    :cond_1c
    return-object v0
.end method

.method static getMessageFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .registers 11

    #@0
    const-string v0, "uri"

    #@2
    const-string v1, "extras"

    #@4
    const-string v2, "type"

    #@6
    const-string v3, "sender"

    #@8
    const-string v4, "sender_person"

    #@a
    const-string v5, "person"

    #@c
    const-string v6, "time"

    #@e
    const-string v7, "text"

    #@10
    const/4 v8, 0x0

    #@11
    .line 4182
    :try_start_11
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@14
    move-result v9

    #@15
    if-eqz v9, :cond_96

    #@17
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@1a
    move-result v9

    #@1b
    if-nez v9, :cond_1f

    #@1d
    goto/16 :goto_96

    #@1f
    .line 4187
    :cond_1f
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@22
    move-result v9

    #@23
    if-eqz v9, :cond_2e

    #@25
    .line 4189
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@28
    move-result-object v3

    #@29
    invoke-static {v3}, Landroidx/core/app/Person;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;

    #@2c
    move-result-object v3

    #@2d
    goto :goto_5e

    #@2e
    .line 4190
    :cond_2e
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_45

    #@34
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    #@36
    const/16 v9, 0x1c

    #@38
    if-lt v5, v9, :cond_45

    #@3a
    .line 4194
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@3d
    move-result-object v3

    #@3e
    check-cast v3, Landroid/app/Person;

    #@40
    .line 4193
    invoke-static {v3}, Landroidx/core/app/Person;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    #@43
    move-result-object v3

    #@44
    goto :goto_5e

    #@45
    .line 4195
    :cond_45
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@48
    move-result v4

    #@49
    if-eqz v4, :cond_5d

    #@4b
    .line 4197
    new-instance v4, Landroidx/core/app/Person$Builder;

    #@4d
    invoke-direct {v4}, Landroidx/core/app/Person$Builder;-><init>()V

    #@50
    .line 4198
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v4, v3}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    #@57
    move-result-object v3

    #@58
    .line 4199
    invoke-virtual {v3}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    #@5b
    move-result-object v3

    #@5c
    goto :goto_5e

    #@5d
    :cond_5d
    move-object v3, v8

    #@5e
    .line 4202
    :goto_5e
    new-instance v4, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    #@60
    .line 4203
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@63
    move-result-object v5

    #@64
    .line 4204
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@67
    move-result-wide v6

    #@68
    invoke-direct {v4, v5, v6, v7, v3}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    #@6b
    .line 4207
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@6e
    move-result v3

    #@6f
    if-eqz v3, :cond_84

    #@71
    .line 4208
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@74
    move-result v3

    #@75
    if-eqz v3, :cond_84

    #@77
    .line 4209
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    .line 4210
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@7e
    move-result-object v0

    #@7f
    check-cast v0, Landroid/net/Uri;

    #@81
    .line 4209
    invoke-virtual {v4, v2, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    #@84
    .line 4212
    :cond_84
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@87
    move-result v0

    #@88
    if-eqz v0, :cond_95

    #@8a
    .line 4213
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getExtras()Landroid/os/Bundle;

    #@8d
    move-result-object v0

    #@8e
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@91
    move-result-object p0

    #@92
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_95
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_95} :catch_96

    #@95
    :cond_95
    return-object v4

    #@96
    :catch_96
    :cond_96
    :goto_96
    return-object v8
.end method

.method static getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    #@0
    .line 4166
    new-instance v0, Ljava/util/ArrayList;

    #@2
    array-length v1, p0

    #@3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    const/4 v1, 0x0

    #@7
    .line 4167
    :goto_7
    array-length v2, p0

    #@8
    if-ge v1, v2, :cond_1e

    #@a
    .line 4168
    aget-object v2, p0, v1

    #@c
    instance-of v3, v2, Landroid/os/Bundle;

    #@e
    if-eqz v3, :cond_1b

    #@10
    .line 4169
    check-cast v2, Landroid/os/Bundle;

    #@12
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    #@15
    move-result-object v2

    #@16
    if-eqz v2, :cond_1b

    #@18
    .line 4171
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_7

    #@1e
    :cond_1e
    return-object v0
.end method

.method private toBundle()Landroid/os/Bundle;
    .registers 5

    #@0
    .line 4125
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 4126
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    #@7
    if-eqz v1, :cond_e

    #@9
    const-string v2, "text"

    #@b
    .line 4127
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@e
    :cond_e
    const-string v1, "time"

    #@10
    .line 4129
    iget-wide v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    #@12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@15
    .line 4130
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    #@17
    if-eqz v1, :cond_3f

    #@19
    const-string v2, "sender"

    #@1b
    .line 4133
    invoke-virtual {v1}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@22
    .line 4136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@24
    const/16 v2, 0x1c

    #@26
    if-lt v1, v2, :cond_34

    #@28
    .line 4137
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    #@2a
    invoke-virtual {v1}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    #@2d
    move-result-object v1

    #@2e
    const-string v2, "sender_person"

    #@30
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@33
    goto :goto_3f

    #@34
    .line 4139
    :cond_34
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    #@36
    invoke-virtual {v1}, Landroidx/core/app/Person;->toBundle()Landroid/os/Bundle;

    #@39
    move-result-object v1

    #@3a
    const-string v2, "person"

    #@3c
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3f
    .line 4142
    :cond_3f
    :goto_3f
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    #@41
    if-eqz v1, :cond_48

    #@43
    const-string v2, "type"

    #@45
    .line 4143
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 4145
    :cond_48
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    #@4a
    if-eqz v1, :cond_51

    #@4c
    const-string v2, "uri"

    #@4e
    .line 4146
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@51
    .line 4148
    :cond_51
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    #@53
    if-eqz v1, :cond_5a

    #@55
    const-string v2, "extras"

    #@57
    .line 4149
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@5a
    :cond_5a
    return-object v0
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .registers 2

    #@0
    .line 4112
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .registers 2

    #@0
    .line 4121
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    #@0
    .line 4089
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getPerson()Landroidx/core/app/Person;
    .registers 2

    #@0
    .line 4106
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    #@2
    return-object v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 4100
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-virtual {v0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 4078
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    #@0
    .line 4083
    iget-wide v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    #@2
    return-wide v0
.end method

.method public setData(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .registers 3

    #@0
    .line 4067
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    #@2
    .line 4068
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    #@4
    return-object p0
.end method

.method toAndroidMessage()Landroid/app/Notification$MessagingStyle$Message;
    .registers 7

    #@0
    .line 4231
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    #@3
    move-result-object v0

    #@4
    .line 4233
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v2, 0x1c

    #@8
    const/4 v3, 0x0

    #@9
    if-lt v1, v2, :cond_20

    #@b
    .line 4234
    new-instance v1, Landroid/app/Notification$MessagingStyle$Message;

    #@d
    .line 4235
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getTimestamp()J

    #@14
    move-result-wide v4

    #@15
    if-nez v0, :cond_18

    #@17
    goto :goto_1c

    #@18
    .line 4236
    :cond_18
    invoke-virtual {v0}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    #@1b
    move-result-object v3

    #@1c
    :goto_1c
    invoke-direct {v1, v2, v4, v5, v3}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    #@1f
    goto :goto_34

    #@20
    .line 4238
    :cond_20
    new-instance v1, Landroid/app/Notification$MessagingStyle$Message;

    #@22
    .line 4239
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getTimestamp()J

    #@29
    move-result-wide v4

    #@2a
    if-nez v0, :cond_2d

    #@2c
    goto :goto_31

    #@2d
    .line 4240
    :cond_2d
    invoke-virtual {v0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    #@30
    move-result-object v3

    #@31
    :goto_31
    invoke-direct {v1, v2, v4, v5, v3}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    #@34
    .line 4243
    :goto_34
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    if-eqz v0, :cond_45

    #@3a
    .line 4244
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v0, v2}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    #@45
    :cond_45
    return-object v1
.end method

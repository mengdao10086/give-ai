.class public Landroidx/core/app/NotificationCompat$MessagingStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    }
.end annotation


# static fields
.field public static final MAXIMUM_RETAINED_MESSAGES:I = 0x19

.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String; = "androidx.core.app.NotificationCompat$MessagingStyle"


# instance fields
.field private mConversationTitle:Ljava/lang/CharSequence;

.field private final mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mIsGroupConversation:Ljava/lang/Boolean;

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUser:Landroidx/core/app/Person;


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 3518
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    #@3
    .line 3511
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@a
    .line 3512
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    #@11
    return-void
.end method

.method public constructor <init>(Landroidx/core/app/Person;)V
    .registers 3

    #@0
    .line 3540
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    #@3
    .line 3511
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@a
    .line 3512
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    #@11
    .line 3541
    invoke-virtual {p1}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1e

    #@1b
    .line 3544
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    #@1d
    return-void

    #@1e
    .line 3542
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@20
    const-string v0, "User\'s name must not be empty."

    #@22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw p1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3528
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    #@3
    .line 3511
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@a
    .line 3512
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    #@11
    .line 3529
    new-instance v0, Landroidx/core/app/Person$Builder;

    #@13
    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    #@16
    invoke-virtual {v0, p1}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {p1}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    #@1d
    move-result-object p1

    #@1e
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    #@20
    return-void
.end method

.method public static extractMessagingStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .registers 2

    #@0
    .line 3748
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Style;->extractStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Style;

    #@3
    move-result-object p0

    #@4
    .line 3749
    instance-of v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 3750
    check-cast p0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    #@a
    return-object p0

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    return-object p0
.end method

.method private findLatestIncomingMessage()Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .registers 4

    #@0
    .line 3853
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_2a

    #@a
    .line 3854
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    #@12
    .line 3856
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    #@15
    move-result-object v2

    #@16
    if-eqz v2, :cond_27

    #@18
    .line 3857
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_27

    #@26
    return-object v1

    #@27
    :cond_27
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_8

    #@2a
    .line 3861
    :cond_2a
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@2c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@2f
    move-result v0

    #@30
    if-nez v0, :cond_41

    #@32
    .line 3863
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@34
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@37
    move-result v1

    #@38
    add-int/lit8 v1, v1, -0x1

    #@3a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    #@40
    return-object v0

    #@41
    :cond_41
    const/4 v0, 0x0

    #@42
    return-object v0
.end method

.method private hasMessagesWithoutSender()Z
    .registers 5

    #@0
    .line 3869
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    sub-int/2addr v0, v1

    #@8
    :goto_8
    if-ltz v0, :cond_26

    #@a
    .line 3870
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@c
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    #@12
    .line 3871
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    #@15
    move-result-object v3

    #@16
    if-eqz v3, :cond_23

    #@18
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    #@1f
    move-result-object v2

    #@20
    if-nez v2, :cond_23

    #@22
    return v1

    #@23
    :cond_23
    add-int/lit8 v0, v0, -0x1

    #@25
    goto :goto_8

    #@26
    :cond_26
    const/4 v0, 0x0

    #@27
    return v0
.end method

.method private makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;
    .registers 9

    #@0
    .line 3904
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@8
    move-result-object v4

    #@9
    const/4 v5, 0x0

    #@a
    move-object v0, v6

    #@b
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    #@e
    return-object v6
.end method

.method private makeMessageLine(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .registers 9

    #@0
    .line 3879
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    #@3
    move-result-object v0

    #@4
    .line 3880
    new-instance v1, Landroid/text/SpannableStringBuilder;

    #@6
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@9
    .line 3884
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    #@c
    move-result-object v2

    #@d
    const-string v3, ""

    #@f
    if-nez v2, :cond_13

    #@11
    move-object v2, v3

    #@12
    goto :goto_1b

    #@13
    :cond_13
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    #@1a
    move-result-object v2

    #@1b
    .line 3885
    :goto_1b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1e
    move-result v4

    #@1f
    const/high16 v5, -0x1000000

    #@21
    if-eqz v4, :cond_38

    #@23
    .line 3886
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    #@25
    invoke-virtual {v2}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    #@28
    move-result-object v2

    #@29
    .line 3887
    iget-object v4, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@2b
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_38

    #@31
    .line 3888
    iget-object v4, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@33
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    #@36
    move-result v4

    #@37
    move v5, v4

    #@38
    .line 3891
    :cond_38
    invoke-virtual {v0, v2}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3b
    move-result-object v2

    #@3c
    .line 3892
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@3f
    .line 3893
    invoke-direct {p0, v5}, Landroidx/core/app/NotificationCompat$MessagingStyle;->makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;

    #@42
    move-result-object v4

    #@43
    .line 3894
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    #@46
    move-result v5

    #@47
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@4a
    move-result v2

    #@4b
    sub-int/2addr v5, v2

    #@4c
    .line 3895
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    #@4f
    move-result v2

    #@50
    const/16 v6, 0x21

    #@52
    .line 3893
    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@55
    .line 3897
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    #@58
    move-result-object v2

    #@59
    if-nez v2, :cond_5c

    #@5b
    goto :goto_60

    #@5c
    :cond_5c
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    #@5f
    move-result-object v3

    #@60
    :goto_60
    const-string p1, "  "

    #@62
    .line 3898
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@65
    move-result-object p1

    #@66
    invoke-virtual {v0, v3}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@6d
    return-object v1
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .registers 4

    #@0
    .line 3909
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    #@3
    .line 3910
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    #@5
    invoke-virtual {v0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    const-string v1, "android.selfDisplayName"

    #@b
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@e
    .line 3911
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    #@10
    invoke-virtual {v0}, Landroidx/core/app/Person;->toBundle()Landroid/os/Bundle;

    #@13
    move-result-object v0

    #@14
    const-string v1, "android.messagingStyleUser"

    #@16
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@19
    const-string v0, "android.hiddenConversationTitle"

    #@1b
    .line 3913
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@20
    .line 3914
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@22
    if-eqz v0, :cond_33

    #@24
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    #@26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_33

    #@2c
    const-string v0, "android.conversationTitle"

    #@2e
    .line 3915
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@30
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@33
    .line 3917
    :cond_33
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@38
    move-result v0

    #@39
    if-nez v0, :cond_46

    #@3b
    .line 3918
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@3d
    .line 3919
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    #@40
    move-result-object v0

    #@41
    const-string v1, "android.messages"

    #@43
    .line 3918
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@46
    .line 3921
    :cond_46
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    #@48
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@4b
    move-result v0

    #@4c
    if-nez v0, :cond_59

    #@4e
    .line 3922
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    #@50
    .line 3923
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    #@53
    move-result-object v0

    #@54
    const-string v1, "android.messages.historic"

    #@56
    .line 3922
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@59
    .line 3925
    :cond_59
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    #@5b
    if-eqz v0, :cond_66

    #@5d
    const-string v1, "android.isGroupConversation"

    #@5f
    .line 3926
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@62
    move-result v0

    #@63
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@66
    :cond_66
    return-void
.end method

.method public addHistoricMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .registers 3

    #@0
    if-eqz p1, :cond_17

    #@2
    .line 3667
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7
    .line 3668
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    #@9
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@c
    move-result p1

    #@d
    const/16 v0, 0x19

    #@f
    if-le p1, v0, :cond_17

    #@11
    .line 3669
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    #@13
    const/4 v0, 0x0

    #@14
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@17
    :cond_17
    return-object p0
.end method

.method public addMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .registers 3

    #@0
    if-eqz p1, :cond_17

    #@2
    .line 3644
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7
    .line 3645
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@9
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@c
    move-result p1

    #@d
    const/16 v0, 0x19

    #@f
    if-le p1, v0, :cond_17

    #@11
    .line 3646
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@13
    const/4 v0, 0x0

    #@14
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@17
    :cond_17
    return-object p0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .registers 6

    #@0
    .line 3631
    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    #@5
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    #@8
    return-object p0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3613
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@2
    new-instance v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    #@4
    new-instance v2, Landroidx/core/app/Person$Builder;

    #@6
    invoke-direct {v2}, Landroidx/core/app/Person$Builder;-><init>()V

    #@9
    .line 3614
    invoke-virtual {v2, p4}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    #@c
    move-result-object p4

    #@d
    invoke-virtual {p4}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    #@10
    move-result-object p4

    #@11
    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    #@14
    .line 3613
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    .line 3615
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@19
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@1c
    move-result p1

    #@1d
    const/16 p2, 0x19

    #@1f
    if-le p1, p2, :cond_27

    #@21
    .line 3616
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@23
    const/4 p2, 0x0

    #@24
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@27
    :cond_27
    return-object p0
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 6

    #@0
    .line 3775
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->isGroupConversation()Z

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setGroupConversation(Z)Landroidx/core/app/NotificationCompat$MessagingStyle;

    #@7
    .line 3779
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@9
    const/16 v1, 0x1c

    #@b
    if-lt v0, v1, :cond_19

    #@d
    .line 3780
    new-instance v0, Landroid/app/Notification$MessagingStyle;

    #@f
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    #@11
    invoke-virtual {v2}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v0, v2}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    #@18
    goto :goto_24

    #@19
    .line 3782
    :cond_19
    new-instance v0, Landroid/app/Notification$MessagingStyle;

    #@1b
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    #@1d
    invoke-virtual {v2}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v0, v2}, Landroid/app/Notification$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    #@24
    .line 3785
    :goto_24
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v2

    #@2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_3e

    #@30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    #@36
    .line 3786
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->toAndroidMessage()Landroid/app/Notification$MessagingStyle$Message;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v0, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    #@3d
    goto :goto_2a

    #@3e
    .line 3790
    :cond_3e
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    #@40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v2

    #@44
    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v3

    #@48
    if-eqz v3, :cond_58

    #@4a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v3

    #@4e
    check-cast v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    #@50
    .line 3791
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->toAndroidMessage()Landroid/app/Notification$MessagingStyle$Message;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v0, v3}, Landroid/app/Notification$MessagingStyle;->addHistoricMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    #@57
    goto :goto_44

    #@58
    .line 3801
    :cond_58
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    #@5a
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@5d
    move-result v2

    #@5e
    if-nez v2, :cond_64

    #@60
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@62
    if-lt v2, v1, :cond_69

    #@64
    .line 3803
    :cond_64
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@66
    invoke-virtual {v0, v2}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    #@69
    .line 3808
    :cond_69
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6b
    if-lt v2, v1, :cond_76

    #@6d
    .line 3809
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    #@6f
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@72
    move-result v1

    #@73
    invoke-virtual {v0, v1}, Landroid/app/Notification$MessagingStyle;->setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;

    #@76
    .line 3811
    :cond_76
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    #@79
    move-result-object p1

    #@7a
    invoke-virtual {v0, p1}, Landroid/app/Notification$MessagingStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    #@7d
    return-void
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 3973
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    #@3
    const-string v0, "android.messagingStyleUser"

    #@5
    .line 3974
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@8
    const-string v0, "android.selfDisplayName"

    #@a
    .line 3975
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@d
    const-string v0, "android.conversationTitle"

    #@f
    .line 3976
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@12
    const-string v0, "android.hiddenConversationTitle"

    #@14
    .line 3977
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@17
    const-string v0, "android.messages"

    #@19
    .line 3978
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@1c
    const-string v0, "android.messages.historic"

    #@1e
    .line 3979
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@21
    const-string v0, "android.isGroupConversation"

    #@23
    .line 3980
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@26
    return-void
.end method

.method protected getClassName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "androidx.core.app.NotificationCompat$MessagingStyle"

    #@2
    return-object v0
.end method

.method public getConversationTitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 3588
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getHistoricMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    #@0
    .line 3686
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    #@0
    .line 3679
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getUser()Landroidx/core/app/Person;
    .registers 2

    #@0
    .line 3560
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    #@2
    return-object v0
.end method

.method public getUserDisplayName()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 3555
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    #@2
    invoke-virtual {v0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isGroupConversation()Z
    .registers 4

    #@0
    .line 3725
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_1d

    #@5
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@7
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@9
    .line 3726
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@c
    move-result-object v0

    #@d
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@f
    const/16 v2, 0x1c

    #@11
    if-ge v0, v2, :cond_1d

    #@13
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    #@15
    if-nez v0, :cond_1d

    #@17
    .line 3729
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@19
    if-eqz v0, :cond_1c

    #@1b
    const/4 v1, 0x1

    #@1c
    :cond_1c
    return v1

    #@1d
    .line 3733
    :cond_1d
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    #@1f
    if-eqz v0, :cond_25

    #@21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@24
    move-result v1

    #@25
    :cond_25
    return v1
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .registers 4

    #@0
    .line 3937
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V

    #@3
    .line 3938
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@8
    const-string v0, "android.messagingStyleUser"

    #@a
    .line 3940
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1b

    #@10
    .line 3942
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Landroidx/core/app/Person;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    #@1a
    goto :goto_30

    #@1b
    .line 3945
    :cond_1b
    new-instance v0, Landroidx/core/app/Person$Builder;

    #@1d
    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    #@20
    const-string v1, "android.selfDisplayName"

    #@22
    .line 3946
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    #@29
    move-result-object v0

    #@2a
    .line 3947
    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mUser:Landroidx/core/app/Person;

    #@30
    :goto_30
    const-string v0, "android.conversationTitle"

    #@32
    .line 3950
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@38
    if-nez v0, :cond_42

    #@3a
    const-string v0, "android.hiddenConversationTitle"

    #@3c
    .line 3952
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@3f
    move-result-object v0

    #@40
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@42
    :cond_42
    const-string v0, "android.messages"

    #@44
    .line 3954
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@47
    move-result-object v0

    #@48
    if-eqz v0, :cond_53

    #@4a
    .line 3956
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    #@4c
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    #@4f
    move-result-object v0

    #@50
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@53
    :cond_53
    const-string v0, "android.messages.historic"

    #@55
    .line 3958
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@58
    move-result-object v0

    #@59
    if-eqz v0, :cond_64

    #@5b
    .line 3960
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    #@5d
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    #@60
    move-result-object v0

    #@61
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@64
    :cond_64
    const-string v0, "android.isGroupConversation"

    #@66
    .line 3962
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@69
    move-result v1

    #@6a
    if-eqz v1, :cond_76

    #@6c
    .line 3963
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@6f
    move-result p1

    #@70
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@73
    move-result-object p1

    #@74
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    #@76
    :cond_76
    return-void
.end method

.method public setConversationTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .registers 2

    #@0
    .line 3579
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@2
    return-object p0
.end method

.method public setGroupConversation(Z)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .registers 2

    #@0
    .line 3703
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle;->mIsGroupConversation:Ljava/lang/Boolean;

    #@6
    return-object p0
.end method

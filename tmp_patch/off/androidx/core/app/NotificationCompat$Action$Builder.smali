.class public final Landroidx/core/app/NotificationCompat$Action$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowGeneratedReplies:Z

.field private mAuthenticationRequired:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private final mIntent:Landroid/app/PendingIntent;

.field private mIsContextual:Z

.field private mRemoteInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private mSemanticAction:I

.field private mShowsUserInterface:Z

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 16

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    goto :goto_a

    #@4
    :cond_4
    const-string v1, ""

    #@6
    .line 4912
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    #@9
    move-result-object v0

    #@a
    :goto_a
    move-object v2, v0

    #@b
    new-instance v5, Landroid/os/Bundle;

    #@d
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@10
    const/4 v6, 0x0

    #@11
    const/4 v7, 0x1

    #@12
    const/4 v8, 0x0

    #@13
    const/4 v9, 0x1

    #@14
    const/4 v10, 0x0

    #@15
    const/4 v11, 0x0

    #@16
    move-object v1, p0

    #@17
    move-object v3, p2

    #@18
    move-object v4, p3

    #@19
    invoke-direct/range {v1 .. v11}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    #@1c
    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Action;)V
    .registers 13

    #@0
    .line 4928
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    #@6
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    #@8
    new-instance v4, Landroid/os/Bundle;

    #@a
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    #@c
    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@f
    .line 4930
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    #@16
    move-result v6

    #@17
    .line 4931
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    #@1a
    move-result v7

    #@1b
    iget-boolean v8, p1, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    #@1d
    .line 4932
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->isContextual()Z

    #@20
    move-result v9

    #@21
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->isAuthenticationRequired()Z

    #@24
    move-result v10

    #@25
    move-object v0, p0

    #@26
    .line 4928
    invoke-direct/range {v0 .. v10}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    #@29
    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 15

    #@0
    .line 4901
    new-instance v4, Landroid/os/Bundle;

    #@2
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v6, 0x1

    #@7
    const/4 v7, 0x0

    #@8
    const/4 v8, 0x1

    #@9
    const/4 v9, 0x0

    #@a
    const/4 v10, 0x0

    #@b
    move-object v0, p0

    #@c
    move-object v1, p1

    #@d
    move-object v2, p2

    #@e
    move-object v3, p3

    #@f
    invoke-direct/range {v0 .. v10}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    #@12
    return-void
.end method

.method private constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZZ)V
    .registers 12

    #@0
    .line 4939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 4841
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    #@6
    .line 4845
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    #@8
    .line 4940
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@a
    .line 4941
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@d
    move-result-object p1

    #@e
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    #@10
    .line 4942
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    #@12
    .line 4943
    iput-object p4, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    #@14
    if-nez p5, :cond_18

    #@16
    const/4 p1, 0x0

    #@17
    goto :goto_21

    #@18
    .line 4944
    :cond_18
    new-instance p1, Ljava/util/ArrayList;

    #@1a
    .line 4945
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1d
    move-result-object p2

    #@1e
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@21
    :goto_21
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@23
    .line 4946
    iput-boolean p6, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    #@25
    .line 4947
    iput p7, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    #@27
    .line 4948
    iput-boolean p8, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    #@29
    .line 4949
    iput-boolean p9, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    #@2b
    .line 4950
    iput-boolean p10, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAuthenticationRequired:Z

    #@2d
    return-void
.end method

.method private checkContextualActionNullFields()V
    .registers 3

    #@0
    .line 5072
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 5074
    :cond_5
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    #@7
    if-eqz v0, :cond_a

    #@9
    return-void

    #@a
    .line 5075
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    const-string v1, "Contextual Actions must contain a valid PendingIntent"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
.end method

.method public static fromAndroidAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 6

    #@0
    .line 4859
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_18

    #@6
    .line 4860
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    #@d
    move-result-object v0

    #@e
    .line 4861
    new-instance v1, Landroidx/core/app/NotificationCompat$Action$Builder;

    #@10
    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@12
    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@14
    invoke-direct {v1, v0, v2, v3}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@17
    goto :goto_23

    #@18
    .line 4864
    :cond_18
    new-instance v1, Landroidx/core/app/NotificationCompat$Action$Builder;

    #@1a
    iget v0, p0, Landroid/app/Notification$Action;->icon:I

    #@1c
    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@1e
    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@20
    invoke-direct {v1, v0, v2, v3}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@23
    .line 4868
    :goto_23
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    #@26
    move-result-object v0

    #@27
    if-eqz v0, :cond_3c

    #@29
    .line 4869
    array-length v2, v0

    #@2a
    if-eqz v2, :cond_3c

    #@2c
    .line 4870
    array-length v2, v0

    #@2d
    const/4 v3, 0x0

    #@2e
    :goto_2e
    if-ge v3, v2, :cond_3c

    #@30
    aget-object v4, v0, v3

    #@32
    .line 4871
    invoke-static {v4}, Landroidx/core/app/RemoteInput;->fromPlatform(Landroid/app/RemoteInput;)Landroidx/core/app/RemoteInput;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    #@39
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_2e

    #@3c
    .line 4876
    :cond_3c
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    #@3f
    move-result v0

    #@40
    iput-boolean v0, v1, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    #@42
    .line 4878
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@44
    const/16 v2, 0x1c

    #@46
    if-lt v0, v2, :cond_4f

    #@48
    .line 4879
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getSemanticAction()I

    #@4b
    move-result v0

    #@4c
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;->setSemanticAction(I)Landroidx/core/app/NotificationCompat$Action$Builder;

    #@4f
    .line 4881
    :cond_4f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@51
    const/16 v2, 0x1d

    #@53
    if-lt v0, v2, :cond_5c

    #@55
    .line 4882
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isContextual()Z

    #@58
    move-result v0

    #@59
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;->setContextual(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    #@5c
    .line 4884
    :cond_5c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5e
    const/16 v2, 0x1f

    #@60
    if-lt v0, v2, :cond_69

    #@62
    .line 4885
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isAuthenticationRequired()Z

    #@65
    move-result p0

    #@66
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Action$Builder;->setAuthenticationRequired(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    #@69
    :cond_69
    return-object v1
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 3

    #@0
    if-eqz p1, :cond_7

    #@2
    .line 4962
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    #@4
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@7
    :cond_7
    return-object p0
.end method

.method public addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 3

    #@0
    .line 4984
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 4985
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@b
    :cond_b
    if-eqz p1, :cond_12

    #@d
    .line 4988
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    :cond_12
    return-object p0
.end method

.method public build()Landroidx/core/app/NotificationCompat$Action;
    .registers 18

    #@0
    move-object/from16 v0, p0

    #@2
    .line 5088
    invoke-direct/range {p0 .. p0}, Landroidx/core/app/NotificationCompat$Action$Builder;->checkContextualActionNullFields()V

    #@5
    .line 5090
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 5091
    new-instance v2, Ljava/util/ArrayList;

    #@c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 5092
    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    #@11
    if-eqz v3, :cond_31

    #@13
    .line 5093
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v3

    #@17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_31

    #@1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Landroidx/core/app/RemoteInput;

    #@23
    .line 5094
    invoke-virtual {v4}, Landroidx/core/app/RemoteInput;->isDataOnly()Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_2d

    #@29
    .line 5095
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_17

    #@2d
    .line 5097
    :cond_2d
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_17

    #@31
    .line 5101
    :cond_31
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@34
    move-result v3

    #@35
    const/4 v4, 0x0

    #@36
    if-eqz v3, :cond_3a

    #@38
    move-object v11, v4

    #@39
    goto :goto_47

    #@3a
    .line 5102
    :cond_3a
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@3d
    move-result v3

    #@3e
    new-array v3, v3, [Landroidx/core/app/RemoteInput;

    #@40
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, [Landroidx/core/app/RemoteInput;

    #@46
    move-object v11, v1

    #@47
    .line 5103
    :goto_47
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_4e

    #@4d
    goto :goto_5b

    #@4e
    .line 5104
    :cond_4e
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@51
    move-result v1

    #@52
    new-array v1, v1, [Landroidx/core/app/RemoteInput;

    #@54
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@57
    move-result-object v1

    #@58
    move-object v4, v1

    #@59
    check-cast v4, [Landroidx/core/app/RemoteInput;

    #@5b
    :goto_5b
    move-object v10, v4

    #@5c
    .line 5105
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    #@5e
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@60
    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    #@62
    iget-object v8, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    #@64
    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    #@66
    iget-boolean v12, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    #@68
    iget v13, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    #@6a
    iget-boolean v14, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    #@6c
    iget-boolean v15, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    #@6e
    iget-boolean v2, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAuthenticationRequired:Z

    #@70
    move-object v5, v1

    #@71
    move/from16 v16, v2

    #@73
    invoke-direct/range {v5 .. v16}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    #@76
    return-object v1
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Action$Extender;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 2

    #@0
    .line 5063
    invoke-interface {p1, p0}, Landroidx/core/app/NotificationCompat$Action$Extender;->extend(Landroidx/core/app/NotificationCompat$Action$Builder;)Landroidx/core/app/NotificationCompat$Action$Builder;

    #@3
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    #@0
    .line 4973
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public setAllowGeneratedReplies(Z)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 2

    #@0
    .line 5003
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    #@2
    return-object p0
.end method

.method public setAuthenticationRequired(Z)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 2

    #@0
    .line 5041
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAuthenticationRequired:Z

    #@2
    return-object p0
.end method

.method public setContextual(Z)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 2

    #@0
    .line 5026
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    #@2
    return-object p0
.end method

.method public setSemanticAction(I)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 2

    #@0
    .line 5016
    iput p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    #@2
    return-object p0
.end method

.method public setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;
    .registers 2

    #@0
    .line 5054
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    #@2
    return-object p0
.end method

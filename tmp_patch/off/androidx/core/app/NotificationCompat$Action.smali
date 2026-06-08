.class public Landroidx/core/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$Action$SemanticAction;,
        Landroidx/core/app/NotificationCompat$Action$WearableExtender;,
        Landroidx/core/app/NotificationCompat$Action$Extender;,
        Landroidx/core/app/NotificationCompat$Action$Builder;
    }
.end annotation


# static fields
.field static final EXTRA_SEMANTIC_ACTION:Ljava/lang/String; = "android.support.action.semanticAction"

.field static final EXTRA_SHOWS_USER_INTERFACE:Ljava/lang/String; = "android.support.action.showsUserInterface"

.field public static final SEMANTIC_ACTION_ARCHIVE:I = 0x5

.field public static final SEMANTIC_ACTION_CALL:I = 0xa

.field public static final SEMANTIC_ACTION_DELETE:I = 0x4

.field public static final SEMANTIC_ACTION_MARK_AS_READ:I = 0x2

.field public static final SEMANTIC_ACTION_MARK_AS_UNREAD:I = 0x3

.field public static final SEMANTIC_ACTION_MUTE:I = 0x6

.field public static final SEMANTIC_ACTION_NONE:I = 0x0

.field public static final SEMANTIC_ACTION_REPLY:I = 0x1

.field public static final SEMANTIC_ACTION_THUMBS_DOWN:I = 0x9

.field public static final SEMANTIC_ACTION_THUMBS_UP:I = 0x8

.field public static final SEMANTIC_ACTION_UNMUTE:I = 0x7


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mAllowGeneratedReplies:Z

.field private mAuthenticationRequired:Z

.field private final mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

.field final mExtras:Landroid/os/Bundle;

.field private mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private final mIsContextual:Z

.field private final mRemoteInputs:[Landroidx/core/app/RemoteInput;

.field private final mSemanticAction:I

.field mShowsUserInterface:Z

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 6

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
    .line 4683
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    #@9
    move-result-object v0

    #@a
    :goto_a
    invoke-direct {p0, v0, p2, p3}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@d
    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V
    .registers 26

    #@0
    move v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    if-nez v0, :cond_5

    #@4
    goto :goto_b

    #@5
    :cond_5
    const-string v2, ""

    #@7
    .line 4701
    invoke-static {v1, v2, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    #@a
    move-result-object v1

    #@b
    :goto_b
    move-object v3, v1

    #@c
    move-object v2, p0

    #@d
    move-object/from16 v4, p2

    #@f
    move-object/from16 v5, p3

    #@11
    move-object/from16 v6, p4

    #@13
    move-object/from16 v7, p5

    #@15
    move-object/from16 v8, p6

    #@17
    move/from16 v9, p7

    #@19
    move/from16 v10, p8

    #@1b
    move/from16 v11, p9

    #@1d
    move/from16 v12, p10

    #@1f
    move/from16 v13, p11

    #@21
    invoke-direct/range {v2 .. v13}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    #@24
    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 16

    #@0
    .line 4692
    new-instance v4, Landroid/os/Bundle;

    #@2
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v6, 0x0

    #@7
    const/4 v7, 0x1

    #@8
    const/4 v8, 0x0

    #@9
    const/4 v9, 0x1

    #@a
    const/4 v10, 0x0

    #@b
    const/4 v11, 0x0

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    move-object v2, p2

    #@f
    move-object v3, p3

    #@10
    invoke-direct/range {v0 .. v11}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    #@13
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V
    .registers 14

    #@0
    .line 4712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 4658
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    #@6
    .line 4713
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@8
    if-eqz p1, :cond_17

    #@a
    .line 4714
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x2

    #@f
    if-ne v0, v1, :cond_17

    #@11
    .line 4715
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    #@14
    move-result p1

    #@15
    iput p1, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    #@17
    .line 4717
    :cond_17
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1a
    move-result-object p1

    #@1b
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    #@1d
    .line 4718
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    #@1f
    if-eqz p4, :cond_22

    #@21
    goto :goto_27

    #@22
    .line 4719
    :cond_22
    new-instance p4, Landroid/os/Bundle;

    #@24
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    #@27
    :goto_27
    iput-object p4, p0, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    #@29
    .line 4720
    iput-object p5, p0, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    #@2b
    .line 4721
    iput-object p6, p0, Landroidx/core/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

    #@2d
    .line 4722
    iput-boolean p7, p0, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    #@2f
    .line 4723
    iput p8, p0, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    #@31
    .line 4724
    iput-boolean p9, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    #@33
    .line 4725
    iput-boolean p10, p0, Landroidx/core/app/NotificationCompat$Action;->mIsContextual:Z

    #@35
    .line 4726
    iput-boolean p11, p0, Landroidx/core/app/NotificationCompat$Action;->mAuthenticationRequired:Z

    #@37
    return-void
.end method


# virtual methods
.method public getActionIntent()Landroid/app/PendingIntent;
    .registers 2

    #@0
    .line 4754
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getAllowGeneratedReplies()Z
    .registers 2

    #@0
    .line 4769
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    #@2
    return v0
.end method

.method public getDataOnlyRemoteInputs()[Landroidx/core/app/RemoteInput;
    .registers 2

    #@0
    .line 4823
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    #@0
    .line 4761
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getIcon()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 4735
    iget v0, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    #@2
    return v0
.end method

.method public getIconCompat()Landroidx/core/graphics/drawable/IconCompat;
    .registers 4

    #@0
    .line 4743
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@2
    if-nez v0, :cond_11

    #@4
    iget v0, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    #@6
    if-eqz v0, :cond_11

    #@8
    const/4 v1, 0x0

    #@9
    const-string v2, ""

    #@b
    .line 4744
    invoke-static {v1, v2, v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@11
    .line 4746
    :cond_11
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@13
    return-object v0
.end method

.method public getRemoteInputs()[Landroidx/core/app/RemoteInput;
    .registers 2

    #@0
    .line 4789
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    #@2
    return-object v0
.end method

.method public getSemanticAction()I
    .registers 2

    #@0
    .line 4800
    iget v0, p0, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    #@2
    return v0
.end method

.method public getShowsUserInterface()Z
    .registers 2

    #@0
    .line 4831
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    #@2
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 4750
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public isAuthenticationRequired()Z
    .registers 2

    #@0
    .line 4780
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action;->mAuthenticationRequired:Z

    #@2
    return v0
.end method

.method public isContextual()Z
    .registers 2

    #@0
    .line 4809
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIsContextual:Z

    #@2
    return v0
.end method

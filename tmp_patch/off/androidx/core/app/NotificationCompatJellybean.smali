.class Landroidx/core/app/NotificationCompatJellybean;
.super Ljava/lang/Object;
.source "NotificationCompatJellybean.java"


# static fields
.field static final EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String; = "android.support.allowGeneratedReplies"

.field static final EXTRA_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String; = "android.support.dataRemoteInputs"

.field private static final KEY_ACTION_INTENT:Ljava/lang/String; = "actionIntent"

.field private static final KEY_ALLOWED_DATA_TYPES:Ljava/lang/String; = "allowedDataTypes"

.field private static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String; = "allowFreeFormInput"

.field private static final KEY_CHOICES:Ljava/lang/String; = "choices"

.field private static final KEY_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String; = "dataOnlyRemoteInputs"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_ICON:Ljava/lang/String; = "icon"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_REMOTE_INPUTS:Ljava/lang/String; = "remoteInputs"

.field private static final KEY_RESULT_KEY:Ljava/lang/String; = "resultKey"

.field private static final KEY_SEMANTIC_ACTION:Ljava/lang/String; = "semanticAction"

.field private static final KEY_SHOWS_USER_INTERFACE:Ljava/lang/String; = "showsUserInterface"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final TAG:Ljava/lang/String; = "NotificationCompat"

.field private static sActionIconField:Ljava/lang/reflect/Field;

.field private static sActionIntentField:Ljava/lang/reflect/Field;

.field private static sActionTitleField:Ljava/lang/reflect/Field;

.field private static sActionsAccessFailed:Z

.field private static sActionsField:Ljava/lang/reflect/Field;

.field private static final sActionsLock:Ljava/lang/Object;

.field private static sExtrasField:Ljava/lang/reflect/Field;

.field private static sExtrasFieldAccessFailed:Z

.field private static final sExtrasLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 59
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    #@7
    .line 63
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    #@e
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .line 73
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x0

    #@6
    :goto_6
    if-ge v2, v0, :cond_1d

    #@8
    .line 74
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Landroid/os/Bundle;

    #@e
    if-eqz v3, :cond_1a

    #@10
    if-nez v1, :cond_17

    #@12
    .line 77
    new-instance v1, Landroid/util/SparseArray;

    #@14
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@17
    .line 79
    :cond_17
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1a
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_6

    #@1d
    :cond_1d
    return-object v1
.end method

.method private static ensureActionReflectionReadyLocked()Z
    .registers 5

    #@0
    const-string v0, "Unable to access notification actions"

    #@2
    const-string v1, "NotificationCompat"

    #@4
    .line 214
    sget-boolean v2, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    #@6
    if-eqz v2, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    :cond_a
    const/4 v2, 0x1

    #@b
    .line 218
    :try_start_b
    sget-object v3, Landroidx/core/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    #@d
    if-nez v3, :cond_48

    #@f
    const-string v3, "android.app.Notification$Action"

    #@11
    .line 219
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@14
    move-result-object v3

    #@15
    const-string v4, "icon"

    #@17
    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1a
    move-result-object v4

    #@1b
    sput-object v4, Landroidx/core/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    #@1d
    const-string v4, "title"

    #@1f
    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@22
    move-result-object v4

    #@23
    sput-object v4, Landroidx/core/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    #@25
    const-string v4, "actionIntent"

    #@27
    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@2a
    move-result-object v3

    #@2b
    sput-object v3, Landroidx/core/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    #@2d
    .line 223
    const-class v3, Landroid/app/Notification;

    #@2f
    const-string v4, "actions"

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@34
    move-result-object v3

    #@35
    sput-object v3, Landroidx/core/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    #@37
    .line 224
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_3a} :catch_42
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_3a} :catch_3b

    #@3a
    goto :goto_48

    #@3b
    :catch_3b
    move-exception v3

    #@3c
    .line 230
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    .line 231
    sput-boolean v2, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    #@41
    goto :goto_48

    #@42
    :catch_42
    move-exception v3

    #@43
    .line 227
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@46
    .line 228
    sput-boolean v2, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    #@48
    .line 233
    :cond_48
    :goto_48
    sget-boolean v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    #@4a
    xor-int/2addr v0, v2

    #@4b
    return v0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput;
    .registers 10

    #@0
    const-string v0, "allowedDataTypes"

    #@2
    .line 280
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    .line 281
    new-instance v8, Ljava/util/HashSet;

    #@8
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    #@b
    if-eqz v0, :cond_21

    #@d
    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v0

    #@11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_21

    #@17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljava/lang/String;

    #@1d
    .line 284
    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@20
    goto :goto_11

    #@21
    .line 287
    :cond_21
    new-instance v0, Landroidx/core/app/RemoteInput;

    #@23
    const-string v1, "resultKey"

    #@25
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    const-string v1, "label"

    #@2b
    .line 288
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@2e
    move-result-object v3

    #@2f
    const-string v1, "choices"

    #@31
    .line 289
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    #@34
    move-result-object v4

    #@35
    const-string v1, "allowFreeFormInput"

    #@37
    .line 290
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@3a
    move-result v5

    #@3b
    const/4 v6, 0x0

    #@3c
    const-string v1, "extras"

    #@3e
    .line 292
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@41
    move-result-object v7

    #@42
    move-object v1, v0

    #@43
    invoke-direct/range {v1 .. v8}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    #@46
    return-object v0
.end method

.method private static fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 319
    :cond_4
    array-length v0, p0

    #@5
    new-array v0, v0, [Landroidx/core/app/RemoteInput;

    #@7
    const/4 v1, 0x0

    #@8
    .line 320
    :goto_8
    array-length v2, p0

    #@9
    if-ge v1, v2, :cond_16

    #@b
    .line 321
    aget-object v2, p0, v1

    #@d
    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput;

    #@10
    move-result-object v2

    #@11
    aput-object v2, v0, v1

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_8

    #@16
    :cond_16
    return-object v0
.end method

.method public static getAction(Landroid/app/Notification;I)Landroidx/core/app/NotificationCompat$Action;
    .registers 7

    #@0
    .line 170
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    const/4 v1, 0x0

    #@4
    .line 172
    :try_start_4
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    if-eqz v2, :cond_4b

    #@a
    .line 174
    aget-object v2, v2, p1

    #@c
    .line 176
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@f
    move-result-object p0

    #@10
    if-eqz p0, :cond_21

    #@12
    const-string v3, "android.support.actionExtras"

    #@14
    .line 178
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@17
    move-result-object p0

    #@18
    if-eqz p0, :cond_21

    #@1a
    .line 181
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object p0

    #@1e
    check-cast p0, Landroid/os/Bundle;

    #@20
    goto :goto_22

    #@21
    :cond_21
    move-object p0, v1

    #@22
    .line 184
    :goto_22
    sget-object p1, Landroidx/core/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    #@24
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@27
    move-result p1

    #@28
    sget-object v3, Landroidx/core/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    #@2a
    .line 185
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Ljava/lang/CharSequence;

    #@30
    sget-object v4, Landroidx/core/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    #@32
    .line 186
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Landroid/app/PendingIntent;

    #@38
    .line 184
    invoke-static {p1, v3, v2, p0}, Landroidx/core/app/NotificationCompatJellybean;->readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;

    #@3b
    move-result-object p0
    :try_end_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_3c} :catch_40
    .catchall {:try_start_4 .. :try_end_3c} :catchall_3e

    #@3c
    :try_start_3c
    monitor-exit v0

    #@3d
    return-object p0

    #@3e
    :catchall_3e
    move-exception p0

    #@3f
    goto :goto_4d

    #@40
    :catch_40
    move-exception p0

    #@41
    const-string p1, "NotificationCompat"

    #@43
    const-string v2, "Unable to access notification actions"

    #@45
    .line 190
    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    const/4 p0, 0x1

    #@49
    .line 191
    sput-boolean p0, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    #@4b
    .line 193
    :cond_4b
    monitor-exit v0

    #@4c
    return-object v1

    #@4d
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3c .. :try_end_4e} :catchall_3e

    #@4e
    throw p0
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .registers 2

    #@0
    .line 162
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 163
    :try_start_3
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    #@6
    move-result-object p0

    #@7
    if-eqz p0, :cond_b

    #@9
    .line 164
    array-length p0, p0

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    :goto_c
    monitor-exit v0

    #@d
    return p0

    #@e
    :catchall_e
    move-exception p0

    #@f
    .line 165
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    #@10
    throw p0
.end method

.method static getActionFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;
    .registers 16

    #@0
    const-string v0, "extras"

    #@2
    .line 238
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v1, :cond_f

    #@9
    const-string v3, "android.support.allowGeneratedReplies"

    #@b
    .line 241
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@e
    move-result v2

    #@f
    :cond_f
    move v10, v2

    #@10
    .line 243
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    #@12
    const-string v2, "icon"

    #@14
    .line 244
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@17
    move-result v4

    #@18
    const-string v2, "title"

    #@1a
    .line 245
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@1d
    move-result-object v5

    #@1e
    const-string v2, "actionIntent"

    #@20
    .line 246
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@23
    move-result-object v2

    #@24
    move-object v6, v2

    #@25
    check-cast v6, Landroid/app/PendingIntent;

    #@27
    .line 247
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@2a
    move-result-object v7

    #@2b
    const-string v0, "remoteInputs"

    #@2d
    .line 248
    invoke-static {p0, v0}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    #@30
    move-result-object v0

    #@31
    invoke-static {v0}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    #@34
    move-result-object v8

    #@35
    const-string v0, "dataOnlyRemoteInputs"

    #@37
    .line 249
    invoke-static {p0, v0}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    #@3a
    move-result-object v0

    #@3b
    invoke-static {v0}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    #@3e
    move-result-object v9

    #@3f
    const-string v0, "semanticAction"

    #@41
    .line 251
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@44
    move-result v11

    #@45
    const-string v0, "showsUserInterface"

    #@47
    .line 252
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@4a
    move-result v12

    #@4b
    const/4 v13, 0x0

    #@4c
    const/4 v14, 0x0

    #@4d
    move-object v3, v1

    #@4e
    invoke-direct/range {v3 .. v14}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    #@51
    return-object v1
.end method

.method private static getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;
    .registers 5

    #@0
    .line 198
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 199
    :try_start_3
    invoke-static {}, Landroidx/core/app/NotificationCompatJellybean;->ensureActionReflectionReadyLocked()Z

    #@6
    move-result v1

    #@7
    const/4 v2, 0x0

    #@8
    if-nez v1, :cond_c

    #@a
    .line 200
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_23

    #@b
    return-object v2

    #@c
    .line 203
    :cond_c
    :try_start_c
    sget-object v1, Landroidx/core/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object p0

    #@12
    check-cast p0, [Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_14} :catch_16
    .catchall {:try_start_c .. :try_end_14} :catchall_23

    #@14
    :try_start_14
    monitor-exit v0

    #@15
    return-object p0

    #@16
    :catch_16
    move-exception p0

    #@17
    const-string v1, "NotificationCompat"

    #@19
    const-string v3, "Unable to access notification actions"

    #@1b
    .line 205
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    const/4 p0, 0x1

    #@1f
    .line 206
    sput-boolean p0, Landroidx/core/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    #@21
    .line 207
    monitor-exit v0

    #@22
    return-object v2

    #@23
    :catchall_23
    move-exception p0

    #@24
    .line 209
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    #@25
    throw p0
.end method

.method private static getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;
    .registers 5

    #@0
    .line 344
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 345
    instance-of v1, v0, [Landroid/os/Bundle;

    #@6
    if-nez v1, :cond_18

    #@8
    if-nez v0, :cond_b

    #@a
    goto :goto_18

    #@b
    .line 348
    :cond_b
    array-length v1, v0

    #@c
    const-class v2, [Landroid/os/Bundle;

    #@e
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Landroid/os/Bundle;

    #@14
    .line 350
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@17
    return-object v0

    #@18
    .line 346
    :cond_18
    :goto_18
    check-cast v0, [Landroid/os/Bundle;

    #@1a
    return-object v0
.end method

.method static getBundleForAction(Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .registers 5

    #@0
    .line 258
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 259
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    #@8
    move-result-object v1

    #@9
    if-eqz v1, :cond_10

    #@b
    .line 260
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    #@e
    move-result v1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v1, 0x0

    #@11
    :goto_11
    const-string v2, "icon"

    #@13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@16
    const-string v1, "title"

    #@18
    .line 261
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@1f
    const-string v1, "actionIntent"

    #@21
    .line 262
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@28
    .line 264
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    #@2b
    move-result-object v1

    #@2c
    if-eqz v1, :cond_38

    #@2e
    .line 265
    new-instance v1, Landroid/os/Bundle;

    #@30
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    #@33
    move-result-object v2

    #@34
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@37
    goto :goto_3d

    #@38
    .line 267
    :cond_38
    new-instance v1, Landroid/os/Bundle;

    #@3a
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@3d
    :goto_3d
    const-string v2, "android.support.allowGeneratedReplies"

    #@3f
    .line 270
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    #@42
    move-result v3

    #@43
    .line 269
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@46
    const-string v2, "extras"

    #@48
    .line 271
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@4b
    .line 272
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    #@4e
    move-result-object v1

    #@4f
    invoke-static {v1}, Landroidx/core/app/NotificationCompatJellybean;->toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;

    #@52
    move-result-object v1

    #@53
    const-string v2, "remoteInputs"

    #@55
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@58
    const-string v1, "showsUserInterface"

    #@5a
    .line 273
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getShowsUserInterface()Z

    #@5d
    move-result v2

    #@5e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@61
    const-string v1, "semanticAction"

    #@63
    .line 274
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    #@66
    move-result p0

    #@67
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@6a
    return-object v0
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 7

    #@0
    .line 90
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 91
    :try_start_3
    sget-boolean v1, Landroidx/core/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    #@5
    const/4 v2, 0x0

    #@6
    if-eqz v1, :cond_a

    #@8
    .line 92
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_5e

    #@9
    return-object v2

    #@a
    :cond_a
    const/4 v1, 0x1

    #@b
    .line 95
    :try_start_b
    sget-object v3, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    #@d
    if-nez v3, :cond_33

    #@f
    .line 96
    const-class v3, Landroid/app/Notification;

    #@11
    const-string v4, "extras"

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@16
    move-result-object v3

    #@17
    .line 97
    const-class v4, Landroid/os/Bundle;

    #@19
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@20
    move-result v4

    #@21
    if-nez v4, :cond_2e

    #@23
    const-string p0, "NotificationCompat"

    #@25
    const-string v3, "Notification.extras field is not of type Bundle"

    #@27
    .line 98
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 99
    sput-boolean v1, Landroidx/core/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_2c} :catch_52
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_2c} :catch_49
    .catchall {:try_start_b .. :try_end_2c} :catchall_5e

    #@2c
    .line 100
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_5e

    #@2d
    return-object v2

    #@2e
    .line 102
    :cond_2e
    :try_start_2e
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@31
    .line 103
    sput-object v3, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    #@33
    .line 105
    :cond_33
    sget-object v3, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    #@35
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Landroid/os/Bundle;

    #@3b
    if-nez v3, :cond_47

    #@3d
    .line 107
    new-instance v3, Landroid/os/Bundle;

    #@3f
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@42
    .line 108
    sget-object v4, Landroidx/core/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    #@44
    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_47} :catch_52
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2e .. :try_end_47} :catch_49
    .catchall {:try_start_2e .. :try_end_47} :catchall_5e

    #@47
    .line 110
    :cond_47
    :try_start_47
    monitor-exit v0

    #@48
    return-object v3

    #@49
    :catch_49
    move-exception p0

    #@4a
    const-string v3, "NotificationCompat"

    #@4c
    const-string v4, "Unable to access notification extras"

    #@4e
    .line 114
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    goto :goto_5a

    #@52
    :catch_52
    move-exception p0

    #@53
    const-string v3, "NotificationCompat"

    #@55
    const-string v4, "Unable to access notification extras"

    #@57
    .line 112
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5a
    .line 116
    :goto_5a
    sput-boolean v1, Landroidx/core/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z

    #@5c
    .line 117
    monitor-exit v0

    #@5d
    return-object v2

    #@5e
    :catchall_5e
    move-exception p0

    #@5f
    .line 118
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_47 .. :try_end_60} :catchall_5e

    #@60
    throw p0
.end method

.method public static readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;
    .registers 17

    #@0
    move-object/from16 v4, p3

    #@2
    if-eqz v4, :cond_22

    #@4
    const-string v0, "android.support.remoteInputs"

    #@6
    .line 128
    invoke-static {v4, v0}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    #@9
    move-result-object v0

    #@a
    .line 127
    invoke-static {v0}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    #@d
    move-result-object v0

    #@e
    const-string v1, "android.support.dataRemoteInputs"

    #@10
    .line 131
    invoke-static {v4, v1}, Landroidx/core/app/NotificationCompatJellybean;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    #@13
    move-result-object v1

    #@14
    .line 130
    invoke-static {v1}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    #@17
    move-result-object v1

    #@18
    const-string v2, "android.support.allowGeneratedReplies"

    #@1a
    .line 132
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    move-object v5, v0

    #@1f
    move-object v6, v1

    #@20
    move v7, v2

    #@21
    goto :goto_27

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    const/4 v1, 0x0

    #@24
    move-object v5, v0

    #@25
    move-object v6, v5

    #@26
    move v7, v1

    #@27
    .line 134
    :goto_27
    new-instance v12, Landroidx/core/app/NotificationCompat$Action;

    #@29
    const/4 v8, 0x0

    #@2a
    const/4 v9, 0x1

    #@2b
    const/4 v10, 0x0

    #@2c
    const/4 v11, 0x0

    #@2d
    move-object v0, v12

    #@2e
    move v1, p0

    #@2f
    move-object v2, p1

    #@30
    move-object v3, p2

    #@31
    move-object/from16 v4, p3

    #@33
    invoke-direct/range {v0 .. v11}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    #@36
    return-object v12
.end method

.method private static toBundle(Landroidx/core/app/RemoteInput;)Landroid/os/Bundle;
    .registers 4

    #@0
    .line 297
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "resultKey"

    #@7
    .line 298
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    const-string v1, "label"

    #@10
    .line 299
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@17
    const-string v1, "choices"

    #@19
    .line 300
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    #@20
    const-string v1, "allowFreeFormInput"

    #@22
    .line 301
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    #@25
    move-result v2

    #@26
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@29
    const-string v1, "extras"

    #@2b
    .line 302
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@32
    .line 304
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    #@35
    move-result-object p0

    #@36
    if-eqz p0, :cond_60

    #@38
    .line 305
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    #@3b
    move-result v1

    #@3c
    if-nez v1, :cond_60

    #@3e
    .line 306
    new-instance v1, Ljava/util/ArrayList;

    #@40
    invoke-interface {p0}, Ljava/util/Set;->size()I

    #@43
    move-result v2

    #@44
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@47
    .line 307
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object p0

    #@4b
    :goto_4b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_5b

    #@51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v2

    #@55
    check-cast v2, Ljava/lang/String;

    #@57
    .line 308
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    goto :goto_4b

    #@5b
    :cond_5b
    const-string p0, "allowedDataTypes"

    #@5d
    .line 310
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@60
    :cond_60
    return-object v0
.end method

.method private static toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 330
    :cond_4
    array-length v0, p0

    #@5
    new-array v0, v0, [Landroid/os/Bundle;

    #@7
    const/4 v1, 0x0

    #@8
    .line 331
    :goto_8
    array-length v2, p0

    #@9
    if-ge v1, v2, :cond_16

    #@b
    .line 332
    aget-object v2, p0, v1

    #@d
    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->toBundle(Landroidx/core/app/RemoteInput;)Landroid/os/Bundle;

    #@10
    move-result-object v2

    #@11
    aput-object v2, v0, v1

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_8

    #@16
    :cond_16
    return-object v0
.end method

.method public static writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .registers 5

    #@0
    .line 142
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 144
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    #@9
    move-result v0

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    .line 145
    :goto_c
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    .line 146
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    #@13
    move-result-object v2

    #@14
    .line 143
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@17
    .line 147
    new-instance p0, Landroid/os/Bundle;

    #@19
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    #@1c
    move-result-object v0

    #@1d
    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@20
    .line 148
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    #@23
    move-result-object v0

    #@24
    if-eqz v0, :cond_33

    #@26
    .line 150
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    #@29
    move-result-object v0

    #@2a
    invoke-static {v0}, Landroidx/core/app/NotificationCompatJellybean;->toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;

    #@2d
    move-result-object v0

    #@2e
    const-string v1, "android.support.remoteInputs"

    #@30
    .line 149
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@33
    .line 152
    :cond_33
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getDataOnlyRemoteInputs()[Landroidx/core/app/RemoteInput;

    #@36
    move-result-object v0

    #@37
    if-eqz v0, :cond_46

    #@39
    .line 154
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getDataOnlyRemoteInputs()[Landroidx/core/app/RemoteInput;

    #@3c
    move-result-object v0

    #@3d
    invoke-static {v0}, Landroidx/core/app/NotificationCompatJellybean;->toBundleArray([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;

    #@40
    move-result-object v0

    #@41
    const-string v1, "android.support.dataRemoteInputs"

    #@43
    .line 153
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@46
    :cond_46
    const-string v0, "android.support.allowGeneratedReplies"

    #@48
    .line 157
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    #@4b
    move-result p1

    #@4c
    .line 156
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@4f
    return-object p0
.end method

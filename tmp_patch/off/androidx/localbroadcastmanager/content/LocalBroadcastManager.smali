.class public final Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;,
        Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 100
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@a
    .line 92
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@11
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@18
    .line 114
    iput-object p1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    #@1a
    .line 115
    new-instance v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;

    #@1c
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@1f
    move-result-object p1

    #@20
    invoke-direct {v0, p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;-><init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/os/Looper;)V

    #@23
    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    #@25
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .registers 3

    #@0
    .line 105
    sget-object v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 106
    :try_start_3
    sget-object v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    #@5
    if-nez v1, :cond_12

    #@7
    .line 107
    new-instance v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    #@9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@c
    move-result-object p0

    #@d
    invoke-direct {v1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    #@10
    sput-object v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    #@12
    .line 109
    :cond_12
    sget-object p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    #@14
    monitor-exit v0

    #@15
    return-object p0

    #@16
    :catchall_16
    move-exception p0

    #@17
    .line 110
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    #@18
    throw p0
.end method


# virtual methods
.method executePendingBroadcasts()V
    .registers 11

    #@0
    .line 298
    :cond_0
    iget-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 299
    :try_start_3
    iget-object v1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    if-gtz v1, :cond_d

    #@b
    .line 301
    monitor-exit v0

    #@c
    return-void

    #@d
    .line 303
    :cond_d
    new-array v2, v1, [Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;

    #@f
    .line 304
    iget-object v3, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@14
    .line 305
    iget-object v3, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@19
    .line 306
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_44

    #@1a
    const/4 v0, 0x0

    #@1b
    move v3, v0

    #@1c
    :goto_1c
    if-ge v3, v1, :cond_0

    #@1e
    .line 308
    aget-object v4, v2, v3

    #@20
    .line 309
    iget-object v5, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v5

    #@26
    move v6, v0

    #@27
    :goto_27
    if-ge v6, v5, :cond_41

    #@29
    .line 311
    iget-object v7, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v7

    #@2f
    check-cast v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    #@31
    .line 312
    iget-boolean v8, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    #@33
    if-nez v8, :cond_3e

    #@35
    .line 313
    iget-object v7, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    #@37
    iget-object v8, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    #@39
    iget-object v9, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    #@3b
    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    #@3e
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    #@40
    goto :goto_27

    #@41
    :cond_41
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_1c

    #@44
    :catchall_44
    move-exception v1

    #@45
    .line 306
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    #@46
    throw v1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 9

    #@0
    .line 140
    iget-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 141
    :try_start_3
    new-instance v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    #@5
    invoke-direct {v1, p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    #@8
    .line 142
    iget-object v2, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@a
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/util/ArrayList;

    #@10
    const/4 v3, 0x1

    #@11
    if-nez v2, :cond_1d

    #@13
    .line 144
    new-instance v2, Ljava/util/ArrayList;

    #@15
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    .line 145
    iget-object v4, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 147
    :cond_1d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    const/4 p1, 0x0

    #@21
    .line 148
    :goto_21
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    #@24
    move-result v2

    #@25
    if-ge p1, v2, :cond_45

    #@27
    .line 149
    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 150
    iget-object v4, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@2d
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, Ljava/util/ArrayList;

    #@33
    if-nez v4, :cond_3f

    #@35
    .line 152
    new-instance v4, Ljava/util/ArrayList;

    #@37
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@3a
    .line 153
    iget-object v5, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@3c
    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 155
    :cond_3f
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@42
    add-int/lit8 p1, p1, 0x1

    #@44
    goto :goto_21

    #@45
    .line 157
    :cond_45
    monitor-exit v0

    #@46
    return-void

    #@47
    :catchall_47
    move-exception p1

    #@48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    #@49
    throw p1
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .registers 24

    #@0
    move-object/from16 v1, p0

    #@2
    move-object/from16 v0, p1

    #@4
    const-string v2, "Action list: "

    #@6
    const-string v3, "Resolving type "

    #@8
    .line 213
    iget-object v4, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@a
    monitor-enter v4

    #@b
    .line 214
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@e
    move-result-object v12

    #@f
    .line 215
    iget-object v5, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    #@11
    .line 216
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@14
    move-result-object v5

    #@15
    .line 215
    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@18
    move-result-object v13

    #@19
    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@1c
    move-result-object v14

    #@1d
    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    #@20
    move-result-object v15

    #@21
    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@24
    move-result-object v16

    #@25
    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    #@28
    move-result v5

    #@29
    and-int/lit8 v5, v5, 0x8

    #@2b
    const/4 v11, 0x0

    #@2c
    const/4 v10, 0x1

    #@2d
    if-eqz v5, :cond_32

    #@2f
    move/from16 v17, v10

    #@31
    goto :goto_34

    #@32
    :cond_32
    move/from16 v17, v11

    #@34
    :goto_34
    if-eqz v17, :cond_5c

    #@36
    const-string v5, "LocalBroadcastManager"

    #@38
    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3d
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    const-string v6, " scheme "

    #@43
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    const-string v6, " of intent "

    #@4d
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 227
    :cond_5c
    iget-object v3, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@5e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    move-result-object v3

    #@66
    check-cast v3, Ljava/util/ArrayList;

    #@68
    if-eqz v3, :cond_173

    #@6a
    if-eqz v17, :cond_7e

    #@6c
    const-string v5, "LocalBroadcastManager"

    #@6e
    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@73
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    :cond_7e
    const/4 v2, 0x0

    #@7f
    move v9, v11

    #@80
    .line 232
    :goto_80
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@83
    move-result v5

    #@84
    if-ge v9, v5, :cond_142

    #@86
    .line 233
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@89
    move-result-object v5

    #@8a
    move-object v8, v5

    #@8b
    check-cast v8, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    #@8d
    if-eqz v17, :cond_a9

    #@8f
    const-string v5, "LocalBroadcastManager"

    #@91
    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string v7, "Matching against filter "

    #@98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v6

    #@9c
    iget-object v7, v8, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    #@9e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v6

    #@a2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v6

    #@a6
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 236
    :cond_a9
    iget-boolean v5, v8, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    #@ab
    if-eqz v5, :cond_bf

    #@ad
    if-eqz v17, :cond_b6

    #@af
    const-string v5, "LocalBroadcastManager"

    #@b1
    const-string v6, "  Filter\'s target already added"

    #@b3
    .line 238
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b6
    :cond_b6
    move-object/from16 v19, v3

    #@b8
    move/from16 v20, v9

    #@ba
    move-object/from16 v21, v12

    #@bc
    move v12, v10

    #@bd
    goto/16 :goto_138

    #@bf
    .line 243
    :cond_bf
    iget-object v5, v8, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    #@c1
    const-string v18, "LocalBroadcastManager"

    #@c3
    move-object v6, v12

    #@c4
    move-object v7, v13

    #@c5
    move-object/from16 v19, v3

    #@c7
    move-object v3, v8

    #@c8
    move-object v8, v15

    #@c9
    move/from16 v20, v9

    #@cb
    move-object v9, v14

    #@cc
    move-object/from16 v21, v12

    #@ce
    move v12, v10

    #@cf
    move-object/from16 v10, v16

    #@d1
    move-object/from16 v11, v18

    #@d3
    invoke-virtual/range {v5 .. v11}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    #@d6
    move-result v5

    #@d7
    if-ltz v5, :cond_104

    #@d9
    if-eqz v17, :cond_f7

    #@db
    const-string v6, "LocalBroadcastManager"

    #@dd
    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string v8, "  Filter matched!  match=0x"

    #@e4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v7

    #@e8
    .line 247
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@eb
    move-result-object v5

    #@ec
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v5

    #@f0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v5

    #@f4
    .line 246
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f7
    :cond_f7
    if-nez v2, :cond_fe

    #@f9
    .line 249
    new-instance v2, Ljava/util/ArrayList;

    #@fb
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@fe
    .line 251
    :cond_fe
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@101
    .line 252
    iput-boolean v12, v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    #@103
    goto :goto_138

    #@104
    :cond_104
    if-eqz v17, :cond_138

    #@106
    const/4 v3, -0x4

    #@107
    if-eq v5, v3, :cond_11e

    #@109
    const/4 v3, -0x3

    #@10a
    if-eq v5, v3, :cond_11b

    #@10c
    const/4 v3, -0x2

    #@10d
    if-eq v5, v3, :cond_118

    #@10f
    const/4 v3, -0x1

    #@110
    if-eq v5, v3, :cond_115

    #@112
    const-string v3, "unknown reason"

    #@114
    goto :goto_120

    #@115
    :cond_115
    const-string v3, "type"

    #@117
    goto :goto_120

    #@118
    :cond_118
    const-string v3, "data"

    #@11a
    goto :goto_120

    #@11b
    :cond_11b
    const-string v3, "action"

    #@11d
    goto :goto_120

    #@11e
    :cond_11e
    const-string v3, "category"

    #@120
    :goto_120
    const-string v5, "LocalBroadcastManager"

    #@122
    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    const-string v7, "  Filter did not match: "

    #@129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v6

    #@12d
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v3

    #@131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object v3

    #@135
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@138
    :cond_138
    :goto_138
    add-int/lit8 v9, v20, 0x1

    #@13a
    move v10, v12

    #@13b
    move-object/from16 v3, v19

    #@13d
    move-object/from16 v12, v21

    #@13f
    const/4 v11, 0x0

    #@140
    goto/16 :goto_80

    #@142
    :cond_142
    move v12, v10

    #@143
    if-eqz v2, :cond_171

    #@145
    const/4 v11, 0x0

    #@146
    .line 269
    :goto_146
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@149
    move-result v3

    #@14a
    if-ge v11, v3, :cond_158

    #@14c
    .line 270
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14f
    move-result-object v3

    #@150
    check-cast v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    #@152
    const/4 v5, 0x0

    #@153
    iput-boolean v5, v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    #@155
    add-int/lit8 v11, v11, 0x1

    #@157
    goto :goto_146

    #@158
    .line 272
    :cond_158
    iget-object v3, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@15a
    new-instance v5, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;

    #@15c
    invoke-direct {v5, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    #@15f
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@162
    .line 273
    iget-object v0, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    #@164
    invoke-virtual {v0, v12}, Landroid/os/Handler;->hasMessages(I)Z

    #@167
    move-result v0

    #@168
    if-nez v0, :cond_16f

    #@16a
    .line 274
    iget-object v0, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    #@16c
    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@16f
    .line 276
    :cond_16f
    monitor-exit v4

    #@170
    return v12

    #@171
    :cond_171
    const/4 v5, 0x0

    #@172
    goto :goto_174

    #@173
    :cond_173
    move v5, v11

    #@174
    .line 279
    :goto_174
    monitor-exit v4

    #@175
    return v5

    #@176
    :catchall_176
    move-exception v0

    #@177
    monitor-exit v4
    :try_end_178
    .catchall {:try_start_b .. :try_end_178} :catchall_176

    #@178
    throw v0
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .registers 2

    #@0
    .line 289
    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 290
    invoke-virtual {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->executePendingBroadcasts()V

    #@9
    :cond_9
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 13

    #@0
    .line 170
    iget-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 171
    :try_start_3
    iget-object v1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Ljava/util/ArrayList;

    #@b
    if-nez v1, :cond_f

    #@d
    .line 173
    monitor-exit v0

    #@e
    return-void

    #@f
    .line 175
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v2

    #@13
    const/4 v3, 0x1

    #@14
    sub-int/2addr v2, v3

    #@15
    :goto_15
    if-ltz v2, :cond_62

    #@17
    .line 176
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    #@1d
    .line 177
    iput-boolean v3, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    #@1f
    const/4 v5, 0x0

    #@20
    .line 178
    :goto_20
    iget-object v6, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    #@22
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    #@25
    move-result v6

    #@26
    if-ge v5, v6, :cond_5f

    #@28
    .line 179
    iget-object v6, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    #@2a
    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    .line 180
    iget-object v7, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@30
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v7

    #@34
    check-cast v7, Ljava/util/ArrayList;

    #@36
    if-eqz v7, :cond_5c

    #@38
    .line 182
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v8

    #@3c
    sub-int/2addr v8, v3

    #@3d
    :goto_3d
    if-ltz v8, :cond_51

    #@3f
    .line 183
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v9

    #@43
    check-cast v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    #@45
    .line 184
    iget-object v10, v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    #@47
    if-ne v10, p1, :cond_4e

    #@49
    .line 185
    iput-boolean v3, v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    #@4b
    .line 186
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@4e
    :cond_4e
    add-int/lit8 v8, v8, -0x1

    #@50
    goto :goto_3d

    #@51
    .line 189
    :cond_51
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@54
    move-result v7

    #@55
    if-gtz v7, :cond_5c

    #@57
    .line 190
    iget-object v7, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@59
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    :cond_5c
    add-int/lit8 v5, v5, 0x1

    #@5e
    goto :goto_20

    #@5f
    :cond_5f
    add-int/lit8 v2, v2, -0x1

    #@61
    goto :goto_15

    #@62
    .line 195
    :cond_62
    monitor-exit v0

    #@63
    return-void

    #@64
    :catchall_64
    move-exception p1

    #@65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    #@66
    throw p1
.end method

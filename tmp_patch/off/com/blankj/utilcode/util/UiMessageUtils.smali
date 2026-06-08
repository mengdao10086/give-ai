.class public final Lcom/blankj/utilcode/util/UiMessageUtils;
.super Ljava/lang/Object;
.source "UiMessageUtils.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/UiMessageUtils$LazyHolder;,
        Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;,
        Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "UiMessageUtils"


# instance fields
.field private final mDefensiveCopyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mListenersSpecific:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mListenersUniversal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 25
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isAppDebug()Z

    #@3
    move-result v0

    #@4
    sput-boolean v0, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    #@6
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@c
    iput-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mHandler:Landroid/os/Handler;

    #@e
    .line 28
    new-instance v0, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-direct {v0, v1, v1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;-><init>(Landroid/os/Message;Lcom/blankj/utilcode/util/UiMessageUtils$1;)V

    #@14
    iput-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    #@16
    .line 30
    new-instance v0, Landroid/util/SparseArray;

    #@18
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    #@1d
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@24
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    #@26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@29
    iput-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    #@2b
    return-void
.end method

.method synthetic constructor <init>(Lcom/blankj/utilcode/util/UiMessageUtils$1;)V
    .registers 2

    #@0
    .line 22
    invoke-direct {p0}, Lcom/blankj/utilcode/util/UiMessageUtils;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Lcom/blankj/utilcode/util/UiMessageUtils;
    .registers 1

    #@0
    .line 35
    # getter for: Lcom/blankj/utilcode/util/UiMessageUtils$LazyHolder;->INSTANCE:Lcom/blankj/utilcode/util/UiMessageUtils;
    invoke-static {}, Lcom/blankj/utilcode/util/UiMessageUtils$LazyHolder;->access$100()Lcom/blankj/utilcode/util/UiMessageUtils;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private logMessageHandling(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;)V
    .registers 7

    #@0
    .line 194
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    #@2
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->getId()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/List;

    #@c
    if-eqz v0, :cond_14

    #@e
    .line 196
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_44

    #@14
    :cond_14
    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@16
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_44

    #@1c
    const-string v0, "UiMessageUtils"

    #@1e
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    const-string v2, "Delivering FAILED for message ID "

    #@22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@25
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->getId()I

    #@28
    move-result v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string v2, ". No listeners. "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->toString()Ljava/lang/String;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object p1

    #@3b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object p1

    #@3f
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    goto/16 :goto_103

    #@44
    .line 199
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    const-string v2, "Delivering message ID "

    #@48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4b
    .line 201
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->getId()I

    #@4e
    move-result v2

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    const-string v2, ", Specific listeners: "

    #@54
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    const/4 v2, 0x0

    #@58
    if-eqz v0, :cond_9b

    #@5a
    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5d
    move-result v3

    #@5e
    if-nez v3, :cond_61

    #@60
    goto :goto_9b

    #@61
    .line 206
    :cond_61
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@64
    move-result v3

    #@65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    const-string v3, " ["

    #@6a
    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move v3, v2

    #@6e
    .line 208
    :goto_6e
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@71
    move-result v4

    #@72
    if-ge v3, v4, :cond_95

    #@74
    .line 209
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@77
    move-result-object v4

    #@78
    check-cast v4, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;

    #@7a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@88
    move-result v4

    #@89
    add-int/lit8 v4, v4, -0x1

    #@8b
    if-ge v3, v4, :cond_92

    #@8d
    const-string v4, ","

    #@8f
    .line 211
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    :cond_92
    add-int/lit8 v3, v3, 0x1

    #@94
    goto :goto_6e

    #@95
    :cond_95
    const-string v0, "]"

    #@97
    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    goto :goto_9e

    #@9b
    .line 204
    :cond_9b
    :goto_9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    :goto_9e
    const-string v0, ", Universal listeners: "

    #@a0
    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    .line 218
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@a5
    monitor-enter v0

    #@a6
    .line 219
    :try_start_a6
    iget-object v3, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@a8
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@ab
    move-result v3

    #@ac
    if-nez v3, :cond_b2

    #@ae
    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b1
    goto :goto_f2

    #@b2
    .line 222
    :cond_b2
    iget-object v3, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@b4
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@b7
    move-result v3

    #@b8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bb
    const-string v3, " ["

    #@bd
    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    .line 224
    :goto_c0
    iget-object v3, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@c2
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@c5
    move-result v3

    #@c6
    if-ge v2, v3, :cond_ed

    #@c8
    .line 225
    iget-object v3, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@ca
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@cd
    move-result-object v3

    #@ce
    check-cast v3, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;

    #@d0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d3
    move-result-object v3

    #@d4
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@d7
    move-result-object v3

    #@d8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    .line 226
    iget-object v3, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@dd
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@e0
    move-result v3

    #@e1
    add-int/lit8 v3, v3, -0x1

    #@e3
    if-ge v2, v3, :cond_ea

    #@e5
    const-string v3, ","

    #@e7
    .line 227
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    :cond_ea
    add-int/lit8 v2, v2, 0x1

    #@ec
    goto :goto_c0

    #@ed
    :cond_ed
    const-string v2, "], Message: "

    #@ef
    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    .line 232
    :goto_f2
    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_a6 .. :try_end_f3} :catchall_104

    #@f3
    .line 233
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->toString()Ljava/lang/String;

    #@f6
    move-result-object p1

    #@f7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    const-string p1, "UiMessageUtils"

    #@fc
    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v0

    #@100
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@103
    :goto_103
    return-void

    #@104
    :catchall_104
    move-exception p1

    #@105
    .line 232
    :try_start_105
    monitor-exit v0
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    #@106
    throw p1
.end method


# virtual methods
.method public addListener(ILcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;)V
    .registers 6

    #@0
    .line 69
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    #@2
    monitor-enter v0

    #@3
    .line 70
    :try_start_3
    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Ljava/util/List;

    #@b
    if-nez v1, :cond_17

    #@d
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    #@f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 73
    iget-object v2, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@17
    .line 75
    :cond_17
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1a
    move-result p1

    #@1b
    if-nez p1, :cond_20

    #@1d
    .line 76
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    .line 78
    :cond_20
    monitor-exit v0

    #@21
    return-void

    #@22
    :catchall_22
    move-exception p1

    #@23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    #@24
    throw p1
.end method

.method public addListener(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;)V
    .registers 6

    #@0
    const-string v0, "Listener is already added. "

    #@2
    .line 87
    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@4
    monitor-enter v1

    #@5
    .line 88
    :try_start_5
    iget-object v2, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@7
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_13

    #@d
    .line 89
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@f
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@12
    goto :goto_2d

    #@13
    .line 91
    :cond_13
    sget-boolean v2, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    #@15
    if-eqz v2, :cond_2d

    #@17
    const-string v2, "UiMessageUtils"

    #@19
    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object p1

    #@2a
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 95
    :cond_2d
    :goto_2d
    monitor-exit v1

    #@2e
    return-void

    #@2f
    :catchall_2f
    move-exception p1

    #@30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_2f

    #@31
    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    #@0
    .line 156
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    #@2
    # invokes: Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->setMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->access$200(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;Landroid/os/Message;)V

    #@5
    .line 157
    sget-boolean v0, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    #@7
    if-eqz v0, :cond_e

    #@9
    .line 158
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    #@b
    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/UiMessageUtils;->logMessageHandling(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;)V

    #@e
    .line 162
    :cond_e
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    #@10
    monitor-enter v0

    #@11
    .line 163
    :try_start_11
    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    #@13
    iget v2, p1, Landroid/os/Message;->what:I

    #@15
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/util/List;

    #@1b
    if-eqz v1, :cond_4d

    #@1d
    .line 165
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_2b

    #@23
    .line 166
    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    #@25
    iget p1, p1, Landroid/os/Message;->what:I

    #@27
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@2a
    goto :goto_4d

    #@2b
    .line 168
    :cond_2b
    iget-object p1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    #@2d
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@30
    .line 169
    iget-object p1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    #@32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object p1

    #@36
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_48

    #@3c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;

    #@42
    .line 170
    iget-object v2, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    #@44
    invoke-interface {v1, v2}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;->handleMessage(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;)V

    #@47
    goto :goto_36

    #@48
    .line 172
    :cond_48
    iget-object p1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    #@4a
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@4d
    .line 175
    :cond_4d
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_11 .. :try_end_4e} :catchall_89

    #@4e
    .line 178
    iget-object p1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@50
    monitor-enter p1

    #@51
    .line 179
    :try_start_51
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@53
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@56
    move-result v0

    #@57
    if-lez v0, :cond_7d

    #@59
    .line 180
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    #@5b
    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@5d
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@60
    .line 181
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    #@62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@65
    move-result-object v0

    #@66
    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@69
    move-result v1

    #@6a
    if-eqz v1, :cond_78

    #@6c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6f
    move-result-object v1

    #@70
    check-cast v1, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;

    #@72
    .line 182
    iget-object v2, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    #@74
    invoke-interface {v1, v2}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;->handleMessage(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;)V

    #@77
    goto :goto_66

    #@78
    .line 184
    :cond_78
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    #@7a
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@7d
    .line 186
    :cond_7d
    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_51 .. :try_end_7e} :catchall_86

    #@7e
    .line 188
    iget-object p1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    #@80
    const/4 v0, 0x0

    #@81
    # invokes: Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->setMessage(Landroid/os/Message;)V
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->access$200(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;Landroid/os/Message;)V

    #@84
    const/4 p1, 0x1

    #@85
    return p1

    #@86
    :catchall_86
    move-exception v0

    #@87
    .line 186
    :try_start_87
    monitor-exit p1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    #@88
    throw v0

    #@89
    :catchall_89
    move-exception p1

    #@8a
    .line 175
    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    #@8b
    throw p1
.end method

.method public removeListener(ILcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;)V
    .registers 8

    #@0
    const-string v0, "Trying to remove specific listener that is not registered. ID "

    #@2
    const-string v1, "Trying to remove specific listener that is not registered. ID "

    #@4
    .line 136
    iget-object v2, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    #@6
    monitor-enter v2

    #@7
    .line 137
    :try_start_7
    iget-object v3, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Ljava/util/List;

    #@f
    if-eqz v3, :cond_43

    #@11
    .line 138
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_43

    #@17
    .line 139
    sget-boolean v1, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    #@19
    if-eqz v1, :cond_3f

    #@1b
    .line 140
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_3f

    #@21
    const-string v1, "UiMessageUtils"

    #@23
    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object p1

    #@2c
    const-string v0, ", "

    #@2e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object p1

    #@32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object p1

    #@36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object p1

    #@3a
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 142
    monitor-exit v2

    #@3e
    return-void

    #@3f
    .line 145
    :cond_3f
    invoke-interface {v3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@42
    goto :goto_63

    #@43
    .line 147
    :cond_43
    sget-boolean v0, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    #@45
    if-eqz v0, :cond_63

    #@47
    const-string v0, "UiMessageUtils"

    #@49
    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object p1

    #@52
    const-string v1, ", "

    #@54
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object p1

    #@58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object p1

    #@5c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object p1

    #@60
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 151
    :cond_63
    :goto_63
    monitor-exit v2

    #@64
    return-void

    #@65
    :catchall_65
    move-exception p1

    #@66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_65

    #@67
    throw p1
.end method

.method public removeListener(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;)V
    .registers 6

    #@0
    const-string v0, "Trying to remove a listener that is not registered. "

    #@2
    .line 104
    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@4
    monitor-enter v1

    #@5
    .line 105
    :try_start_5
    sget-boolean v2, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    #@7
    if-eqz v2, :cond_27

    #@9
    iget-object v2, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@b
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_27

    #@11
    const-string v2, "UiMessageUtils"

    #@13
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 108
    :cond_27
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    #@29
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@2c
    .line 109
    monitor-exit v1

    #@2d
    return-void

    #@2e
    :catchall_2e
    move-exception p1

    #@2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    #@30
    throw p1
.end method

.method public removeListeners(I)V
    .registers 5

    #@0
    .line 118
    sget-boolean v0, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    #@2
    if-eqz v0, :cond_28

    #@4
    .line 119
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/List;

    #@c
    if-eqz v0, :cond_14

    #@e
    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_28

    #@14
    :cond_14
    const-string v0, "UiMessageUtils"

    #@16
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    const-string v2, "Trying to remove specific listeners that are not registered. ID "

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 124
    :cond_28
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    #@2a
    monitor-enter v0

    #@2b
    .line 125
    :try_start_2b
    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    #@30
    .line 126
    monitor-exit v0

    #@31
    return-void

    #@32
    :catchall_32
    move-exception p1

    #@33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_32

    #@34
    throw p1
.end method

.method public final send(I)V
    .registers 3

    #@0
    .line 47
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@5
    return-void
.end method

.method public final send(ILjava/lang/Object;)V
    .registers 4

    #@0
    .line 57
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@9
    return-void
.end method

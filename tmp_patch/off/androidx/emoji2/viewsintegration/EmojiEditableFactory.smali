.class final Landroidx/emoji2/viewsintegration/EmojiEditableFactory;
.super Landroid/text/Editable$Factory;
.source "EmojiEditableFactory.java"


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static volatile sInstance:Landroid/text/Editable$Factory;

.field private static sWatcherClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 44
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->INSTANCE_LOCK:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    #@0
    .line 51
    invoke-direct {p0}, Landroid/text/Editable$Factory;-><init>()V

    #@3
    :try_start_3
    const-string v0, "android.text.DynamicLayout$ChangeWatcher"

    #@5
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x0

    #@e
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sWatcherClass:Ljava/lang/Class;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_14

    #@14
    :catchall_14
    return-void
.end method

.method public static getInstance()Landroid/text/Editable$Factory;
    .registers 2

    #@0
    .line 62
    sget-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroid/text/Editable$Factory;

    #@2
    if-nez v0, :cond_17

    #@4
    .line 63
    sget-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->INSTANCE_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v0

    #@7
    .line 64
    :try_start_7
    sget-object v1, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroid/text/Editable$Factory;

    #@9
    if-nez v1, :cond_12

    #@b
    .line 65
    new-instance v1, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;

    #@d
    invoke-direct {v1}, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;-><init>()V

    #@10
    sput-object v1, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroid/text/Editable$Factory;

    #@12
    .line 67
    :cond_12
    monitor-exit v0

    #@13
    goto :goto_17

    #@14
    :catchall_14
    move-exception v1

    #@15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    #@16
    throw v1

    #@17
    .line 69
    :cond_17
    :goto_17
    sget-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroid/text/Editable$Factory;

    #@19
    return-object v0
.end method


# virtual methods
.method public newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 3

    #@0
    .line 74
    sget-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sWatcherClass:Ljava/lang/Class;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 75
    invoke-static {v0, p1}, Landroidx/emoji2/text/SpannableBuilder;->create(Ljava/lang/Class;Ljava/lang/CharSequence;)Landroidx/emoji2/text/SpannableBuilder;

    #@7
    move-result-object p1

    #@8
    return-object p1

    #@9
    .line 77
    :cond_9
    invoke-super {p0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    #@c
    move-result-object p1

    #@d
    return-object p1
.end method

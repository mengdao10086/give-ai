.class public Landroidx/emoji2/text/EmojiCompat;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiCompat$CompatInternal19;,
        Landroidx/emoji2/text/EmojiCompat$CompatInternal;,
        Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;,
        Landroidx/emoji2/text/EmojiCompat$Config;,
        Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;,
        Landroidx/emoji2/text/EmojiCompat$GlyphChecker;,
        Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;,
        Landroidx/emoji2/text/EmojiCompat$InitCallback;,
        Landroidx/emoji2/text/EmojiCompat$SpanFactory;,
        Landroidx/emoji2/text/EmojiCompat$CodepointSequenceMatchResult;,
        Landroidx/emoji2/text/EmojiCompat$LoadStrategy;,
        Landroidx/emoji2/text/EmojiCompat$ReplaceStrategy;
    }
.end annotation


# static fields
.field private static final CONFIG_LOCK:Ljava/lang/Object;

.field public static final EDITOR_INFO_METAVERSION_KEY:Ljava/lang/String; = "android.support.text.emoji.emojiCompat_metadataVersion"

.field public static final EDITOR_INFO_REPLACE_ALL_KEY:Ljava/lang/String; = "android.support.text.emoji.emojiCompat_replaceAll"

.field static final EMOJI_COUNT_UNLIMITED:I = 0x7fffffff

.field public static final EMOJI_FALLBACK:I = 0x2

.field public static final EMOJI_SUPPORTED:I = 0x1

.field public static final EMOJI_UNSUPPORTED:I = 0x0

.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field public static final LOAD_STATE_DEFAULT:I = 0x3

.field public static final LOAD_STATE_FAILED:I = 0x2

.field public static final LOAD_STATE_LOADING:I = 0x0

.field public static final LOAD_STATE_SUCCEEDED:I = 0x1

.field public static final LOAD_STRATEGY_DEFAULT:I = 0x0

.field public static final LOAD_STRATEGY_MANUAL:I = 0x1

.field private static final NOT_INITIALIZED_ERROR_TEXT:Ljava/lang/String; = "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

.field public static final REPLACE_STRATEGY_ALL:I = 0x1

.field public static final REPLACE_STRATEGY_DEFAULT:I = 0x0

.field public static final REPLACE_STRATEGY_NON_EXISTENT:I = 0x2

.field private static volatile sHasDoneDefaultConfigLookup:Z

.field private static volatile sInstance:Landroidx/emoji2/text/EmojiCompat;


# instance fields
.field final mEmojiAsDefaultStyleExceptions:[I

.field private final mEmojiSpanIndicatorColor:I

.field private final mEmojiSpanIndicatorEnabled:Z

.field private final mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field private final mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

.field private final mInitCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/emoji2/text/EmojiCompat$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private volatile mLoadState:I

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMetadataLoadStrategy:I

.field final mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

.field final mReplaceAll:Z

.field final mUseEmojiAsDefaultStyle:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 349
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    #@7
    .line 350
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->CONFIG_LOCK:Ljava/lang/Object;

    #@e
    return-void
.end method

.method private constructor <init>(Landroidx/emoji2/text/EmojiCompat$Config;)V
    .registers 4

    #@0
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 460
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@a
    const/4 v0, 0x3

    #@b
    .line 461
    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    #@d
    .line 462
    iget-boolean v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mReplaceAll:Z

    #@f
    iput-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mReplaceAll:Z

    #@11
    .line 463
    iget-boolean v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mUseEmojiAsDefaultStyle:Z

    #@13
    iput-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mUseEmojiAsDefaultStyle:Z

    #@15
    .line 464
    iget-object v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiAsDefaultStyleExceptions:[I

    #@17
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiAsDefaultStyleExceptions:[I

    #@19
    .line 465
    iget-boolean v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiSpanIndicatorEnabled:Z

    #@1b
    iput-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorEnabled:Z

    #@1d
    .line 466
    iget v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiSpanIndicatorColor:I

    #@1f
    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorColor:I

    #@21
    .line 467
    iget-object v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    #@23
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    #@25
    .line 468
    iget v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoadStrategy:I

    #@27
    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoadStrategy:I

    #@29
    .line 469
    iget-object v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    #@2b
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    #@2d
    .line 470
    new-instance v0, Landroid/os/Handler;

    #@2f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@36
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    #@38
    .line 471
    new-instance v0, Landroidx/collection/ArraySet;

    #@3a
    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    #@3d
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    #@3f
    .line 472
    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    #@41
    if-eqz v1, :cond_50

    #@43
    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    #@45
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@48
    move-result v1

    #@49
    if-nez v1, :cond_50

    #@4b
    .line 473
    iget-object p1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    #@4d
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@50
    .line 475
    :cond_50
    new-instance p1, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;

    #@52
    invoke-direct {p1, p0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;-><init>(Landroidx/emoji2/text/EmojiCompat;)V

    #@55
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    #@57
    .line 477
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->loadMetadata()V

    #@5a
    return-void
.end method

.method static synthetic access$000(Landroidx/emoji2/text/EmojiCompat;)Landroidx/emoji2/text/EmojiCompat$GlyphChecker;
    .registers 1

    #@0
    .line 111
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    #@2
    return-object p0
.end method

.method public static get()Landroidx/emoji2/text/EmojiCompat;
    .registers 4

    #@0
    .line 648
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 649
    :try_start_3
    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    #@5
    if-eqz v1, :cond_9

    #@7
    const/4 v2, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v2, 0x0

    #@a
    :goto_a
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    #@c
    .line 650
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@f
    .line 651
    monitor-exit v0

    #@10
    return-object v1

    #@11
    :catchall_11
    move-exception v1

    #@12
    .line 652
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    #@13
    throw v1
.end method

.method public static handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .registers 5

    #@0
    .line 868
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/emoji2/text/EmojiProcessor;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 3

    #@0
    .line 839
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/EmojiProcessor;->handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static init(Landroid/content/Context;)Landroidx/emoji2/text/EmojiCompat;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 497
    invoke-static {p0, v0}, Landroidx/emoji2/text/EmojiCompat;->init(Landroid/content/Context;Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;)Landroidx/emoji2/text/EmojiCompat;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static init(Landroid/content/Context;Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;)Landroidx/emoji2/text/EmojiCompat;
    .registers 3

    #@0
    .line 509
    sget-boolean v0, Landroidx/emoji2/text/EmojiCompat;->sHasDoneDefaultConfigLookup:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 514
    sget-object p0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    #@6
    return-object p0

    #@7
    :cond_7
    if-eqz p1, :cond_a

    #@9
    goto :goto_10

    #@a
    .line 518
    :cond_a
    new-instance p1, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;

    #@c
    const/4 v0, 0x0

    #@d
    invoke-direct {p1, v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;-><init>(Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;)V

    #@10
    .line 519
    :goto_10
    invoke-virtual {p1, p0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->create(Landroid/content/Context;)Landroidx/emoji2/text/EmojiCompat$Config;

    #@13
    move-result-object p0

    #@14
    .line 521
    sget-object p1, Landroidx/emoji2/text/EmojiCompat;->CONFIG_LOCK:Ljava/lang/Object;

    #@16
    monitor-enter p1

    #@17
    .line 522
    :try_start_17
    sget-boolean v0, Landroidx/emoji2/text/EmojiCompat;->sHasDoneDefaultConfigLookup:Z

    #@19
    if-nez v0, :cond_23

    #@1b
    if-eqz p0, :cond_20

    #@1d
    .line 526
    invoke-static {p0}, Landroidx/emoji2/text/EmojiCompat;->init(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;

    #@20
    :cond_20
    const/4 p0, 0x1

    #@21
    .line 529
    sput-boolean p0, Landroidx/emoji2/text/EmojiCompat;->sHasDoneDefaultConfigLookup:Z

    #@23
    .line 532
    :cond_23
    sget-object p0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    #@25
    monitor-exit p1

    #@26
    return-object p0

    #@27
    :catchall_27
    move-exception p0

    #@28
    .line 533
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_27

    #@29
    throw p0
.end method

.method public static init(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;
    .registers 3

    #@0
    .line 549
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    #@2
    if-nez v0, :cond_17

    #@4
    .line 551
    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 552
    :try_start_7
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    #@9
    if-nez v0, :cond_12

    #@b
    .line 554
    new-instance v0, Landroidx/emoji2/text/EmojiCompat;

    #@d
    invoke-direct {v0, p0}, Landroidx/emoji2/text/EmojiCompat;-><init>(Landroidx/emoji2/text/EmojiCompat$Config;)V

    #@10
    .line 555
    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    #@12
    .line 557
    :cond_12
    monitor-exit v1

    #@13
    goto :goto_17

    #@14
    :catchall_14
    move-exception p0

    #@15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    #@16
    throw p0

    #@17
    :cond_17
    :goto_17
    return-object v0
.end method

.method public static isConfigured()Z
    .registers 1

    #@0
    .line 593
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method private isInitialized()Z
    .registers 3

    #@0
    .line 795
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_8

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v1, 0x0

    #@9
    :goto_9
    return v1
.end method

.method private loadMetadata()V
    .registers 3

    #@0
    .line 688
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@9
    .line 690
    :try_start_9
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoadStrategy:I

    #@b
    if-nez v0, :cond_10

    #@d
    const/4 v0, 0x0

    #@e
    .line 691
    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_25

    #@10
    .line 694
    :cond_10
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@12
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@15
    move-result-object v0

    #@16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@19
    .line 697
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_24

    #@1f
    .line 698
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    #@21
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->loadMetadata()V

    #@24
    :cond_24
    return-void

    #@25
    :catchall_25
    move-exception v0

    #@26
    .line 694
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@28
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@2b
    move-result-object v1

    #@2c
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2f
    .line 695
    throw v0
.end method

.method public static reset(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;
    .registers 3

    #@0
    .line 605
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 606
    :try_start_3
    new-instance v1, Landroidx/emoji2/text/EmojiCompat;

    #@5
    invoke-direct {v1, p0}, Landroidx/emoji2/text/EmojiCompat;-><init>(Landroidx/emoji2/text/EmojiCompat$Config;)V

    #@8
    .line 607
    sput-object v1, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    #@a
    .line 608
    monitor-exit v0

    #@b
    return-object v1

    #@c
    :catchall_c
    move-exception p0

    #@d
    .line 609
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    #@e
    throw p0
.end method

.method public static reset(Landroidx/emoji2/text/EmojiCompat;)Landroidx/emoji2/text/EmojiCompat;
    .registers 2

    #@0
    .line 620
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 621
    :try_start_3
    sput-object p0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    #@5
    .line 622
    sget-object p0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    #@7
    monitor-exit v0

    #@8
    return-object p0

    #@9
    :catchall_9
    move-exception p0

    #@a
    .line 623
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    #@b
    throw p0
.end method

.method public static skipDefaultConfigurationLookup(Z)V
    .registers 2

    #@0
    .line 633
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->CONFIG_LOCK:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 634
    :try_start_3
    sput-boolean p0, Landroidx/emoji2/text/EmojiCompat;->sHasDoneDefaultConfigLookup:Z

    #@5
    .line 635
    monitor-exit v0

    #@6
    return-void

    #@7
    :catchall_7
    move-exception p0

    #@8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw p0
.end method


# virtual methods
.method public getAssetSignature()Ljava/lang/String;
    .registers 3

    #@0
    .line 1118
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    #@3
    move-result v0

    #@4
    const-string v1, "Not initialized yet"

    #@6
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@9
    .line 1119
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    #@b
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->getAssetSignature()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getEmojiMatch(Ljava/lang/CharSequence;I)I
    .registers 5

    #@0
    .line 934
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    #@3
    move-result v0

    #@4
    const-string v1, "Not initialized yet"

    #@6
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@9
    const-string v0, "sequence cannot be null"

    #@b
    .line 935
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 936
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    #@10
    invoke-virtual {v0, p1, p2}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->getEmojiMatch(Ljava/lang/CharSequence;I)I

    #@13
    move-result p1

    #@14
    return p1
.end method

.method public getEmojiSpanIndicatorColor()I
    .registers 2

    #@0
    .line 813
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorColor:I

    #@2
    return v0
.end method

.method public getLoadState()I
    .registers 3

    #@0
    .line 783
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@9
    .line 785
    :try_start_9
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_15

    #@b
    .line 787
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@d
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@14
    return v0

    #@15
    :catchall_15
    move-exception v0

    #@16
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@18
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@1f
    .line 788
    throw v0
.end method

.method public hasEmojiGlyph(Ljava/lang/CharSequence;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 889
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    #@3
    move-result v0

    #@4
    const-string v1, "Not initialized yet"

    #@6
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@9
    const-string v0, "sequence cannot be null"

    #@b
    .line 890
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 891
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    #@10
    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->hasEmojiGlyph(Ljava/lang/CharSequence;)Z

    #@13
    move-result p1

    #@14
    return p1
.end method

.method public hasEmojiGlyph(Ljava/lang/CharSequence;I)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 911
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    #@3
    move-result v0

    #@4
    const-string v1, "Not initialized yet"

    #@6
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@9
    const-string v0, "sequence cannot be null"

    #@b
    .line 912
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 913
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    #@10
    invoke-virtual {v0, p1, p2}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->hasEmojiGlyph(Ljava/lang/CharSequence;I)Z

    #@13
    move-result p1

    #@14
    return p1
.end method

.method public isEmojiSpanIndicatorEnabled()Z
    .registers 2

    #@0
    .line 804
    iget-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorEnabled:Z

    #@2
    return v0
.end method

.method public load()V
    .registers 4

    #@0
    .line 672
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoadStrategy:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-ne v0, v2, :cond_7

    #@6
    goto :goto_8

    #@7
    :cond_7
    move v2, v1

    #@8
    :goto_8
    const-string v0, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    #@a
    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@d
    .line 674
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_14

    #@13
    return-void

    #@14
    .line 676
    :cond_14
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@16
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@1d
    .line 678
    :try_start_1d
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_3c

    #@1f
    if-nez v0, :cond_2b

    #@21
    .line 681
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@23
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@26
    move-result-object v0

    #@27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2a
    return-void

    #@2b
    .line 679
    :cond_2b
    :try_start_2b
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_3c

    #@2d
    .line 681
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@2f
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@32
    move-result-object v0

    #@33
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@36
    .line 684
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    #@38
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->loadMetadata()V

    #@3b
    return-void

    #@3c
    :catchall_3c
    move-exception v0

    #@3d
    .line 681
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@3f
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@42
    move-result-object v1

    #@43
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@46
    .line 682
    throw v0
.end method

.method onMetadataLoadFailed(Ljava/lang/Throwable;)V
    .registers 6

    #@0
    .line 719
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 720
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@7
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@e
    const/4 v1, 0x2

    #@f
    .line 722
    :try_start_f
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    #@11
    .line 723
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    #@13
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    #@16
    .line 724
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    #@18
    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_31

    #@1b
    .line 726
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@1d
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@20
    move-result-object v1

    #@21
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@24
    .line 728
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    #@26
    new-instance v2, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;

    #@28
    iget v3, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    #@2a
    invoke-direct {v2, v0, v3, p1}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    #@2d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@30
    return-void

    #@31
    :catchall_31
    move-exception p1

    #@32
    .line 726
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@34
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@37
    move-result-object v0

    #@38
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@3b
    .line 727
    throw p1
.end method

.method onMetadataLoadSuccess()V
    .registers 5

    #@0
    .line 704
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 705
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@7
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@e
    const/4 v1, 0x1

    #@f
    .line 707
    :try_start_f
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    #@11
    .line 708
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    #@13
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    #@16
    .line 709
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    #@18
    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_31

    #@1b
    .line 711
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@1d
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@20
    move-result-object v1

    #@21
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@24
    .line 714
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    #@26
    new-instance v2, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;

    #@28
    iget v3, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    #@2a
    invoke-direct {v2, v0, v3}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;I)V

    #@2d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@30
    return-void

    #@31
    :catchall_31
    move-exception v0

    #@32
    .line 711
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@34
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@37
    move-result-object v1

    #@38
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@3b
    .line 712
    throw v0
.end method

.method public process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_5

    #@3
    move v1, v0

    #@4
    goto :goto_9

    #@5
    .line 956
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v1

    #@9
    .line 957
    :goto_9
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    #@c
    move-result-object p1

    #@d
    return-object p1
.end method

.method public process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 5

    #@0
    const v0, 0x7fffffff

    #@3
    .line 991
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method public process(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    .line 1029
    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    #@9
    move-result-object p1

    #@a
    return-object p1
.end method

.method public process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;
    .registers 13

    #@0
    .line 1071
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    #@3
    move-result v0

    #@4
    const-string v1, "Not initialized yet"

    #@6
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@9
    const-string v0, "start cannot be negative"

    #@b
    .line 1072
    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@e
    const-string v0, "end cannot be negative"

    #@10
    .line 1073
    invoke-static {p3, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@13
    const-string v0, "maxEmojiCount cannot be negative"

    #@15
    .line 1074
    invoke-static {p4, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@18
    const/4 v0, 0x0

    #@19
    const/4 v1, 0x1

    #@1a
    if-gt p2, p3, :cond_1e

    #@1c
    move v2, v1

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    move v2, v0

    #@1f
    :goto_1f
    const-string v3, "start should be <= than end"

    #@21
    .line 1075
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    #@24
    if-nez p1, :cond_28

    #@26
    const/4 p1, 0x0

    #@27
    return-object p1

    #@28
    .line 1082
    :cond_28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@2b
    move-result v2

    #@2c
    if-gt p2, v2, :cond_30

    #@2e
    move v2, v1

    #@2f
    goto :goto_31

    #@30
    :cond_30
    move v2, v0

    #@31
    :goto_31
    const-string v3, "start should be < than charSequence length"

    #@33
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    #@36
    .line 1084
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@39
    move-result v2

    #@3a
    if-gt p3, v2, :cond_3e

    #@3c
    move v2, v1

    #@3d
    goto :goto_3f

    #@3e
    :cond_3e
    move v2, v0

    #@3f
    :goto_3f
    const-string v3, "end should be < than charSequence length"

    #@41
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    #@44
    .line 1088
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_61

    #@4a
    if-ne p2, p3, :cond_4d

    #@4c
    goto :goto_61

    #@4d
    :cond_4d
    if-eq p5, v1, :cond_56

    #@4f
    const/4 v1, 0x2

    #@50
    if-eq p5, v1, :cond_54

    #@52
    .line 1102
    iget-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mReplaceAll:Z

    #@54
    :cond_54
    move v6, v0

    #@55
    goto :goto_57

    #@56
    :cond_56
    move v6, v1

    #@57
    .line 1106
    :goto_57
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    #@59
    move-object v2, p1

    #@5a
    move v3, p2

    #@5b
    move v4, p3

    #@5c
    move v5, p4

    #@5d
    invoke-virtual/range {v1 .. v6}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->process(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;

    #@60
    move-result-object p1

    #@61
    :cond_61
    :goto_61
    return-object p1
.end method

.method public registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .registers 5

    #@0
    const-string v0, "initCallback cannot be null"

    #@2
    .line 746
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 748
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@7
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@e
    .line 750
    :try_start_e
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    #@10
    const/4 v1, 0x1

    #@11
    if-eq v0, v1, :cond_1f

    #@13
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    #@15
    const/4 v1, 0x2

    #@16
    if-ne v0, v1, :cond_19

    #@18
    goto :goto_1f

    #@19
    .line 753
    :cond_19
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    #@1b
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_2b

    #@1f
    .line 751
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    #@21
    new-instance v1, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;

    #@23
    iget v2, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    #@25
    invoke-direct {v1, p1, v2}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Landroidx/emoji2/text/EmojiCompat$InitCallback;I)V

    #@28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_35

    #@2b
    .line 756
    :goto_2b
    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@2d
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@30
    move-result-object p1

    #@31
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@34
    return-void

    #@35
    :catchall_35
    move-exception p1

    #@36
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@38
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@3b
    move-result-object v0

    #@3c
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@3f
    .line 757
    throw p1
.end method

.method public unregisterInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .registers 3

    #@0
    const-string v0, "initCallback cannot be null"

    #@2
    .line 766
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 767
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@7
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@e
    .line 769
    :try_start_e
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    #@10
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_1d

    #@13
    .line 771
    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@15
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@18
    move-result-object p1

    #@19
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@1c
    return-void

    #@1d
    :catchall_1d
    move-exception p1

    #@1e
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    #@20
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    #@23
    move-result-object v0

    #@24
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@27
    .line 772
    throw p1
.end method

.method public updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .registers 3

    #@0
    .line 1143
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_19

    #@6
    if-nez p1, :cond_9

    #@8
    goto :goto_19

    #@9
    .line 1146
    :cond_9
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@b
    if-nez v0, :cond_14

    #@d
    .line 1147
    new-instance v0, Landroid/os/Bundle;

    #@f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@12
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@14
    .line 1149
    :cond_14
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    #@16
    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->updateEditorInfoAttrs(Landroid/view/inputmethod/EditorInfo;)V

    #@19
    :cond_19
    :goto_19
    return-void
.end method

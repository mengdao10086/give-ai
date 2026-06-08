.class public Landroidx/core/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "FileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/FileProvider$Api21Impl;,
        Landroidx/core/content/FileProvider$SimplePathStrategy;,
        Landroidx/core/content/FileProvider$PathStrategy;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PATH:Ljava/lang/String; = "path"

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DEVICE_ROOT:Ljava/io/File;

.field private static final DISPLAYNAME_FIELD:Ljava/lang/String; = "displayName"

.field private static final META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String; = "android.support.FILE_PROVIDER_PATHS"

.field private static final TAG_CACHE_PATH:Ljava/lang/String; = "cache-path"

.field private static final TAG_EXTERNAL:Ljava/lang/String; = "external-path"

.field private static final TAG_EXTERNAL_CACHE:Ljava/lang/String; = "external-cache-path"

.field private static final TAG_EXTERNAL_FILES:Ljava/lang/String; = "external-files-path"

.field private static final TAG_EXTERNAL_MEDIA:Ljava/lang/String; = "external-media-path"

.field private static final TAG_FILES_PATH:Ljava/lang/String; = "files-path"

.field private static final TAG_ROOT_PATH:Ljava/lang/String; = "root-path"

.field private static final sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/core/content/FileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mResourceId:I

.field private mStrategy:Landroidx/core/content/FileProvider$PathStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-string v0, "_display_name"

    #@2
    const-string v1, "_size"

    #@4
    .line 355
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroidx/core/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    #@a
    .line 374
    new-instance v0, Ljava/io/File;

    #@c
    const-string v1, "/"

    #@e
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11
    sput-object v0, Landroidx/core/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    #@13
    .line 377
    new-instance v0, Ljava/util/HashMap;

    #@15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@18
    sput-object v0, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    #@1a
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 382
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 383
    iput v0, p0, Landroidx/core/content/FileProvider;->mResourceId:I

    #@6
    return-void
.end method

.method protected constructor <init>(I)V
    .registers 2

    #@0
    .line 386
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #@3
    .line 387
    iput p1, p0, Landroidx/core/content/FileProvider;->mResourceId:I

    #@5
    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .registers 6

    #@0
    .line 901
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    :goto_2
    if-ge v1, v0, :cond_11

    #@4
    aget-object v2, p1, v1

    #@6
    if-eqz v2, :cond_e

    #@8
    .line 903
    new-instance v3, Ljava/io/File;

    #@a
    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d
    move-object p0, v3

    #@e
    :cond_e
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_2

    #@11
    :cond_11
    return-object p0
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4

    #@0
    .line 916
    new-array v0, p1, [Ljava/lang/Object;

    #@2
    const/4 v1, 0x0

    #@3
    .line 917
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6
    return-object v0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    #@0
    .line 910
    new-array v0, p1, [Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    .line 911
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6
    return-object v0
.end method

.method static getFileProviderPathsMetaData(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ProviderInfo;I)Landroid/content/res/XmlResourceParser;
    .registers 6

    #@0
    if-eqz p2, :cond_2a

    #@2
    .line 668
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    #@4
    const-string v0, "android.support.FILE_PROVIDER_PATHS"

    #@6
    if-nez p1, :cond_17

    #@8
    if-eqz p3, :cond_17

    #@a
    .line 669
    new-instance p1, Landroid/os/Bundle;

    #@c
    const/4 v1, 0x1

    #@d
    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(I)V

    #@10
    iput-object p1, p2, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    #@12
    .line 670
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    #@14
    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@17
    .line 674
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1a
    move-result-object p0

    #@1b
    .line 673
    invoke-virtual {p2, p0, v0}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@1e
    move-result-object p0

    #@1f
    if-eqz p0, :cond_22

    #@21
    return-object p0

    #@22
    .line 676
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string p1, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    #@26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw p0

    #@2a
    .line 664
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@2c
    new-instance p2, Ljava/lang/StringBuilder;

    #@2e
    const-string p3, "Couldn\'t find meta-data for provider with authority "

    #@30
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object p1

    #@3b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw p0
.end method

.method private static getPathStrategy(Landroid/content/Context;Ljava/lang/String;I)Landroidx/core/content/FileProvider$PathStrategy;
    .registers 5

    #@0
    .line 641
    sget-object v0, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    #@2
    monitor-enter v0

    #@3
    .line 642
    :try_start_3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroidx/core/content/FileProvider$PathStrategy;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_27

    #@9
    if-nez v1, :cond_25

    #@b
    .line 645
    :try_start_b
    invoke-static {p0, p1, p2}, Landroidx/core/content/FileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;I)Landroidx/core/content/FileProvider$PathStrategy;

    #@e
    move-result-object v1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_f} :catch_13
    .catchall {:try_start_b .. :try_end_f} :catchall_27

    #@f
    .line 653
    :try_start_f
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    goto :goto_25

    #@13
    :catch_13
    move-exception p0

    #@14
    .line 650
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@16
    const-string p2, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    #@18
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    throw p1

    #@1c
    :catch_1c
    move-exception p0

    #@1d
    .line 647
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string p2, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    #@21
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw p1

    #@25
    .line 655
    :cond_25
    :goto_25
    monitor-exit v0

    #@26
    return-object v1

    #@27
    :catchall_27
    move-exception p0

    #@28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    #@29
    throw p0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 449
    invoke-static {p0, p1, v0}, Landroidx/core/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;I)Landroidx/core/content/FileProvider$PathStrategy;

    #@4
    move-result-object p0

    #@5
    .line 450
    invoke-interface {p0, p2}, Landroidx/core/content/FileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    #@0
    .line 479
    invoke-static {p0, p1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    #@3
    move-result-object p0

    #@4
    .line 480
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@7
    move-result-object p0

    #@8
    const-string p1, "displayName"

    #@a
    invoke-virtual {p0, p1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@d
    move-result-object p0

    #@e
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@11
    move-result-object p0

    #@12
    return-object p0
.end method

.method private static modeToMode(Ljava/lang/String;)I
    .registers 4

    #@0
    const-string v0, "r"

    #@2
    .line 876
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    const/high16 p0, 0x10000000

    #@a
    goto :goto_54

    #@b
    :cond_b
    const-string v0, "w"

    #@d
    .line 878
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_52

    #@13
    const-string v0, "wt"

    #@15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1c

    #@1b
    goto :goto_52

    #@1c
    :cond_1c
    const-string v0, "wa"

    #@1e
    .line 882
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_27

    #@24
    const/high16 p0, 0x2a000000

    #@26
    goto :goto_54

    #@27
    :cond_27
    const-string v0, "rw"

    #@29
    .line 886
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_32

    #@2f
    const/high16 p0, 0x38000000

    #@31
    goto :goto_54

    #@32
    :cond_32
    const-string v0, "rwt"

    #@34
    .line 889
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_3d

    #@3a
    const/high16 p0, 0x3c000000    # 0.0078125f

    #@3c
    goto :goto_54

    #@3d
    .line 894
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3f
    new-instance v1, Ljava/lang/StringBuilder;

    #@41
    const-string v2, "Invalid mode: "

    #@43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object p0

    #@4a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object p0

    #@4e
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@51
    throw v0

    #@52
    :cond_52
    :goto_52
    const/high16 p0, 0x2c000000

    #@54
    :goto_54
    return p0
.end method

.method private static parsePathStrategy(Landroid/content/Context;Ljava/lang/String;I)Landroidx/core/content/FileProvider$PathStrategy;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .line 691
    new-instance v0, Landroidx/core/content/FileProvider$SimplePathStrategy;

    #@2
    invoke-direct {v0, p1}, Landroidx/core/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    #@5
    .line 693
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v1

    #@9
    const/16 v2, 0x80

    #@b
    .line 694
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    #@e
    move-result-object v1

    #@f
    .line 695
    invoke-static {p0, p1, v1, p2}, Landroidx/core/content/FileProvider;->getFileProviderPathsMetaData(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ProviderInfo;I)Landroid/content/res/XmlResourceParser;

    #@12
    move-result-object p1

    #@13
    .line 699
    :cond_13
    :goto_13
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    #@16
    move-result p2

    #@17
    const/4 v1, 0x1

    #@18
    if-eq p2, v1, :cond_a5

    #@1a
    const/4 v2, 0x2

    #@1b
    if-ne p2, v2, :cond_13

    #@1d
    .line 701
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@20
    move-result-object p2

    #@21
    const-string v2, "name"

    #@23
    const/4 v3, 0x0

    #@24
    .line 703
    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    const-string v4, "path"

    #@2a
    .line 704
    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    const-string v5, "root-path"

    #@30
    .line 707
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v5

    #@34
    const/4 v6, 0x0

    #@35
    if-eqz v5, :cond_3a

    #@37
    .line 708
    sget-object v3, Landroidx/core/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    #@39
    goto :goto_96

    #@3a
    :cond_3a
    const-string v5, "files-path"

    #@3c
    .line 709
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_47

    #@42
    .line 710
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@45
    move-result-object v3

    #@46
    goto :goto_96

    #@47
    :cond_47
    const-string v5, "cache-path"

    #@49
    .line 711
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v5

    #@4d
    if-eqz v5, :cond_54

    #@4f
    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@52
    move-result-object v3

    #@53
    goto :goto_96

    #@54
    :cond_54
    const-string v5, "external-path"

    #@56
    .line 713
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_61

    #@5c
    .line 714
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@5f
    move-result-object v3

    #@60
    goto :goto_96

    #@61
    :cond_61
    const-string v5, "external-files-path"

    #@63
    .line 715
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v5

    #@67
    if-eqz v5, :cond_73

    #@69
    .line 716
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    #@6c
    move-result-object p2

    #@6d
    .line 717
    array-length v5, p2

    #@6e
    if-lez v5, :cond_96

    #@70
    .line 718
    aget-object v3, p2, v6

    #@72
    goto :goto_96

    #@73
    :cond_73
    const-string v5, "external-cache-path"

    #@75
    .line 720
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v5

    #@79
    if-eqz v5, :cond_85

    #@7b
    .line 721
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    #@7e
    move-result-object p2

    #@7f
    .line 722
    array-length v5, p2

    #@80
    if-lez v5, :cond_96

    #@82
    .line 723
    aget-object v3, p2, v6

    #@84
    goto :goto_96

    #@85
    :cond_85
    const-string v5, "external-media-path"

    #@87
    .line 726
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result p2

    #@8b
    if-eqz p2, :cond_96

    #@8d
    .line 727
    invoke-static {p0}, Landroidx/core/content/FileProvider$Api21Impl;->getExternalMediaDirs(Landroid/content/Context;)[Ljava/io/File;

    #@90
    move-result-object p2

    #@91
    .line 728
    array-length v5, p2

    #@92
    if-lez v5, :cond_96

    #@94
    .line 729
    aget-object v3, p2, v6

    #@96
    :cond_96
    :goto_96
    if-eqz v3, :cond_13

    #@98
    new-array p2, v1, [Ljava/lang/String;

    #@9a
    aput-object v4, p2, v6

    #@9c
    .line 734
    invoke-static {v3, p2}, Landroidx/core/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@9f
    move-result-object p2

    #@a0
    invoke-virtual {v0, v2, p2}, Landroidx/core/content/FileProvider$SimplePathStrategy;->addRoot(Ljava/lang/String;Ljava/io/File;)V

    #@a3
    goto/16 :goto_13

    #@a5
    :cond_a5
    return-object v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4

    #@0
    .line 409
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    #@3
    .line 412
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    #@5
    if-nez v0, :cond_31

    #@7
    .line 415
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@9
    if-eqz v0, :cond_29

    #@b
    .line 419
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@d
    const-string v0, ";"

    #@f
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object p2

    #@13
    const/4 v0, 0x0

    #@14
    aget-object p2, p2, v0

    #@16
    .line 420
    sget-object v0, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    #@18
    monitor-enter v0

    #@19
    .line 421
    :try_start_19
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 422
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_26

    #@1d
    .line 424
    iget v0, p0, Landroidx/core/content/FileProvider;->mResourceId:I

    #@1f
    invoke-static {p1, p2, v0}, Landroidx/core/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;I)Landroidx/core/content/FileProvider$PathStrategy;

    #@22
    move-result-object p1

    #@23
    iput-object p1, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    #@25
    return-void

    #@26
    :catchall_26
    move-exception p1

    #@27
    .line 422
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    #@28
    throw p1

    #@29
    .line 416
    :cond_29
    new-instance p1, Ljava/lang/SecurityException;

    #@2b
    const-string p2, "Provider must grant uri permissions"

    #@2d
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@30
    throw p1

    #@31
    .line 413
    :cond_31
    new-instance p1, Ljava/lang/SecurityException;

    #@33
    const-string p2, "Provider must not be exported"

    #@35
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@38
    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    #@0
    .line 606
    iget-object p2, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    #@2
    invoke-interface {p2, p1}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    #@5
    move-result-object p1

    #@6
    .line 607
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@9
    move-result p1

    #@a
    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    #@0
    .line 558
    iget-object v0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    #@5
    move-result-object p1

    #@6
    .line 560
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    const/16 v1, 0x2e

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@f
    move-result v0

    #@10
    if-ltz v0, :cond_27

    #@12
    .line 562
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@15
    move-result-object p1

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1b
    move-result-object p1

    #@1c
    .line 563
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object p1

    #@24
    if-eqz p1, :cond_27

    #@26
    return-object p1

    #@27
    :cond_27
    const-string p1, "application/octet-stream"

    #@29
    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    #@0
    .line 578
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "No external inserts"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public onCreate()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .line 630
    iget-object v0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    #@5
    move-result-object p1

    #@6
    .line 631
    invoke-static {p2}, Landroidx/core/content/FileProvider;->modeToMode(Ljava/lang/String;)I

    #@9
    move-result p2

    #@a
    .line 632
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@d
    move-result-object p1

    #@e
    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    #@0
    .line 517
    iget-object p3, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    #@2
    invoke-interface {p3, p1}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    #@5
    move-result-object p3

    #@6
    const-string p4, "displayName"

    #@8
    .line 518
    invoke-virtual {p1, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    if-nez p2, :cond_10

    #@e
    .line 521
    sget-object p2, Landroidx/core/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    #@10
    .line 524
    :cond_10
    array-length p4, p2

    #@11
    new-array p4, p4, [Ljava/lang/String;

    #@13
    .line 525
    array-length p5, p2

    #@14
    new-array p5, p5, [Ljava/lang/Object;

    #@16
    .line 527
    array-length v0, p2

    #@17
    const/4 v1, 0x0

    #@18
    move v2, v1

    #@19
    :goto_19
    if-ge v1, v0, :cond_4e

    #@1b
    aget-object v3, p2, v1

    #@1d
    const-string v4, "_display_name"

    #@1f
    .line 528
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_34

    #@25
    .line 529
    aput-object v4, p4, v2

    #@27
    add-int/lit8 v3, v2, 0x1

    #@29
    if-nez p1, :cond_30

    #@2b
    .line 530
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    goto :goto_31

    #@30
    :cond_30
    move-object v4, p1

    #@31
    :goto_31
    aput-object v4, p5, v2

    #@33
    goto :goto_4a

    #@34
    :cond_34
    const-string v4, "_size"

    #@36
    .line 531
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_4b

    #@3c
    .line 532
    aput-object v4, p4, v2

    #@3e
    add-int/lit8 v3, v2, 0x1

    #@40
    .line 533
    invoke-virtual {p3}, Ljava/io/File;->length()J

    #@43
    move-result-wide v4

    #@44
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@47
    move-result-object v4

    #@48
    aput-object v4, p5, v2

    #@4a
    :goto_4a
    move v2, v3

    #@4b
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_19

    #@4e
    .line 537
    :cond_4e
    invoke-static {p4, v2}, Landroidx/core/content/FileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    #@51
    move-result-object p1

    #@52
    .line 538
    invoke-static {p5, v2}, Landroidx/core/content/FileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@55
    move-result-object p2

    #@56
    .line 540
    new-instance p3, Landroid/database/MatrixCursor;

    #@58
    const/4 p4, 0x1

    #@59
    invoke-direct {p3, p1, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    #@5c
    .line 541
    invoke-virtual {p3, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    #@5f
    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    #@0
    .line 588
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string p2, "No external updates"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

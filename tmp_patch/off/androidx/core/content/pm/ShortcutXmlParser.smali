.class public Landroidx/core/content/pm/ShortcutXmlParser;
.super Ljava/lang/Object;
.source "ShortcutXmlParser.java"


# static fields
.field private static final ATTR_SHORTCUT_ID:Ljava/lang/String; = "shortcutId"

.field private static final GET_INSTANCE_LOCK:Ljava/lang/Object;

.field private static final META_DATA_APP_SHORTCUTS:Ljava/lang/String; = "android.app.shortcuts"

.field private static final TAG:Ljava/lang/String; = "ShortcutXmlParser"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static volatile sShortcutIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 60
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/core/content/pm/ShortcutXmlParser;->GET_INSTANCE_LOCK:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, "http://schemas.android.com/apk/res/android"

    #@2
    .line 161
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_d

    #@8
    const/4 v0, 0x0

    #@9
    .line 164
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    :cond_d
    return-object v0
.end method

.method public static getShortcutIds(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 68
    sget-object v0, Landroidx/core/content/pm/ShortcutXmlParser;->sShortcutIds:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_20

    #@4
    .line 69
    sget-object v0, Landroidx/core/content/pm/ShortcutXmlParser;->GET_INSTANCE_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v0

    #@7
    .line 70
    :try_start_7
    sget-object v1, Landroidx/core/content/pm/ShortcutXmlParser;->sShortcutIds:Ljava/util/ArrayList;

    #@9
    if-nez v1, :cond_1b

    #@b
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    #@d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@10
    sput-object v1, Landroidx/core/content/pm/ShortcutXmlParser;->sShortcutIds:Ljava/util/ArrayList;

    #@12
    .line 72
    sget-object v1, Landroidx/core/content/pm/ShortcutXmlParser;->sShortcutIds:Ljava/util/ArrayList;

    #@14
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutXmlParser;->parseShortcutIds(Landroid/content/Context;)Ljava/util/Set;

    #@17
    move-result-object p0

    #@18
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@1b
    .line 74
    :cond_1b
    monitor-exit v0

    #@1c
    goto :goto_20

    #@1d
    :catchall_1d
    move-exception p0

    #@1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    #@1f
    throw p0

    #@20
    .line 76
    :cond_20
    :goto_20
    sget-object p0, Landroidx/core/content/pm/ShortcutXmlParser;->sShortcutIds:Ljava/util/ArrayList;

    #@22
    return-object p0
.end method

.method private static getXmlResourceParser(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/content/res/XmlResourceParser;
    .registers 4

    #@0
    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object p0

    #@4
    const-string v0, "android.app.shortcuts"

    #@6
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@9
    move-result-object p0

    #@a
    if-eqz p0, :cond_d

    #@c
    return-object p0

    #@d
    .line 124
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    const-string v1, "Failed to open android.app.shortcuts meta-data resource of "

    #@13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object p1

    #@20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw p0
.end method

.method public static parseShortcutIds(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .line 139
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 142
    :cond_6
    :goto_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9
    move-result v2

    #@a
    if-eq v2, v1, :cond_37

    #@c
    const/4 v3, 0x3

    #@d
    if-ne v2, v3, :cond_15

    #@f
    .line 143
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v3

    #@13
    if-lez v3, :cond_37

    #@15
    .line 144
    :cond_15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@18
    move-result v3

    #@19
    .line 145
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    const/4 v5, 0x2

    #@1e
    if-ne v2, v5, :cond_6

    #@20
    if-ne v3, v5, :cond_6

    #@22
    const-string v2, "shortcut"

    #@24
    .line 147
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_6

    #@2a
    const-string v2, "shortcutId"

    #@2c
    .line 148
    invoke-static {p0, v2}, Landroidx/core/content/pm/ShortcutXmlParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    if-nez v2, :cond_33

    #@32
    goto :goto_6

    #@33
    .line 153
    :cond_33
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_6

    #@37
    :cond_37
    return-object v0
.end method

.method private static parseShortcutIds(Landroid/content/Context;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 91
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 92
    new-instance v1, Landroid/content/Intent;

    #@7
    const-string v2, "android.intent.action.MAIN"

    #@9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    const-string v2, "android.intent.category.LAUNCHER"

    #@e
    .line 93
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@11
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@18
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v2

    #@1c
    const/16 v3, 0x80

    #@1e
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@21
    move-result-object v1

    #@22
    if-eqz v1, :cond_6e

    #@24
    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_2b

    #@2a
    goto :goto_6e

    #@2b
    .line 102
    :cond_2b
    :try_start_2b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_6e

    #@35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    check-cast v2, Landroid/content/pm/ResolveInfo;

    #@3b
    .line 103
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3d
    .line 104
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@3f
    if-eqz v3, :cond_2f

    #@41
    const-string v4, "android.app.shortcuts"

    #@43
    .line 105
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_2f

    #@49
    .line 106
    invoke-static {p0, v2}, Landroidx/core/content/pm/ShortcutXmlParser;->getXmlResourceParser(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/content/res/XmlResourceParser;

    #@4c
    move-result-object v2
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4d} :catch_66

    #@4d
    .line 107
    :try_start_4d
    invoke-static {v2}, Landroidx/core/content/pm/ShortcutXmlParser;->parseShortcutIds(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    #@50
    move-result-object v3

    #@51
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_5a

    #@54
    if-eqz v2, :cond_2f

    #@56
    .line 108
    :try_start_56
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_66

    #@59
    goto :goto_2f

    #@5a
    :catchall_5a
    move-exception p0

    #@5b
    if-eqz v2, :cond_65

    #@5d
    .line 106
    :try_start_5d
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    #@60
    goto :goto_65

    #@61
    :catchall_61
    move-exception v1

    #@62
    :try_start_62
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@65
    :cond_65
    :goto_65
    throw p0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_66} :catch_66

    #@66
    :catch_66
    move-exception p0

    #@67
    const-string v1, "ShortcutXmlParser"

    #@69
    const-string v2, "Failed to parse the Xml resource: "

    #@6b
    .line 114
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6e
    :cond_6e
    :goto_6e
    return-object v0
.end method

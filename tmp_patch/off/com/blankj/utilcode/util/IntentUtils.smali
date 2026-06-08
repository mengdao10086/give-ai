.class public final Lcom/blankj/utilcode/util/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static getCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    #@0
    .line 421
    new-instance v0, Landroid/content/Intent;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    const-string v2, "tel:"

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object p0

    #@11
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@18
    move-result-object p0

    #@19
    const-string v1, "android.intent.action.CALL"

    #@1b
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@1e
    const/4 p0, 0x1

    #@1f
    .line 422
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    #@22
    move-result-object p0

    #@23
    return-object p0
.end method

.method public static getCaptureIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 446
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/IntentUtils;->getCaptureIntent(Landroid/net/Uri;Z)Landroid/content/Intent;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static getCaptureIntent(Landroid/net/Uri;Z)Landroid/content/Intent;
    .registers 4

    #@0
    .line 457
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    const-string v1, "output"

    #@9
    .line 458
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@c
    const/4 p0, 0x1

    #@d
    .line 459
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@10
    .line 460
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    #@13
    move-result-object p0

    #@14
    return-object p0
.end method

.method public static getComponentIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 330
    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/IntentUtils;->getComponentIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/content/Intent;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getComponentIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 358
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/IntentUtils;->getComponentIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/content/Intent;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static getComponentIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/content/Intent;
    .registers 5

    #@0
    .line 374
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    if-eqz p2, :cond_a

    #@7
    .line 375
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@a
    .line 376
    :cond_a
    new-instance p2, Landroid/content/ComponentName;

    #@c
    invoke-direct {p2, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 377
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@12
    .line 378
    invoke-static {v0, p3}, Lcom/blankj/utilcode/util/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    #@15
    move-result-object p0

    #@16
    return-object p0
.end method

.method public static getComponentIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 344
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/IntentUtils;->getComponentIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/content/Intent;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static getDialIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    #@0
    .line 408
    new-instance v0, Landroid/content/Intent;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    const-string v2, "tel:"

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object p0

    #@11
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@18
    move-result-object p0

    #@19
    const-string v1, "android.intent.action.DIAL"

    #@1b
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@1e
    const/4 p0, 0x1

    #@1f
    .line 409
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    #@22
    move-result-object p0

    #@23
    return-object p0
.end method

.method public static getInstallAppIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 93
    :cond_4
    new-instance v0, Landroid/content/Intent;

    #@6
    const-string v1, "android.intent.action.VIEW"

    #@8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b
    const-string v1, "application/vnd.android.package-archive"

    #@d
    .line 95
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@10
    const/4 p0, 0x1

    #@11
    .line 97
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@14
    const/high16 p0, 0x10000000

    #@16
    .line 99
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@19
    move-result-object p0

    #@1a
    return-object p0
.end method

.method public static getInstallAppIntent(Ljava/io/File;)Landroid/content/Intent;
    .registers 3

    #@0
    .line 72
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 77
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, ".utilcode.fileprovider"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 78
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@26
    move-result-object v1

    #@27
    invoke-static {v1, v0, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    #@2a
    move-result-object p0

    #@2b
    .line 80
    invoke-static {p0}, Lcom/blankj/utilcode/util/IntentUtils;->getInstallAppIntent(Landroid/net/Uri;)Landroid/content/Intent;

    #@2e
    move-result-object p0

    #@2f
    return-object p0
.end method

.method public static getInstallAppIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 1

    #@0
    .line 60
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/IntentUtils;->getInstallAppIntent(Ljava/io/File;)Landroid/content/Intent;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;
    .registers 2

    #@0
    if-eqz p1, :cond_8

    #@2
    const/high16 p1, 0x10000000

    #@4
    .line 464
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@7
    move-result-object p0

    #@8
    :cond_8
    return-object p0
.end method

.method public static getLaunchAppDetailsSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 138
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/IntentUtils;->getLaunchAppDetailsSettingsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static getLaunchAppDetailsSettingsIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 5

    #@0
    .line 148
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    const-string v2, "package:"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object p0

    #@12
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object p0

    #@16
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@19
    move-result-object p0

    #@1a
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@1d
    .line 150
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    #@20
    move-result-object p0

    #@21
    return-object p0
.end method

.method public static getLaunchAppIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    #@0
    .line 123
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 124
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_c

    #@a
    const/4 p0, 0x0

    #@b
    return-object p0

    #@c
    .line 125
    :cond_c
    new-instance v1, Landroid/content/Intent;

    #@e
    const-string v2, "android.intent.action.MAIN"

    #@10
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@13
    const-string v2, "android.intent.category.LAUNCHER"

    #@15
    .line 126
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@18
    .line 127
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    const/high16 p0, 0x10000000

    #@1d
    .line 128
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@20
    move-result-object p0

    #@21
    return-object p0
.end method

.method public static getSendSmsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    #@0
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "smsto:"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object p0

    #@f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object p0

    #@13
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@16
    move-result-object p0

    #@17
    .line 434
    new-instance v0, Landroid/content/Intent;

    #@19
    const-string v1, "android.intent.action.SENDTO"

    #@1b
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@1e
    const-string p0, "sms_body"

    #@20
    .line 435
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@23
    const/4 p0, 0x1

    #@24
    .line 436
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    #@27
    move-result-object p0

    #@28
    return-object p0
.end method

.method public static getShareImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 2

    #@0
    const-string v0, ""

    #@2
    .line 194
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/IntentUtils;->getShareTextImageIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getShareImageIntent(Ljava/io/File;)Landroid/content/Intent;
    .registers 2

    #@0
    const-string v0, ""

    #@2
    .line 184
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/IntentUtils;->getShareTextImageIntent(Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getShareImageIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    #@0
    const-string v0, ""

    #@2
    .line 174
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/IntentUtils;->getShareTextImageIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getShareImageIntent(Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    const-string v0, ""

    #@2
    .line 262
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/IntentUtils;->getShareTextImageIntent(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getShareImageIntent(Ljava/util/LinkedList;)Landroid/content/Intent;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    const-string v0, ""

    #@2
    .line 242
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/IntentUtils;->getShareTextImageIntent(Ljava/lang/String;Ljava/util/LinkedList;)Landroid/content/Intent;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getShareImageIntent(Ljava/util/List;)Landroid/content/Intent;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    const-string v0, ""

    #@2
    .line 252
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/IntentUtils;->getShareTextImageIntent(Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getShareTextImageIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 4

    #@0
    .line 227
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.action.SEND"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    const-string v1, "android.intent.extra.TEXT"

    #@9
    .line 228
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@c
    const-string p0, "android.intent.extra.STREAM"

    #@e
    .line 229
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@11
    const-string p0, "image/*"

    #@13
    .line 230
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@16
    const-string p0, ""

    #@18
    .line 231
    invoke-static {v0, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@1b
    move-result-object p0

    #@1c
    const/4 p1, 0x1

    #@1d
    .line 232
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    #@20
    move-result-object p0

    #@21
    return-object p0
.end method

.method public static getShareTextImageIntent(Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;
    .registers 2

    #@0
    .line 216
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->file2Uri(Ljava/io/File;)Landroid/net/Uri;

    #@3
    move-result-object p1

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/IntentUtils;->getShareTextImageIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getShareTextImageIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    #@0
    .line 205
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object p1

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/IntentUtils;->getShareTextImageIntent(Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static getShareTextImageIntent(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    .line 314
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    const-string v1, "android.intent.extra.TEXT"

    #@9
    .line 315
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@c
    const-string p0, "android.intent.extra.STREAM"

    #@e
    .line 316
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@11
    const-string p0, "image/*"

    #@13
    .line 317
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@16
    const-string p0, ""

    #@18
    .line 318
    invoke-static {v0, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@1b
    move-result-object p0

    #@1c
    const/4 p1, 0x1

    #@1d
    .line 319
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    #@20
    move-result-object p0

    #@21
    return-object p0
.end method

.method public static getShareTextImageIntent(Ljava/lang/String;Ljava/util/LinkedList;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    .line 274
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    if-eqz p1, :cond_21

    #@7
    .line 276
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object p1

    #@b
    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_21

    #@11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/String;

    #@17
    .line 277
    invoke-static {v1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    #@1a
    move-result-object v1

    #@1b
    if-eqz v1, :cond_b

    #@1d
    .line 279
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    goto :goto_b

    #@21
    .line 283
    :cond_21
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/IntentUtils;->getShareTextImageIntent(Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    #@24
    move-result-object p0

    #@25
    return-object p0
.end method

.method public static getShareTextImageIntent(Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    .line 294
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    if-eqz p1, :cond_21

    #@7
    .line 296
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object p1

    #@b
    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_21

    #@11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/io/File;

    #@17
    .line 297
    invoke-static {v1}, Lcom/blankj/utilcode/util/UtilsBridge;->file2Uri(Ljava/io/File;)Landroid/net/Uri;

    #@1a
    move-result-object v1

    #@1b
    if-eqz v1, :cond_b

    #@1d
    .line 299
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    goto :goto_b

    #@21
    .line 303
    :cond_21
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/IntentUtils;->getShareTextImageIntent(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@24
    move-result-object p0

    #@25
    return-object p0
.end method

.method public static getShareTextIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    #@0
    .line 160
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.action.SEND"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    const-string v1, "text/plain"

    #@9
    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@c
    const-string v1, "android.intent.extra.TEXT"

    #@e
    .line 162
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@11
    const-string p0, ""

    #@13
    .line 163
    invoke-static {v0, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@16
    move-result-object p0

    #@17
    const/4 v0, 0x1

    #@18
    .line 164
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    #@1b
    move-result-object p0

    #@1c
    return-object p0
.end method

.method public static getShutdownIntent()Landroid/content/Intent;
    .registers 3

    #@0
    .line 393
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    #@9
    const/4 v2, 0x0

    #@a
    .line 397
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@d
    const/high16 v1, 0x10000000

    #@f
    .line 398
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getUninstallAppIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    #@0
    .line 111
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.action.DELETE"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    const-string v2, "package:"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object p0

    #@12
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object p0

    #@16
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@19
    move-result-object p0

    #@1a
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@1d
    const/high16 p0, 0x10000000

    #@1f
    .line 113
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@22
    move-result-object p0

    #@23
    return-object p0
.end method

.method public static isIntentAvailable(Landroid/content/Intent;)Z
    .registers 3

    #@0
    .line 45
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    .line 46
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    const/high16 v1, 0x10000

    #@a
    .line 47
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@d
    move-result-object p0

    #@e
    .line 48
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@11
    move-result p0

    #@12
    if-lez p0, :cond_16

    #@14
    const/4 p0, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 p0, 0x0

    #@17
    :goto_17
    return p0
.end method

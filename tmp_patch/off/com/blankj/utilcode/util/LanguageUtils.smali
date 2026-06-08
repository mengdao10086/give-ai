.class public Lcom/blankj/utilcode/util/LanguageUtils;
.super Ljava/lang/Object;
.source "LanguageUtils.java"


# static fields
.field private static final KEY_LOCALE:Ljava/lang/String; = "KEY_LOCALE"

.field private static final VALUE_FOLLOW_SYSTEM:Ljava/lang/String; = "VALUE_FOLLOW_SYSTEM"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method static synthetic access$000(Z)V
    .registers 1

    #@0
    .line 24
    invoke-static {p0}, Lcom/blankj/utilcode/util/LanguageUtils;->restart(Z)V

    #@3
    return-void
.end method

.method static applyLanguage(Landroid/app/Activity;)V
    .registers 3

    #@0
    .line 231
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    #@3
    move-result-object v0

    #@4
    const-string v1, "KEY_LOCALE"

    #@6
    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_11

    #@10
    return-void

    #@11
    :cond_11
    const-string v1, "VALUE_FOLLOW_SYSTEM"

    #@13
    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_26

    #@19
    .line 238
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@20
    move-result-object v0

    #@21
    invoke-static {v0}, Lcom/blankj/utilcode/util/LanguageUtils;->getLocal(Landroid/content/res/Configuration;)Ljava/util/Locale;

    #@24
    move-result-object v0

    #@25
    goto :goto_2a

    #@26
    .line 240
    :cond_26
    invoke-static {v0}, Lcom/blankj/utilcode/util/LanguageUtils;->string2Locale(Ljava/lang/String;)Ljava/util/Locale;

    #@29
    move-result-object v0

    #@2a
    :goto_2a
    if-nez v0, :cond_2d

    #@2c
    return-void

    #@2d
    .line 245
    :cond_2d
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LanguageUtils;->updateConfiguration(Landroid/content/Context;Ljava/util/Locale;)V

    #@30
    .line 246
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@33
    move-result-object p0

    #@34
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LanguageUtils;->updateConfiguration(Landroid/content/Context;Ljava/util/Locale;)V

    #@37
    return-void
.end method

.method public static applyLanguage(Ljava/util/Locale;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 55
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LanguageUtils;->applyLanguage(Ljava/util/Locale;Z)V

    #@4
    return-void
.end method

.method public static applyLanguage(Ljava/util/Locale;Z)V
    .registers 2

    #@0
    .line 66
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LanguageUtils;->applyLanguageReal(Ljava/util/Locale;Z)V

    #@3
    return-void
.end method

.method private static applyLanguageReal(Ljava/util/Locale;Z)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    const-string v1, "KEY_LOCALE"

    #@3
    if-nez p0, :cond_f

    #@5
    .line 72
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    #@8
    move-result-object v2

    #@9
    const-string v3, "VALUE_FOLLOW_SYSTEM"

    #@b
    invoke-virtual {v2, v1, v3, v0}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    #@e
    goto :goto_1a

    #@f
    .line 74
    :cond_f
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    #@12
    move-result-object v2

    #@13
    invoke-static {p0}, Lcom/blankj/utilcode/util/LanguageUtils;->locale2String(Ljava/util/Locale;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v1, v3, v0}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    #@1a
    :goto_1a
    if-nez p0, :cond_28

    #@1c
    .line 77
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@1f
    move-result-object p0

    #@20
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@23
    move-result-object p0

    #@24
    invoke-static {p0}, Lcom/blankj/utilcode/util/LanguageUtils;->getLocal(Landroid/content/res/Configuration;)Ljava/util/Locale;

    #@27
    move-result-object p0

    #@28
    .line 78
    :cond_28
    new-instance v0, Lcom/blankj/utilcode/util/LanguageUtils$1;

    #@2a
    invoke-direct {v0, p1}, Lcom/blankj/utilcode/util/LanguageUtils$1;-><init>(Z)V

    #@2d
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LanguageUtils;->updateAppContextLanguage(Ljava/util/Locale;Lcom/blankj/utilcode/util/Utils$Consumer;)V

    #@30
    return-void
.end method

.method public static applySystemLanguage()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    .line 37
    invoke-static {v0}, Lcom/blankj/utilcode/util/LanguageUtils;->applySystemLanguage(Z)V

    #@4
    return-void
.end method

.method public static applySystemLanguage(Z)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 46
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LanguageUtils;->applyLanguageReal(Ljava/util/Locale;Z)V

    #@4
    return-void
.end method

.method public static attachBaseContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    #@0
    .line 209
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    #@3
    move-result-object v0

    #@4
    const-string v1, "KEY_LOCALE"

    #@6
    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_2f

    #@10
    const-string v1, "VALUE_FOLLOW_SYSTEM"

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_19

    #@18
    goto :goto_2f

    #@19
    .line 214
    :cond_19
    invoke-static {v0}, Lcom/blankj/utilcode/util/LanguageUtils;->string2Locale(Ljava/lang/String;)Ljava/util/Locale;

    #@1c
    move-result-object v0

    #@1d
    if-nez v0, :cond_20

    #@1f
    return-object p0

    #@20
    .line 217
    :cond_20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@23
    move-result-object v1

    #@24
    .line 218
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@27
    move-result-object v1

    #@28
    .line 220
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LanguageUtils;->setLocal(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    #@2b
    .line 223
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    #@2e
    move-result-object p0

    #@2f
    :cond_2f
    :goto_2f
    return-object p0
.end method

.method public static getAppContextLanguage()Ljava/util/Locale;
    .registers 1

    #@0
    .line 152
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/blankj/utilcode/util/LanguageUtils;->getContextLanguage(Landroid/content/Context;)Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getAppliedLanguage()Ljava/util/Locale;
    .registers 2

    #@0
    .line 130
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    #@3
    move-result-object v0

    #@4
    const-string v1, "KEY_LOCALE"

    #@6
    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1e

    #@10
    const-string v1, "VALUE_FOLLOW_SYSTEM"

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_19

    #@18
    goto :goto_1e

    #@19
    .line 134
    :cond_19
    invoke-static {v0}, Lcom/blankj/utilcode/util/LanguageUtils;->string2Locale(Ljava/lang/String;)Ljava/util/Locale;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    #@1f
    return-object v0
.end method

.method public static getContextLanguage(Landroid/content/Context;)Ljava/util/Locale;
    .registers 1

    #@0
    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0}, Lcom/blankj/utilcode/util/LanguageUtils;->getLocal(Landroid/content/res/Configuration;)Ljava/util/Locale;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method private static getLocal(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .registers 2

    #@0
    .line 305
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method

.method public static getSystemLanguage()Ljava/util/Locale;
    .registers 1

    #@0
    .line 161
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/LanguageUtils;->getLocal(Landroid/content/res/Configuration;)Ljava/util/Locale;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static isAppliedLanguage()Z
    .registers 1

    #@0
    .line 107
    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->getAppliedLanguage()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public static isAppliedLanguage(Ljava/util/Locale;)Z
    .registers 2

    #@0
    .line 117
    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->getAppliedLanguage()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return p0

    #@8
    .line 121
    :cond_8
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LanguageUtils;->isSameLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    #@b
    move-result p0

    #@c
    return p0
.end method

.method private static isRightFormatLocalStr(Ljava/lang/String;)Z
    .registers 8

    #@0
    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object p0

    #@4
    .line 287
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    move v2, v1

    #@7
    move v3, v2

    #@8
    :goto_8
    const/4 v4, 0x1

    #@9
    if-ge v2, v0, :cond_19

    #@b
    aget-char v5, p0, v2

    #@d
    const/16 v6, 0x24

    #@f
    if-ne v5, v6, :cond_16

    #@11
    if-lt v3, v4, :cond_14

    #@13
    return v1

    #@14
    :cond_14
    add-int/lit8 v3, v3, 0x1

    #@16
    :cond_16
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_8

    #@19
    :cond_19
    if-ne v3, v4, :cond_1c

    #@1b
    move v1, v4

    #@1c
    :cond_1c
    return v1
.end method

.method private static isSameLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 4

    #@0
    .line 299
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1e

    #@e
    .line 300
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@11
    move-result-object p1

    #@12
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@15
    move-result-object p0

    #@16
    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/UtilsBridge;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@19
    move-result p0

    #@1a
    if-eqz p0, :cond_1e

    #@1c
    const/4 p0, 0x1

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    const/4 p0, 0x0

    #@1f
    :goto_1f
    return p0
.end method

.method private static locale2String(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    #@0
    .line 257
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 258
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, "$"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p0

    #@1b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    return-object p0
.end method

.method static pollCheckAppContextLocal(Ljava/util/Locale;ILcom/blankj/utilcode/util/Utils$Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "I",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 175
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    .line 176
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@b
    move-result-object v1

    #@c
    .line 177
    invoke-static {v1}, Lcom/blankj/utilcode/util/LanguageUtils;->getLocal(Landroid/content/res/Configuration;)Ljava/util/Locale;

    #@f
    move-result-object v2

    #@10
    .line 179
    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LanguageUtils;->setLocal(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    #@13
    .line 181
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v3, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@22
    if-nez p2, :cond_25

    #@24
    return-void

    #@25
    .line 185
    :cond_25
    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LanguageUtils;->isSameLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_34

    #@2b
    const/4 p0, 0x1

    #@2c
    .line 186
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2f
    move-result-object p0

    #@30
    invoke-interface {p2, p0}, Lcom/blankj/utilcode/util/Utils$Consumer;->accept(Ljava/lang/Object;)V

    #@33
    goto :goto_52

    #@34
    :cond_34
    const/16 v0, 0x14

    #@36
    if-ge p1, v0, :cond_43

    #@38
    .line 189
    new-instance v0, Lcom/blankj/utilcode/util/LanguageUtils$2;

    #@3a
    invoke-direct {v0, p0, p1, p2}, Lcom/blankj/utilcode/util/LanguageUtils$2;-><init>(Ljava/util/Locale;ILcom/blankj/utilcode/util/Utils$Consumer;)V

    #@3d
    const-wide/16 p0, 0x10

    #@3f
    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    #@42
    return-void

    #@43
    :cond_43
    const-string p0, "LanguageUtils"

    #@45
    const-string p1, "appLocal didn\'t update."

    #@47
    .line 197
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    const/4 p0, 0x0

    #@4b
    .line 198
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4e
    move-result-object p0

    #@4f
    invoke-interface {p2, p0}, Lcom/blankj/utilcode/util/Utils$Consumer;->accept(Ljava/lang/Object;)V

    #@52
    :goto_52
    return-void
.end method

.method private static restart(Z)V
    .registers 2

    #@0
    if-eqz p0, :cond_6

    #@2
    .line 93
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->relaunchApp()V

    #@5
    goto :goto_1e

    #@6
    .line 95
    :cond_6
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    #@9
    move-result-object p0

    #@a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object p0

    #@e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1e

    #@14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/app/Activity;

    #@1a
    .line 96
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    #@1d
    goto :goto_e

    #@1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method private static setLocal(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .registers 2

    #@0
    .line 313
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    #@3
    return-void
.end method

.method private static string2Locale(Ljava/lang/String;)Ljava/util/Locale;
    .registers 4

    #@0
    .line 263
    invoke-static {p0}, Lcom/blankj/utilcode/util/LanguageUtils;->string2LocaleReal(Ljava/lang/String;)Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_29

    #@6
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    const-string v2, "The string of "

    #@a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object p0

    #@11
    const-string v1, " is not in the correct format."

    #@13
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p0

    #@17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    const-string v1, "LanguageUtils"

    #@1d
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 266
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    #@23
    move-result-object p0

    #@24
    const-string v1, "KEY_LOCALE"

    #@26
    invoke-virtual {p0, v1}, Lcom/blankj/utilcode/util/SPUtils;->remove(Ljava/lang/String;)V

    #@29
    :cond_29
    return-object v0
.end method

.method private static string2LocaleReal(Ljava/lang/String;)Ljava/util/Locale;
    .registers 5

    #@0
    .line 272
    invoke-static {p0}, Lcom/blankj/utilcode/util/LanguageUtils;->isRightFormatLocalStr(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return-object v1

    #@8
    :cond_8
    :try_start_8
    const-string v0, "$"

    #@a
    .line 277
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    .line 278
    new-instance v2, Ljava/util/Locale;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    invoke-direct {v2, v3, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_1f

    #@1e
    return-object v2

    #@1f
    :catch_1f
    return-object v1
.end method

.method public static updateAppContextLanguage(Ljava/util/Locale;Lcom/blankj/utilcode/util/Utils$Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 171
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/LanguageUtils;->pollCheckAppContextLocal(Ljava/util/Locale;ILcom/blankj/utilcode/util/Utils$Consumer;)V

    #@4
    return-void
.end method

.method private static updateConfiguration(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 3

    #@0
    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p0

    #@4
    .line 251
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v0

    #@8
    .line 252
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LanguageUtils;->setLocal(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    #@b
    .line 253
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@e
    move-result-object p1

    #@f
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@12
    return-void
.end method

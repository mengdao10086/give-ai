.class public final Lcom/blankj/utilcode/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/PermissionUtils$ThemeCallback;,
        Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;,
        Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;,
        Lcom/blankj/utilcode/util/PermissionUtils$SingleCallback;,
        Lcom/blankj/utilcode/util/PermissionUtils$OnRationaleListener;,
        Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;,
        Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/blankj/utilcode/util/PermissionUtils;

.field private static sSimpleCallback4DrawOverlays:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

.field private static sSimpleCallback4WriteSettings:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;


# instance fields
.field private mFullCallback:Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;

.field private mOnExplainListener:Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;

.field private mOnRationaleListener:Lcom/blankj/utilcode/util/PermissionUtils$OnRationaleListener;

.field private mPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsDenied:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsDeniedForever:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsGranted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsParam:[Ljava/lang/String;

.field private mPermissionsRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimpleCallback:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

.field private mSingleCallback:Lcom/blankj/utilcode/util/PermissionUtils$SingleCallback;

.field private mThemeCallback:Lcom/blankj/utilcode/util/PermissionUtils$ThemeCallback;


# direct methods
.method private varargs constructor <init>([Ljava/lang/String;)V
    .registers 2

    #@0
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 227
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    #@5
    .line 228
    sput-object p0, Lcom/blankj/utilcode/util/PermissionUtils;->sInstance:Lcom/blankj/utilcode/util/PermissionUtils;

    #@7
    return-void
.end method

.method static synthetic access$002(Lcom/blankj/utilcode/util/PermissionUtils;Ljava/util/List;)Ljava/util/List;
    .registers 2

    #@0
    .line 40
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    #@2
    return-object p1
.end method

.method static synthetic access$1000(Lcom/blankj/utilcode/util/PermissionUtils;Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)Z
    .registers 3

    #@0
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/PermissionUtils;->shouldRationale(Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$102(Lcom/blankj/utilcode/util/PermissionUtils;Ljava/util/List;)Ljava/util/List;
    .registers 2

    #@0
    .line 40
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    #@2
    return-object p1
.end method

.method static synthetic access$1100(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)V
    .registers 2

    #@0
    .line 40
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->onRequestPermissionsResult(Landroid/app/Activity;)V

    #@3
    return-void
.end method

.method static synthetic access$1200()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;
    .registers 1

    #@0
    .line 40
    sget-object v0, Lcom/blankj/utilcode/util/PermissionUtils;->sSimpleCallback4WriteSettings:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    #@2
    return-object v0
.end method

.method static synthetic access$1202(Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;
    .registers 1

    #@0
    .line 40
    sput-object p0, Lcom/blankj/utilcode/util/PermissionUtils;->sSimpleCallback4WriteSettings:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    #@2
    return-object p0
.end method

.method static synthetic access$1300()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;
    .registers 1

    #@0
    .line 40
    sget-object v0, Lcom/blankj/utilcode/util/PermissionUtils;->sSimpleCallback4DrawOverlays:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    #@2
    return-object v0
.end method

.method static synthetic access$1302(Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;
    .registers 1

    #@0
    .line 40
    sput-object p0, Lcom/blankj/utilcode/util/PermissionUtils;->sSimpleCallback4DrawOverlays:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Lcom/blankj/utilcode/util/PermissionUtils;)V
    .registers 1

    #@0
    .line 40
    invoke-direct {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->requestCallback()V

    #@3
    return-void
.end method

.method static synthetic access$300()Lcom/blankj/utilcode/util/PermissionUtils;
    .registers 1

    #@0
    .line 40
    sget-object v0, Lcom/blankj/utilcode/util/PermissionUtils;->sInstance:Lcom/blankj/utilcode/util/PermissionUtils;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;
    .registers 1

    #@0
    .line 40
    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    #@2
    return-object p0
.end method

.method static synthetic access$500(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$ThemeCallback;
    .registers 1

    #@0
    .line 40
    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mThemeCallback:Lcom/blankj/utilcode/util/PermissionUtils$ThemeCallback;

    #@2
    return-object p0
.end method

.method static synthetic access$600(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;
    .registers 1

    #@0
    .line 40
    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mOnExplainListener:Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;

    #@2
    return-object p0
.end method

.method static synthetic access$602(Lcom/blankj/utilcode/util/PermissionUtils;Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;)Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;
    .registers 2

    #@0
    .line 40
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mOnExplainListener:Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;

    #@2
    return-object p1
.end method

.method static synthetic access$800(Landroid/app/Activity;I)V
    .registers 2

    #@0
    .line 40
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->startWriteSettingsActivity(Landroid/app/Activity;I)V

    #@3
    return-void
.end method

.method static synthetic access$900(Landroid/app/Activity;I)V
    .registers 2

    #@0
    .line 40
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->startOverlayPermissionActivity(Landroid/app/Activity;I)V

    #@3
    return-void
.end method

.method public static getPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 66
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 76
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    const/16 v1, 0x1000

    #@a
    .line 78
    :try_start_a
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@d
    move-result-object p0

    #@e
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@10
    if-nez p0, :cond_17

    #@12
    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@15
    move-result-object p0

    #@16
    return-object p0

    #@17
    .line 80
    :cond_17
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1a
    move-result-object p0
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_1b} :catch_1c

    #@1b
    return-object p0

    #@1c
    :catch_1c
    move-exception p0

    #@1d
    .line 82
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@20
    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@23
    move-result-object p0

    #@24
    return-object p0
.end method

.method private getPermissionsStatus(Landroid/app/Activity;)V
    .registers 5

    #@0
    .line 375
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_2f

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/String;

    #@12
    .line 376
    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1e

    #@18
    .line 377
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    #@1a
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d
    goto :goto_6

    #@1e
    .line 379
    :cond_1e
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    #@20
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    .line 380
    invoke-virtual {p1, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_6

    #@29
    .line 381
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    #@2b
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_6

    #@2f
    :cond_2f
    return-void
.end method

.method private static varargs getRequestAndDeniedPermissions([Ljava/lang/String;)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .line 109
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 111
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->getPermissions()Ljava/util/List;

    #@d
    move-result-object v2

    #@e
    .line 112
    array-length v3, p0

    #@f
    const/4 v4, 0x0

    #@10
    move v5, v4

    #@11
    :goto_11
    if-ge v5, v3, :cond_4f

    #@13
    aget-object v6, p0, v5

    #@15
    .line 114
    invoke-static {v6}, Lcom/blankj/utilcode/constant/PermissionConstants;->getPermissions(Ljava/lang/String;)[Ljava/lang/String;

    #@18
    move-result-object v7

    #@19
    .line 115
    array-length v8, v7

    #@1a
    move v9, v4

    #@1b
    move v10, v9

    #@1c
    :goto_1c
    if-ge v9, v8, :cond_2d

    #@1e
    aget-object v11, v7, v9

    #@20
    .line 116
    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v12

    #@24
    if-eqz v12, :cond_2a

    #@26
    .line 117
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    const/4 v10, 0x1

    #@2a
    :cond_2a
    add-int/lit8 v9, v9, 0x1

    #@2c
    goto :goto_1c

    #@2d
    :cond_2d
    if-nez v10, :cond_4c

    #@2f
    .line 122
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@32
    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    #@34
    const-string v8, "U should add the permission of "

    #@36
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@39
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    const-string v7, " in manifest."

    #@3f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    const-string v7, "PermissionUtils"

    #@49
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    #@4e
    goto :goto_11

    #@4f
    .line 126
    :cond_4f
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@52
    move-result-object p0

    #@53
    return-object p0
.end method

.method private static isGranted(Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 132
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    #@7
    move-result p0

    #@8
    if-nez p0, :cond_c

    #@a
    const/4 p0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p0, 0x0

    #@d
    :goto_d
    return p0
.end method

.method public static varargs isGranted([Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 94
    invoke-static {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->getRequestAndDeniedPermissions([Ljava/lang/String;)Landroid/util/Pair;

    #@3
    move-result-object p0

    #@4
    .line 95
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    .line 96
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@b
    move-result v0

    #@c
    const/4 v1, 0x0

    #@d
    if-nez v0, :cond_10

    #@f
    return v1

    #@10
    .line 99
    :cond_10
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@12
    check-cast p0, Ljava/util/List;

    #@14
    .line 100
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object p0

    #@18
    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2b

    #@1e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/lang/String;

    #@24
    .line 101
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted(Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_18

    #@2a
    return v1

    #@2b
    :cond_2b
    const/4 p0, 0x1

    #@2c
    return p0
.end method

.method public static isGrantedDrawOverlays()Z
    .registers 1

    #@0
    .line 173
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isGrantedWriteSettings()Z
    .registers 1

    #@0
    .line 142
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static launchAppDetailsSettings()V
    .registers 2

    #@0
    .line 201
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x1

    #@9
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->getLaunchAppDetailsSettingsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    #@c
    move-result-object v0

    #@d
    .line 202
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->isIntentAvailable(Landroid/content/Intent;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_14

    #@13
    return-void

    #@14
    .line 203
    :cond_14
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    #@1b
    return-void
.end method

.method private onRequestPermissionsResult(Landroid/app/Activity;)V
    .registers 2

    #@0
    .line 416
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->getPermissionsStatus(Landroid/app/Activity;)V

    #@3
    .line 417
    invoke-direct {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->requestCallback()V

    #@6
    return-void
.end method

.method public static varargs permission([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;
    .registers 2

    #@0
    .line 223
    new-instance v0, Lcom/blankj/utilcode/util/PermissionUtils;

    #@2
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/PermissionUtils;-><init>([Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public static varargs permissionGroup([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;
    .registers 1

    #@0
    .line 213
    invoke-static {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->permission([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private rationalInner(Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)V
    .registers 5

    #@0
    .line 358
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->getPermissionsStatus(Landroid/app/Activity;)V

    #@3
    .line 359
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mOnRationaleListener:Lcom/blankj/utilcode/util/PermissionUtils$OnRationaleListener;

    #@5
    new-instance v1, Lcom/blankj/utilcode/util/PermissionUtils$1;

    #@7
    invoke-direct {v1, p0, p2, p1}, Lcom/blankj/utilcode/util/PermissionUtils$1;-><init>(Lcom/blankj/utilcode/util/PermissionUtils;Ljava/lang/Runnable;Lcom/blankj/utilcode/util/UtilsTransActivity;)V

    #@a
    invoke-interface {v0, p1, v1}, Lcom/blankj/utilcode/util/PermissionUtils$OnRationaleListener;->rationale(Lcom/blankj/utilcode/util/UtilsTransActivity;Lcom/blankj/utilcode/util/PermissionUtils$OnRationaleListener$ShouldRequest;)V

    #@d
    return-void
.end method

.method private requestCallback()V
    .registers 7

    #@0
    .line 388
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mSingleCallback:Lcom/blankj/utilcode/util/PermissionUtils$SingleCallback;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_16

    #@5
    .line 389
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    #@7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v2

    #@b
    iget-object v3, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    #@d
    iget-object v4, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    #@f
    iget-object v5, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    #@11
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/blankj/utilcode/util/PermissionUtils$SingleCallback;->callback(ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@14
    .line 391
    iput-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mSingleCallback:Lcom/blankj/utilcode/util/PermissionUtils$SingleCallback;

    #@16
    .line 393
    :cond_16
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mSimpleCallback:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    #@18
    if-eqz v0, :cond_2f

    #@1a
    .line 394
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    #@1c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_28

    #@22
    .line 395
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mSimpleCallback:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    #@24
    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onGranted()V

    #@27
    goto :goto_2d

    #@28
    .line 397
    :cond_28
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mSimpleCallback:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    #@2a
    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onDenied()V

    #@2d
    .line 399
    :goto_2d
    iput-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mSimpleCallback:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    #@2f
    .line 401
    :cond_2f
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mFullCallback:Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;

    #@31
    if-eqz v0, :cond_5d

    #@33
    .line 402
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    #@35
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_43

    #@3b
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    #@3d
    .line 403
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@40
    move-result v0

    #@41
    if-lez v0, :cond_4a

    #@43
    .line 404
    :cond_43
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mFullCallback:Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;

    #@45
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    #@47
    invoke-interface {v0, v2}, Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;->onGranted(Ljava/util/List;)V

    #@4a
    .line 406
    :cond_4a
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    #@4c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@4f
    move-result v0

    #@50
    if-nez v0, :cond_5b

    #@52
    .line 407
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mFullCallback:Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;

    #@54
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    #@56
    iget-object v3, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    #@58
    invoke-interface {v0, v2, v3}, Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;->onDenied(Ljava/util/List;Ljava/util/List;)V

    #@5b
    .line 409
    :cond_5b
    iput-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mFullCallback:Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;

    #@5d
    .line 411
    :cond_5d
    iput-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mOnRationaleListener:Lcom/blankj/utilcode/util/PermissionUtils$OnRationaleListener;

    #@5f
    .line 412
    iput-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mThemeCallback:Lcom/blankj/utilcode/util/PermissionUtils$ThemeCallback;

    #@61
    return-void
.end method

.method public static requestDrawOverlays(Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;)V
    .registers 2

    #@0
    .line 178
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->isGrantedDrawOverlays()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    if-eqz p0, :cond_b

    #@8
    .line 179
    invoke-interface {p0}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onGranted()V

    #@b
    :cond_b
    return-void

    #@c
    .line 182
    :cond_c
    sput-object p0, Lcom/blankj/utilcode/util/PermissionUtils;->sSimpleCallback4DrawOverlays:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    #@e
    const/4 p0, 0x3

    #@f
    .line 183
    invoke-static {p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->start(I)V

    #@12
    return-void
.end method

.method public static requestWriteSettings(Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;)V
    .registers 2

    #@0
    .line 147
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->isGrantedWriteSettings()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    if-eqz p0, :cond_b

    #@8
    .line 148
    invoke-interface {p0}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onGranted()V

    #@b
    :cond_b
    return-void

    #@c
    .line 151
    :cond_c
    sput-object p0, Lcom/blankj/utilcode/util/PermissionUtils;->sSimpleCallback4WriteSettings:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    #@e
    const/4 p0, 0x2

    #@f
    .line 152
    invoke-static {p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->start(I)V

    #@12
    return-void
.end method

.method private shouldRationale(Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)Z
    .registers 6

    #@0
    .line 344
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mOnRationaleListener:Lcom/blankj/utilcode/util/PermissionUtils$OnRationaleListener;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_25

    #@5
    .line 345
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_22

    #@11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    .line 346
    invoke-virtual {p1, v2}, Lcom/blankj/utilcode/util/UtilsTransActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_b

    #@1d
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/PermissionUtils;->rationalInner(Lcom/blankj/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)V

    #@20
    const/4 p1, 0x1

    #@21
    move v1, p1

    #@22
    :cond_22
    const/4 p1, 0x0

    #@23
    .line 352
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mOnRationaleListener:Lcom/blankj/utilcode/util/PermissionUtils$OnRationaleListener;

    #@25
    :cond_25
    return v1
.end method

.method private static startOverlayPermissionActivity(Landroid/app/Activity;I)V
    .registers 5

    #@0
    .line 188
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    const-string v2, "package:"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@25
    .line 190
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->isIntentAvailable(Landroid/content/Intent;)Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_2f

    #@2b
    .line 191
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->launchAppDetailsSettings()V

    #@2e
    return-void

    #@2f
    .line 194
    :cond_2f
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@32
    return-void
.end method

.method private startPermissionActivity()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 337
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->start(I)V

    #@4
    return-void
.end method

.method private static startWriteSettingsActivity(Landroid/app/Activity;I)V
    .registers 5

    #@0
    .line 157
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    const-string v2, "package:"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@25
    .line 159
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->isIntentAvailable(Landroid/content/Intent;)Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_2f

    #@2b
    .line 160
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->launchAppDetailsSettings()V

    #@2e
    return-void

    #@2f
    .line 163
    :cond_2f
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@32
    return-void
.end method


# virtual methods
.method public callback(Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;)Lcom/blankj/utilcode/util/PermissionUtils;
    .registers 2

    #@0
    .line 282
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mFullCallback:Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;

    #@2
    return-object p0
.end method

.method public callback(Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/utilcode/util/PermissionUtils;
    .registers 2

    #@0
    .line 271
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mSimpleCallback:Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    #@2
    return-object p0
.end method

.method public callback(Lcom/blankj/utilcode/util/PermissionUtils$SingleCallback;)Lcom/blankj/utilcode/util/PermissionUtils;
    .registers 2

    #@0
    .line 260
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mSingleCallback:Lcom/blankj/utilcode/util/PermissionUtils$SingleCallback;

    #@2
    return-object p0
.end method

.method public explain(Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;)Lcom/blankj/utilcode/util/PermissionUtils;
    .registers 2

    #@0
    .line 238
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mOnExplainListener:Lcom/blankj/utilcode/util/PermissionUtils$OnExplainListener;

    #@2
    return-object p0
.end method

.method public rationale(Lcom/blankj/utilcode/util/PermissionUtils$OnRationaleListener;)Lcom/blankj/utilcode/util/PermissionUtils;
    .registers 2

    #@0
    .line 249
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mOnRationaleListener:Lcom/blankj/utilcode/util/PermissionUtils$OnRationaleListener;

    #@2
    return-object p0
.end method

.method public request()V
    .registers 4

    #@0
    .line 301
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    #@2
    if-eqz v0, :cond_77

    #@4
    array-length v0, v0

    #@5
    if-gtz v0, :cond_8

    #@7
    goto :goto_77

    #@8
    .line 306
    :cond_8
    new-instance v0, Ljava/util/LinkedHashSet;

    #@a
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@d
    iput-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissions:Ljava/util/Set;

    #@f
    .line 307
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    #@16
    .line 308
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    #@1d
    .line 309
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    #@24
    .line 310
    new-instance v0, Ljava/util/ArrayList;

    #@26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@29
    iput-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    #@2b
    .line 312
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    #@2d
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->getRequestAndDeniedPermissions([Ljava/lang/String;)Landroid/util/Pair;

    #@30
    move-result-object v0

    #@31
    .line 313
    iget-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissions:Ljava/util/Set;

    #@33
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@35
    check-cast v2, Ljava/util/Collection;

    #@37
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@3a
    .line 314
    iget-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    #@3c
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@3e
    check-cast v0, Ljava/util/Collection;

    #@40
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@43
    .line 320
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissions:Ljava/util/Set;

    #@45
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v0

    #@49
    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_67

    #@4f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v1

    #@53
    check-cast v1, Ljava/lang/String;

    #@55
    .line 321
    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted(Ljava/lang/String;)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_61

    #@5b
    .line 322
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    #@5d
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@60
    goto :goto_49

    #@61
    .line 324
    :cond_61
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    #@63
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@66
    goto :goto_49

    #@67
    .line 327
    :cond_67
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    #@69
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_73

    #@6f
    .line 328
    invoke-direct {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->requestCallback()V

    #@72
    goto :goto_76

    #@73
    .line 330
    :cond_73
    invoke-direct {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->startPermissionActivity()V

    #@76
    :goto_76
    return-void

    #@77
    :cond_77
    :goto_77
    const-string v0, "PermissionUtils"

    #@79
    const-string v1, "No permissions to request."

    #@7b
    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    return-void
.end method

.method public theme(Lcom/blankj/utilcode/util/PermissionUtils$ThemeCallback;)Lcom/blankj/utilcode/util/PermissionUtils;
    .registers 2

    #@0
    .line 293
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mThemeCallback:Lcom/blankj/utilcode/util/PermissionUtils$ThemeCallback;

    #@2
    return-object p0
.end method

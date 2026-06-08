.class public final Landroidx/core/content/IntentCompat;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/IntentCompat$Api15Impl;
    }
.end annotation


# static fields
.field public static final ACTION_CREATE_REMINDER:Ljava/lang/String; = "android.intent.action.CREATE_REMINDER"

.field public static final CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String; = "android.intent.category.LEANBACK_LAUNCHER"

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final EXTRA_START_PLAYBACK:Ljava/lang/String; = "android.intent.extra.START_PLAYBACK"

.field public static final EXTRA_TIME:Ljava/lang/String; = "android.intent.extra.TIME"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createManageUnusedAppRestrictionsIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    #@0
    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroidx/core/content/PackageManagerCompat;->areUnusedAppRestrictionsAvailable(Landroid/content/pm/PackageManager;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_4c

    #@a
    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@c
    const/16 v1, 0x1f

    #@e
    const/4 v2, 0x0

    #@f
    const-string v3, "package"

    #@11
    if-lt v0, v1, :cond_23

    #@13
    .line 181
    new-instance p0, Landroid/content/Intent;

    #@15
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    #@17
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1a
    .line 182
    invoke-static {v3, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@1d
    move-result-object p1

    #@1e
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@21
    move-result-object p0

    #@22
    return-object p0

    #@23
    .line 185
    :cond_23
    new-instance v0, Landroid/content/Intent;

    #@25
    const-string v1, "android.intent.action.AUTO_REVOKE_PERMISSIONS"

    #@27
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2a
    .line 187
    invoke-static {v3, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@2d
    move-result-object p1

    #@2e
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@31
    move-result-object p1

    #@32
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@34
    const/16 v1, 0x1e

    #@36
    if-lt v0, v1, :cond_39

    #@38
    return-object p1

    #@39
    .line 197
    :cond_39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3c
    move-result-object p0

    #@3d
    invoke-static {p0}, Landroidx/core/content/PackageManagerCompat;->getPermissionRevocationVerifierApp(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    #@40
    move-result-object p0

    #@41
    .line 201
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object p0

    #@45
    check-cast p0, Ljava/lang/String;

    #@47
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@4a
    move-result-object p0

    #@4b
    return-object p0

    #@4c
    .line 173
    :cond_4c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    #@4e
    const-string p1, "Unused App Restriction features are not available on this device"

    #@50
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@53
    throw p0
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    #@0
    .line 120
    invoke-static {p0, p1}, Landroidx/core/content/IntentCompat$Api15Impl;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

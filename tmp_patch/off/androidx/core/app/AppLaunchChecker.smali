.class public Landroidx/core/app/AppLaunchChecker;
.super Ljava/lang/Object;
.source "AppLaunchChecker.java"


# static fields
.field private static final KEY_STARTED_FROM_LAUNCHER:Ljava/lang/String; = "startedFromLauncher"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "android.support.AppLaunchChecker"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static hasStartedFromLauncher(Landroid/content/Context;)Z
    .registers 3

    #@0
    const-string v0, "android.support.AppLaunchChecker"

    #@2
    const/4 v1, 0x0

    #@3
    .line 53
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@6
    move-result-object p0

    #@7
    const-string v0, "startedFromLauncher"

    #@9
    .line 54
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@c
    move-result p0

    #@d
    return p0
.end method

.method public static onActivityCreate(Landroid/app/Activity;)V
    .registers 5

    #@0
    const-string v0, "android.support.AppLaunchChecker"

    #@2
    const/4 v1, 0x0

    #@3
    .line 69
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@6
    move-result-object v0

    #@7
    const-string v2, "startedFromLauncher"

    #@9
    .line 70
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_10

    #@f
    return-void

    #@10
    .line 74
    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@13
    move-result-object p0

    #@14
    if-nez p0, :cond_17

    #@16
    return-void

    #@17
    :cond_17
    const-string v1, "android.intent.action.MAIN"

    #@19
    .line 79
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_3f

    #@23
    const-string v1, "android.intent.category.LAUNCHER"

    #@25
    .line 80
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_33

    #@2b
    const-string v1, "android.intent.category.LEANBACK_LAUNCHER"

    #@2d
    .line 81
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    #@30
    move-result p0

    #@31
    if-eqz p0, :cond_3f

    #@33
    .line 82
    :cond_33
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@36
    move-result-object p0

    #@37
    const/4 v0, 0x1

    #@38
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    #@3b
    move-result-object p0

    #@3c
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@3f
    :cond_3f
    return-void
.end method

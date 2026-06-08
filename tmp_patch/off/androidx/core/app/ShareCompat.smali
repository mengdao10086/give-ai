.class public final Landroidx/core/app/ShareCompat;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ShareCompat$Api16Impl;,
        Landroidx/core/app/ShareCompat$IntentReader;,
        Landroidx/core/app/ShareCompat$IntentBuilder;
    }
.end annotation


# static fields
.field public static final EXTRA_CALLING_ACTIVITY:Ljava/lang/String; = "androidx.core.app.EXTRA_CALLING_ACTIVITY"

.field public static final EXTRA_CALLING_ACTIVITY_INTEROP:Ljava/lang/String; = "android.support.v4.app.EXTRA_CALLING_ACTIVITY"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "androidx.core.app.EXTRA_CALLING_PACKAGE"

.field public static final EXTRA_CALLING_PACKAGE_INTEROP:Ljava/lang/String; = "android.support.v4.app.EXTRA_CALLING_PACKAGE"

.field private static final HISTORY_FILENAME_PREFIX:Ljava/lang/String; = ".sharecompat_"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static configureMenuItem(Landroid/view/Menu;ILandroidx/core/app/ShareCompat$IntentBuilder;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 273
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_a

    #@6
    .line 278
    invoke-static {p0, p2}, Landroidx/core/app/ShareCompat;->configureMenuItem(Landroid/view/MenuItem;Landroidx/core/app/ShareCompat$IntentBuilder;)V

    #@9
    return-void

    #@a
    .line 275
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance p2, Ljava/lang/StringBuilder;

    #@e
    const-string v0, "Could not find menu item with id "

    #@10
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object p1

    #@17
    const-string p2, " in the supplied menu"

    #@19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p1

    #@1d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object p1

    #@21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw p0
.end method

.method public static configureMenuItem(Landroid/view/MenuItem;Landroidx/core/app/ShareCompat$IntentBuilder;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 240
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    #@3
    move-result-object v0

    #@4
    .line 242
    instance-of v1, v0, Landroid/widget/ShareActionProvider;

    #@6
    if-nez v1, :cond_12

    #@8
    .line 243
    new-instance v0, Landroid/widget/ShareActionProvider;

    #@a
    invoke-virtual {p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->getContext()Landroid/content/Context;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    #@11
    goto :goto_14

    #@12
    .line 245
    :cond_12
    check-cast v0, Landroid/widget/ShareActionProvider;

    #@14
    .line 247
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    const-string v2, ".sharecompat_"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    .line 248
    invoke-virtual {p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->getContext()Landroid/content/Context;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    #@32
    .line 249
    invoke-virtual {p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    #@35
    move-result-object p1

    #@36
    invoke-virtual {v0, p1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    #@39
    .line 250
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    #@3c
    return-void
.end method

.method public static getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;
    .registers 2

    #@0
    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    #@7
    move-result-object p0

    #@8
    if-nez p0, :cond_e

    #@a
    .line 182
    invoke-static {v0}, Landroidx/core/app/ShareCompat;->getCallingActivity(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@d
    move-result-object p0

    #@e
    :cond_e
    return-object p0
.end method

.method static getCallingActivity(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 2

    #@0
    const-string v0, "androidx.core.app.EXTRA_CALLING_ACTIVITY"

    #@2
    .line 202
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/ComponentName;

    #@8
    if-nez v0, :cond_13

    #@a
    const-string v0, "android.support.v4.app.EXTRA_CALLING_ACTIVITY"

    #@c
    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@f
    move-result-object p0

    #@10
    move-object v0, p0

    #@11
    check-cast v0, Landroid/content/ComponentName;

    #@13
    :cond_13
    return-object v0
.end method

.method public static getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    #@0
    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    if-nez p0, :cond_10

    #@a
    if-eqz v0, :cond_10

    #@c
    .line 138
    invoke-static {v0}, Landroidx/core/app/ShareCompat;->getCallingPackage(Landroid/content/Intent;)Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    :cond_10
    return-object p0
.end method

.method static getCallingPackage(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "androidx.core.app.EXTRA_CALLING_PACKAGE"

    #@2
    .line 158
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_e

    #@8
    const-string v0, "android.support.v4.app.EXTRA_CALLING_PACKAGE"

    #@a
    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :cond_e
    return-object v0
.end method

.class public final Landroidx/core/app/NavUtils;
.super Ljava/lang/Object;
.source "NavUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NavUtils$Api16Impl;
    }
.end annotation


# static fields
.field public static final PARENT_ACTIVITY:Ljava/lang/String; = "android.support.PARENT_ACTIVITY"

.field private static final TAG:Ljava/lang/String; = "NavUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .registers 4

    #@0
    .line 134
    invoke-static {p0}, Landroidx/core/app/NavUtils$Api16Impl;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 139
    :cond_7
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    if-nez v0, :cond_f

    #@e
    return-object v1

    #@f
    .line 143
    :cond_f
    new-instance v2, Landroid/content/ComponentName;

    #@11
    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@14
    .line 145
    :try_start_14
    invoke-static {p0, v2}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    #@17
    move-result-object p0

    #@18
    if-nez p0, :cond_1f

    #@1a
    .line 147
    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1d
    move-result-object p0

    #@1e
    goto :goto_28

    #@1f
    .line 148
    :cond_1f
    new-instance p0, Landroid/content/Intent;

    #@21
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    #@24
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@27
    move-result-object p0
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_28} :catch_29

    #@28
    :goto_28
    return-object p0

    #@29
    .line 150
    :catch_29
    new-instance p0, Ljava/lang/StringBuilder;

    #@2b
    const-string v2, "getParentActivityIntent: bad parentActivityName \'"

    #@2d
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@30
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object p0

    #@34
    const-string v0, "\' in manifest"

    #@36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object p0

    #@3a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object p0

    #@3e
    const-string v0, "NavUtils"

    #@40
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    return-object v1
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .line 197
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 201
    :cond_8
    new-instance v1, Landroid/content/ComponentName;

    #@a
    .line 202
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 203
    invoke-static {p0, v1}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    if-nez p0, :cond_1c

    #@17
    .line 205
    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1a
    move-result-object p0

    #@1b
    goto :goto_25

    #@1c
    .line 206
    :cond_1c
    new-instance p0, Landroid/content/Intent;

    #@1e
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    #@21
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@24
    move-result-object p0

    #@25
    :goto_25
    return-object p0
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .line 170
    new-instance v0, Landroid/content/ComponentName;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@5
    invoke-static {p0, v0}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    if-nez p1, :cond_d

    #@b
    const/4 p0, 0x0

    #@c
    return-object p0

    #@d
    .line 175
    :cond_d
    new-instance v0, Landroid/content/ComponentName;

    #@f
    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@12
    .line 176
    invoke-static {p0, v0}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    #@15
    move-result-object p0

    #@16
    if-nez p0, :cond_1d

    #@18
    .line 178
    invoke-static {v0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1b
    move-result-object p0

    #@1c
    goto :goto_26

    #@1d
    .line 179
    :cond_1d
    new-instance p0, Landroid/content/Intent;

    #@1f
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    #@22
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@25
    move-result-object p0

    #@26
    :goto_26
    return-object p0
.end method

.method public static getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    #@0
    .line 222
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    #@7
    move-result-object p0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    #@8
    return-object p0

    #@9
    :catch_9
    move-exception p0

    #@a
    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v0
.end method

.method public static getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    .line 254
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v2, 0x1d

    #@8
    if-lt v1, v2, :cond_e

    #@a
    const v1, 0x100c0280

    #@d
    goto :goto_11

    #@e
    :cond_e
    const v1, 0xc0280

    #@11
    .line 263
    :goto_11
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@14
    move-result-object p1

    #@15
    .line 265
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@17
    if-eqz v0, :cond_1a

    #@19
    return-object v0

    #@1a
    .line 270
    :cond_1a
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@1c
    const/4 v1, 0x0

    #@1d
    if-nez v0, :cond_20

    #@1f
    return-object v1

    #@20
    .line 273
    :cond_20
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@22
    const-string v0, "android.support.PARENT_ACTIVITY"

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object p1

    #@28
    if-nez p1, :cond_2b

    #@2a
    return-object v1

    #@2b
    :cond_2b
    const/4 v0, 0x0

    #@2c
    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v0

    #@30
    const/16 v1, 0x2e

    #@32
    if-ne v0, v1, :cond_49

    #@34
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3c
    move-result-object p0

    #@3d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object p0

    #@41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object p0

    #@45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object p1

    #@49
    :cond_49
    return-object p1
.end method

.method public static navigateUpFromSameTask(Landroid/app/Activity;)V
    .registers 4

    #@0
    .line 83
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 93
    invoke-static {p0, v0}, Landroidx/core/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    #@9
    return-void

    #@a
    .line 86
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, "Activity "

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object p0

    #@17
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p0

    #@1f
    const-string v1, " does not have a parent activity name specified. (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data>  element in your manifest?)"

    #@21
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object p0

    #@25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object p0

    #@29
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
.end method

.method public static navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 2

    #@0
    .line 111
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils$Api16Impl;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)Z

    #@3
    return-void
.end method

.method public static shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 2

    #@0
    .line 63
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils$Api16Impl;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

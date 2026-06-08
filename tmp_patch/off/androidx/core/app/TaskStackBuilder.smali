.class public final Landroidx/core/app/TaskStackBuilder;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/TaskStackBuilder$Api16Impl;,
        Landroidx/core/app/TaskStackBuilder$SupportParentable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskStackBuilder"


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@a
    .line 85
    iput-object p1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@c
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;
    .registers 2

    #@0
    .line 97
    new-instance v0, Landroidx/core/app/TaskStackBuilder;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public static from(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 111
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method


# virtual methods
.method public addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;
    .registers 3

    #@0
    .line 123
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    return-object p0
.end method

.method public addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;
    .registers 3

    #@0
    .line 141
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_10

    #@6
    .line 143
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@f
    move-result-object v0

    #@10
    :cond_10
    if-eqz v0, :cond_15

    #@12
    .line 146
    invoke-virtual {p0, v0}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroidx/core/app/TaskStackBuilder;

    #@15
    .line 148
    :cond_15
    invoke-virtual {p0, p1}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    #@18
    return-object p0
.end method

.method public addParentStack(Landroid/app/Activity;)Landroidx/core/app/TaskStackBuilder;
    .registers 3

    #@0
    .line 162
    instance-of v0, p1, Landroidx/core/app/TaskStackBuilder$SupportParentable;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 163
    move-object v0, p1

    #@5
    check-cast v0, Landroidx/core/app/TaskStackBuilder$SupportParentable;

    #@7
    invoke-interface {v0}, Landroidx/core/app/TaskStackBuilder$SupportParentable;->getSupportParentActivityIntent()Landroid/content/Intent;

    #@a
    move-result-object v0

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    if-nez v0, :cond_13

    #@f
    .line 166
    invoke-static {p1}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    #@12
    move-result-object v0

    #@13
    :cond_13
    if-eqz v0, :cond_2b

    #@15
    .line 172
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@18
    move-result-object p1

    #@19
    if-nez p1, :cond_25

    #@1b
    .line 174
    iget-object p1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@1d
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@20
    move-result-object p1

    #@21
    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@24
    move-result-object p1

    #@25
    .line 176
    :cond_25
    invoke-virtual {p0, p1}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroidx/core/app/TaskStackBuilder;

    #@28
    .line 177
    invoke-virtual {p0, v0}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    #@2b
    :cond_2b
    return-object p0
.end method

.method public addParentStack(Landroid/content/ComponentName;)Landroidx/core/app/TaskStackBuilder;
    .registers 4

    #@0
    .line 204
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 206
    :try_start_6
    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@8
    invoke-static {v1, p1}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    #@b
    move-result-object p1

    #@c
    :goto_c
    if-eqz p1, :cond_1e

    #@e
    .line 208
    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@13
    .line 209
    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@15
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@18
    move-result-object p1

    #@19
    invoke-static {v1, p1}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1c
    move-result-object p1
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_1d} :catch_1f

    #@1d
    goto :goto_c

    #@1e
    :cond_1e
    return-object p0

    #@1f
    :catch_1f
    move-exception p1

    #@20
    const-string v0, "TaskStackBuilder"

    #@22
    const-string v1, "Bad ComponentName while traversing activity parent metadata"

    #@24
    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@2c
    throw v0
.end method

.method public addParentStack(Ljava/lang/Class;)Landroidx/core/app/TaskStackBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/core/app/TaskStackBuilder;"
        }
    .end annotation

    #@0
    .line 191
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@7
    invoke-virtual {p0, v0}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroidx/core/app/TaskStackBuilder;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public editIntentAt(I)Landroid/content/Intent;
    .registers 3

    #@0
    .line 250
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroid/content/Intent;

    #@8
    return-object p1
.end method

.method public getIntent(I)Landroid/content/Intent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 237
    invoke-virtual {p0, p1}, Landroidx/core/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public getIntentCount()I
    .registers 2

    #@0
    .line 222
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .registers 6

    #@0
    .line 360
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    new-array v1, v0, [Landroid/content/Intent;

    #@8
    if-nez v0, :cond_b

    #@a
    return-object v1

    #@b
    .line 363
    :cond_b
    new-instance v2, Landroid/content/Intent;

    #@d
    iget-object v3, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@f
    const/4 v4, 0x0

    #@10
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/content/Intent;

    #@16
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@19
    const v3, 0x1000c000

    #@1c
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1f
    move-result-object v2

    #@20
    aput-object v2, v1, v4

    #@22
    const/4 v2, 0x1

    #@23
    :goto_23
    if-ge v2, v0, :cond_37

    #@25
    .line 366
    new-instance v3, Landroid/content/Intent;

    #@27
    iget-object v4, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Landroid/content/Intent;

    #@2f
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@32
    aput-object v3, v1, v2

    #@34
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_23

    #@37
    :cond_37
    return-object v1
.end method

.method public getPendingIntent(II)Landroid/app/PendingIntent;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 316
    invoke-virtual {p0, p1, p2, v0}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .registers 8

    #@0
    .line 335
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_2a

    #@8
    .line 340
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@a
    const/4 v1, 0x0

    #@b
    new-array v2, v1, [Landroid/content/Intent;

    #@d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [Landroid/content/Intent;

    #@13
    .line 341
    new-instance v2, Landroid/content/Intent;

    #@15
    aget-object v3, v0, v1

    #@17
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@1a
    const v3, 0x1000c000

    #@1d
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@20
    move-result-object v2

    #@21
    aput-object v2, v0, v1

    #@23
    .line 345
    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@25
    invoke-static {v1, p1, v0, p2, p3}, Landroidx/core/app/TaskStackBuilder$Api16Impl;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    #@28
    move-result-object p1

    #@29
    return-object p1

    #@2a
    .line 336
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2c
    const-string p2, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    #@2e
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 260
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public startActivities()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 272
    invoke-virtual {p0, v0}, Landroidx/core/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public startActivities(Landroid/os/Bundle;)V
    .registers 6

    #@0
    .line 287
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_40

    #@8
    .line 292
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@a
    const/4 v1, 0x0

    #@b
    new-array v2, v1, [Landroid/content/Intent;

    #@d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [Landroid/content/Intent;

    #@13
    .line 293
    new-instance v2, Landroid/content/Intent;

    #@15
    aget-object v3, v0, v1

    #@17
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@1a
    const v3, 0x1000c000

    #@1d
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@20
    move-result-object v2

    #@21
    aput-object v2, v0, v1

    #@23
    .line 295
    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@25
    invoke-static {v1, v0, p1}, Landroidx/core/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    #@28
    move-result p1

    #@29
    if-nez p1, :cond_3f

    #@2b
    .line 296
    new-instance p1, Landroid/content/Intent;

    #@2d
    array-length v1, v0

    #@2e
    add-int/lit8 v1, v1, -0x1

    #@30
    aget-object v0, v0, v1

    #@32
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@35
    const/high16 v0, 0x10000000

    #@37
    .line 297
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3a
    .line 298
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@3c
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@3f
    :cond_3f
    return-void

    #@40
    .line 288
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    #@42
    const-string v0, "No intents added to TaskStackBuilder; cannot startActivities"

    #@44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@47
    throw p1
.end method

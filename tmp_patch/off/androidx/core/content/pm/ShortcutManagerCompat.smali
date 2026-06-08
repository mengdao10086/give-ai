.class public Landroidx/core/content/pm/ShortcutManagerCompat;
.super Ljava/lang/Object;
.source "ShortcutManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/ShortcutManagerCompat$Api25Impl;,
        Landroidx/core/content/pm/ShortcutManagerCompat$ShortcutMatchFlags;
    }
.end annotation


# static fields
.field static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final DEFAULT_MAX_ICON_DIMENSION_DP:I = 0x60

.field private static final DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP:I = 0x30

.field public static final EXTRA_SHORTCUT_ID:Ljava/lang/String; = "android.intent.extra.shortcut.ID"

.field public static final FLAG_MATCH_CACHED:I = 0x8

.field public static final FLAG_MATCH_DYNAMIC:I = 0x2

.field public static final FLAG_MATCH_MANIFEST:I = 0x1

.field public static final FLAG_MATCH_PINNED:I = 0x4

.field static final INSTALL_SHORTCUT_PERMISSION:Ljava/lang/String; = "com.android.launcher.permission.INSTALL_SHORTCUT"

.field private static final SHORTCUT_LISTENER_INTENT_FILTER_ACTION:Ljava/lang/String; = "androidx.core.content.pm.SHORTCUT_LISTENER"

.field private static final SHORTCUT_LISTENER_META_DATA_KEY:Ljava/lang/String; = "androidx.core.content.pm.shortcut_listener_impl"

.field private static volatile sShortcutInfoChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 325
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    #@4
    move-result-object v1

    #@5
    .line 327
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@7
    const/16 v3, 0x1d

    #@9
    if-gt v2, v3, :cond_e

    #@b
    .line 328
    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconsToBitmapIcons(Landroid/content/Context;Ljava/util/List;)V

    #@e
    .line 331
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 332
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v3

    #@17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_2b

    #@1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    #@23
    .line 333
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_17

    #@2b
    .line 335
    :cond_2b
    const-class v3, Landroid/content/pm/ShortcutManager;

    #@2d
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Landroid/content/pm/ShortcutManager;

    #@33
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_3b

    #@39
    const/4 p0, 0x0

    #@3a
    return p0

    #@3b
    .line 340
    :cond_3b
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    #@42
    .line 341
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    #@45
    move-result-object p0

    #@46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object p0

    #@4a
    :goto_4a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_5a

    #@50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@53
    move-result-object v1

    #@54
    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@56
    .line 342
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    #@59
    goto :goto_4a

    #@5a
    :cond_5a
    return v0
.end method

.method static convertUriIconToBitmapIcon(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z
    .registers 7

    #@0
    .line 555
    iget-object v0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 558
    :cond_6
    iget-object v0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@8
    iget v0, v0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@a
    const/4 v2, 0x1

    #@b
    const/4 v3, 0x6

    #@c
    if-eq v0, v3, :cond_12

    #@e
    const/4 v4, 0x4

    #@f
    if-eq v0, v4, :cond_12

    #@11
    return v2

    #@12
    .line 562
    :cond_12
    iget-object v4, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@14
    invoke-virtual {v4, p0}, Landroidx/core/graphics/drawable/IconCompat;->getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    #@17
    move-result-object p0

    #@18
    if-nez p0, :cond_1b

    #@1a
    return v1

    #@1b
    .line 566
    :cond_1b
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@1e
    move-result-object p0

    #@1f
    if-nez p0, :cond_22

    #@21
    return v1

    #@22
    :cond_22
    if-ne v0, v3, :cond_29

    #@24
    .line 571
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    #@27
    move-result-object p0

    #@28
    goto :goto_2d

    #@29
    .line 572
    :cond_29
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    #@2c
    move-result-object p0

    #@2d
    :goto_2d
    iput-object p0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@2f
    return v2
.end method

.method static convertUriIconsToBitmapIcons(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 579
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@5
    .line 580
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1f

    #@f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroidx/core/content/pm/ShortcutInfoCompat;

    #@15
    .line 581
    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconToBitmapIcon(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_9

    #@1b
    .line 582
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@1e
    goto :goto_9

    #@1f
    :cond_1f
    return-void
.end method

.method public static createShortcutResultIntent(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Landroid/content/Intent;
    .registers 3

    #@0
    .line 241
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroid/content/pm/ShortcutManager;

    #@8
    .line 242
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    #@f
    move-result-object p0

    #@10
    if-nez p0, :cond_17

    #@12
    .line 245
    new-instance p0, Landroid/content/Intent;

    #@14
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    #@17
    .line 247
    :cond_17
    invoke-virtual {p1, p0}, Landroidx/core/content/pm/ShortcutInfoCompat;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    #@1a
    move-result-object p0

    #@1b
    return-object p0
.end method

.method public static disableShortcuts(Landroid/content/Context;Ljava/util/List;Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    #@0
    .line 607
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/ShortcutManager;

    #@8
    .line 608
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V

    #@b
    .line 611
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@e
    move-result-object p2

    #@f
    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    #@12
    .line 612
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    #@15
    move-result-object p0

    #@16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object p0

    #@1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result p2

    #@1e
    if-eqz p2, :cond_2a

    #@20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object p2

    #@24
    check-cast p2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@26
    .line 613
    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    #@29
    goto :goto_1a

    #@2a
    :cond_2a
    return-void
.end method

.method public static enableShortcuts(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 635
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    .line 638
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 639
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_24

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroidx/core/content/pm/ShortcutInfoCompat;

    #@1e
    .line 640
    iget-object v3, v3, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_12

    #@24
    .line 642
    :cond_24
    const-class v2, Landroid/content/pm/ShortcutManager;

    #@26
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/content/pm/ShortcutManager;

    #@2c
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutManager;->enableShortcuts(Ljava/util/List;)V

    #@2f
    .line 645
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    #@36
    .line 646
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    #@39
    move-result-object p0

    #@3a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object p0

    #@3e
    :goto_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_4e

    #@44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@4a
    .line 647
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    #@4d
    goto :goto_3e

    #@4e
    :cond_4e
    return-void
.end method

.method public static getDynamicShortcuts(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    #@0
    .line 496
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/ShortcutManager;

    #@8
    .line 497
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    .line 498
    new-instance v1, Ljava/util/ArrayList;

    #@e
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@11
    move-result v2

    #@12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@15
    .line 499
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v0

    #@19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_32

    #@1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    #@25
    .line 500
    new-instance v3, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    #@27
    invoke-direct {v3, p0, v2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V

    #@2a
    invoke-virtual {v3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    #@2d
    move-result-object v2

    #@2e
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    goto :goto_19

    #@32
    :cond_32
    return-object v1
.end method

.method private static getIconDimensionInternal(Landroid/content/Context;Z)I
    .registers 4

    #@0
    const-string v0, "activity"

    #@2
    .line 831
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityManager;

    #@8
    const/4 v1, 0x1

    #@9
    if-eqz v0, :cond_14

    #@b
    .line 833
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_12

    #@11
    goto :goto_14

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_15

    #@14
    :cond_14
    :goto_14
    move v0, v1

    #@15
    :goto_15
    if-eqz v0, :cond_1a

    #@17
    const/16 v0, 0x30

    #@19
    goto :goto_1c

    #@1a
    :cond_1a
    const/16 v0, 0x60

    #@1c
    .line 834
    :goto_1c
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result v0

    #@20
    .line 836
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@23
    move-result-object p0

    #@24
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@27
    move-result-object p0

    #@28
    if-eqz p1, :cond_2d

    #@2a
    .line 837
    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    #@2c
    goto :goto_2f

    #@2d
    :cond_2d
    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    #@2f
    :goto_2f
    const/high16 p1, 0x43200000    # 160.0f

    #@31
    div-float/2addr p0, p1

    #@32
    int-to-float p1, v0

    #@33
    mul-float/2addr p1, p0

    #@34
    float-to-int p0, p1

    #@35
    return p0
.end method

.method public static getIconMaxHeight(Landroid/content/Context;)I
    .registers 2

    #@0
    .line 400
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 402
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Landroid/content/pm/ShortcutManager;

    #@b
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getIconMaxHeight()I

    #@e
    move-result p0

    #@f
    return p0
.end method

.method public static getIconMaxWidth(Landroid/content/Context;)I
    .registers 2

    #@0
    .line 389
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 391
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Landroid/content/pm/ShortcutManager;

    #@b
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getIconMaxWidth()I

    #@e
    move-result p0

    #@f
    return p0
.end method

.method public static getMaxShortcutCountPerActivity(Landroid/content/Context;)I
    .registers 2

    #@0
    .line 352
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 354
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Landroid/content/pm/ShortcutManager;

    #@b
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    #@e
    move-result p0

    #@f
    return p0
.end method

.method static getShortcutInfoChangeListeners()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation

    #@0
    .line 825
    sget-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    #@2
    return-object v0
.end method

.method private static getShortcutInfoCompatWithLowestRank(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .line 804
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object p0

    #@4
    const/4 v0, -0x1

    #@5
    const/4 v1, 0x0

    #@6
    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_24

    #@c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroidx/core/content/pm/ShortcutInfoCompat;

    #@12
    .line 805
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getRank()I

    #@15
    move-result v3

    #@16
    if-le v3, v0, :cond_6

    #@18
    .line 806
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 807
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getRank()I

    #@1f
    move-result v1

    #@20
    move v4, v1

    #@21
    move-object v1, v0

    #@22
    move v0, v4

    #@23
    goto :goto_6

    #@24
    :cond_24
    return-object v1
.end method

.method private static getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation

    #@0
    .line 865
    sget-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    #@2
    if-nez v0, :cond_71

    #@4
    .line 866
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 868
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@c
    move-result-object v1

    #@d
    .line 869
    new-instance v2, Landroid/content/Intent;

    #@f
    const-string v3, "androidx.core.content.pm.SHORTCUT_LISTENER"

    #@11
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@14
    .line 870
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    const/16 v3, 0x80

    #@1d
    .line 872
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@20
    move-result-object v1

    #@21
    .line 875
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    :catch_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_6b

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/content/pm/ResolveInfo;

    #@31
    .line 876
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@33
    if-nez v2, :cond_36

    #@35
    goto :goto_25

    #@36
    .line 880
    :cond_36
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@38
    if-nez v2, :cond_3b

    #@3a
    goto :goto_25

    #@3b
    :cond_3b
    const-string v3, "androidx.core.content.pm.shortcut_listener_impl"

    #@3d
    .line 885
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    if-nez v2, :cond_44

    #@43
    goto :goto_25

    #@44
    .line 890
    :cond_44
    :try_start_44
    const-class v3, Landroidx/core/content/pm/ShortcutManagerCompat;

    #@46
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@49
    move-result-object v3

    #@4a
    const/4 v4, 0x0

    #@4b
    .line 891
    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@4e
    move-result-object v2

    #@4f
    const-string v3, "getInstance"

    #@51
    const/4 v5, 0x1

    #@52
    new-array v6, v5, [Ljava/lang/Class;

    #@54
    .line 892
    const-class v7, Landroid/content/Context;

    #@56
    aput-object v7, v6, v4

    #@58
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@5b
    move-result-object v2

    #@5c
    new-array v3, v5, [Ljava/lang/Object;

    #@5e
    aput-object p0, v3, v4

    #@60
    const/4 v4, 0x0

    #@61
    .line 894
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v2

    #@65
    check-cast v2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@67
    .line 893
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6a} :catch_25

    #@6a
    goto :goto_25

    #@6b
    .line 900
    :cond_6b
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    #@6d
    if-nez p0, :cond_71

    #@6f
    .line 901
    sput-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    #@71
    .line 904
    :cond_71
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    #@73
    return-object p0
.end method

.method private static getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "*>;"
        }
    .end annotation

    #@0
    .line 843
    sget-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@2
    if-nez v0, :cond_36

    #@4
    .line 846
    :try_start_4
    const-class v0, Landroidx/core/content/pm/ShortcutManagerCompat;

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    const-string v1, "androidx.sharetarget.ShortcutInfoCompatSaverImpl"

    #@c
    const/4 v2, 0x0

    #@d
    .line 847
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@10
    move-result-object v0

    #@11
    const-string v1, "getInstance"

    #@13
    const/4 v3, 0x1

    #@14
    new-array v4, v3, [Ljava/lang/Class;

    #@16
    .line 849
    const-class v5, Landroid/content/Context;

    #@18
    aput-object v5, v4, v2

    #@1a
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1d
    move-result-object v0

    #@1e
    new-array v1, v3, [Ljava/lang/Object;

    #@20
    aput-object p0, v1, v2

    #@22
    const/4 p0, 0x0

    #@23
    .line 850
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object p0

    #@27
    check-cast p0, Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@29
    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_2b

    #@2b
    .line 855
    :catch_2b
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@2d
    if-nez p0, :cond_36

    #@2f
    .line 857
    new-instance p0, Landroidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl;

    #@31
    invoke-direct {p0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl;-><init>()V

    #@34
    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@36
    .line 860
    :cond_36
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@38
    return-object p0
.end method

.method public static getShortcuts(Landroid/content/Context;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    #@0
    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_17

    #@6
    .line 281
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@8
    .line 282
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/content/pm/ShortcutManager;

    #@e
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->getShortcuts(I)Ljava/util/List;

    #@11
    move-result-object p1

    #@12
    .line 283
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->fromShortcuts(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    #@15
    move-result-object p0

    #@16
    return-object p0

    #@17
    .line 285
    :cond_17
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/content/pm/ShortcutManager;

    #@1f
    .line 286
    new-instance v1, Ljava/util/ArrayList;

    #@21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@24
    and-int/lit8 v2, p1, 0x1

    #@26
    if-eqz v2, :cond_2f

    #@28
    .line 288
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getManifestShortcuts()Ljava/util/List;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@2f
    :cond_2f
    and-int/lit8 v2, p1, 0x2

    #@31
    if-eqz v2, :cond_3a

    #@33
    .line 291
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    #@36
    move-result-object v2

    #@37
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@3a
    :cond_3a
    and-int/lit8 p1, p1, 0x4

    #@3c
    if-eqz p1, :cond_45

    #@3e
    .line 294
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    #@41
    move-result-object p1

    #@42
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@45
    .line 296
    :cond_45
    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutInfoCompat;->fromShortcuts(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    #@48
    move-result-object p0

    #@49
    return-object p0
.end method

.method public static isRateLimitingActive(Landroid/content/Context;)Z
    .registers 2

    #@0
    .line 369
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 371
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Landroid/content/pm/ShortcutManager;

    #@b
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->isRateLimitingActive()Z

    #@e
    move-result p0

    #@f
    return p0
.end method

.method public static isRequestPinShortcutSupported(Landroid/content/Context;)Z
    .registers 2

    #@0
    .line 155
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroid/content/pm/ShortcutManager;

    #@8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    #@b
    move-result p0

    #@c
    return p0
.end method

.method public static pushDynamicShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z
    .registers 8

    #@0
    .line 748
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 749
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 751
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8
    const/16 v1, 0x1f

    #@a
    const/4 v2, 0x1

    #@b
    if-gt v0, v1, :cond_30

    #@d
    .line 752
    invoke-virtual {p1, v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->isExcludedFromSurfaces(I)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_30

    #@13
    .line 753
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    #@16
    move-result-object p0

    #@17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object p0

    #@1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2f

    #@21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@27
    .line 754
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    #@2e
    goto :goto_1b

    #@2f
    :cond_2f
    return v2

    #@30
    .line 758
    :cond_30
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getMaxShortcutCountPerActivity(Landroid/content/Context;)I

    #@33
    move-result v0

    #@34
    const/4 v1, 0x0

    #@35
    if-nez v0, :cond_38

    #@37
    return v1

    #@38
    .line 762
    :cond_38
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3a
    const/16 v4, 0x1d

    #@3c
    if-gt v3, v4, :cond_41

    #@3e
    .line 763
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconToBitmapIcon(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z

    #@41
    .line 765
    :cond_41
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@43
    const/16 v4, 0x1e

    #@45
    if-lt v3, v4, :cond_57

    #@47
    .line 766
    const-class v3, Landroid/content/pm/ShortcutManager;

    #@49
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@4c
    move-result-object v3

    #@4d
    check-cast v3, Landroid/content/pm/ShortcutManager;

    #@4f
    .line 767
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    #@52
    move-result-object v4

    #@53
    .line 766
    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutManager;->pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    #@56
    goto :goto_8e

    #@57
    .line 769
    :cond_57
    const-class v3, Landroid/content/pm/ShortcutManager;

    #@59
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5c
    move-result-object v3

    #@5d
    check-cast v3, Landroid/content/pm/ShortcutManager;

    #@5f
    .line 770
    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager;->isRateLimitingActive()Z

    #@62
    move-result v4

    #@63
    if-eqz v4, :cond_66

    #@65
    return v1

    #@66
    .line 773
    :cond_66
    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    #@69
    move-result-object v4

    #@6a
    .line 774
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@6d
    move-result v5

    #@6e
    if-lt v5, v0, :cond_7f

    #@70
    new-array v5, v2, [Ljava/lang/String;

    #@72
    .line 776
    invoke-static {v4}, Landroidx/core/content/pm/ShortcutManagerCompat$Api25Impl;->getShortcutInfoWithLowestRank(Ljava/util/List;)Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    aput-object v4, v5, v1

    #@78
    .line 775
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    #@7f
    :cond_7f
    new-array v4, v2, [Landroid/content/pm/ShortcutInfo;

    #@81
    .line 778
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    #@84
    move-result-object v5

    #@85
    aput-object v5, v4, v1

    #@87
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    #@8e
    .line 780
    :goto_8e
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@91
    move-result-object v3

    #@92
    .line 782
    :try_start_92
    invoke-virtual {v3}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->getShortcuts()Ljava/util/List;

    #@95
    move-result-object v4

    #@96
    .line 783
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@99
    move-result v5

    #@9a
    if-lt v5, v0, :cond_ab

    #@9c
    new-array v0, v2, [Ljava/lang/String;

    #@9e
    .line 785
    invoke-static {v4}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoCompatWithLowestRank(Ljava/util/List;)Ljava/lang/String;

    #@a1
    move-result-object v4

    #@a2
    aput-object v4, v0, v1

    #@a4
    .line 784
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@a7
    move-result-object v0

    #@a8
    invoke-virtual {v3, v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    #@ab
    :cond_ab
    new-array v0, v2, [Landroidx/core/content/pm/ShortcutInfoCompat;

    #@ad
    aput-object p1, v0, v1

    #@af
    .line 787
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@b2
    move-result-object v0

    #@b3
    invoke-virtual {v3, v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_b6} :catch_ff
    .catchall {:try_start_92 .. :try_end_b6} :catchall_da

    #@b6
    .line 792
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    #@b9
    move-result-object v0

    #@ba
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@bd
    move-result-object v0

    #@be
    :goto_be
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c1
    move-result v1

    #@c2
    if-eqz v1, :cond_d2

    #@c4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c7
    move-result-object v1

    #@c8
    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@ca
    .line 793
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@cd
    move-result-object v3

    #@ce
    invoke-virtual {v1, v3}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    #@d1
    goto :goto_be

    #@d2
    .line 795
    :cond_d2
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    #@d5
    move-result-object p1

    #@d6
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    #@d9
    return v2

    #@da
    :catchall_da
    move-exception v0

    #@db
    .line 792
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    #@de
    move-result-object v1

    #@df
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@e2
    move-result-object v1

    #@e3
    :goto_e3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e6
    move-result v2

    #@e7
    if-eqz v2, :cond_f7

    #@e9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ec
    move-result-object v2

    #@ed
    check-cast v2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@ef
    .line 793
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@f2
    move-result-object v3

    #@f3
    invoke-virtual {v2, v3}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    #@f6
    goto :goto_e3

    #@f7
    .line 795
    :cond_f7
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    #@fa
    move-result-object p1

    #@fb
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    #@fe
    .line 796
    throw v0

    #@ff
    .line 792
    :catch_ff
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    #@102
    move-result-object v0

    #@103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@106
    move-result-object v0

    #@107
    :goto_107
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@10a
    move-result v2

    #@10b
    if-eqz v2, :cond_11b

    #@10d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@110
    move-result-object v2

    #@111
    check-cast v2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@113
    .line 793
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@116
    move-result-object v3

    #@117
    invoke-virtual {v2, v3}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    #@11a
    goto :goto_107

    #@11b
    .line 795
    :cond_11b
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    #@11e
    move-result-object p1

    #@11f
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    #@122
    return v1
.end method

.method public static removeAllDynamicShortcuts(Landroid/content/Context;)V
    .registers 2

    #@0
    .line 679
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/ShortcutManager;

    #@8
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->removeAllDynamicShortcuts()V

    #@b
    .line 682
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeAllShortcuts()Ljava/lang/Object;

    #@12
    .line 683
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    #@15
    move-result-object p0

    #@16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object p0

    #@1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2a

    #@20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@26
    .line 684
    invoke-virtual {v0}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onAllShortcutsRemoved()V

    #@29
    goto :goto_1a

    #@2a
    :cond_2a
    return-void
.end method

.method public static removeDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 661
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/ShortcutManager;

    #@8
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    #@b
    .line 664
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    #@12
    .line 665
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    #@15
    move-result-object p0

    #@16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object p0

    #@1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2a

    #@20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@26
    .line 666
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    #@29
    goto :goto_1a

    #@2a
    :cond_2a
    return-void
.end method

.method public static removeLongLivedShortcuts(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 701
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-ge v0, v1, :cond_a

    #@6
    .line 702
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)V

    #@9
    return-void

    #@a
    .line 706
    :cond_a
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@c
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/content/pm/ShortcutManager;

    #@12
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->removeLongLivedShortcuts(Ljava/util/List;)V

    #@15
    .line 707
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    #@1c
    .line 708
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    #@1f
    move-result-object p0

    #@20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object p0

    #@24
    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_34

    #@2a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@30
    .line 709
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    #@33
    goto :goto_24

    #@34
    :cond_34
    return-void
.end method

.method private static removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;I)",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    #@0
    .line 910
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 911
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v1, 0x1f

    #@7
    if-le v0, v1, :cond_a

    #@9
    return-object p0

    #@a
    .line 912
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@f
    .line 913
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object p0

    #@13
    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_29

    #@19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroidx/core/content/pm/ShortcutInfoCompat;

    #@1f
    .line 914
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->isExcludedFromSurfaces(I)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_13

    #@25
    .line 915
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@28
    goto :goto_13

    #@29
    :cond_29
    return-object v0
.end method

.method public static reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    #@0
    .line 426
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 427
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 429
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/content/pm/ShortcutManager;

    #@e
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    #@11
    .line 432
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    #@14
    move-result-object p0

    #@15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object p0

    #@19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2d

    #@1f
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@25
    .line 433
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutUsageReported(Ljava/util/List;)V

    #@2c
    goto :goto_19

    #@2d
    :cond_2d
    return-void
.end method

.method public static requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z
    .registers 5

    #@0
    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    if-gt v0, v1, :cond_f

    #@6
    const/4 v0, 0x1

    #@7
    .line 192
    invoke-virtual {p1, v0}, Landroidx/core/content/pm/ShortcutInfoCompat;->isExcludedFromSurfaces(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_f

    #@d
    const/4 p0, 0x0

    #@e
    return p0

    #@f
    .line 197
    :cond_f
    const-class v0, Landroid/content/pm/ShortcutManager;

    #@11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@14
    move-result-object p0

    #@15
    check-cast p0, Landroid/content/pm/ShortcutManager;

    #@17
    .line 198
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    #@1a
    move-result-object p1

    #@1b
    .line 197
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    #@1e
    move-result p0

    #@1f
    return p0
.end method

.method public static setDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    #@0
    .line 463
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 464
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    const/4 v0, 0x1

    #@7
    .line 465
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    #@a
    move-result-object v1

    #@b
    .line 468
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@10
    move-result v3

    #@11
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@14
    .line 469
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v3

    #@18
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_2c

    #@1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    #@24
    .line 470
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    #@27
    move-result-object v4

    #@28
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_18

    #@2c
    .line 472
    :cond_2c
    const-class v3, Landroid/content/pm/ShortcutManager;

    #@2e
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    check-cast v3, Landroid/content/pm/ShortcutManager;

    #@34
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    #@37
    move-result v2

    #@38
    if-nez v2, :cond_3c

    #@3a
    const/4 p0, 0x0

    #@3b
    return p0

    #@3c
    .line 476
    :cond_3c
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeAllShortcuts()Ljava/lang/Object;

    #@43
    .line 477
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    #@4a
    .line 479
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    #@4d
    move-result-object p0

    #@4e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@51
    move-result-object p0

    #@52
    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_65

    #@58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b
    move-result-object v1

    #@5c
    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@5e
    .line 480
    invoke-virtual {v1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onAllShortcutsRemoved()V

    #@61
    .line 481
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    #@64
    goto :goto_52

    #@65
    :cond_65
    return v0
.end method

.method static setShortcutInfoChangeListeners(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 820
    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    #@2
    return-void
.end method

.method static setShortcutInfoCompatSaver(Landroidx/core/content/pm/ShortcutInfoCompatSaver;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 815
    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@2
    return-void
.end method

.method public static updateShortcuts(Landroid/content/Context;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 530
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    #@4
    move-result-object v1

    #@5
    .line 532
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@7
    const/16 v3, 0x1d

    #@9
    if-gt v2, v3, :cond_e

    #@b
    .line 533
    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconsToBitmapIcons(Landroid/content/Context;Ljava/util/List;)V

    #@e
    .line 536
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 537
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v3

    #@17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_2b

    #@1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    #@23
    .line 538
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_17

    #@2b
    .line 540
    :cond_2b
    const-class v3, Landroid/content/pm/ShortcutManager;

    #@2d
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Landroid/content/pm/ShortcutManager;

    #@33
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_3b

    #@39
    const/4 p0, 0x0

    #@3a
    return p0

    #@3b
    .line 545
    :cond_3b
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    #@42
    .line 546
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    #@45
    move-result-object p0

    #@46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object p0

    #@4a
    :goto_4a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_5a

    #@50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@53
    move-result-object v1

    #@54
    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    #@56
    .line 547
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutUpdated(Ljava/util/List;)V

    #@59
    goto :goto_4a

    #@5a
    :cond_5a
    return v0
.end method

.class public Landroidx/core/app/ActivityCompat;
.super Landroidx/core/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityCompat$Api23Impl;,
        Landroidx/core/app/ActivityCompat$Api28Impl;,
        Landroidx/core/app/ActivityCompat$Api22Impl;,
        Landroidx/core/app/ActivityCompat$Api21Impl;,
        Landroidx/core/app/ActivityCompat$Api16Impl;,
        Landroidx/core/app/ActivityCompat$Api31Impl;,
        Landroidx/core/app/ActivityCompat$Api30Impl;,
        Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;,
        Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;,
        Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;,
        Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# static fields
.field private static sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;


# direct methods
.method protected constructor <init>()V
    .registers 1

    #@0
    .line 160
    invoke-direct {p0}, Landroidx/core/content/ContextCompat;-><init>()V

    #@3
    return-void
.end method

.method public static finishAffinity(Landroid/app/Activity;)V
    .registers 1

    #@0
    .line 300
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api16Impl;->finishAffinity(Landroid/app/Activity;)V

    #@3
    return-void
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .registers 1

    #@0
    .line 317
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api21Impl;->finishAfterTransition(Landroid/app/Activity;)V

    #@3
    return-void
.end method

.method public static getPermissionCompatDelegate()Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;
    .registers 1

    #@0
    .line 181
    sget-object v0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    #@2
    return-object v0
.end method

.method public static getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .registers 1

    #@0
    .line 343
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api22Impl;->getReferrer(Landroid/app/Activity;)Landroid/net/Uri;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    #@3
    const/4 p0, 0x1

    #@4
    return p0
.end method

.method public static isLaunchedFromBubble(Landroid/app/Activity;)Z
    .registers 5

    #@0
    .line 628
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 629
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api31Impl;->isLaunchedFromBubble(Landroid/app/Activity;)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 630
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@d
    const/16 v1, 0x1e

    #@f
    const/4 v2, 0x1

    #@10
    const/4 v3, 0x0

    #@11
    if-ne v0, v1, :cond_26

    #@13
    .line 631
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api30Impl;->getDisplay(Landroid/content/ContextWrapper;)Landroid/view/Display;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_24

    #@19
    .line 632
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api30Impl;->getDisplay(Landroid/content/ContextWrapper;)Landroid/view/Display;

    #@1c
    move-result-object p0

    #@1d
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    #@20
    move-result p0

    #@21
    if-eqz p0, :cond_24

    #@23
    goto :goto_25

    #@24
    :cond_24
    move v2, v3

    #@25
    :goto_25
    return v2

    #@26
    .line 633
    :cond_26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@28
    const/16 v1, 0x1d

    #@2a
    if-ne v0, v1, :cond_47

    #@2c
    .line 634
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@2f
    move-result-object v0

    #@30
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@33
    move-result-object v0

    #@34
    if-eqz v0, :cond_45

    #@36
    .line 635
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@39
    move-result-object p0

    #@3a
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@3d
    move-result-object p0

    #@3e
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    #@41
    move-result p0

    #@42
    if-eqz p0, :cond_45

    #@44
    goto :goto_46

    #@45
    :cond_45
    move v2, v3

    #@46
    :goto_46
    return v2

    #@47
    :cond_47
    return v3
.end method

.method static synthetic lambda$recreate$0(Landroid/app/Activity;)V
    .registers 2

    #@0
    .line 672
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_f

    #@6
    invoke-static {p0}, Landroidx/core/app/ActivityRecreator;->recreate(Landroid/app/Activity;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_f

    #@c
    .line 674
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    #@f
    :cond_f
    return-void
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .registers 1

    #@0
    .line 425
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api21Impl;->postponeEnterTransition(Landroid/app/Activity;)V

    #@3
    return-void
.end method

.method public static recreate(Landroid/app/Activity;)V
    .registers 3

    #@0
    .line 663
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 665
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    #@9
    goto :goto_1b

    #@a
    .line 670
    :cond_a
    new-instance v0, Landroid/os/Handler;

    #@c
    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@13
    .line 671
    new-instance v1, Landroidx/core/app/ActivityCompat$$ExternalSyntheticLambda0;

    #@15
    invoke-direct {v1, p0}, Landroidx/core/app/ActivityCompat$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    #@18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1b
    :goto_1b
    return-void
.end method

.method public static requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;
    .registers 2

    #@0
    .line 652
    invoke-static {p0, p1}, Landroidx/core/view/DragAndDropPermissionsCompat;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 9

    #@0
    .line 518
    sget-object v0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 519
    invoke-interface {v0, p0, p1, p2}, Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    return-void

    #@b
    .line 524
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    #@d
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@10
    const/4 v1, 0x0

    #@11
    move v2, v1

    #@12
    .line 525
    :goto_12
    array-length v3, p1

    #@13
    if-ge v2, v3, :cond_56

    #@15
    .line 526
    aget-object v3, p1, v2

    #@17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v3

    #@1b
    if-nez v3, :cond_37

    #@1d
    .line 531
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_34

    #@23
    .line 532
    aget-object v3, p1, v2

    #@25
    const-string v4, "android.permission.POST_NOTIFICATIONS"

    #@27
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_34

    #@2d
    .line 533
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v3

    #@31
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@34
    :cond_34
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_12

    #@37
    .line 527
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@39
    new-instance p2, Ljava/lang/StringBuilder;

    #@3b
    const-string v0, "Permission request for permissions "

    #@3d
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@40
    .line 528
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@43
    move-result-object p1

    #@44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object p1

    #@48
    const-string p2, " must not contain null or empty values"

    #@4a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object p1

    #@4e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object p1

    #@52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@55
    throw p0

    #@56
    .line 538
    :cond_56
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@59
    move-result v2

    #@5a
    if-lez v2, :cond_61

    #@5c
    .line 540
    array-length v3, p1

    #@5d
    sub-int/2addr v3, v2

    #@5e
    new-array v3, v3, [Ljava/lang/String;

    #@60
    goto :goto_62

    #@61
    :cond_61
    move-object v3, p1

    #@62
    :goto_62
    if-lez v2, :cond_80

    #@64
    .line 542
    array-length v4, p1

    #@65
    if-ne v2, v4, :cond_68

    #@67
    return-void

    #@68
    :cond_68
    move v2, v1

    #@69
    .line 545
    :goto_69
    array-length v4, p1

    #@6a
    if-ge v1, v4, :cond_80

    #@6c
    .line 546
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v4

    #@70
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@73
    move-result v4

    #@74
    if-nez v4, :cond_7d

    #@76
    add-int/lit8 v4, v2, 0x1

    #@78
    .line 547
    aget-object v5, p1, v1

    #@7a
    aput-object v5, v3, v2

    #@7c
    move v2, v4

    #@7d
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    #@7f
    goto :goto_69

    #@80
    .line 553
    :cond_80
    instance-of v0, p0, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    #@82
    if-eqz v0, :cond_8a

    #@84
    .line 554
    move-object v0, p0

    #@85
    check-cast v0, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    #@87
    .line 555
    invoke-interface {v0, p2}, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    #@8a
    .line 557
    :cond_8a
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat$Api23Impl;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    #@8d
    return-void
.end method

.method public static requireViewById(Landroid/app/Activity;I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    #@0
    .line 375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 376
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat$Api28Impl;->requireViewById(Landroid/app/Activity;I)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, Landroid/view/View;

    #@c
    return-object p0

    #@d
    .line 379
    :cond_d
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@10
    move-result-object p0

    #@11
    if-eqz p0, :cond_14

    #@13
    return-object p0

    #@14
    .line 381
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string p1, "ID does not reference a View inside this Activity"

    #@18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw p0
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V
    .registers 3

    #@0
    if-eqz p1, :cond_8

    #@2
    .line 398
    new-instance v0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    #@4
    invoke-direct {v0, p1}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroidx/core/app/SharedElementCallback;)V

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    .line 400
    :goto_9
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat$Api21Impl;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    #@c
    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V
    .registers 3

    #@0
    if-eqz p1, :cond_8

    #@2
    .line 417
    new-instance v0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    #@4
    invoke-direct {v0, p1}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroidx/core/app/SharedElementCallback;)V

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    .line 419
    :goto_9
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat$Api21Impl;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    #@c
    return-void
.end method

.method public static setLocusContext(Landroid/app/Activity;Landroidx/core/content/LocusIdCompat;Landroid/os/Bundle;)V
    .registers 5

    #@0
    .line 712
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_9

    #@6
    .line 713
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat$Api30Impl;->setLocusContext(Landroid/app/Activity;Landroidx/core/content/LocusIdCompat;Landroid/os/Bundle;)V

    #@9
    :cond_9
    return-void
.end method

.method public static setPermissionCompatDelegate(Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;)V
    .registers 1

    #@0
    .line 172
    sput-object p0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    #@2
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 594
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_10

    #@6
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    #@8
    .line 595
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 p0, 0x0

    #@f
    return p0

    #@10
    .line 600
    :cond_10
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat$Api23Impl;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    #@13
    move-result p0

    #@14
    return p0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    #@0
    .line 246
    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/ActivityCompat$Api16Impl;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public static startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    #@0
    .line 283
    invoke-static/range {p0 .. p7}, Landroidx/core/app/ActivityCompat$Api16Impl;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .registers 1

    #@0
    .line 431
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api21Impl;->startPostponedEnterTransition(Landroid/app/Activity;)V

    #@3
    return-void
.end method

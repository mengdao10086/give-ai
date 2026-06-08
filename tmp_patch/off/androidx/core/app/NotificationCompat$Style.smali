.class public abstract Landroidx/core/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 2542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 2550
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    #@6
    return-void
.end method

.method private calculateTopPadding()I
    .registers 6

    #@0
    .line 3009
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@2
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    .line 3010
    sget v1, Landroidx/core/R$dimen;->notification_top_pad:I

    #@a
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@d
    move-result v1

    #@e
    .line 3011
    sget v2, Landroidx/core/R$dimen;->notification_top_pad_large_text:I

    #@10
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@13
    move-result v2

    #@14
    .line 3013
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@17
    move-result-object v0

    #@18
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    #@1a
    const v3, 0x3fa66666    # 1.3f

    #@1d
    const/high16 v4, 0x3f800000    # 1.0f

    #@1f
    .line 3014
    invoke-static {v0, v4, v3}, Landroidx/core/app/NotificationCompat$Style;->constrain(FFF)F

    #@22
    move-result v0

    #@23
    sub-float/2addr v0, v4

    #@24
    const v3, 0x3e999998    # 0.29999995f

    #@27
    div-float/2addr v0, v3

    #@28
    sub-float/2addr v4, v0

    #@29
    int-to-float v1, v1

    #@2a
    mul-float/2addr v4, v1

    #@2b
    int-to-float v1, v2

    #@2c
    mul-float/2addr v0, v1

    #@2d
    add-float/2addr v4, v0

    #@2e
    .line 3018
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@31
    move-result v0

    #@32
    return v0
.end method

.method private static constrain(FFF)F
    .registers 4

    #@0
    cmpg-float v0, p0, p1

    #@2
    if-gez v0, :cond_6

    #@4
    move p0, p1

    #@5
    goto :goto_b

    #@6
    :cond_6
    cmpl-float p1, p0, p2

    #@8
    if-lez p1, :cond_b

    #@a
    move p0, p2

    #@b
    :cond_b
    :goto_b
    return p0
.end method

.method static constructCompatStyleByName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;
    .registers 3

    #@0
    if-eqz p0, :cond_66

    #@2
    .line 2721
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@8
    move-result v0

    #@9
    const/4 v1, -0x1

    #@a
    sparse-switch v0, :sswitch_data_68

    #@d
    goto :goto_44

    #@e
    :sswitch_e
    const-string v0, "androidx.core.app.NotificationCompat$MessagingStyle"

    #@10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result p0

    #@14
    if-nez p0, :cond_17

    #@16
    goto :goto_44

    #@17
    :cond_17
    const/4 v1, 0x4

    #@18
    goto :goto_44

    #@19
    :sswitch_19
    const-string v0, "androidx.core.app.NotificationCompat$BigTextStyle"

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result p0

    #@1f
    if-nez p0, :cond_22

    #@21
    goto :goto_44

    #@22
    :cond_22
    const/4 v1, 0x3

    #@23
    goto :goto_44

    #@24
    :sswitch_24
    const-string v0, "androidx.core.app.NotificationCompat$InboxStyle"

    #@26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result p0

    #@2a
    if-nez p0, :cond_2d

    #@2c
    goto :goto_44

    #@2d
    :cond_2d
    const/4 v1, 0x2

    #@2e
    goto :goto_44

    #@2f
    :sswitch_2f
    const-string v0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    #@31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result p0

    #@35
    if-nez p0, :cond_38

    #@37
    goto :goto_44

    #@38
    :cond_38
    const/4 v1, 0x1

    #@39
    goto :goto_44

    #@3a
    :sswitch_3a
    const-string v0, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    #@3c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result p0

    #@40
    if-nez p0, :cond_43

    #@42
    goto :goto_44

    #@43
    :cond_43
    const/4 v1, 0x0

    #@44
    :goto_44
    packed-switch v1, :pswitch_data_7e

    #@47
    goto :goto_66

    #@48
    .line 2731
    :pswitch_48
    new-instance p0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    #@4a
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    #@4d
    return-object p0

    #@4e
    .line 2723
    :pswitch_4e
    new-instance p0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    #@50
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    #@53
    return-object p0

    #@54
    .line 2727
    :pswitch_54
    new-instance p0, Landroidx/core/app/NotificationCompat$InboxStyle;

    #@56
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    #@59
    return-object p0

    #@5a
    .line 2725
    :pswitch_5a
    new-instance p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    #@5c
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    #@5f
    return-object p0

    #@60
    .line 2729
    :pswitch_60
    new-instance p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    #@62
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    #@65
    return-object p0

    #@66
    :cond_66
    :goto_66
    const/4 p0, 0x0

    #@67
    return-object p0

    #@68
    :sswitch_data_68
    .sparse-switch
        -0x2ab80d9c -> :sswitch_3a
        -0xa3fb04d -> :sswitch_2f
        0x366a678b -> :sswitch_24
        0x36cfe824 -> :sswitch_19
        0x7c9f11cd -> :sswitch_e
    .end sparse-switch

    #@7e
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5a
        :pswitch_54
        :pswitch_4e
        :pswitch_48
    .end packed-switch
.end method

.method private static constructCompatStyleByPlatformName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 2696
    :cond_4
    const-class v1, Landroid/app/Notification$BigPictureStyle;

    #@6
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_16

    #@10
    .line 2697
    new-instance p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    #@12
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    #@15
    return-object p0

    #@16
    .line 2699
    :cond_16
    const-class v1, Landroid/app/Notification$BigTextStyle;

    #@18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_28

    #@22
    .line 2700
    new-instance p0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    #@24
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    #@27
    return-object p0

    #@28
    .line 2702
    :cond_28
    const-class v1, Landroid/app/Notification$InboxStyle;

    #@2a
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_3a

    #@34
    .line 2703
    new-instance p0, Landroidx/core/app/NotificationCompat$InboxStyle;

    #@36
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    #@39
    return-object p0

    #@3a
    .line 2706
    :cond_3a
    const-class v1, Landroid/app/Notification$MessagingStyle;

    #@3c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_4c

    #@46
    .line 2707
    new-instance p0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    #@48
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    #@4b
    return-object p0

    #@4c
    .line 2709
    :cond_4c
    const-class v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    #@4e
    .line 2710
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    .line 2709
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result p0

    #@56
    if-eqz p0, :cond_5e

    #@58
    .line 2711
    new-instance p0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    #@5a
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    #@5d
    return-object p0

    #@5e
    :cond_5e
    return-object v0
.end method

.method static constructCompatStyleForBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;
    .registers 2

    #@0
    const-string v0, "androidx.core.app.extra.COMPAT_TEMPLATE"

    #@2
    .line 2741
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleByName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_d

    #@c
    return-object v0

    #@d
    :cond_d
    const-string v0, "android.selfDisplayName"

    #@f
    .line 2748
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_5c

    #@15
    const-string v0, "android.messagingStyleUser"

    #@17
    .line 2749
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1e

    #@1d
    goto :goto_5c

    #@1e
    :cond_1e
    const-string v0, "android.picture"

    #@20
    .line 2751
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_56

    #@26
    const-string v0, "android.pictureIcon"

    #@28
    .line 2752
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_2f

    #@2e
    goto :goto_56

    #@2f
    :cond_2f
    const-string v0, "android.bigText"

    #@31
    .line 2754
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_3d

    #@37
    .line 2755
    new-instance p0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    #@39
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    #@3c
    return-object p0

    #@3d
    :cond_3d
    const-string v0, "android.textLines"

    #@3f
    .line 2756
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_4b

    #@45
    .line 2757
    new-instance p0, Landroidx/core/app/NotificationCompat$InboxStyle;

    #@47
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    #@4a
    return-object p0

    #@4b
    :cond_4b
    const-string v0, "android.template"

    #@4d
    .line 2760
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object p0

    #@51
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleByPlatformName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;

    #@54
    move-result-object p0

    #@55
    return-object p0

    #@56
    .line 2753
    :cond_56
    :goto_56
    new-instance p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    #@58
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    #@5b
    return-object p0

    #@5c
    .line 2750
    :cond_5c
    :goto_5c
    new-instance p0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    #@5e
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    #@61
    return-object p0
.end method

.method static constructStyleForExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;
    .registers 3

    #@0
    .line 2765
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleForBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 2770
    :cond_8
    :try_start_8
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_b} :catch_c

    #@b
    return-object v0

    #@c
    :catch_c
    return-object v1
.end method

.method private createColoredBitmap(III)Landroid/graphics/Bitmap;
    .registers 5

    #@0
    .line 2950
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@2
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    #@7
    move-result-object p1

    #@8
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method private createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;
    .registers 7

    #@0
    .line 2955
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@2
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    if-nez p3, :cond_f

    #@a
    .line 2956
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@d
    move-result v0

    #@e
    goto :goto_10

    #@f
    :cond_f
    move v0, p3

    #@10
    :goto_10
    if-nez p3, :cond_16

    #@12
    .line 2957
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@15
    move-result p3

    #@16
    .line 2958
    :cond_16
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@18
    invoke-static {v0, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x0

    #@1d
    .line 2959
    invoke-virtual {p1, v2, v2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@20
    if-eqz p2, :cond_30

    #@22
    .line 2961
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object p3

    #@26
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    #@28
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@2a
    invoke-direct {v0, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@2d
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@30
    .line 2964
    :cond_30
    new-instance p2, Landroid/graphics/Canvas;

    #@32
    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@35
    .line 2965
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@38
    return-object v1
.end method

.method private createIconWithBackground(IIII)Landroid/graphics/Bitmap;
    .registers 7

    #@0
    .line 2971
    sget v0, Landroidx/core/R$drawable;->notification_icon_background:I

    #@2
    if-nez p4, :cond_5

    #@4
    const/4 p4, 0x0

    #@5
    :cond_5
    invoke-direct {p0, v0, p4, p2}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    #@8
    move-result-object p4

    #@9
    .line 2973
    new-instance v0, Landroid/graphics/Canvas;

    #@b
    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@e
    .line 2974
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@10
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object p1

    #@1e
    const/4 v1, 0x1

    #@1f
    .line 2975
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    #@22
    sub-int/2addr p2, p3

    #@23
    .line 2976
    div-int/lit8 p2, p2, 0x2

    #@25
    add-int/2addr p3, p2

    #@26
    .line 2977
    invoke-virtual {p1, p2, p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@29
    .line 2978
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    #@2b
    const/4 p3, -0x1

    #@2c
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@2e
    invoke-direct {p2, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@31
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@34
    .line 2979
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@37
    return-object p4
.end method

.method public static extractStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Style;
    .registers 1

    #@0
    .line 2682
    invoke-static {p0}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@3
    move-result-object p0

    #@4
    if-nez p0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 2686
    :cond_8
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Style;->constructStyleForExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method private hideNormalContent(Landroid/widget/RemoteViews;)V
    .registers 4

    #@0
    .line 3003
    sget v0, Landroidx/core/R$id;->title:I

    #@2
    const/16 v1, 0x8

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@7
    .line 3004
    sget v0, Landroidx/core/R$id;->text2:I

    #@9
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@c
    .line 3005
    sget v0, Landroidx/core/R$id;->text:I

    #@e
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@11
    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .registers 4

    #@0
    .line 2642
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    const-string v0, "android.summaryText"

    #@6
    .line 2643
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@b
    .line 2645
    :cond_b
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@d
    if-eqz v0, :cond_14

    #@f
    const-string v1, "android.title.big"

    #@11
    .line 2646
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@14
    .line 2648
    :cond_14
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Style;->getClassName()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1f

    #@1a
    const-string v1, "androidx.core.app.extra.COMPAT_TEMPLATE"

    #@1c
    .line 2650
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    :cond_1f
    return-void
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 2

    #@0
    return-void
.end method

.method public applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;
    .registers 15

    #@0
    .line 2784
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@2
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    .line 2785
    new-instance v7, Landroid/widget/RemoteViews;

    #@a
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@c
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v7, v1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    #@15
    .line 2789
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@17
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->getPriority()I

    #@1a
    .line 2805
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@1c
    iget-object p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    #@1e
    const/4 v8, 0x0

    #@1f
    if-eqz p2, :cond_64

    #@21
    .line 2809
    sget p2, Landroidx/core/R$id;->icon:I

    #@23
    invoke-virtual {v7, p2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@26
    .line 2810
    sget p2, Landroidx/core/R$id;->icon:I

    #@28
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@2a
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    #@2c
    invoke-virtual {v7, p2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    #@2f
    if-eqz p1, :cond_9b

    #@31
    .line 2814
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@33
    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@35
    iget p1, p1, Landroid/app/Notification;->icon:I

    #@37
    if-eqz p1, :cond_9b

    #@39
    .line 2815
    sget p1, Landroidx/core/R$dimen;->notification_right_icon_size:I

    #@3b
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@3e
    move-result p1

    #@3f
    .line 2817
    sget p2, Landroidx/core/R$dimen;->notification_small_icon_background_padding:I

    #@41
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@44
    move-result p2

    #@45
    mul-int/lit8 p2, p2, 0x2

    #@47
    sub-int p2, p1, p2

    #@49
    .line 2820
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@4b
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@4d
    iget v1, v1, Landroid/app/Notification;->icon:I

    #@4f
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@51
    .line 2824
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    #@54
    move-result v2

    #@55
    .line 2820
    invoke-direct {p0, v1, p1, p2, v2}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    #@58
    move-result-object p1

    #@59
    .line 2825
    sget p2, Landroidx/core/R$id;->right_icon:I

    #@5b
    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    #@5e
    .line 2830
    sget p1, Landroidx/core/R$id;->right_icon:I

    #@60
    invoke-virtual {v7, p1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@63
    goto :goto_9b

    #@64
    :cond_64
    if-eqz p1, :cond_9b

    #@66
    .line 2832
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@68
    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@6a
    iget p1, p1, Landroid/app/Notification;->icon:I

    #@6c
    if-eqz p1, :cond_9b

    #@6e
    .line 2833
    sget p1, Landroidx/core/R$id;->icon:I

    #@70
    invoke-virtual {v7, p1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@73
    .line 2835
    sget p1, Landroidx/core/R$dimen;->notification_large_icon_width:I

    #@75
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@78
    move-result p1

    #@79
    sget p2, Landroidx/core/R$dimen;->notification_big_circle_margin:I

    #@7b
    .line 2837
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@7e
    move-result p2

    #@7f
    sub-int/2addr p1, p2

    #@80
    .line 2838
    sget p2, Landroidx/core/R$dimen;->notification_small_icon_size_as_large:I

    #@82
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@85
    move-result p2

    #@86
    .line 2840
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@88
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@8a
    iget v1, v1, Landroid/app/Notification;->icon:I

    #@8c
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@8e
    .line 2844
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    #@91
    move-result v2

    #@92
    .line 2840
    invoke-direct {p0, v1, p1, p2, v2}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    #@95
    move-result-object p1

    #@96
    .line 2845
    sget p2, Landroidx/core/R$id;->icon:I

    #@98
    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    #@9b
    .line 2851
    :cond_9b
    :goto_9b
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@9d
    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@9f
    if-eqz p1, :cond_aa

    #@a1
    .line 2852
    sget p1, Landroidx/core/R$id;->title:I

    #@a3
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@a5
    iget-object p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@a7
    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@aa
    .line 2854
    :cond_aa
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@ac
    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    #@ae
    const/4 p2, 0x1

    #@af
    if-eqz p1, :cond_bc

    #@b1
    .line 2855
    sget p1, Landroidx/core/R$id;->text:I

    #@b3
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@b5
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    #@b7
    invoke-virtual {v7, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@ba
    move p1, p2

    #@bb
    goto :goto_bd

    #@bc
    :cond_bc
    move p1, v8

    #@bd
    .line 2860
    :goto_bd
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@bf
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #@c1
    const/16 v9, 0x8

    #@c3
    if-eqz v1, :cond_d6

    #@c5
    .line 2861
    sget p1, Landroidx/core/R$id;->info:I

    #@c7
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@c9
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #@cb
    invoke-virtual {v7, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@ce
    .line 2862
    sget p1, Landroidx/core/R$id;->info:I

    #@d0
    invoke-virtual {v7, p1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@d3
    :goto_d3
    move p1, p2

    #@d4
    move v10, p1

    #@d5
    goto :goto_112

    #@d6
    .line 2865
    :cond_d6
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@d8
    iget v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    #@da
    if-lez v1, :cond_10c

    #@dc
    .line 2866
    sget p1, Landroidx/core/R$integer;->status_bar_notification_info_maxnum:I

    #@de
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    #@e1
    move-result p1

    #@e2
    .line 2868
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@e4
    iget v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    #@e6
    if-le v1, p1, :cond_f4

    #@e8
    .line 2869
    sget p1, Landroidx/core/R$id;->info:I

    #@ea
    sget v1, Landroidx/core/R$string;->status_bar_notification_info_overflow:I

    #@ec
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@ef
    move-result-object v1

    #@f0
    invoke-virtual {v7, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@f3
    goto :goto_106

    #@f4
    .line 2872
    :cond_f4
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    #@f7
    move-result-object p1

    #@f8
    .line 2873
    sget v1, Landroidx/core/R$id;->info:I

    #@fa
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@fc
    iget v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    #@fe
    int-to-long v2, v2

    #@ff
    invoke-virtual {p1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    #@102
    move-result-object p1

    #@103
    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@106
    .line 2875
    :goto_106
    sget p1, Landroidx/core/R$id;->info:I

    #@108
    invoke-virtual {v7, p1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@10b
    goto :goto_d3

    #@10c
    .line 2879
    :cond_10c
    sget v1, Landroidx/core/R$id;->info:I

    #@10e
    invoke-virtual {v7, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@111
    move v10, v8

    #@112
    .line 2883
    :goto_112
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@114
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    #@116
    if-eqz v1, :cond_13c

    #@118
    .line 2884
    sget v1, Landroidx/core/R$id;->text:I

    #@11a
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@11c
    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    #@11e
    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@121
    .line 2885
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@123
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    #@125
    if-eqz v1, :cond_137

    #@127
    .line 2886
    sget v1, Landroidx/core/R$id;->text2:I

    #@129
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@12b
    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    #@12d
    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@130
    .line 2887
    sget v1, Landroidx/core/R$id;->text2:I

    #@132
    invoke-virtual {v7, v1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@135
    move v1, p2

    #@136
    goto :goto_13d

    #@137
    .line 2890
    :cond_137
    sget v1, Landroidx/core/R$id;->text2:I

    #@139
    invoke-virtual {v7, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@13c
    :cond_13c
    move v1, v8

    #@13d
    :goto_13d
    if-eqz v1, :cond_157

    #@13f
    if-eqz p3, :cond_14d

    #@141
    .line 2899
    sget p3, Landroidx/core/R$dimen;->notification_subtext_size:I

    #@143
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@146
    move-result p3

    #@147
    int-to-float p3, p3

    #@148
    .line 2901
    sget v0, Landroidx/core/R$id;->text:I

    #@14a
    invoke-virtual {v7, v0, v8, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    #@14d
    .line 2905
    :cond_14d
    sget v2, Landroidx/core/R$id;->line1:I

    #@14f
    const/4 v3, 0x0

    #@150
    const/4 v4, 0x0

    #@151
    const/4 v5, 0x0

    #@152
    const/4 v6, 0x0

    #@153
    move-object v1, v7

    #@154
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    #@157
    .line 2908
    :cond_157
    iget-object p3, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@159
    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    #@15c
    move-result-wide v0

    #@15d
    const-wide/16 v2, 0x0

    #@15f
    cmp-long p3, v0, v2

    #@161
    if-eqz p3, :cond_1af

    #@163
    .line 2909
    iget-object p3, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@165
    iget-boolean p3, p3, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    #@167
    if-eqz p3, :cond_19c

    #@169
    .line 2910
    sget p3, Landroidx/core/R$id;->chronometer:I

    #@16b
    invoke-virtual {v7, p3, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@16e
    .line 2911
    sget p3, Landroidx/core/R$id;->chronometer:I

    #@170
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@172
    .line 2912
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    #@175
    move-result-wide v0

    #@176
    .line 2913
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@179
    move-result-wide v2

    #@17a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@17d
    move-result-wide v4

    #@17e
    sub-long/2addr v2, v4

    #@17f
    add-long/2addr v0, v2

    #@180
    const-string v2, "setBase"

    #@182
    .line 2911
    invoke-virtual {v7, p3, v2, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    #@185
    .line 2914
    sget p3, Landroidx/core/R$id;->chronometer:I

    #@187
    const-string v0, "setStarted"

    #@189
    invoke-virtual {v7, p3, v0, p2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    #@18c
    .line 2915
    iget-object p3, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@18e
    iget-boolean p3, p3, Landroidx/core/app/NotificationCompat$Builder;->mChronometerCountDown:Z

    #@190
    if-eqz p3, :cond_1b0

    #@192
    .line 2916
    sget p3, Landroidx/core/R$id;->chronometer:I

    #@194
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@196
    iget-boolean v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mChronometerCountDown:Z

    #@198
    invoke-virtual {v7, p3, v0}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    #@19b
    goto :goto_1b0

    #@19c
    .line 2920
    :cond_19c
    sget p3, Landroidx/core/R$id;->time:I

    #@19e
    invoke-virtual {v7, p3, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@1a1
    .line 2921
    sget p3, Landroidx/core/R$id;->time:I

    #@1a3
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@1a5
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    #@1a8
    move-result-wide v0

    #@1a9
    const-string v2, "setTime"

    #@1ab
    invoke-virtual {v7, p3, v2, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    #@1ae
    goto :goto_1b0

    #@1af
    :cond_1af
    move p2, v10

    #@1b0
    .line 2925
    :cond_1b0
    :goto_1b0
    sget p3, Landroidx/core/R$id;->right_side:I

    #@1b2
    if-eqz p2, :cond_1b6

    #@1b4
    move p2, v8

    #@1b5
    goto :goto_1b7

    #@1b6
    :cond_1b6
    move p2, v9

    #@1b7
    :goto_1b7
    invoke-virtual {v7, p3, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@1ba
    .line 2926
    sget p2, Landroidx/core/R$id;->line3:I

    #@1bc
    if-eqz p1, :cond_1bf

    #@1be
    goto :goto_1c0

    #@1bf
    :cond_1bf
    move v8, v9

    #@1c0
    :goto_1c0
    invoke-virtual {v7, p2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@1c3
    return-object v7
.end method

.method public build()Landroid/app/Notification;
    .registers 2

    #@0
    .line 2570
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 2571
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method public buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 10

    #@0
    .line 2991
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->hideNormalContent(Landroid/widget/RemoteViews;)V

    #@3
    .line 2992
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    #@5
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    #@8
    .line 2993
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    #@a
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@d
    move-result-object p2

    #@e
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    #@11
    .line 2994
    sget p2, Landroidx/core/R$id;->notification_main_column:I

    #@13
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@17
    .line 2997
    sget v2, Landroidx/core/R$id;->notification_main_column_container:I

    #@19
    const/4 v3, 0x0

    #@1a
    .line 2998
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;->calculateTopPadding()I

    #@1d
    move-result v4

    #@1e
    const/4 v5, 0x0

    #@1f
    const/4 v6, 0x0

    #@20
    move-object v1, p1

    #@21
    .line 2997
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    #@24
    return-void
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .registers 3

    #@0
    const-string v0, "android.summaryText"

    #@2
    .line 2671
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@5
    const-string v0, "android.title.big"

    #@7
    .line 2672
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@a
    const-string v0, "androidx.core.app.extra.COMPAT_TEMPLATE"

    #@c
    .line 2673
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@f
    return-void
.end method

.method public createColoredBitmap(II)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 2938
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 2946
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method public displayCustomViewInline()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected getClassName()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .registers 4

    #@0
    const-string v0, "android.summaryText"

    #@2
    .line 2659
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_11

    #@8
    .line 2660
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    #@e
    const/4 v0, 0x1

    #@f
    .line 2661
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    #@11
    :cond_11
    const-string v0, "android.title.big"

    #@13
    .line 2663
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@16
    move-result-object p1

    #@17
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@19
    return-void
.end method

.method public setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 3

    #@0
    .line 2556
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@2
    if-eq v0, p1, :cond_b

    #@4
    .line 2557
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    #@6
    if-eqz p1, :cond_b

    #@8
    .line 2559
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    #@b
    :cond_b
    return-void
.end method

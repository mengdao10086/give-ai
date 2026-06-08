.class public Landroidx/core/app/NotificationCompat$BigPictureStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;,
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api23Impl;,
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api16Impl;
    }
.end annotation


# static fields
.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String; = "androidx.core.app.NotificationCompat$BigPictureStyle"


# instance fields
.field private mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mBigLargeIconSet:Z

.field private mPictureContentDescription:Ljava/lang/CharSequence;

.field private mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mShowBigPictureWhenCollapsed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 3057
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 2

    #@0
    .line 3060
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    #@3
    .line 3061
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    #@6
    return-void
.end method

.method private static asIconCompat(Landroid/os/Parcelable;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 2

    #@0
    if-eqz p0, :cond_18

    #@2
    .line 3233
    instance-of v0, p0, Landroid/graphics/drawable/Icon;

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 3234
    check-cast p0, Landroid/graphics/drawable/Icon;

    #@8
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    #@b
    move-result-object p0

    #@c
    return-object p0

    #@d
    .line 3237
    :cond_d
    instance-of v0, p0, Landroid/graphics/Bitmap;

    #@f
    if-eqz v0, :cond_18

    #@11
    .line 3238
    check-cast p0, Landroid/graphics/Bitmap;

    #@13
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    #@16
    move-result-object p0

    #@17
    return-object p0

    #@18
    :cond_18
    const/4 p0, 0x0

    #@19
    return-object p0
.end method

.method public static getPictureIcon(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const-string v0, "android.picture"

    #@6
    .line 3221
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 3223
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->asIconCompat(Landroid/os/Parcelable;)Landroidx/core/graphics/drawable/IconCompat;

    #@f
    move-result-object p0

    #@10
    return-object p0

    #@11
    :cond_11
    const-string v0, "android.pictureIcon"

    #@13
    .line 3225
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@16
    move-result-object p0

    #@17
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->asIconCompat(Landroid/os/Parcelable;)Landroidx/core/graphics/drawable/IconCompat;

    #@1a
    move-result-object p0

    #@1b
    return-object p0
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 7

    #@0
    .line 3149
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    #@2
    .line 3150
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    #@9
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    #@b
    .line 3151
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    #@e
    move-result-object v0

    #@f
    .line 3152
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@11
    const/16 v2, 0x1f

    #@13
    const/4 v3, 0x0

    #@14
    if-eqz v1, :cond_44

    #@16
    .line 3155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@18
    if-lt v1, v2, :cond_31

    #@1a
    .line 3157
    instance-of v1, p1, Landroidx/core/app/NotificationCompatBuilder;

    #@1c
    if-eqz v1, :cond_26

    #@1e
    .line 3158
    move-object v1, p1

    #@1f
    check-cast v1, Landroidx/core/app/NotificationCompatBuilder;

    #@21
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompatBuilder;->getContext()Landroid/content/Context;

    #@24
    move-result-object v1

    #@25
    goto :goto_27

    #@26
    :cond_26
    move-object v1, v3

    #@27
    .line 3160
    :goto_27
    iget-object v4, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@29
    invoke-virtual {v4, v1}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;->setBigPicture(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    #@30
    goto :goto_44

    #@31
    .line 3161
    :cond_31
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@33
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    #@36
    move-result v1

    #@37
    const/4 v4, 0x1

    #@38
    if-ne v1, v4, :cond_44

    #@3a
    .line 3162
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@3c
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->getBitmap()Landroid/graphics/Bitmap;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    #@43
    move-result-object v0

    #@44
    .line 3166
    :cond_44
    :goto_44
    iget-boolean v1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    #@46
    if-eqz v1, :cond_63

    #@48
    .line 3167
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@4a
    if-nez v1, :cond_50

    #@4c
    .line 3168
    invoke-static {v0, v3}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api16Impl;->setBigLargeIcon(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/Bitmap;)V

    #@4f
    goto :goto_63

    #@50
    .line 3171
    :cond_50
    instance-of v1, p1, Landroidx/core/app/NotificationCompatBuilder;

    #@52
    if-eqz v1, :cond_5a

    #@54
    .line 3172
    check-cast p1, Landroidx/core/app/NotificationCompatBuilder;

    #@56
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompatBuilder;->getContext()Landroid/content/Context;

    #@59
    move-result-object v3

    #@5a
    .line 3174
    :cond_5a
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@5c
    invoke-virtual {p1, v3}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    #@5f
    move-result-object p1

    #@60
    invoke-static {v0, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api23Impl;->setBigLargeIcon(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    #@63
    .line 3184
    :cond_63
    :goto_63
    iget-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    #@65
    if-eqz p1, :cond_6c

    #@67
    .line 3185
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    #@69
    invoke-static {v0, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api16Impl;->setSummaryText(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V

    #@6c
    .line 3187
    :cond_6c
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6e
    if-lt p1, v2, :cond_7a

    #@70
    .line 3188
    iget-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    #@72
    invoke-static {v0, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;->showBigPictureWhenCollapsed(Landroid/app/Notification$BigPictureStyle;Z)V

    #@75
    .line 3189
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    #@77
    invoke-static {v0, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;->setContentDescription(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V

    #@7a
    :cond_7a
    return-void
.end method

.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    goto :goto_8

    #@4
    .line 3127
    :cond_4
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    #@7
    move-result-object p1

    #@8
    :goto_8
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@a
    const/4 p1, 0x1

    #@b
    .line 3128
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    #@d
    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 p1, 0x0

    #@3
    goto :goto_8

    #@4
    .line 3097
    :cond_4
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    #@7
    move-result-object p1

    #@8
    :goto_8
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@a
    return-object p0
.end method

.method public bigPicture(Landroid/graphics/drawable/Icon;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    #@0
    .line 3107
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@6
    return-object p0
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 3250
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    #@3
    const-string v0, "android.largeIcon.big"

    #@5
    .line 3251
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@8
    const-string v0, "android.picture"

    #@a
    .line 3252
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@d
    const-string v0, "android.pictureIcon"

    #@f
    .line 3253
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@12
    const-string v0, "android.showBigPictureWhenCollapsed"

    #@14
    .line 3254
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@17
    return-void
.end method

.method protected getClassName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    #@2
    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .registers 4

    #@0
    .line 3201
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V

    #@3
    const-string v0, "android.largeIcon.big"

    #@5
    .line 3203
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_18

    #@b
    .line 3204
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->asIconCompat(Landroid/os/Parcelable;)Landroidx/core/graphics/drawable/IconCompat;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@15
    const/4 v0, 0x1

    #@16
    .line 3205
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    #@18
    .line 3207
    :cond_18
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->getPictureIcon(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@1e
    const-string v0, "android.showBigPictureWhenCollapsed"

    #@20
    .line 3208
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@23
    move-result p1

    #@24
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    #@26
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    #@0
    .line 3069
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    #@6
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    #@0
    .line 3089
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    #@0
    .line 3077
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    #@6
    const/4 p1, 0x1

    #@7
    .line 3078
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    #@9
    return-object p0
.end method

.method public showBigPictureWhenCollapsed(Z)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    #@0
    .line 3119
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    #@2
    return-object p0
.end method

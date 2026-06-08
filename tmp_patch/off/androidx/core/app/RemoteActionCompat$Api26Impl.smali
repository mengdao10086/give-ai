.class Landroidx/core/app/RemoteActionCompat$Api26Impl;
.super Ljava/lang/Object;
.source "RemoteActionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteActionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createRemoteAction(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/RemoteAction;
    .registers 5

    #@0
    .line 265
    new-instance v0, Landroid/app/RemoteAction;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@5
    return-object v0
.end method

.method static getActionIntent(Landroid/app/RemoteAction;)Landroid/app/PendingIntent;
    .registers 1

    #@0
    .line 244
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getContentDescription(Landroid/app/RemoteAction;)Ljava/lang/CharSequence;
    .registers 1

    #@0
    .line 239
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getIcon(Landroid/app/RemoteAction;)Landroid/graphics/drawable/Icon;
    .registers 1

    #@0
    .line 254
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getTitle(Landroid/app/RemoteAction;)Ljava/lang/CharSequence;
    .registers 1

    #@0
    .line 249
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static isEnabled(Landroid/app/RemoteAction;)Z
    .registers 1

    #@0
    .line 259
    invoke-virtual {p0}, Landroid/app/RemoteAction;->isEnabled()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static setEnabled(Landroid/app/RemoteAction;Z)V
    .registers 2

    #@0
    .line 270
    invoke-virtual {p0, p1}, Landroid/app/RemoteAction;->setEnabled(Z)V

    #@3
    return-void
.end method

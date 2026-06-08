.class Landroidx/core/app/AppOpsManagerCompat$Api29Impl;
.super Ljava/lang/Object;
.source "AppOpsManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/AppOpsManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static checkOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x1

    #@3
    return p0

    #@4
    .line 246
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method static getOpPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    #@0
    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getSystemService(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .registers 2

    #@0
    .line 233
    const-class v0, Landroid/app/AppOpsManager;

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroid/app/AppOpsManager;

    #@8
    return-object p0
.end method

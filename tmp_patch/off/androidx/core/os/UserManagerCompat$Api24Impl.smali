.class Landroidx/core/os/UserManagerCompat$Api24Impl;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/UserManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static isUserUnlocked(Landroid/content/Context;)Z
    .registers 2

    #@0
    .line 58
    const-class v0, Landroid/os/UserManager;

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroid/os/UserManager;

    #@8
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    #@b
    move-result p0

    #@c
    return p0
.end method

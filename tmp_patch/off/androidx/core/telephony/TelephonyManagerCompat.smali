.class public Landroidx/core/telephony/TelephonyManagerCompat;
.super Ljava/lang/Object;
.source "TelephonyManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/telephony/TelephonyManagerCompat$Api23Impl;,
        Landroidx/core/telephony/TelephonyManagerCompat$Api26Impl;,
        Landroidx/core/telephony/TelephonyManagerCompat$Api30Impl;
    }
.end annotation


# static fields
.field private static sGetDeviceIdMethod:Ljava/lang/reflect/Method;

.field private static sGetSubIdMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getImei(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 1

    #@0
    .line 71
    invoke-static {p0}, Landroidx/core/telephony/TelephonyManagerCompat$Api26Impl;->getImei(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getSubscriptionId(Landroid/telephony/TelephonyManager;)I
    .registers 5

    #@0
    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 113
    invoke-static {p0}, Landroidx/core/telephony/TelephonyManagerCompat$Api30Impl;->getSubscriptionId(Landroid/telephony/TelephonyManager;)I

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 116
    :cond_b
    :try_start_b
    sget-object v0, Landroidx/core/telephony/TelephonyManagerCompat;->sGetSubIdMethod:Ljava/lang/reflect/Method;

    #@d
    const/4 v1, 0x0

    #@e
    if-nez v0, :cond_20

    #@10
    .line 117
    const-class v0, Landroid/telephony/TelephonyManager;

    #@12
    const-string v2, "getSubId"

    #@14
    new-array v3, v1, [Ljava/lang/Class;

    #@16
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Landroidx/core/telephony/TelephonyManagerCompat;->sGetSubIdMethod:Ljava/lang/reflect/Method;

    #@1c
    const/4 v2, 0x1

    #@1d
    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@20
    .line 121
    :cond_20
    sget-object v0, Landroidx/core/telephony/TelephonyManagerCompat;->sGetSubIdMethod:Ljava/lang/reflect/Method;

    #@22
    new-array v1, v1, [Ljava/lang/Object;

    #@24
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object p0

    #@28
    check-cast p0, Ljava/lang/Integer;

    #@2a
    if-eqz p0, :cond_38

    #@2c
    .line 122
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@2f
    move-result v0

    #@30
    const/4 v1, -0x1

    #@31
    if-eq v0, v1, :cond_38

    #@33
    .line 123
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@36
    move-result p0
    :try_end_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_37} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_37} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_37} :catch_38

    #@37
    return p0

    #@38
    :catch_38
    :cond_38
    const p0, 0x7fffffff

    #@3b
    return p0
.end method

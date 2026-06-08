.class public Landroidx/core/telephony/SubscriptionManagerCompat;
.super Ljava/lang/Object;
.source "SubscriptionManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/telephony/SubscriptionManagerCompat$Api29Impl;
    }
.end annotation


# static fields
.field private static sGetSlotIndexMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getSlotIndex(I)I
    .registers 8

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p0, v0, :cond_4

    #@3
    return v0

    #@4
    .line 47
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v2, 0x1d

    #@8
    if-lt v1, v2, :cond_f

    #@a
    .line 48
    invoke-static {p0}, Landroidx/core/telephony/SubscriptionManagerCompat$Api29Impl;->getSlotIndex(I)I

    #@d
    move-result p0

    #@e
    return p0

    #@f
    .line 51
    :cond_f
    :try_start_f
    sget-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    #@11
    const/4 v2, 0x0

    #@12
    const/4 v3, 0x1

    #@13
    if-nez v1, :cond_28

    #@15
    .line 53
    const-class v1, Landroid/telephony/SubscriptionManager;

    #@17
    const-string v4, "getSlotIndex"

    #@19
    new-array v5, v3, [Ljava/lang/Class;

    #@1b
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1d
    aput-object v6, v5, v2

    #@1f
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@22
    move-result-object v1

    #@23
    sput-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    #@25
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@28
    .line 62
    :cond_28
    sget-object v1, Landroidx/core/telephony/SubscriptionManagerCompat;->sGetSlotIndexMethod:Ljava/lang/reflect/Method;

    #@2a
    new-array v3, v3, [Ljava/lang/Object;

    #@2c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object p0

    #@30
    aput-object p0, v3, v2

    #@32
    const/4 p0, 0x0

    #@33
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object p0

    #@37
    check-cast p0, Ljava/lang/Integer;

    #@39
    if-eqz p0, :cond_40

    #@3b
    .line 64
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@3e
    move-result p0
    :try_end_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_3f} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_3f} :catch_40
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_3f} :catch_40

    #@3f
    return p0

    #@40
    :catch_40
    :cond_40
    return v0
.end method

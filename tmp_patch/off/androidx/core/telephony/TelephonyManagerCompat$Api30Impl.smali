.class Landroidx/core/telephony/TelephonyManagerCompat$Api30Impl;
.super Ljava/lang/Object;
.source "TelephonyManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/telephony/TelephonyManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getSubscriptionId(Landroid/telephony/TelephonyManager;)I
    .registers 1

    #@0
    .line 142
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    #@3
    move-result p0

    #@4
    return p0
.end method

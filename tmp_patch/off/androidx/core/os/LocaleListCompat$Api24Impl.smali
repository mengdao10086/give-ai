.class Landroidx/core/os/LocaleListCompat$Api24Impl;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/LocaleListCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static varargs createLocaleList([Ljava/util/Locale;)Landroid/os/LocaleList;
    .registers 2

    #@0
    .line 341
    new-instance v0, Landroid/os/LocaleList;

    #@2
    invoke-direct {v0, p0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    #@5
    return-object v0
.end method

.method static getAdjustedDefault()Landroid/os/LocaleList;
    .registers 1

    #@0
    .line 346
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static getDefault()Landroid/os/LocaleList;
    .registers 1

    #@0
    .line 351
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

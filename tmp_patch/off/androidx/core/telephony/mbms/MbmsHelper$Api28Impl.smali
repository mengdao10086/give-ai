.class Landroidx/core/telephony/mbms/MbmsHelper$Api28Impl;
.super Ljava/lang/Object;
.source "MbmsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/telephony/mbms/MbmsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getBestNameForService(Landroid/content/Context;Landroid/telephony/mbms/ServiceInfo;)Ljava/lang/CharSequence;
    .registers 7

    #@0
    .line 68
    invoke-virtual {p1}, Landroid/telephony/mbms/ServiceInfo;->getNamedContentLocales()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 69
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    if-eqz v1, :cond_c

    #@b
    return-object v2

    #@c
    .line 73
    :cond_c
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@f
    move-result v0

    #@10
    new-array v0, v0, [Ljava/lang/String;

    #@12
    .line 75
    invoke-virtual {p1}, Landroid/telephony/mbms/ServiceInfo;->getNamedContentLocales()Ljava/util/Set;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    const/4 v3, 0x0

    #@1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_30

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Ljava/util/Locale;

    #@27
    .line 76
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    aput-object v4, v0, v3

    #@2d
    add-int/lit8 v3, v3, 0x1

    #@2f
    goto :goto_1b

    #@30
    .line 80
    :cond_30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@33
    move-result-object p0

    #@34
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@37
    move-result-object p0

    #@38
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@3b
    move-result-object p0

    #@3c
    .line 81
    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    #@3f
    move-result-object p0

    #@40
    if-nez p0, :cond_43

    #@42
    goto :goto_47

    #@43
    .line 82
    :cond_43
    invoke-virtual {p1, p0}, Landroid/telephony/mbms/ServiceInfo;->getNameForLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;

    #@46
    move-result-object v2

    #@47
    :goto_47
    return-object v2
.end method

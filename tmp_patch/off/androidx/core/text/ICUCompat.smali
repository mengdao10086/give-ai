.class public final Landroidx/core/text/ICUCompat;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/ICUCompat$Api21Impl;,
        Landroidx/core/text/ICUCompat$Api24Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompat"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static addLikelySubtagsBelowApi21(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    #@0
    const-string v0, "ICUCompat"

    #@2
    .line 132
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    .line 134
    :try_start_6
    sget-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    #@8
    if-eqz v1, :cond_21

    #@a
    const/4 v2, 0x1

    #@b
    new-array v2, v2, [Ljava/lang/Object;

    #@d
    const/4 v3, 0x0

    #@e
    aput-object p0, v2, v3

    #@10
    const/4 v3, 0x0

    #@11
    .line 136
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_17} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_17} :catch_18

    #@17
    return-object v1

    #@18
    :catch_18
    move-exception v1

    #@19
    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_21

    #@1d
    :catch_1d
    move-exception v1

    #@1e
    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    :cond_21
    :goto_21
    return-object p0
.end method

.method private static getScriptBelowApi21(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    #@0
    const-string v0, "ICUCompat"

    #@2
    const/4 v1, 0x0

    #@3
    .line 116
    :try_start_3
    sget-object v2, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    #@5
    if-eqz v2, :cond_1d

    #@7
    const/4 v3, 0x1

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    const/4 v4, 0x0

    #@b
    aput-object p0, v3, v4

    #@d
    .line 118
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object p0

    #@11
    check-cast p0, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_13} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_13} :catch_14

    #@13
    return-object p0

    #@14
    :catch_14
    move-exception p0

    #@15
    .line 125
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    goto :goto_1d

    #@19
    :catch_19
    move-exception p0

    #@1a
    .line 122
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    :cond_1d
    :goto_1d
    return-object v1
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 1

    #@0
    .line 89
    invoke-static {p0}, Landroidx/core/text/ICUCompat$Api24Impl;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Landroidx/core/text/ICUCompat$Api24Impl;->addLikelySubtags(Ljava/lang/Object;)Landroid/icu/util/ULocale;

    #@7
    move-result-object p0

    #@8
    .line 90
    invoke-static {p0}, Landroidx/core/text/ICUCompat$Api24Impl;->getScript(Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

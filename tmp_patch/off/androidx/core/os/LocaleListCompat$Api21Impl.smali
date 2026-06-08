.class Landroidx/core/os/LocaleListCompat$Api21Impl;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/LocaleListCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# static fields
.field private static final PSEUDO_LOCALE:[Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/util/Locale;

    #@3
    .line 299
    new-instance v1, Ljava/util/Locale;

    #@5
    const-string v2, "en"

    #@7
    const-string v3, "XA"

    #@9
    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    const/4 v2, 0x0

    #@d
    aput-object v1, v0, v2

    #@f
    new-instance v1, Ljava/util/Locale;

    #@11
    const-string v2, "ar"

    #@13
    const-string v3, "XB"

    #@15
    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    const/4 v2, 0x1

    #@19
    aput-object v1, v0, v2

    #@1b
    sput-object v0, Landroidx/core/os/LocaleListCompat$Api21Impl;->PSEUDO_LOCALE:[Ljava/util/Locale;

    #@1d
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .registers 1

    #@0
    .line 313
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static isPseudoLocale(Ljava/util/Locale;)Z
    .registers 6

    #@0
    .line 303
    sget-object v0, Landroidx/core/os/LocaleListCompat$Api21Impl;->PSEUDO_LOCALE:[Ljava/util/Locale;

    #@2
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    move v3, v2

    #@5
    :goto_5
    if-ge v3, v1, :cond_14

    #@7
    aget-object v4, v0, v3

    #@9
    .line 304
    invoke-virtual {v4, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_11

    #@f
    const/4 p0, 0x1

    #@10
    return p0

    #@11
    :cond_11
    add-int/lit8 v3, v3, 0x1

    #@13
    goto :goto_5

    #@14
    :cond_14
    return v2
.end method

.method static matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 6

    #@0
    .line 271
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 274
    :cond_8
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    const/4 v2, 0x0

    #@15
    if-nez v0, :cond_18

    #@17
    return v2

    #@18
    .line 277
    :cond_18
    invoke-static {p0}, Landroidx/core/os/LocaleListCompat$Api21Impl;->isPseudoLocale(Ljava/util/Locale;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_4f

    #@1e
    invoke-static {p1}, Landroidx/core/os/LocaleListCompat$Api21Impl;->isPseudoLocale(Ljava/util/Locale;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_25

    #@24
    goto :goto_4f

    #@25
    .line 283
    :cond_25
    invoke-static {p0}, Landroidx/core/text/ICUCompat;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_46

    #@2f
    .line 290
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@32
    move-result-object p0

    #@33
    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_45

    #@39
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@3c
    move-result-object p1

    #@3d
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result p0

    #@41
    if-eqz p0, :cond_44

    #@43
    goto :goto_45

    #@44
    :cond_44
    move v1, v2

    #@45
    :cond_45
    :goto_45
    return v1

    #@46
    .line 293
    :cond_46
    invoke-static {p1}, Landroidx/core/text/ICUCompat;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    #@49
    move-result-object p0

    #@4a
    .line 296
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result p0

    #@4e
    return p0

    #@4f
    :cond_4f
    :goto_4f
    return v2
.end method

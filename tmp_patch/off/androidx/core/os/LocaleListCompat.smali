.class public final Landroidx/core/os/LocaleListCompat;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/LocaleListCompat$Api24Impl;,
        Landroidx/core/os/LocaleListCompat$Api21Impl;
    }
.end annotation


# static fields
.field private static final sEmptyLocaleList:Landroidx/core/os/LocaleListCompat;


# instance fields
.field private final mImpl:Landroidx/core/os/LocaleListInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/util/Locale;

    #@3
    .line 37
    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroidx/core/os/LocaleListCompat;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroidx/core/os/LocaleListCompat;->sEmptyLocaleList:Landroidx/core/os/LocaleListCompat;

    #@9
    return-void
.end method

.method private constructor <init>(Landroidx/core/os/LocaleListInterface;)V
    .registers 2

    #@0
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    #@5
    return-void
.end method

.method public static varargs create([Ljava/util/Locale;)Landroidx/core/os/LocaleListCompat;
    .registers 1

    #@0
    .line 77
    invoke-static {p0}, Landroidx/core/os/LocaleListCompat$Api24Impl;->createLocaleList([Ljava/util/Locale;)Landroid/os/LocaleList;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method static forLanguageTagCompat(Ljava/lang/String;)Ljava/util/Locale;
    .registers 7

    #@0
    const-string v0, "-"

    #@2
    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    const/4 v2, -0x1

    #@7
    const/4 v3, 0x2

    #@8
    const/4 v4, 0x0

    #@9
    const/4 v5, 0x1

    #@a
    if-eqz v1, :cond_37

    #@c
    .line 179
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 180
    array-length v1, v0

    #@11
    if-le v1, v3, :cond_1f

    #@13
    .line 181
    new-instance p0, Ljava/util/Locale;

    #@15
    aget-object v1, v0, v4

    #@17
    aget-object v2, v0, v5

    #@19
    aget-object v0, v0, v3

    #@1b
    invoke-direct {p0, v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    return-object p0

    #@1f
    .line 182
    :cond_1f
    array-length v1, v0

    #@20
    if-le v1, v5, :cond_2c

    #@22
    .line 183
    new-instance p0, Ljava/util/Locale;

    #@24
    aget-object v1, v0, v4

    #@26
    aget-object v0, v0, v5

    #@28
    invoke-direct {p0, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    return-object p0

    #@2c
    .line 184
    :cond_2c
    array-length v1, v0

    #@2d
    if-ne v1, v5, :cond_6a

    #@2f
    .line 185
    new-instance p0, Ljava/util/Locale;

    #@31
    aget-object v0, v0, v4

    #@33
    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@36
    return-object p0

    #@37
    :cond_37
    const-string v0, "_"

    #@39
    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_85

    #@3f
    .line 188
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    .line 189
    array-length v1, v0

    #@44
    if-le v1, v3, :cond_52

    #@46
    .line 190
    new-instance p0, Ljava/util/Locale;

    #@48
    aget-object v1, v0, v4

    #@4a
    aget-object v2, v0, v5

    #@4c
    aget-object v0, v0, v3

    #@4e
    invoke-direct {p0, v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@51
    return-object p0

    #@52
    .line 191
    :cond_52
    array-length v1, v0

    #@53
    if-le v1, v5, :cond_5f

    #@55
    .line 192
    new-instance p0, Ljava/util/Locale;

    #@57
    aget-object v1, v0, v4

    #@59
    aget-object v0, v0, v5

    #@5b
    invoke-direct {p0, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5e
    return-object p0

    #@5f
    .line 193
    :cond_5f
    array-length v1, v0

    #@60
    if-ne v1, v5, :cond_6a

    #@62
    .line 194
    new-instance p0, Ljava/util/Locale;

    #@64
    aget-object v0, v0, v4

    #@66
    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@69
    return-object p0

    #@6a
    .line 200
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6c
    new-instance v1, Ljava/lang/StringBuilder;

    #@6e
    const-string v2, "Can not parse language tag: ["

    #@70
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object p0

    #@77
    const-string v1, "]"

    #@79
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object p0

    #@7d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object p0

    #@81
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@84
    throw v0

    #@85
    .line 197
    :cond_85
    new-instance v0, Ljava/util/Locale;

    #@87
    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@8a
    return-object v0
.end method

.method public static forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;
    .registers 5

    #@0
    if-eqz p0, :cond_26

    #@2
    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_26

    #@9
    :cond_9
    const-string v0, ","

    #@b
    const/4 v1, -0x1

    #@c
    .line 165
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    .line 166
    array-length v0, p0

    #@11
    new-array v1, v0, [Ljava/util/Locale;

    #@13
    const/4 v2, 0x0

    #@14
    :goto_14
    if-ge v2, v0, :cond_21

    #@16
    .line 169
    aget-object v3, p0, v2

    #@18
    invoke-static {v3}, Landroidx/core/os/LocaleListCompat$Api21Impl;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@1b
    move-result-object v3

    #@1c
    .line 170
    aput-object v3, v1, v2

    #@1e
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_14

    #@21
    .line 172
    :cond_21
    invoke-static {v1}, Landroidx/core/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroidx/core/os/LocaleListCompat;

    #@24
    move-result-object p0

    #@25
    return-object p0

    #@26
    .line 163
    :cond_26
    :goto_26
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    #@29
    move-result-object p0

    #@2a
    return-object p0
.end method

.method public static getAdjustedDefault()Landroidx/core/os/LocaleListCompat;
    .registers 1

    #@0
    .line 210
    invoke-static {}, Landroidx/core/os/LocaleListCompat$Api24Impl;->getAdjustedDefault()Landroid/os/LocaleList;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getDefault()Landroidx/core/os/LocaleListCompat;
    .registers 1

    #@0
    .line 230
    invoke-static {}, Landroidx/core/os/LocaleListCompat$Api24Impl;->getDefault()Landroid/os/LocaleList;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;
    .registers 1

    #@0
    .line 149
    sget-object v0, Landroidx/core/os/LocaleListCompat;->sEmptyLocaleList:Landroidx/core/os/LocaleListCompat;

    #@2
    return-object v0
.end method

.method public static matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 3

    #@0
    .line 252
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 253
    invoke-static {p0, p1}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 255
    :cond_b
    invoke-static {p0, p1}, Landroidx/core/os/LocaleListCompat$Api21Impl;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    #@e
    move-result p0

    #@f
    return p0
.end method

.method public static wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;
    .registers 3

    #@0
    .line 58
    new-instance v0, Landroidx/core/os/LocaleListCompat;

    #@2
    new-instance v1, Landroidx/core/os/LocaleListPlatformWrapper;

    #@4
    invoke-direct {v1, p0}, Landroidx/core/os/LocaleListPlatformWrapper;-><init>(Ljava/lang/Object;)V

    #@7
    invoke-direct {v0, v1}, Landroidx/core/os/LocaleListCompat;-><init>(Landroidx/core/os/LocaleListInterface;)V

    #@a
    return-object v0
.end method

.method public static wrap(Ljava/lang/Object;)Landroidx/core/os/LocaleListCompat;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 49
    check-cast p0, Landroid/os/LocaleList;

    #@2
    invoke-static {p0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 319
    instance-of v0, p1, Landroidx/core/os/LocaleListCompat;

    #@2
    if-eqz v0, :cond_12

    #@4
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    #@6
    check-cast p1, Landroidx/core/os/LocaleListCompat;

    #@8
    iget-object p1, p1, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_12

    #@10
    const/4 p1, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p1, 0x0

    #@13
    :goto_13
    return p1
.end method

.method public get(I)Ljava/util/Locale;
    .registers 3

    #@0
    .line 90
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/os/LocaleListInterface;->get(I)Ljava/util/Locale;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .registers 3

    #@0
    .line 141
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/os/LocaleListInterface;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 324
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .registers 3

    #@0
    .line 121
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    #@2
    invoke-interface {v0, p1}, Landroidx/core/os/LocaleListInterface;->indexOf(Ljava/util/Locale;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 100
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    #@2
    invoke-interface {v0}, Landroidx/core/os/LocaleListInterface;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public size()I
    .registers 2

    #@0
    .line 108
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    #@2
    invoke-interface {v0}, Landroidx/core/os/LocaleListInterface;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .registers 2

    #@0
    .line 129
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    #@2
    invoke-interface {v0}, Landroidx/core/os/LocaleListInterface;->toLanguageTags()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 330
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public unwrap()Ljava/lang/Object;
    .registers 2

    #@0
    .line 68
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    #@2
    invoke-interface {v0}, Landroidx/core/os/LocaleListInterface;->getLocaleList()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

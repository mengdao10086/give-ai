.class final Landroidx/core/os/LocaleListCompatWrapper;
.super Ljava/lang/Object;
.source "LocaleListCompatWrapper.java"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/LocaleListCompatWrapper$Api21Impl;
    }
.end annotation


# static fields
.field private static final EN_LATN:Ljava/util/Locale;

.field private static final LOCALE_AR_XB:Ljava/util/Locale;

.field private static final LOCALE_EN_XA:Ljava/util/Locale;

.field private static final sEmptyList:[Ljava/util/Locale;


# instance fields
.field private final mList:[Ljava/util/Locale;

.field private final mStringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/util/Locale;

    #@3
    .line 43
    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->sEmptyList:[Ljava/util/Locale;

    #@5
    .line 176
    new-instance v0, Ljava/util/Locale;

    #@7
    const-string v1, "en"

    #@9
    const-string v2, "XA"

    #@b
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_EN_XA:Ljava/util/Locale;

    #@10
    .line 177
    new-instance v0, Ljava/util/Locale;

    #@12
    const-string v1, "ar"

    #@14
    const-string v2, "XB"

    #@16
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_AR_XB:Ljava/util/Locale;

    #@1b
    const-string v0, "en-Latn"

    #@1d
    .line 222
    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->forLanguageTagCompat(Ljava/lang/String;)Ljava/util/Locale;

    #@20
    move-result-object v0

    #@21
    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->EN_LATN:Ljava/util/Locale;

    #@23
    return-void
.end method

.method varargs constructor <init>([Ljava/util/Locale;)V
    .registers 9

    #@0
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 126
    array-length v0, p1

    #@4
    if-nez v0, :cond_f

    #@6
    .line 127
    sget-object p1, Landroidx/core/os/LocaleListCompatWrapper;->sEmptyList:[Ljava/util/Locale;

    #@8
    iput-object p1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@a
    const-string p1, ""

    #@c
    .line 128
    iput-object p1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mStringRepresentation:Ljava/lang/String;

    #@e
    goto :goto_74

    #@f
    .line 130
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 131
    new-instance v1, Ljava/util/HashSet;

    #@16
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@19
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const/4 v3, 0x0

    #@1f
    move v4, v3

    #@20
    .line 133
    :goto_20
    array-length v5, p1

    #@21
    if-ge v4, v5, :cond_64

    #@23
    .line 134
    aget-object v5, p1, v4

    #@25
    if-eqz v5, :cond_49

    #@27
    .line 137
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@2a
    move-result v6

    #@2b
    if-nez v6, :cond_46

    #@2d
    .line 138
    invoke-virtual {v5}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Ljava/util/Locale;

    #@33
    .line 139
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    .line 140
    invoke-static {v2, v5}, Landroidx/core/os/LocaleListCompatWrapper;->toLanguageTag(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    #@39
    .line 141
    array-length v6, p1

    #@3a
    add-int/lit8 v6, v6, -0x1

    #@3c
    if-ge v4, v6, :cond_43

    #@3e
    const/16 v6, 0x2c

    #@40
    .line 142
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    .line 144
    :cond_43
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@46
    :cond_46
    add-int/lit8 v4, v4, 0x1

    #@48
    goto :goto_20

    #@49
    .line 136
    :cond_49
    new-instance p1, Ljava/lang/NullPointerException;

    #@4b
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    const-string v1, "list["

    #@4f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    const-string v1, "] is null"

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@63
    throw p1

    #@64
    :cond_64
    new-array p1, v3, [Ljava/util/Locale;

    #@66
    .line 147
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@69
    move-result-object p1

    #@6a
    check-cast p1, [Ljava/util/Locale;

    #@6c
    iput-object p1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@6e
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object p1

    #@72
    iput-object p1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mStringRepresentation:Ljava/lang/String;

    #@74
    :goto_74
    return-void
.end method

.method private computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    #@0
    .line 264
    invoke-direct {p0, p1, p2}, Landroidx/core/os/LocaleListCompatWrapper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    #@3
    move-result p1

    #@4
    const/4 p2, -0x1

    #@5
    if-ne p1, p2, :cond_9

    #@7
    const/4 p1, 0x0

    #@8
    goto :goto_d

    #@9
    .line 265
    :cond_9
    iget-object p2, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@b
    aget-object p1, p2, p1

    #@d
    :goto_d
    return-object p1
.end method

.method private computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    #@0
    .line 226
    iget-object v0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@2
    array-length v1, v0

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    if-ne v1, v2, :cond_8

    #@7
    return v3

    #@8
    .line 229
    :cond_8
    array-length v0, v0

    #@9
    if-nez v0, :cond_d

    #@b
    const/4 p1, -0x1

    #@c
    return p1

    #@d
    :cond_d
    const v0, 0x7fffffff

    #@10
    if-eqz p2, :cond_1e

    #@12
    .line 236
    sget-object p2, Landroidx/core/os/LocaleListCompatWrapper;->EN_LATN:Ljava/util/Locale;

    #@14
    invoke-direct {p0, p2}, Landroidx/core/os/LocaleListCompatWrapper;->findFirstMatchIndex(Ljava/util/Locale;)I

    #@17
    move-result p2

    #@18
    if-nez p2, :cond_1b

    #@1a
    return v3

    #@1b
    :cond_1b
    if-ge p2, v0, :cond_1e

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    move p2, v0

    #@1f
    .line 243
    :goto_1f
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object p1

    #@23
    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_3e

    #@29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Ljava/lang/String;

    #@2f
    .line 244
    invoke-static {v1}, Landroidx/core/os/LocaleListCompat;->forLanguageTagCompat(Ljava/lang/String;)Ljava/util/Locale;

    #@32
    move-result-object v1

    #@33
    .line 247
    invoke-direct {p0, v1}, Landroidx/core/os/LocaleListCompatWrapper;->findFirstMatchIndex(Ljava/util/Locale;)I

    #@36
    move-result v1

    #@37
    if-nez v1, :cond_3a

    #@39
    return v3

    #@3a
    :cond_3a
    if-ge v1, p2, :cond_23

    #@3c
    move p2, v1

    #@3d
    goto :goto_23

    #@3e
    :cond_3e
    if-ne p2, v0, :cond_41

    #@40
    return v3

    #@41
    :cond_41
    return p2
.end method

.method private findFirstMatchIndex(Ljava/util/Locale;)I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 213
    :goto_1
    iget-object v1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@3
    array-length v2, v1

    #@4
    if-ge v0, v2, :cond_12

    #@6
    .line 214
    aget-object v1, v1, v0

    #@8
    invoke-static {p1, v1}, Landroidx/core/os/LocaleListCompatWrapper;->matchScore(Ljava/util/Locale;Ljava/util/Locale;)I

    #@b
    move-result v1

    #@c
    if-lez v1, :cond_f

    #@e
    return v0

    #@f
    :cond_f
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_1

    #@12
    :cond_12
    const p1, 0x7fffffff

    #@15
    return p1
.end method

.method private static getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    #@0
    .line 166
    invoke-static {p0}, Landroidx/core/os/LocaleListCompatWrapper$Api21Impl;->getScript(Ljava/util/Locale;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_b

    #@a
    return-object p0

    #@b
    :cond_b
    const-string p0, ""

    #@d
    return-object p0
.end method

.method private static isPseudoLocale(Ljava/util/Locale;)Z
    .registers 2

    #@0
    .line 180
    sget-object v0, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_EN_XA:Ljava/util/Locale;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_13

    #@8
    sget-object v0, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_AR_XB:Ljava/util/Locale;

    #@a
    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@d
    move-result p0

    #@e
    if-eqz p0, :cond_11

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/4 p0, 0x0

    #@12
    goto :goto_14

    #@13
    :cond_13
    :goto_13
    const/4 p0, 0x1

    #@14
    :goto_14
    return p0
.end method

.method private static matchScore(Ljava/util/Locale;Ljava/util/Locale;)I
    .registers 6

    #@0
    .line 185
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
    .line 188
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
    .line 191
    :cond_18
    invoke-static {p0}, Landroidx/core/os/LocaleListCompatWrapper;->isPseudoLocale(Ljava/util/Locale;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_4f

    #@1e
    invoke-static {p1}, Landroidx/core/os/LocaleListCompatWrapper;->isPseudoLocale(Ljava/util/Locale;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_25

    #@24
    goto :goto_4f

    #@25
    .line 196
    :cond_25
    invoke-static {p0}, Landroidx/core/os/LocaleListCompatWrapper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_46

    #@2f
    .line 201
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@32
    move-result-object p0

    #@33
    .line 202
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
    .line 206
    :cond_46
    invoke-static {p1}, Landroidx/core/os/LocaleListCompatWrapper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    #@49
    move-result-object p0

    #@4a
    .line 209
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

.method static toLanguageTag(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .registers 3

    #@0
    .line 154
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    .line 155
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_1f

    #@d
    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1f

    #@13
    const/16 v0, 0x2d

    #@15
    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 160
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    :cond_1f
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, p0, :cond_4

    #@3
    return v0

    #@4
    .line 81
    :cond_4
    instance-of v1, p1, Landroidx/core/os/LocaleListCompatWrapper;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 84
    :cond_a
    check-cast p1, Landroidx/core/os/LocaleListCompatWrapper;

    #@c
    iget-object p1, p1, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@e
    .line 85
    iget-object v1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@10
    array-length v1, v1

    #@11
    array-length v3, p1

    #@12
    if-eq v1, v3, :cond_15

    #@14
    return v2

    #@15
    :cond_15
    move v1, v2

    #@16
    .line 88
    :goto_16
    iget-object v3, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@18
    array-length v4, v3

    #@19
    if-ge v1, v4, :cond_29

    #@1b
    .line 89
    aget-object v3, v3, v1

    #@1d
    aget-object v4, p1, v1

    #@1f
    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_26

    #@25
    return v2

    #@26
    :cond_26
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_16

    #@29
    :cond_29
    return v0
.end method

.method public get(I)Ljava/util/Locale;
    .registers 4

    #@0
    if-ltz p1, :cond_a

    #@2
    .line 53
    iget-object v0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@4
    array-length v1, v0

    #@5
    if-ge p1, v1, :cond_a

    #@7
    aget-object p1, v0, p1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    :goto_b
    return-object p1
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .registers 3

    #@0
    .line 270
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, p1, v0}, Landroidx/core/os/LocaleListCompatWrapper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method public getLocaleList()Ljava/lang/Object;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public hashCode()I
    .registers 6

    #@0
    .line 99
    iget-object v0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@2
    array-length v1, v0

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    :goto_5
    if-ge v3, v1, :cond_13

    #@7
    aget-object v4, v0, v3

    #@9
    mul-int/lit8 v2, v2, 0x1f

    #@b
    .line 100
    invoke-virtual {v4}, Ljava/util/Locale;->hashCode()I

    #@e
    move-result v4

    #@f
    add-int/2addr v2, v4

    #@10
    add-int/lit8 v3, v3, 0x1

    #@12
    goto :goto_5

    #@13
    :cond_13
    return v2
.end method

.method public indexOf(Ljava/util/Locale;)I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 68
    :goto_1
    iget-object v1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@3
    array-length v2, v1

    #@4
    if-ge v0, v2, :cond_12

    #@6
    .line 69
    aget-object v1, v1, v0

    #@8
    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_f

    #@e
    return v0

    #@f
    :cond_f
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_1

    #@12
    :cond_12
    const/4 p1, -0x1

    #@13
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 58
    iget-object v0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@2
    array-length v0, v0

    #@3
    if-nez v0, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    return v0
.end method

.method public size()I
    .registers 2

    #@0
    .line 63
    iget-object v0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .registers 2

    #@0
    .line 122
    iget-object v0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mStringRepresentation:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "["

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    const/4 v1, 0x0

    #@8
    .line 110
    :goto_8
    iget-object v2, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@a
    array-length v3, v2

    #@b
    if-ge v1, v3, :cond_21

    #@d
    .line 111
    aget-object v2, v2, v1

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    .line 112
    iget-object v2, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    #@14
    array-length v2, v2

    #@15
    add-int/lit8 v2, v2, -0x1

    #@17
    if-ge v1, v2, :cond_1e

    #@19
    const/16 v2, 0x2c

    #@1b
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_8

    #@21
    :cond_21
    const-string v1, "]"

    #@23
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.class Landroidx/core/provider/FontProvider;
.super Ljava/lang/Object;
.source "FontProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontProvider$Api16Impl;
    }
.end annotation


# static fields
.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 197
    new-instance v0, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    #@2
    invoke-direct {v0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;-><init>()V

    #@5
    sput-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    #@0
    .line 223
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 224
    array-length v1, p0

    #@6
    const/4 v2, 0x0

    #@7
    :goto_7
    if-ge v2, v1, :cond_15

    #@9
    aget-object v3, p0, v2

    #@b
    .line 225
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    #@e
    move-result-object v3

    #@f
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@12
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_7

    #@15
    :cond_15
    return-object v0
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    #@0
    .line 211
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    if-eq v0, v1, :cond_c

    #@b
    return v2

    #@c
    :cond_c
    move v0, v2

    #@d
    .line 214
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@10
    move-result v1

    #@11
    if-ge v0, v1, :cond_29

    #@13
    .line 215
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, [B

    #@19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, [B

    #@1f
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_26

    #@25
    return v2

    #@26
    :cond_26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_d

    #@29
    :cond_29
    const/4 p0, 0x1

    #@2a
    return p0
.end method

.method private static getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/provider/FontRequest;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    #@0
    .line 190
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 191
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 193
    :cond_b
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificatesArrayResId()I

    #@e
    move-result p0

    #@f
    .line 194
    invoke-static {p1, p0}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    #@12
    move-result-object p0

    #@13
    return-object p0
.end method

.method static getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/CancellationSignal;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    .line 55
    invoke-static {v0, p1, v1}, Landroidx/core/provider/FontProvider;->getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_15

    #@e
    const/4 p0, 0x1

    #@f
    const/4 p1, 0x0

    #@10
    .line 58
    invoke-static {p0, p1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    #@13
    move-result-object p0

    #@14
    return-object p0

    #@15
    .line 61
    :cond_15
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@17
    invoke-static {p0, p1, v0, p2}, Landroidx/core/provider/FontProvider;->query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;

    #@1a
    move-result-object p0

    #@1b
    const/4 p1, 0x0

    #@1c
    .line 63
    invoke-static {p1, p0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    #@1f
    move-result-object p0

    #@20
    return-object p0
.end method

.method static getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .line 77
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    .line 78
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    #@8
    move-result-object v2

    #@9
    if-eqz v2, :cond_73

    #@b
    .line 84
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@d
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_50

    #@17
    .line 93
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@19
    const/16 v3, 0x40

    #@1b
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@1e
    move-result-object p0

    #@1f
    .line 95
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@21
    invoke-static {p0}, Landroidx/core/provider/FontProvider;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    #@24
    move-result-object p0

    #@25
    .line 96
    sget-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    #@27
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@2a
    .line 97
    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;

    #@2d
    move-result-object p1

    #@2e
    .line 98
    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@31
    move-result p2

    #@32
    if-ge v1, p2, :cond_4e

    #@34
    .line 100
    new-instance p2, Ljava/util/ArrayList;

    #@36
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Ljava/util/Collection;

    #@3c
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@3f
    .line 101
    sget-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    #@41
    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@44
    .line 102
    invoke-static {p0, p2}, Landroidx/core/provider/FontProvider;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    #@47
    move-result p2

    #@48
    if-eqz p2, :cond_4b

    #@4a
    return-object v2

    #@4b
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_2e

    #@4e
    :cond_4e
    const/4 p0, 0x0

    #@4f
    return-object p0

    #@50
    .line 85
    :cond_50
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@52
    new-instance p2, Ljava/lang/StringBuilder;

    #@54
    const-string v1, "Found content provider "

    #@56
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@59
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object p2

    #@5d
    const-string v0, ", but package was not "

    #@5f
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object p2

    #@63
    .line 87
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    #@66
    move-result-object p1

    #@67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object p1

    #@6b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object p1

    #@6f
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@72
    throw p0

    #@73
    .line 80
    :cond_73
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@75
    new-instance p1, Ljava/lang/StringBuilder;

    #@77
    const-string p2, "No package found for authority: "

    #@79
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object p1

    #@80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object p1

    #@84
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@87
    throw p0
.end method

.method static synthetic lambda$static$0([B[B)I
    .registers 6

    #@0
    .line 198
    array-length v0, p0

    #@1
    array-length v1, p1

    #@2
    if-eq v0, v1, :cond_8

    #@4
    .line 199
    array-length p0, p0

    #@5
    array-length p1, p1

    #@6
    sub-int/2addr p0, p1

    #@7
    return p0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    move v1, v0

    #@a
    .line 201
    :goto_a
    array-length v2, p0

    #@b
    if-ge v1, v2, :cond_18

    #@d
    .line 202
    aget-byte v2, p0, v1

    #@f
    aget-byte v3, p1, v1

    #@11
    if-eq v2, v3, :cond_15

    #@13
    sub-int/2addr v2, v3

    #@14
    return v2

    #@15
    :cond_15
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_a

    #@18
    :cond_18
    return v0
.end method

.method static query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .registers 20

    #@0
    move-object/from16 v0, p2

    #@2
    .line 120
    new-instance v1, Ljava/util/ArrayList;

    #@4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 121
    new-instance v2, Landroid/net/Uri$Builder;

    #@9
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    #@c
    const-string v3, "content"

    #@e
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@11
    move-result-object v2

    #@12
    .line 122
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@15
    move-result-object v2

    #@16
    .line 123
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@19
    move-result-object v2

    #@1a
    .line 124
    new-instance v4, Landroid/net/Uri$Builder;

    #@1c
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    #@1f
    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@22
    move-result-object v3

    #@23
    .line 125
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@26
    move-result-object v0

    #@27
    const-string v3, "file"

    #@29
    .line 126
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@2c
    move-result-object v0

    #@2d
    .line 127
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@30
    move-result-object v0

    #@31
    const/4 v3, 0x0

    #@32
    :try_start_32
    const-string v4, "_id"

    #@34
    const-string v5, "file_id"

    #@36
    const-string v6, "font_ttc_index"

    #@38
    const-string v7, "font_variation_settings"

    #@3a
    const-string v8, "font_weight"

    #@3c
    const-string v9, "font_italic"

    #@3e
    const-string v10, "result_code"

    #@40
    .line 130
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@47
    move-result-object v4

    #@48
    const-string v7, "query = ?"

    #@4a
    const/4 v11, 0x1

    #@4b
    new-array v8, v11, [Ljava/lang/String;

    #@4d
    .line 140
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    const/4 v12, 0x0

    #@52
    aput-object v5, v8, v12

    #@54
    const/4 v9, 0x0

    #@55
    move-object v5, v2

    #@56
    move-object/from16 v10, p3

    #@58
    .line 139
    invoke-static/range {v4 .. v10}, Landroidx/core/provider/FontProvider$Api16Impl;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    #@5b
    move-result-object v3

    #@5c
    if-eqz v3, :cond_dd

    #@5e
    .line 147
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    #@61
    move-result v4

    #@62
    if-lez v4, :cond_dd

    #@64
    const-string v1, "result_code"

    #@66
    .line 148
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@69
    move-result v1

    #@6a
    .line 150
    new-instance v4, Ljava/util/ArrayList;

    #@6c
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@6f
    const-string v5, "_id"

    #@71
    .line 151
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@74
    move-result v5

    #@75
    const-string v6, "file_id"

    #@77
    .line 152
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@7a
    move-result v6

    #@7b
    const-string v7, "font_ttc_index"

    #@7d
    .line 154
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@80
    move-result v7

    #@81
    const-string v8, "font_weight"

    #@83
    .line 156
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@86
    move-result v8

    #@87
    const-string v9, "font_italic"

    #@89
    .line 158
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@8c
    move-result v9

    #@8d
    .line 160
    :goto_8d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    #@90
    move-result v10

    #@91
    if-eqz v10, :cond_dc

    #@93
    const/4 v10, -0x1

    #@94
    if-eq v1, v10, :cond_9b

    #@96
    .line 162
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    #@99
    move-result v13

    #@9a
    goto :goto_9c

    #@9b
    :cond_9b
    move v13, v12

    #@9c
    :goto_9c
    if-eq v7, v10, :cond_a3

    #@9e
    .line 165
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    #@a1
    move-result v14

    #@a2
    goto :goto_a4

    #@a3
    :cond_a3
    move v14, v12

    #@a4
    :goto_a4
    if-ne v6, v10, :cond_b1

    #@a6
    move/from16 p1, v13

    #@a8
    .line 168
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    #@ab
    move-result-wide v12

    #@ac
    .line 169
    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@af
    move-result-object v12

    #@b0
    goto :goto_bb

    #@b1
    :cond_b1
    move/from16 p1, v13

    #@b3
    .line 171
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    #@b6
    move-result-wide v12

    #@b7
    .line 172
    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@ba
    move-result-object v12

    #@bb
    :goto_bb
    if-eq v8, v10, :cond_c2

    #@bd
    .line 175
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    #@c0
    move-result v13

    #@c1
    goto :goto_c4

    #@c2
    :cond_c2
    const/16 v13, 0x190

    #@c4
    :goto_c4
    if-eq v9, v10, :cond_d0

    #@c6
    .line 176
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    #@c9
    move-result v10

    #@ca
    if-ne v10, v11, :cond_d0

    #@cc
    move/from16 v10, p1

    #@ce
    move v15, v11

    #@cf
    goto :goto_d3

    #@d0
    :cond_d0
    move/from16 v10, p1

    #@d2
    const/4 v15, 0x0

    #@d3
    .line 178
    :goto_d3
    invoke-static {v12, v14, v13, v15, v10}, Landroidx/core/provider/FontsContractCompat$FontInfo;->create(Landroid/net/Uri;IIZI)Landroidx/core/provider/FontsContractCompat$FontInfo;

    #@d6
    move-result-object v10

    #@d7
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_da
    .catchall {:try_start_32 .. :try_end_da} :catchall_ec

    #@da
    const/4 v12, 0x0

    #@db
    goto :goto_8d

    #@dc
    :cond_dc
    move-object v1, v4

    #@dd
    :cond_dd
    if-eqz v3, :cond_e2

    #@df
    .line 183
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    #@e2
    :cond_e2
    const/4 v0, 0x0

    #@e3
    new-array v0, v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    #@e5
    .line 186
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@e8
    move-result-object v0

    #@e9
    check-cast v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    #@eb
    return-object v0

    #@ec
    :catchall_ec
    move-exception v0

    #@ed
    if-eqz v3, :cond_f2

    #@ef
    .line 183
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    #@f2
    .line 185
    :cond_f2
    throw v0
.end method

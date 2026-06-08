.class public final Landroidx/core/content/pm/PackageInfoCompat;
.super Ljava/lang/Object;
.source "PackageInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static byteArrayContains([[B[B)Z
    .registers 6

    #@0
    .line 246
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    move v2, v1

    #@3
    :goto_3
    if-ge v2, v0, :cond_12

    #@5
    aget-object v3, p0, v2

    #@7
    .line 247
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_f

    #@d
    const/4 p0, 0x1

    #@e
    return p0

    #@f
    :cond_f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_3

    #@12
    :cond_12
    return v1
.end method

.method private static computeSHA256Digest([B)[B
    .registers 3

    #@0
    :try_start_0
    const-string v0, "SHA256"

    #@2
    .line 256
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    #@9
    move-result-object p0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    #@a
    return-object p0

    #@b
    :catch_b
    move-exception p0

    #@c
    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    const-string v1, "Device doesn\'t support SHA256 cert checking"

    #@10
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v0
.end method

.method public static getLongVersionCode(Landroid/content/pm/PackageInfo;)J
    .registers 3

    #@0
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 52
    invoke-static {p0}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0

    #@b
    .line 54
    :cond_b
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    #@d
    int-to-long v0, p0

    #@e
    return-wide v0
.end method

.method public static getSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_1e

    #@6
    const/high16 v0, 0x8000000

    #@8
    .line 89
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@b
    move-result-object p0

    #@c
    .line 91
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    #@e
    .line 92
    invoke-static {p0}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->hasMultipleSigners(Landroid/content/pm/SigningInfo;)Z

    #@11
    move-result p1

    #@12
    if-eqz p1, :cond_19

    #@14
    .line 93
    invoke-static {p0}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->getApkContentsSigners(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    #@17
    move-result-object p0

    #@18
    goto :goto_26

    #@19
    .line 95
    :cond_19
    invoke-static {p0}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->getSigningCertificateHistory(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    #@1c
    move-result-object p0

    #@1d
    goto :goto_26

    #@1e
    :cond_1e
    const/16 v0, 0x40

    #@20
    .line 100
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@23
    move-result-object p0

    #@24
    .line 102
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@26
    :goto_26
    if-nez p0, :cond_2d

    #@28
    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@2b
    move-result-object p0

    #@2c
    return-object p0

    #@2d
    .line 109
    :cond_2d
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@30
    move-result-object p0

    #@31
    return-object p0
.end method

.method public static hasSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/Map;Z)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "[B",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .line 142
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 146
    :cond_8
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@b
    move-result-object v0

    #@c
    .line 153
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    const-string v4, "Unsupported certificate type "

    #@16
    const/4 v5, 0x1

    #@17
    if-eqz v3, :cond_79

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, [B

    #@1f
    if-eqz v3, :cond_64

    #@21
    .line 158
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Ljava/lang/Integer;

    #@27
    if-eqz v3, :cond_4f

    #@29
    .line 164
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_10

    #@2f
    if-ne v6, v5, :cond_32

    #@31
    goto :goto_10

    #@32
    .line 169
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@34
    new-instance p2, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@39
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object p2

    #@3d
    const-string p3, " when verifying "

    #@3f
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object p2

    #@43
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object p1

    #@47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object p1

    #@4b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw p0

    #@4f
    .line 160
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@51
    new-instance p2, Ljava/lang/StringBuilder;

    #@53
    const-string p3, "Type must be specified for cert when verifying "

    #@55
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@58
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object p1

    #@5c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object p1

    #@60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw p0

    #@64
    .line 155
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@66
    new-instance p2, Ljava/lang/StringBuilder;

    #@68
    const-string p3, "Cert byte array cannot be null when verifying "

    #@6a
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6d
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object p1

    #@71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object p1

    #@75
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@78
    throw p0

    #@79
    .line 175
    :cond_79
    invoke-static {p0, p1}, Landroidx/core/content/pm/PackageInfoCompat;->getSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    #@7c
    move-result-object v2

    #@7d
    if-nez p3, :cond_a7

    #@7f
    .line 181
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@81
    const/16 v6, 0x1c

    #@83
    if-lt v3, v6, :cond_a7

    #@85
    .line 185
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@88
    move-result-object p3

    #@89
    :cond_89
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    #@8c
    move-result v0

    #@8d
    if-eqz v0, :cond_a6

    #@8f
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@92
    move-result-object v0

    #@93
    check-cast v0, [B

    #@95
    .line 186
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    move-result-object v2

    #@99
    check-cast v2, Ljava/lang/Integer;

    #@9b
    .line 188
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@9e
    move-result v2

    #@9f
    invoke-static {p0, p1, v0, v2}, Landroidx/core/content/pm/PackageInfoCompat$Api28Impl;->hasSigningCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;[BI)Z

    #@a2
    move-result v0

    #@a3
    if-nez v0, :cond_89

    #@a5
    return v1

    #@a6
    :cond_a6
    return v5

    #@a7
    .line 197
    :cond_a7
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@aa
    move-result p0

    #@ab
    if-eqz p0, :cond_134

    #@ad
    .line 198
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@b0
    move-result p0

    #@b1
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@b4
    move-result p1

    #@b5
    if-gt p0, p1, :cond_134

    #@b7
    if-eqz p3, :cond_c4

    #@b9
    .line 199
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@bc
    move-result p0

    #@bd
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@c0
    move-result p1

    #@c1
    if-eq p0, p1, :cond_c4

    #@c3
    goto :goto_134

    #@c4
    .line 204
    :cond_c4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7
    move-result-object p0

    #@c8
    invoke-interface {p2, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    #@cb
    move-result p0

    #@cc
    if-eqz p0, :cond_ee

    #@ce
    .line 208
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@d1
    move-result p0

    #@d2
    new-array p0, p0, [[B

    #@d4
    move p1, v1

    #@d5
    .line 209
    :goto_d5
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@d8
    move-result p3

    #@d9
    if-ge p1, p3, :cond_ef

    #@db
    .line 210
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@de
    move-result-object p3

    #@df
    check-cast p3, Landroid/content/pm/Signature;

    #@e1
    invoke-virtual {p3}, Landroid/content/pm/Signature;->toByteArray()[B

    #@e4
    move-result-object p3

    #@e5
    invoke-static {p3}, Landroidx/core/content/pm/PackageInfoCompat;->computeSHA256Digest([B)[B

    #@e8
    move-result-object p3

    #@e9
    aput-object p3, p0, p1

    #@eb
    add-int/lit8 p1, p1, 0x1

    #@ed
    goto :goto_d5

    #@ee
    :cond_ee
    const/4 p0, 0x0

    #@ef
    .line 214
    :cond_ef
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@f2
    move-result-object p1

    #@f3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@f6
    move-result p3

    #@f7
    if-eqz p3, :cond_134

    #@f9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@fc
    move-result-object p1

    #@fd
    check-cast p1, [B

    #@ff
    .line 215
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@102
    move-result-object p2

    #@103
    check-cast p2, Ljava/lang/Integer;

    #@105
    .line 217
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@108
    move-result p3

    #@109
    if-eqz p3, :cond_127

    #@10b
    if-ne p3, v5, :cond_114

    #@10d
    .line 229
    invoke-static {p0, p1}, Landroidx/core/content/pm/PackageInfoCompat;->byteArrayContains([[B[B)Z

    #@110
    move-result p0

    #@111
    if-nez p0, :cond_133

    #@113
    return v1

    #@114
    .line 235
    :cond_114
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@116
    new-instance p1, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11b
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object p1

    #@11f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object p1

    #@123
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@126
    throw p0

    #@127
    .line 221
    :cond_127
    new-instance p0, Landroid/content/pm/Signature;

    #@129
    invoke-direct {p0, p1}, Landroid/content/pm/Signature;-><init>([B)V

    #@12c
    .line 222
    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@12f
    move-result p0

    #@130
    if-nez p0, :cond_133

    #@132
    return v1

    #@133
    :cond_133
    return v5

    #@134
    :cond_134
    :goto_134
    return v1
.end method

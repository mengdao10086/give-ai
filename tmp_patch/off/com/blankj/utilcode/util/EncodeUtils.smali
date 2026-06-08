.class public final Lcom/blankj/utilcode/util/EncodeUtils;
.super Ljava/lang/Object;
.source "EncodeUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static base64Decode(Ljava/lang/String;)[B
    .registers 2

    #@0
    if-eqz p0, :cond_f

    #@2
    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_f

    #@9
    :cond_9
    const/4 v0, 0x2

    #@a
    .line 118
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@d
    move-result-object p0

    #@e
    return-object p0

    #@f
    :cond_f
    :goto_f
    const/4 p0, 0x0

    #@10
    new-array p0, p0, [B

    #@12
    return-object p0
.end method

.method public static base64Decode([B)[B
    .registers 2

    #@0
    if-eqz p0, :cond_c

    #@2
    .line 128
    array-length v0, p0

    #@3
    if-nez v0, :cond_6

    #@5
    goto :goto_c

    #@6
    :cond_6
    const/4 v0, 0x2

    #@7
    .line 129
    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    :cond_c
    :goto_c
    const/4 p0, 0x0

    #@d
    new-array p0, p0, [B

    #@f
    return-object p0
.end method

.method public static base64Encode(Ljava/lang/String;)[B
    .registers 1

    #@0
    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncodeUtils;->base64Encode([B)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static base64Encode([B)[B
    .registers 2

    #@0
    if-eqz p0, :cond_c

    #@2
    .line 95
    array-length v0, p0

    #@3
    if-nez v0, :cond_6

    #@5
    goto :goto_c

    #@6
    :cond_6
    const/4 v0, 0x2

    #@7
    .line 96
    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    :cond_c
    :goto_c
    const/4 p0, 0x0

    #@d
    new-array p0, p0, [B

    #@f
    return-object p0
.end method

.method public static base64Encode2String([B)Ljava/lang/String;
    .registers 2

    #@0
    if-eqz p0, :cond_c

    #@2
    .line 106
    array-length v0, p0

    #@3
    if-nez v0, :cond_6

    #@5
    goto :goto_c

    #@6
    :cond_6
    const/4 v0, 0x2

    #@7
    .line 107
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    :cond_c
    :goto_c
    const-string p0, ""

    #@e
    return-object p0
.end method

.method public static binaryDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    #@0
    if-eqz p0, :cond_2b

    #@2
    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_2b

    #@9
    :cond_9
    const-string v0, " "

    #@b
    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    .line 212
    array-length v1, p0

    #@15
    const/4 v2, 0x0

    #@16
    :goto_16
    if-ge v2, v1, :cond_26

    #@18
    aget-object v3, p0, v2

    #@1a
    const/4 v4, 0x2

    #@1b
    .line 213
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@1e
    move-result v3

    #@1f
    int-to-char v3, v3

    #@20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_16

    #@26
    .line 215
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object p0

    #@2a
    return-object p0

    #@2b
    :cond_2b
    :goto_2b
    const-string p0, ""

    #@2d
    return-object p0
.end method

.method public static binaryEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    #@0
    if-eqz p0, :cond_37

    #@2
    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_37

    #@9
    .line 195
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@11
    move-result-object p0

    #@12
    array-length v1, p0

    #@13
    const/4 v2, 0x0

    #@14
    :goto_14
    if-ge v2, v1, :cond_28

    #@16
    aget-char v3, p0, v2

    #@18
    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string v4, " "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_14

    #@28
    .line 199
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@2b
    move-result p0

    #@2c
    add-int/lit8 p0, p0, -0x1

    #@2e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object p0

    #@32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object p0

    #@36
    return-object p0

    #@37
    :cond_37
    :goto_37
    const-string p0, ""

    #@39
    return-object p0
.end method

.method public static htmlDecode(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    if-eqz p0, :cond_f

    #@2
    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_f

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    .line 181
    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    #@d
    move-result-object p0

    #@e
    return-object p0

    #@f
    :cond_f
    :goto_f
    const-string p0, ""

    #@11
    return-object p0
.end method

.method public static htmlEncode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6

    #@0
    if-eqz p0, :cond_56

    #@2
    .line 139
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_56

    #@9
    .line 140
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    .line 142
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x0

    #@13
    :goto_13
    if-ge v2, v1, :cond_51

    #@15
    .line 143
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@18
    move-result v3

    #@19
    const/16 v4, 0x22

    #@1b
    if-eq v3, v4, :cond_49

    #@1d
    const/16 v4, 0x3c

    #@1f
    if-eq v3, v4, :cond_43

    #@21
    const/16 v4, 0x3e

    #@23
    if-eq v3, v4, :cond_3d

    #@25
    const/16 v4, 0x26

    #@27
    if-eq v3, v4, :cond_37

    #@29
    const/16 v4, 0x27

    #@2b
    if-eq v3, v4, :cond_31

    #@2d
    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    goto :goto_4e

    #@31
    :cond_31
    const-string v3, "&#39;"

    #@33
    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    goto :goto_4e

    #@37
    :cond_37
    const-string v3, "&amp;"

    #@39
    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    goto :goto_4e

    #@3d
    :cond_3d
    const-string v3, "&gt;"

    #@3f
    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    goto :goto_4e

    #@43
    :cond_43
    const-string v3, "&lt;"

    #@45
    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    goto :goto_4e

    #@49
    :cond_49
    const-string v3, "&quot;"

    #@4b
    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_13

    #@51
    .line 169
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object p0

    #@55
    return-object p0

    #@56
    :cond_56
    :goto_56
    const-string p0, ""

    #@58
    return-object p0
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "UTF-8"

    #@2
    .line 58
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncodeUtils;->urlDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static urlDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    if-eqz p0, :cond_25

    #@2
    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_25

    #@9
    :cond_9
    :try_start_9
    const-string v0, "%(?![0-9a-fA-F]{2})"

    #@b
    const-string v1, "%25"

    #@d
    .line 71
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    const-string v0, "\\+"

    #@13
    const-string v1, "%2B"

    #@15
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object p0

    #@19
    .line 72
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object p0
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_1d} :catch_1e

    #@1d
    return-object p0

    #@1e
    :catch_1e
    move-exception p0

    #@1f
    .line 74
    new-instance p1, Ljava/lang/AssertionError;

    #@21
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@24
    throw p1

    #@25
    :cond_25
    :goto_25
    const-string p0, ""

    #@27
    return-object p0
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "UTF-8"

    #@2
    .line 32
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncodeUtils;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    if-eqz p0, :cond_15

    #@2
    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_15

    #@9
    .line 45
    :cond_9
    :try_start_9
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object p0
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_d} :catch_e

    #@d
    return-object p0

    #@e
    :catch_e
    move-exception p0

    #@f
    .line 47
    new-instance p1, Ljava/lang/AssertionError;

    #@11
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@14
    throw p1

    #@15
    :cond_15
    :goto_15
    const-string p0, ""

    #@17
    return-object p0
.end method

.class public final Lcom/blankj/utilcode/util/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static decrypt3DES([B[BLjava/lang/String;[B)[B
    .registers 10

    #@0
    const-string v2, "DESede"

    #@2
    const/4 v5, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v3, p2

    #@6
    move-object v4, p3

    #@7
    .line 817
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method public static decryptAES([B[BLjava/lang/String;[B)[B
    .registers 10

    #@0
    const-string v2, "AES"

    #@2
    const/4 v5, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v3, p2

    #@6
    move-object v4, p3

    #@7
    .line 923
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method public static decryptBase64AES([B[BLjava/lang/String;[B)[B
    .registers 4

    #@0
    .line 889
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Decode([B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decryptAES([B[BLjava/lang/String;[B)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static decryptBase64DES([B[BLjava/lang/String;[B)[B
    .registers 4

    #@0
    .line 677
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Decode([B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decryptDES([B[BLjava/lang/String;[B)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static decryptBase64RSA([B[BILjava/lang/String;)[B
    .registers 4

    #@0
    .line 1031
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Decode([B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decryptRSA([B[BILjava/lang/String;)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static decryptBase64_3DES([B[BLjava/lang/String;[B)[B
    .registers 4

    #@0
    .line 783
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Decode([B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decrypt3DES([B[BLjava/lang/String;[B)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static decryptDES([B[BLjava/lang/String;[B)[B
    .registers 10

    #@0
    const-string v2, "DES"

    #@2
    const/4 v5, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v3, p2

    #@6
    move-object v4, p3

    #@7
    .line 711
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method public static decryptHexString3DES(Ljava/lang/String;[BLjava/lang/String;[B)[B
    .registers 4

    #@0
    .line 800
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->hexString2Bytes(Ljava/lang/String;)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decrypt3DES([B[BLjava/lang/String;[B)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static decryptHexStringAES(Ljava/lang/String;[BLjava/lang/String;[B)[B
    .registers 4

    #@0
    .line 906
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->hexString2Bytes(Ljava/lang/String;)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decryptAES([B[BLjava/lang/String;[B)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static decryptHexStringDES(Ljava/lang/String;[BLjava/lang/String;[B)[B
    .registers 4

    #@0
    .line 694
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->hexString2Bytes(Ljava/lang/String;)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decryptDES([B[BLjava/lang/String;[B)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static decryptHexStringRSA(Ljava/lang/String;[BILjava/lang/String;)[B
    .registers 4

    #@0
    .line 1047
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->hexString2Bytes(Ljava/lang/String;)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->decryptRSA([B[BILjava/lang/String;)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static decryptRSA([B[BILjava/lang/String;)[B
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1063
    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->rsaTemplate([B[BILjava/lang/String;Z)[B

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static encrypt3DES([B[BLjava/lang/String;[B)[B
    .registers 10

    #@0
    const-string v2, "DESede"

    #@2
    const/4 v5, 0x1

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v3, p2

    #@6
    move-object v4, p3

    #@7
    .line 766
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method public static encrypt3DES2Base64([B[BLjava/lang/String;[B)[B
    .registers 4

    #@0
    .line 732
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encrypt3DES([B[BLjava/lang/String;[B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Encode([B)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encrypt3DES2HexString([B[BLjava/lang/String;[B)Ljava/lang/String;
    .registers 4

    #@0
    .line 749
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encrypt3DES([B[BLjava/lang/String;[B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptAES([B[BLjava/lang/String;[B)[B
    .registers 10

    #@0
    const-string v2, "AES"

    #@2
    const/4 v5, 0x1

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v3, p2

    #@6
    move-object v4, p3

    #@7
    .line 872
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method public static encryptAES2Base64([B[BLjava/lang/String;[B)[B
    .registers 4

    #@0
    .line 838
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptAES([B[BLjava/lang/String;[B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Encode([B)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptAES2HexString([B[BLjava/lang/String;[B)Ljava/lang/String;
    .registers 4

    #@0
    .line 855
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptAES([B[BLjava/lang/String;[B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptDES([B[BLjava/lang/String;[B)[B
    .registers 10

    #@0
    const-string v2, "DES"

    #@2
    const/4 v5, 0x1

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v3, p2

    #@6
    move-object v4, p3

    #@7
    .line 660
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method public static encryptDES2Base64([B[BLjava/lang/String;[B)[B
    .registers 4

    #@0
    .line 626
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptDES([B[BLjava/lang/String;[B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Encode([B)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptDES2HexString([B[BLjava/lang/String;[B)Ljava/lang/String;
    .registers 4

    #@0
    .line 643
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptDES([B[BLjava/lang/String;[B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptHmacMD5([B[B)[B
    .registers 3

    #@0
    const-string v0, "HmacMD5"

    #@2
    .line 412
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static encryptHmacMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    if-eqz p0, :cond_1e

    #@2
    .line 389
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1e

    #@8
    if-eqz p1, :cond_1e

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_11

    #@10
    goto :goto_1e

    #@11
    .line 390
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@14
    move-result-object p0

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@18
    move-result-object p1

    #@19
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacMD5ToString([B[B)Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    return-object p0

    #@1e
    :cond_1e
    :goto_1e
    const-string p0, ""

    #@20
    return-object p0
.end method

.method public static encryptHmacMD5ToString([B[B)Ljava/lang/String;
    .registers 2

    #@0
    .line 401
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacMD5([B[B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptHmacSHA1([B[B)[B
    .registers 3

    #@0
    const-string v0, "HmacSHA1"

    #@2
    .line 446
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static encryptHmacSHA1ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    if-eqz p0, :cond_1e

    #@2
    .line 423
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1e

    #@8
    if-eqz p1, :cond_1e

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_11

    #@10
    goto :goto_1e

    #@11
    .line 424
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@14
    move-result-object p0

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@18
    move-result-object p1

    #@19
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA1ToString([B[B)Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    return-object p0

    #@1e
    :cond_1e
    :goto_1e
    const-string p0, ""

    #@20
    return-object p0
.end method

.method public static encryptHmacSHA1ToString([B[B)Ljava/lang/String;
    .registers 2

    #@0
    .line 435
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA1([B[B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptHmacSHA224([B[B)[B
    .registers 3

    #@0
    const-string v0, "HmacSHA224"

    #@2
    .line 480
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static encryptHmacSHA224ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    if-eqz p0, :cond_1e

    #@2
    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1e

    #@8
    if-eqz p1, :cond_1e

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_11

    #@10
    goto :goto_1e

    #@11
    .line 458
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@14
    move-result-object p0

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@18
    move-result-object p1

    #@19
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA224ToString([B[B)Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    return-object p0

    #@1e
    :cond_1e
    :goto_1e
    const-string p0, ""

    #@20
    return-object p0
.end method

.method public static encryptHmacSHA224ToString([B[B)Ljava/lang/String;
    .registers 2

    #@0
    .line 469
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA224([B[B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptHmacSHA256([B[B)[B
    .registers 3

    #@0
    const-string v0, "HmacSHA256"

    #@2
    .line 514
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static encryptHmacSHA256ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    if-eqz p0, :cond_1e

    #@2
    .line 491
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1e

    #@8
    if-eqz p1, :cond_1e

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_11

    #@10
    goto :goto_1e

    #@11
    .line 492
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@14
    move-result-object p0

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@18
    move-result-object p1

    #@19
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA256ToString([B[B)Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    return-object p0

    #@1e
    :cond_1e
    :goto_1e
    const-string p0, ""

    #@20
    return-object p0
.end method

.method public static encryptHmacSHA256ToString([B[B)Ljava/lang/String;
    .registers 2

    #@0
    .line 503
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA256([B[B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptHmacSHA384([B[B)[B
    .registers 3

    #@0
    const-string v0, "HmacSHA384"

    #@2
    .line 548
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static encryptHmacSHA384ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    if-eqz p0, :cond_1e

    #@2
    .line 525
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1e

    #@8
    if-eqz p1, :cond_1e

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_11

    #@10
    goto :goto_1e

    #@11
    .line 526
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@14
    move-result-object p0

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@18
    move-result-object p1

    #@19
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA384ToString([B[B)Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    return-object p0

    #@1e
    :cond_1e
    :goto_1e
    const-string p0, ""

    #@20
    return-object p0
.end method

.method public static encryptHmacSHA384ToString([B[B)Ljava/lang/String;
    .registers 2

    #@0
    .line 537
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA384([B[B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptHmacSHA512([B[B)[B
    .registers 3

    #@0
    const-string v0, "HmacSHA512"

    #@2
    .line 582
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static encryptHmacSHA512ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    if-eqz p0, :cond_1e

    #@2
    .line 559
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1e

    #@8
    if-eqz p1, :cond_1e

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_11

    #@10
    goto :goto_1e

    #@11
    .line 560
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@14
    move-result-object p0

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@18
    move-result-object p1

    #@19
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA512ToString([B[B)Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    return-object p0

    #@1e
    :cond_1e
    :goto_1e
    const-string p0, ""

    #@20
    return-object p0
.end method

.method public static encryptHmacSHA512ToString([B[B)Ljava/lang/String;
    .registers 2

    #@0
    .line 571
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptHmacSHA512([B[B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptMD2([B)[B
    .registers 2

    #@0
    const-string v0, "MD2"

    #@2
    .line 72
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static encryptMD2ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    if-eqz p0, :cond_12

    #@2
    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_12

    #@9
    .line 52
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@c
    move-result-object p0

    #@d
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD2ToString([B)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    return-object p0

    #@12
    :cond_12
    :goto_12
    const-string p0, ""

    #@14
    return-object p0
.end method

.method public static encryptMD2ToString([B)Ljava/lang/String;
    .registers 1

    #@0
    .line 62
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD2([B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptMD5([B)[B
    .registers 2

    #@0
    const-string v0, "MD5"

    #@2
    .line 134
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static encryptMD5File(Ljava/io/File;)[B
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 180
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    #@6
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_9} :catch_37
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_35
    .catchall {:try_start_4 .. :try_end_9} :catchall_33

    #@9
    :try_start_9
    const-string p0, "MD5"

    #@b
    .line 181
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@e
    move-result-object p0

    #@f
    .line 182
    new-instance v2, Ljava/security/DigestInputStream;

    #@11
    invoke-direct {v2, v1, p0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    #@14
    const/high16 p0, 0x40000

    #@16
    new-array p0, p0, [B

    #@18
    .line 185
    :cond_18
    invoke-virtual {v2, p0}, Ljava/security/DigestInputStream;->read([B)I

    #@1b
    move-result v3

    #@1c
    if-gtz v3, :cond_18

    #@1e
    .line 187
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    #@21
    move-result-object p0

    #@22
    .line 188
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    #@25
    move-result-object p0
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_26} :catch_31
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_26} :catch_2f
    .catchall {:try_start_9 .. :try_end_26} :catchall_47

    #@26
    .line 195
    :try_start_26
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    #@29
    goto :goto_2e

    #@2a
    :catch_2a
    move-exception v0

    #@2b
    .line 198
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@2e
    :goto_2e
    return-object p0

    #@2f
    :catch_2f
    move-exception p0

    #@30
    goto :goto_39

    #@31
    :catch_31
    move-exception p0

    #@32
    goto :goto_39

    #@33
    :catchall_33
    move-exception p0

    #@34
    goto :goto_49

    #@35
    :catch_35
    move-exception p0

    #@36
    goto :goto_38

    #@37
    :catch_37
    move-exception p0

    #@38
    :goto_38
    move-object v1, v0

    #@39
    .line 190
    :goto_39
    :try_start_39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_47

    #@3c
    if-eqz v1, :cond_46

    #@3e
    .line 195
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    #@41
    goto :goto_46

    #@42
    :catch_42
    move-exception p0

    #@43
    .line 198
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@46
    :cond_46
    :goto_46
    return-object v0

    #@47
    :catchall_47
    move-exception p0

    #@48
    move-object v0, v1

    #@49
    :goto_49
    if-eqz v0, :cond_53

    #@4b
    .line 195
    :try_start_4b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    #@4e
    goto :goto_53

    #@4f
    :catch_4f
    move-exception v0

    #@50
    .line 198
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@53
    .line 200
    :cond_53
    :goto_53
    throw p0
.end method

.method public static encryptMD5File(Ljava/lang/String;)[B
    .registers 2

    #@0
    .line 155
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    goto :goto_e

    #@8
    :cond_8
    new-instance v0, Ljava/io/File;

    #@a
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    move-object p0, v0

    #@e
    .line 156
    :goto_e
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5File(Ljava/io/File;)[B

    #@11
    move-result-object p0

    #@12
    return-object p0
.end method

.method public static encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    #@0
    .line 166
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5File(Ljava/io/File;)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptMD5File2String(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 144
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    goto :goto_e

    #@8
    :cond_8
    new-instance v0, Ljava/io/File;

    #@a
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    move-object p0, v0

    #@e
    .line 145
    :goto_e
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    return-object p0
.end method

.method public static encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    if-eqz p0, :cond_12

    #@2
    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_12

    #@9
    .line 83
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@c
    move-result-object p0

    #@d
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5ToString([B)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    return-object p0

    #@12
    :cond_12
    :goto_12
    const-string p0, ""

    #@14
    return-object p0
.end method

.method public static encryptMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    if-nez p0, :cond_7

    #@2
    if-nez p1, :cond_7

    #@4
    const-string p0, ""

    #@6
    return-object p0

    #@7
    :cond_7
    if-nez p1, :cond_16

    #@9
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@c
    move-result-object p0

    #@d
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    #@10
    move-result-object p0

    #@11
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    return-object p0

    #@16
    :cond_16
    if-nez p0, :cond_25

    #@18
    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@1b
    move-result-object p0

    #@1c
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    #@1f
    move-result-object p0

    #@20
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@23
    move-result-object p0

    #@24
    return-object p0

    #@25
    .line 97
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object p0

    #@2e
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object p0

    #@32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object p0

    #@36
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@39
    move-result-object p0

    #@3a
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    #@3d
    move-result-object p0

    #@3e
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@41
    move-result-object p0

    #@42
    return-object p0
.end method

.method public static encryptMD5ToString([B)Ljava/lang/String;
    .registers 1

    #@0
    .line 107
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptMD5ToString([B[B)Ljava/lang/String;
    .registers 5

    #@0
    if-nez p0, :cond_7

    #@2
    if-nez p1, :cond_7

    #@4
    const-string p0, ""

    #@6
    return-object p0

    #@7
    :cond_7
    if-nez p1, :cond_12

    #@9
    .line 119
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    #@c
    move-result-object p0

    #@d
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    return-object p0

    #@12
    :cond_12
    if-nez p0, :cond_1d

    #@14
    .line 120
    invoke-static {p1}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    #@17
    move-result-object p0

    #@18
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@1b
    move-result-object p0

    #@1c
    return-object p0

    #@1d
    .line 121
    :cond_1d
    array-length v0, p0

    #@1e
    array-length v1, p1

    #@1f
    add-int/2addr v0, v1

    #@20
    new-array v0, v0, [B

    #@22
    .line 122
    array-length v1, p0

    #@23
    const/4 v2, 0x0

    #@24
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@27
    .line 123
    array-length p0, p0

    #@28
    array-length v1, p1

    #@29
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2c
    .line 124
    invoke-static {v0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptMD5([B)[B

    #@2f
    move-result-object p0

    #@30
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@33
    move-result-object p0

    #@34
    return-object p0
.end method

.method public static encryptRSA([B[BILjava/lang/String;)[B
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    .line 1015
    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->rsaTemplate([B[BILjava/lang/String;Z)[B

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static encryptRSA2Base64([B[BILjava/lang/String;)[B
    .registers 4

    #@0
    .line 983
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptRSA([B[BILjava/lang/String;)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->base64Encode([B)[B

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptRSA2HexString([B[BILjava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 999
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptRSA([B[BILjava/lang/String;)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptSHA1([B)[B
    .registers 2

    #@0
    const-string v0, "SHA-1"

    #@2
    .line 231
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static encryptSHA1ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    if-eqz p0, :cond_12

    #@2
    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_12

    #@9
    .line 211
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@c
    move-result-object p0

    #@d
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA1ToString([B)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    return-object p0

    #@12
    :cond_12
    :goto_12
    const-string p0, ""

    #@14
    return-object p0
.end method

.method public static encryptSHA1ToString([B)Ljava/lang/String;
    .registers 1

    #@0
    .line 221
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA1([B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptSHA224([B)[B
    .registers 2

    #@0
    const-string v0, "SHA224"

    #@2
    .line 262
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static encryptSHA224ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    if-eqz p0, :cond_12

    #@2
    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_12

    #@9
    .line 242
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@c
    move-result-object p0

    #@d
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA224ToString([B)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    return-object p0

    #@12
    :cond_12
    :goto_12
    const-string p0, ""

    #@14
    return-object p0
.end method

.method public static encryptSHA224ToString([B)Ljava/lang/String;
    .registers 1

    #@0
    .line 252
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA224([B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptSHA256([B)[B
    .registers 2

    #@0
    const-string v0, "SHA-256"

    #@2
    .line 293
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static encryptSHA256ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    if-eqz p0, :cond_12

    #@2
    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_12

    #@9
    .line 273
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@c
    move-result-object p0

    #@d
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA256ToString([B)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    return-object p0

    #@12
    :cond_12
    :goto_12
    const-string p0, ""

    #@14
    return-object p0
.end method

.method public static encryptSHA256ToString([B)Ljava/lang/String;
    .registers 1

    #@0
    .line 283
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA256([B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptSHA384([B)[B
    .registers 2

    #@0
    const-string v0, "SHA-384"

    #@2
    .line 324
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static encryptSHA384ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    if-eqz p0, :cond_12

    #@2
    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_12

    #@9
    .line 304
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@c
    move-result-object p0

    #@d
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA384ToString([B)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    return-object p0

    #@12
    :cond_12
    :goto_12
    const-string p0, ""

    #@14
    return-object p0
.end method

.method public static encryptSHA384ToString([B)Ljava/lang/String;
    .registers 1

    #@0
    .line 314
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA384([B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static encryptSHA512([B)[B
    .registers 2

    #@0
    const-string v0, "SHA-512"

    #@2
    .line 355
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static encryptSHA512ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    if-eqz p0, :cond_12

    #@2
    .line 334
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_12

    #@9
    .line 335
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@c
    move-result-object p0

    #@d
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA512ToString([B)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    return-object p0

    #@12
    :cond_12
    :goto_12
    const-string p0, ""

    #@14
    return-object p0
.end method

.method public static encryptSHA512ToString([B)Ljava/lang/String;
    .registers 1

    #@0
    .line 345
    invoke-static {p0}, Lcom/blankj/utilcode/util/EncryptUtils;->encryptSHA512([B)[B

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method static hashTemplate([BLjava/lang/String;)[B
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_17

    #@3
    .line 366
    array-length v1, p0

    #@4
    if-gtz v1, :cond_7

    #@6
    goto :goto_17

    #@7
    .line 368
    :cond_7
    :try_start_7
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@a
    move-result-object p1

    #@b
    .line 369
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    #@e
    .line 370
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    #@11
    move-result-object p0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_12} :catch_13

    #@12
    return-object p0

    #@13
    :catch_13
    move-exception p0

    #@14
    .line 372
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    #@17
    :cond_17
    :goto_17
    return-object v0
.end method

.method private static hmacTemplate([B[BLjava/lang/String;)[B
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_23

    #@3
    .line 596
    array-length v1, p0

    #@4
    if-eqz v1, :cond_23

    #@6
    if-eqz p1, :cond_23

    #@8
    array-length v1, p1

    #@9
    if-nez v1, :cond_c

    #@b
    goto :goto_23

    #@c
    .line 598
    :cond_c
    :try_start_c
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    #@e
    invoke-direct {v1, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@11
    .line 599
    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    #@14
    move-result-object p1

    #@15
    .line 600
    invoke-virtual {p1, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    #@18
    .line 601
    invoke-virtual {p1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    #@1b
    move-result-object p0
    :try_end_1c
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_1c} :catch_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_1c} :catch_1d

    #@1c
    return-object p0

    #@1d
    :catch_1d
    move-exception p0

    #@1e
    goto :goto_20

    #@1f
    :catch_1f
    move-exception p0

    #@20
    .line 603
    :goto_20
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    #@23
    :cond_23
    :goto_23
    return-object v0
.end method

.method private static joins([B[B)[B
    .registers 5

    #@0
    .line 1179
    array-length v0, p0

    #@1
    array-length v1, p1

    #@2
    add-int/2addr v0, v1

    #@3
    new-array v0, v0, [B

    #@5
    .line 1180
    array-length v1, p0

    #@6
    const/4 v2, 0x0

    #@7
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a
    .line 1181
    array-length p0, p0

    #@b
    array-length v1, p1

    #@c
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@f
    return-object v0
.end method

.method public static rc4([B[B)[B
    .registers 10

    #@0
    if-eqz p0, :cond_69

    #@2
    .line 1143
    array-length v0, p0

    #@3
    if-eqz v0, :cond_69

    #@5
    if-nez p1, :cond_8

    #@7
    goto :goto_69

    #@8
    .line 1144
    :cond_8
    array-length v0, p1

    #@9
    const/4 v1, 0x1

    #@a
    if-lt v0, v1, :cond_61

    #@c
    array-length v0, p1

    #@d
    const/16 v2, 0x100

    #@f
    if-gt v0, v2, :cond_61

    #@11
    new-array v0, v2, [B

    #@13
    new-array v3, v2, [B

    #@15
    .line 1149
    array-length v4, p1

    #@16
    const/4 v5, 0x0

    #@17
    move v6, v5

    #@18
    :goto_18
    if-ge v6, v2, :cond_26

    #@1a
    int-to-byte v7, v6

    #@1b
    .line 1151
    aput-byte v7, v0, v6

    #@1d
    .line 1152
    rem-int v7, v6, v4

    #@1f
    aget-byte v7, p1, v7

    #@21
    aput-byte v7, v3, v6

    #@23
    add-int/lit8 v6, v6, 0x1

    #@25
    goto :goto_18

    #@26
    :cond_26
    move p1, v5

    #@27
    move v4, p1

    #@28
    :goto_28
    if-ge p1, v2, :cond_3b

    #@2a
    .line 1157
    aget-byte v6, v0, p1

    #@2c
    add-int/2addr v4, v6

    #@2d
    aget-byte v7, v3, p1

    #@2f
    add-int/2addr v4, v7

    #@30
    and-int/lit16 v4, v4, 0xff

    #@32
    .line 1158
    aget-byte v7, v0, v4

    #@34
    .line 1159
    aput-byte v6, v0, v4

    #@36
    .line 1160
    aput-byte v7, v0, p1

    #@38
    add-int/lit8 p1, p1, 0x1

    #@3a
    goto :goto_28

    #@3b
    .line 1163
    :cond_3b
    array-length p1, p0

    #@3c
    new-array p1, p1, [B

    #@3e
    move v2, v5

    #@3f
    .line 1165
    :goto_3f
    array-length v3, p0

    #@40
    if-ge v5, v3, :cond_60

    #@42
    add-int/2addr v2, v1

    #@43
    and-int/lit16 v2, v2, 0xff

    #@45
    .line 1167
    aget-byte v3, v0, v2

    #@47
    add-int/2addr v4, v3

    #@48
    and-int/lit16 v4, v4, 0xff

    #@4a
    .line 1168
    aget-byte v6, v0, v4

    #@4c
    .line 1169
    aput-byte v3, v0, v4

    #@4e
    .line 1170
    aput-byte v6, v0, v2

    #@50
    .line 1171
    aget-byte v3, v0, v4

    #@52
    add-int/2addr v6, v3

    #@53
    and-int/lit16 v3, v6, 0xff

    #@55
    .line 1172
    aget-byte v3, v0, v3

    #@57
    .line 1173
    aget-byte v6, p0, v5

    #@59
    xor-int/2addr v3, v6

    #@5a
    int-to-byte v3, v3

    #@5b
    aput-byte v3, p1, v5

    #@5d
    add-int/lit8 v5, v5, 0x1

    #@5f
    goto :goto_3f

    #@60
    :cond_60
    return-object p1

    #@61
    .line 1145
    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@63
    const-string p1, "key must be between 1 and 256 bytes"

    #@65
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@68
    throw p0

    #@69
    :cond_69
    :goto_69
    const/4 p0, 0x0

    #@6a
    return-object p0
.end method

.method private static rsaTemplate([B[BILjava/lang/String;Z)[B
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_8d

    #@3
    .line 1081
    array-length v1, p0

    #@4
    if-eqz v1, :cond_8d

    #@6
    if-eqz p1, :cond_8d

    #@8
    array-length v1, p1

    #@9
    if-nez v1, :cond_d

    #@b
    goto/16 :goto_8d

    #@d
    .line 1087
    :cond_d
    :try_start_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_f} :catch_89

    #@f
    const/16 v2, 0x1c

    #@11
    const-string v3, "RSA"

    #@13
    if-ge v1, v2, :cond_1c

    #@15
    :try_start_15
    const-string v1, "BC"

    #@17
    .line 1088
    invoke-static {v3, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    #@1a
    move-result-object v1

    #@1b
    goto :goto_20

    #@1c
    .line 1090
    :cond_1c
    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@1f
    move-result-object v1

    #@20
    :goto_20
    if-eqz p4, :cond_2c

    #@22
    .line 1093
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    #@24
    invoke-direct {v2, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@27
    .line 1094
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@2a
    move-result-object p1

    #@2b
    goto :goto_35

    #@2c
    .line 1096
    :cond_2c
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@2e
    invoke-direct {v2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@31
    .line 1097
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    #@34
    move-result-object p1

    #@35
    :goto_35
    if-nez p1, :cond_38

    #@37
    return-object v0

    #@38
    .line 1100
    :cond_38
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@3b
    move-result-object v1

    #@3c
    if-eqz p4, :cond_40

    #@3e
    const/4 v2, 0x1

    #@3f
    goto :goto_41

    #@40
    :cond_40
    const/4 v2, 0x2

    #@41
    .line 1101
    :goto_41
    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@44
    .line 1102
    array-length p1, p0

    #@45
    .line 1103
    div-int/lit8 p2, p2, 0x8

    #@47
    if-eqz p4, :cond_57

    #@49
    .line 1105
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4c
    move-result-object p3

    #@4d
    const-string p4, "pkcs1padding"

    #@4f
    .line 1106
    invoke-virtual {p3, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@52
    move-result p3

    #@53
    if-eqz p3, :cond_57

    #@55
    add-int/lit8 p2, p2, -0xb

    #@57
    .line 1110
    :cond_57
    div-int p3, p1, p2

    #@59
    if-lez p3, :cond_84

    #@5b
    const/4 p4, 0x0

    #@5c
    new-array v2, p4, [B

    #@5e
    .line 1113
    new-array v3, p2, [B

    #@60
    move v4, p4

    #@61
    move v5, v4

    #@62
    :goto_62
    if-ge v4, p3, :cond_73

    #@64
    .line 1116
    invoke-static {p0, v5, v3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@67
    .line 1117
    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@6a
    move-result-object v6

    #@6b
    invoke-static {v2, v6}, Lcom/blankj/utilcode/util/EncryptUtils;->joins([B[B)[B

    #@6e
    move-result-object v2

    #@6f
    add-int/2addr v5, p2

    #@70
    add-int/lit8 v4, v4, 0x1

    #@72
    goto :goto_62

    #@73
    :cond_73
    if-eq v5, p1, :cond_83

    #@75
    sub-int/2addr p1, v5

    #@76
    .line 1122
    new-array p2, p1, [B

    #@78
    .line 1123
    invoke-static {p0, v5, p2, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@7b
    .line 1124
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@7e
    move-result-object p0

    #@7f
    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/EncryptUtils;->joins([B[B)[B

    #@82
    move-result-object v2

    #@83
    :cond_83
    return-object v2

    #@84
    .line 1128
    :cond_84
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@87
    move-result-object p0
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_88} :catch_89

    #@88
    return-object p0

    #@89
    :catch_89
    move-exception p0

    #@8a
    .line 1131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@8d
    :cond_8d
    :goto_8d
    return-object v0
.end method

.method private static symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_51

    #@3
    .line 942
    array-length v1, p0

    #@4
    if-eqz v1, :cond_51

    #@6
    if-eqz p1, :cond_51

    #@8
    array-length v1, p1

    #@9
    if-nez v1, :cond_c

    #@b
    goto :goto_51

    #@c
    :cond_c
    :try_start_c
    const-string v1, "DES"

    #@e
    .line 945
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_22

    #@14
    .line 946
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    #@16
    invoke-direct {v1, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    #@19
    .line 947
    invoke-static {p2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    #@1c
    move-result-object p1

    #@1d
    .line 948
    invoke-virtual {p1, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@20
    move-result-object p1

    #@21
    goto :goto_28

    #@22
    .line 950
    :cond_22
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    #@24
    invoke-direct {v1, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@27
    move-object p1, v1

    #@28
    .line 952
    :goto_28
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@2b
    move-result-object p2

    #@2c
    const/4 p3, 0x1

    #@2d
    const/4 v1, 0x2

    #@2e
    if-eqz p4, :cond_41

    #@30
    .line 953
    array-length v2, p4

    #@31
    if-nez v2, :cond_34

    #@33
    goto :goto_41

    #@34
    .line 956
    :cond_34
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    #@36
    invoke-direct {v2, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    #@39
    if-eqz p5, :cond_3c

    #@3b
    goto :goto_3d

    #@3c
    :cond_3c
    move p3, v1

    #@3d
    .line 957
    :goto_3d
    invoke-virtual {p2, p3, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@40
    goto :goto_48

    #@41
    :cond_41
    :goto_41
    if-eqz p5, :cond_44

    #@43
    goto :goto_45

    #@44
    :cond_44
    move p3, v1

    #@45
    .line 954
    :goto_45
    invoke-virtual {p2, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@48
    .line 959
    :goto_48
    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@4b
    move-result-object p0
    :try_end_4c
    .catchall {:try_start_c .. :try_end_4c} :catchall_4d

    #@4c
    return-object p0

    #@4d
    :catchall_4d
    move-exception p0

    #@4e
    .line 961
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    #@51
    :cond_51
    :goto_51
    return-object v0
.end method

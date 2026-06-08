.class public final Lcom/blankj/utilcode/util/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final HEX_DIGITS_LOWER:[C

.field private static final HEX_DIGITS_UPPER:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/16 v0, 0x10

    #@2
    new-array v1, v0, [C

    #@4
    .line 42
    fill-array-data v1, :array_12

    #@7
    sput-object v1, Lcom/blankj/utilcode/util/ConvertUtils;->HEX_DIGITS_UPPER:[C

    #@9
    new-array v0, v0, [C

    #@b
    .line 44
    fill-array-data v0, :array_26

    #@e
    sput-object v0, Lcom/blankj/utilcode/util/ConvertUtils;->HEX_DIGITS_LOWER:[C

    #@10
    return-void

    #@11
    nop

    #@12
    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    #@26
    :array_26
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .registers 1

    #@0
    .line 378
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .registers 3

    #@0
    .line 385
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 1

    #@0
    .line 716
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static bits2Bytes(Ljava/lang/String;)[B
    .registers 9

    #@0
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x8

    #@6
    rem-int/2addr v0, v1

    #@7
    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    div-int/2addr v2, v1

    #@c
    if-eqz v0, :cond_24

    #@e
    :goto_e
    if-ge v0, v1, :cond_22

    #@10
    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    const-string v4, "0"

    #@14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p0

    #@1b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_e

    #@22
    :cond_22
    add-int/lit8 v2, v2, 0x1

    #@24
    .line 104
    :cond_24
    new-array v0, v2, [B

    #@26
    const/4 v3, 0x0

    #@27
    move v4, v3

    #@28
    :goto_28
    if-ge v4, v2, :cond_47

    #@2a
    move v5, v3

    #@2b
    :goto_2b
    if-ge v5, v1, :cond_44

    #@2d
    .line 107
    aget-byte v6, v0, v4

    #@2f
    shl-int/lit8 v6, v6, 0x1

    #@31
    int-to-byte v6, v6

    #@32
    aput-byte v6, v0, v4

    #@34
    mul-int/lit8 v7, v4, 0x8

    #@36
    add-int/2addr v7, v5

    #@37
    .line 108
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v7

    #@3b
    add-int/lit8 v7, v7, -0x30

    #@3d
    or-int/2addr v6, v7

    #@3e
    int-to-byte v6, v6

    #@3f
    aput-byte v6, v0, v4

    #@41
    add-int/lit8 v5, v5, 0x1

    #@43
    goto :goto_2b

    #@44
    :cond_44
    add-int/lit8 v4, v4, 0x1

    #@46
    goto :goto_28

    #@47
    :cond_47
    return-object v0
.end method

.method public static byte2FitMemorySize(J)Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x3

    #@1
    .line 456
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ConvertUtils;->byte2FitMemorySize(JI)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static byte2FitMemorySize(JI)Ljava/lang/String;
    .registers 9

    #@0
    if-ltz p2, :cond_b5

    #@2
    const-wide/16 v0, 0x0

    #@4
    cmp-long v0, p0, v0

    #@6
    if-ltz v0, :cond_ad

    #@8
    const-wide/16 v0, 0x400

    #@a
    cmp-long v0, p0, v0

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x1

    #@e
    const-string v3, "%."

    #@10
    if-gez v0, :cond_33

    #@12
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p2

    #@1b
    const-string v0, "fB"

    #@1d
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object p2

    #@21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object p2

    #@25
    new-array v0, v2, [Ljava/lang/Object;

    #@27
    long-to-double p0, p0

    #@28
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2b
    move-result-object p0

    #@2c
    aput-object p0, v0, v1

    #@2e
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@31
    move-result-object p0

    #@32
    return-object p0

    #@33
    :cond_33
    const-wide/32 v4, 0x100000

    #@36
    cmp-long v0, p0, v4

    #@38
    if-gez v0, :cond_5e

    #@3a
    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object p2

    #@43
    const-string v0, "fKB"

    #@45
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object p2

    #@49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object p2

    #@4d
    new-array v0, v2, [Ljava/lang/Object;

    #@4f
    long-to-double p0, p0

    #@50
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    #@52
    div-double/2addr p0, v2

    #@53
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@56
    move-result-object p0

    #@57
    aput-object p0, v0, v1

    #@59
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5c
    move-result-object p0

    #@5d
    return-object p0

    #@5e
    :cond_5e
    const-wide/32 v4, 0x40000000

    #@61
    cmp-long v0, p0, v4

    #@63
    if-gez v0, :cond_89

    #@65
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object p2

    #@6e
    const-string v0, "fMB"

    #@70
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object p2

    #@74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object p2

    #@78
    new-array v0, v2, [Ljava/lang/Object;

    #@7a
    long-to-double p0, p0

    #@7b
    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    #@7d
    div-double/2addr p0, v2

    #@7e
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@81
    move-result-object p0

    #@82
    aput-object p0, v0, v1

    #@84
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@87
    move-result-object p0

    #@88
    return-object p0

    #@89
    .line 481
    :cond_89
    new-instance v0, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object p2

    #@92
    const-string v0, "fGB"

    #@94
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object p2

    #@98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object p2

    #@9c
    new-array v0, v2, [Ljava/lang/Object;

    #@9e
    long-to-double p0, p0

    #@9f
    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    #@a1
    div-double/2addr p0, v2

    #@a2
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@a5
    move-result-object p0

    #@a6
    aput-object p0, v0, v1

    #@a8
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ab
    move-result-object p0

    #@ac
    return-object p0

    #@ad
    .line 473
    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@af
    const-string p1, "byteSize shouldn\'t be less than zero!"

    #@b1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b4
    throw p0

    #@b5
    .line 470
    :cond_b5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@b7
    const-string p1, "precision shouldn\'t be less than zero!"

    #@b9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bc
    throw p0
.end method

.method public static byte2MemorySize(JI)D
    .registers 5

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gez v0, :cond_9

    #@6
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    #@8
    return-wide p0

    #@9
    :cond_9
    long-to-double p0, p0

    #@a
    int-to-double v0, p2

    #@b
    div-double/2addr p0, v0

    #@c
    return-wide p0
.end method

.method public static bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .registers 1

    #@0
    .line 371
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static bytes2Bits([B)Ljava/lang/String;
    .registers 7

    #@0
    if-eqz p0, :cond_2d

    #@2
    .line 78
    array-length v0, p0

    #@3
    if-nez v0, :cond_6

    #@5
    goto :goto_2d

    #@6
    .line 79
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 80
    array-length v1, p0

    #@c
    const/4 v2, 0x0

    #@d
    :goto_d
    if-ge v2, v1, :cond_28

    #@f
    aget-byte v3, p0, v2

    #@11
    const/4 v4, 0x7

    #@12
    :goto_12
    if-ltz v4, :cond_25

    #@14
    shr-int v5, v3, v4

    #@16
    and-int/lit8 v5, v5, 0x1

    #@18
    if-nez v5, :cond_1d

    #@1a
    const/16 v5, 0x30

    #@1c
    goto :goto_1f

    #@1d
    :cond_1d
    const/16 v5, 0x31

    #@1f
    .line 82
    :goto_1f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    add-int/lit8 v4, v4, -0x1

    #@24
    goto :goto_12

    #@25
    :cond_25
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_d

    #@28
    .line 85
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object p0

    #@2c
    return-object p0

    #@2d
    :cond_2d
    :goto_2d
    const-string p0, ""

    #@2f
    return-object p0
.end method

.method public static bytes2Chars([B)[C
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 122
    :cond_4
    array-length v1, p0

    #@5
    if-gtz v1, :cond_8

    #@7
    return-object v0

    #@8
    .line 124
    :cond_8
    new-array v0, v1, [C

    #@a
    const/4 v2, 0x0

    #@b
    :goto_b
    if-ge v2, v1, :cond_17

    #@d
    .line 126
    aget-byte v3, p0, v2

    #@f
    and-int/lit16 v3, v3, 0xff

    #@11
    int-to-char v3, v3

    #@12
    aput-char v3, v0, v2

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_b

    #@17
    :cond_17
    return-object v0
.end method

.method public static bytes2Drawable([B)Landroid/graphics/drawable/Drawable;
    .registers 1

    #@0
    .line 392
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2Drawable([B)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static bytes2HexString([B)Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 155
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ConvertUtils;->bytes2HexString([BZ)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static bytes2HexString([BZ)Ljava/lang/String;
    .registers 9

    #@0
    const-string v0, ""

    #@2
    if-nez p0, :cond_5

    #@4
    return-object v0

    #@5
    :cond_5
    if-eqz p1, :cond_a

    #@7
    .line 168
    sget-object p1, Lcom/blankj/utilcode/util/ConvertUtils;->HEX_DIGITS_UPPER:[C

    #@9
    goto :goto_c

    #@a
    :cond_a
    sget-object p1, Lcom/blankj/utilcode/util/ConvertUtils;->HEX_DIGITS_LOWER:[C

    #@c
    .line 169
    :goto_c
    array-length v1, p0

    #@d
    if-gtz v1, :cond_10

    #@f
    return-object v0

    #@10
    :cond_10
    shl-int/lit8 v0, v1, 0x1

    #@12
    .line 171
    new-array v0, v0, [C

    #@14
    const/4 v2, 0x0

    #@15
    move v3, v2

    #@16
    :goto_16
    if-ge v2, v1, :cond_2f

    #@18
    add-int/lit8 v4, v3, 0x1

    #@1a
    .line 173
    aget-byte v5, p0, v2

    #@1c
    shr-int/lit8 v6, v5, 0x4

    #@1e
    and-int/lit8 v6, v6, 0xf

    #@20
    aget-char v6, p1, v6

    #@22
    aput-char v6, v0, v3

    #@24
    add-int/lit8 v3, v4, 0x1

    #@26
    and-int/lit8 v5, v5, 0xf

    #@28
    .line 174
    aget-char v5, p1, v5

    #@2a
    aput-char v5, v0, v4

    #@2c
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_16

    #@2f
    .line 176
    :cond_2f
    new-instance p0, Ljava/lang/String;

    #@31
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    #@34
    return-object p0
.end method

.method public static bytes2InputStream([B)Ljava/io/InputStream;
    .registers 2

    #@0
    if-eqz p0, :cond_c

    #@2
    .line 586
    array-length v0, p0

    #@3
    if-gtz v0, :cond_6

    #@5
    goto :goto_c

    #@6
    .line 587
    :cond_6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@8
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@b
    return-object v0

    #@c
    :cond_c
    :goto_c
    const/4 p0, 0x0

    #@d
    return-object p0
.end method

.method public static bytes2JSONArray([B)Lorg/json/JSONArray;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 278
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONArray;

    #@6
    new-instance v2, Ljava/lang/String;

    #@8
    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    #@b
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    #@e
    return-object v1

    #@f
    :catch_f
    move-exception p0

    #@10
    .line 280
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@13
    return-object v0
.end method

.method public static bytes2JSONObject([B)Lorg/json/JSONObject;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 257
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    #@6
    new-instance v2, Ljava/lang/String;

    #@8
    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    #@b
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    #@e
    return-object v1

    #@f
    :catch_f
    move-exception p0

    #@10
    .line 259
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@13
    return-object v0
.end method

.method public static bytes2Object([B)Ljava/lang/Object;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 326
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ObjectInputStream;

    #@6
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@8
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@b
    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_1f
    .catchall {:try_start_4 .. :try_end_e} :catchall_1d

    #@e
    .line 327
    :try_start_e
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@11
    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_1b
    .catchall {:try_start_e .. :try_end_12} :catchall_2f

    #@12
    .line 334
    :try_start_12
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    #@15
    goto :goto_1a

    #@16
    :catch_16
    move-exception v0

    #@17
    .line 337
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@1a
    :goto_1a
    return-object p0

    #@1b
    :catch_1b
    move-exception p0

    #@1c
    goto :goto_21

    #@1d
    :catchall_1d
    move-exception p0

    #@1e
    goto :goto_31

    #@1f
    :catch_1f
    move-exception p0

    #@20
    move-object v1, v0

    #@21
    .line 329
    :goto_21
    :try_start_21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2f

    #@24
    if-eqz v1, :cond_2e

    #@26
    .line 334
    :try_start_26
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    #@29
    goto :goto_2e

    #@2a
    :catch_2a
    move-exception p0

    #@2b
    .line 337
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@2e
    :cond_2e
    :goto_2e
    return-object v0

    #@2f
    :catchall_2f
    move-exception p0

    #@30
    move-object v0, v1

    #@31
    :goto_31
    if-eqz v0, :cond_3b

    #@33
    .line 334
    :try_start_33
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    #@36
    goto :goto_3b

    #@37
    :catch_37
    move-exception v0

    #@38
    .line 337
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@3b
    .line 339
    :cond_3b
    :goto_3b
    throw p0
.end method

.method public static bytes2OutputStream([B)Ljava/io/OutputStream;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_39

    #@3
    .line 602
    array-length v1, p0

    #@4
    if-gtz v1, :cond_7

    #@6
    goto :goto_39

    #@7
    .line 605
    :cond_7
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@9
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_1c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1a

    #@c
    .line 606
    :try_start_c
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_18
    .catchall {:try_start_c .. :try_end_f} :catchall_2c

    #@f
    .line 614
    :try_start_f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    #@12
    goto :goto_17

    #@13
    :catch_13
    move-exception p0

    #@14
    .line 617
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@17
    :goto_17
    return-object v1

    #@18
    :catch_18
    move-exception p0

    #@19
    goto :goto_1e

    #@1a
    :catchall_1a
    move-exception p0

    #@1b
    goto :goto_2e

    #@1c
    :catch_1c
    move-exception p0

    #@1d
    move-object v1, v0

    #@1e
    .line 609
    :goto_1e
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    #@21
    if-eqz v1, :cond_2b

    #@23
    .line 614
    :try_start_23
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    #@26
    goto :goto_2b

    #@27
    :catch_27
    move-exception p0

    #@28
    .line 617
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@2b
    :cond_2b
    :goto_2b
    return-object v0

    #@2c
    :catchall_2c
    move-exception p0

    #@2d
    move-object v0, v1

    #@2e
    :goto_2e
    if-eqz v0, :cond_38

    #@30
    .line 614
    :try_start_30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    #@33
    goto :goto_38

    #@34
    :catch_34
    move-exception v0

    #@35
    .line 617
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@38
    .line 619
    :cond_38
    :goto_38
    throw p0

    #@39
    :cond_39
    :goto_39
    return-object v0
.end method

.method public static bytes2Parcelable([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 299
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v0

    #@8
    .line 300
    array-length v1, p0

    #@9
    const/4 v2, 0x0

    #@a
    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    #@d
    .line 301
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    #@10
    .line 302
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13
    move-result-object p0

    #@14
    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@17
    return-object p0
.end method

.method public static bytes2String([B)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, ""

    #@2
    .line 215
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ConvertUtils;->bytes2String([BLjava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static bytes2String([BLjava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 224
    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/String;

    #@6
    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object p1

    #@a
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_d} :catch_e

    #@d
    return-object v0

    #@e
    :catch_e
    move-exception p1

    #@f
    .line 226
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    #@12
    .line 227
    new-instance p1, Ljava/lang/String;

    #@14
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    #@17
    return-object p1
.end method

.method public static chars2Bytes([C)[B
    .registers 5

    #@0
    if-eqz p0, :cond_15

    #@2
    .line 138
    array-length v0, p0

    #@3
    if-gtz v0, :cond_6

    #@5
    goto :goto_15

    #@6
    .line 139
    :cond_6
    array-length v0, p0

    #@7
    .line 140
    new-array v1, v0, [B

    #@9
    const/4 v2, 0x0

    #@a
    :goto_a
    if-ge v2, v0, :cond_14

    #@c
    .line 142
    aget-char v3, p0, v2

    #@e
    int-to-byte v3, v3

    #@f
    aput-byte v3, v1, v2

    #@11
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_a

    #@14
    :cond_14
    return-object v1

    #@15
    :cond_15
    :goto_15
    const/4 p0, 0x0

    #@16
    return-object p0
.end method

.method public static dp2px(F)I
    .registers 1

    #@0
    .line 730
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->dp2px(F)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 1

    #@0
    .line 709
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;)[B
    .registers 1

    #@0
    .line 399
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->drawable2Bytes(Landroid/graphics/drawable/Drawable;)[B

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .registers 3

    #@0
    .line 406
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;I)[B

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static getSafeCharset(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 756
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_c

    #@6
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_e

    #@c
    :cond_c
    const-string p0, "UTF-8"

    #@e
    :cond_e
    return-object p0
.end method

.method private static hex2Dec(C)I
    .registers 3

    #@0
    const/16 v0, 0x30

    #@2
    if-lt p0, v0, :cond_a

    #@4
    const/16 v1, 0x39

    #@6
    if-gt p0, v1, :cond_a

    #@8
    sub-int/2addr p0, v0

    #@9
    return p0

    #@a
    :cond_a
    const/16 v0, 0x41

    #@c
    if-lt p0, v0, :cond_16

    #@e
    const/16 v1, 0x46

    #@10
    if-gt p0, v1, :cond_16

    #@12
    sub-int/2addr p0, v0

    #@13
    add-int/lit8 p0, p0, 0xa

    #@15
    return p0

    #@16
    .line 207
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@18
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1b
    throw p0
.end method

.method public static hexString2Bytes(Ljava/lang/String;)[B
    .registers 7

    #@0
    .line 187
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_a

    #@7
    new-array p0, v1, [B

    #@9
    return-object p0

    #@a
    .line 188
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    .line 189
    rem-int/lit8 v2, v0, 0x2

    #@10
    if-eqz v2, :cond_23

    #@12
    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    const-string v3, "0"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p0

    #@1d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object p0

    #@21
    add-int/lit8 v0, v0, 0x1

    #@23
    .line 193
    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@26
    move-result-object p0

    #@27
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@2a
    move-result-object p0

    #@2b
    shr-int/lit8 v2, v0, 0x1

    #@2d
    .line 194
    new-array v2, v2, [B

    #@2f
    :goto_2f
    if-ge v1, v0, :cond_4a

    #@31
    shr-int/lit8 v3, v1, 0x1

    #@33
    .line 196
    aget-char v4, p0, v1

    #@35
    invoke-static {v4}, Lcom/blankj/utilcode/util/ConvertUtils;->hex2Dec(C)I

    #@38
    move-result v4

    #@39
    shl-int/lit8 v4, v4, 0x4

    #@3b
    add-int/lit8 v5, v1, 0x1

    #@3d
    aget-char v5, p0, v5

    #@3f
    invoke-static {v5}, Lcom/blankj/utilcode/util/ConvertUtils;->hex2Dec(C)I

    #@42
    move-result v5

    #@43
    or-int/2addr v4, v5

    #@44
    int-to-byte v4, v4

    #@45
    aput-byte v4, v2, v3

    #@47
    add-int/lit8 v1, v1, 0x2

    #@49
    goto :goto_2f

    #@4a
    :cond_4a
    return-object v2
.end method

.method public static hexString2Int(Ljava/lang/String;)I
    .registers 2

    #@0
    const/16 v0, 0x10

    #@2
    .line 68
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 547
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@6
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@9
    const/16 v2, 0x2000

    #@b
    new-array v3, v2, [B

    #@d
    :goto_d
    const/4 v4, 0x0

    #@e
    .line 550
    invoke-virtual {p0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    #@11
    move-result v5

    #@12
    const/4 v6, -0x1

    #@13
    if-eq v5, v6, :cond_19

    #@15
    .line 551
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_24
    .catchall {:try_start_4 .. :try_end_18} :catchall_22

    #@18
    goto :goto_d

    #@19
    .line 559
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    #@1c
    goto :goto_21

    #@1d
    :catch_1d
    move-exception p0

    #@1e
    .line 561
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@21
    :goto_21
    return-object v1

    #@22
    :catchall_22
    move-exception v0

    #@23
    goto :goto_31

    #@24
    :catch_24
    move-exception v1

    #@25
    .line 555
    :try_start_25
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    #@28
    .line 559
    :try_start_28
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    #@2b
    goto :goto_30

    #@2c
    :catch_2c
    move-exception p0

    #@2d
    .line 561
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@30
    :goto_30
    return-object v0

    #@31
    .line 559
    :goto_31
    :try_start_31
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    #@34
    goto :goto_39

    #@35
    :catch_35
    move-exception p0

    #@36
    .line 561
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@39
    .line 563
    :goto_39
    throw v0
.end method

.method public static inputStream2Bytes(Ljava/io/InputStream;)[B
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 579
    :cond_4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ConvertUtils;->input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    #@7
    move-result-object p0

    #@8
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static inputStream2Lines(Ljava/io/InputStream;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const-string v0, ""

    #@2
    .line 677
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ConvertUtils;->inputStream2Lines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static inputStream2Lines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 684
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    #@3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 685
    new-instance v2, Ljava/io/BufferedReader;

    #@8
    new-instance v3, Ljava/io/InputStreamReader;

    #@a
    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    invoke-direct {v3, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@11
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_2b
    .catchall {:try_start_1 .. :try_end_14} :catchall_29

    #@14
    .line 687
    :goto_14
    :try_start_14
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@17
    move-result-object p0

    #@18
    if-eqz p0, :cond_1e

    #@1a
    .line 688
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_27
    .catchall {:try_start_14 .. :try_end_1d} :catchall_3b

    #@1d
    goto :goto_14

    #@1e
    .line 697
    :cond_1e
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    #@21
    goto :goto_26

    #@22
    :catch_22
    move-exception p0

    #@23
    .line 700
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@26
    :goto_26
    return-object v1

    #@27
    :catch_27
    move-exception p0

    #@28
    goto :goto_2d

    #@29
    :catchall_29
    move-exception p0

    #@2a
    goto :goto_3d

    #@2b
    :catch_2b
    move-exception p0

    #@2c
    move-object v2, v0

    #@2d
    .line 692
    :goto_2d
    :try_start_2d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3b

    #@30
    if-eqz v2, :cond_3a

    #@32
    .line 697
    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    #@35
    goto :goto_3a

    #@36
    :catch_36
    move-exception p0

    #@37
    .line 700
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@3a
    :cond_3a
    :goto_3a
    return-object v0

    #@3b
    :catchall_3b
    move-exception p0

    #@3c
    move-object v0, v2

    #@3d
    :goto_3d
    if-eqz v0, :cond_47

    #@3f
    .line 697
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    #@42
    goto :goto_47

    #@43
    :catch_43
    move-exception p1

    #@44
    .line 700
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@47
    .line 702
    :cond_47
    :goto_47
    throw p0
.end method

.method public static inputStream2String(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, ""

    #@2
    if-nez p0, :cond_5

    #@4
    return-object v0

    #@5
    .line 628
    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/blankj/utilcode/util/ConvertUtils;->input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    #@8
    move-result-object p0

    #@9
    if-nez p0, :cond_c

    #@b
    return-object v0

    #@c
    .line 630
    :cond_c
    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object p1

    #@10
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object p0
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_14} :catch_15

    #@14
    return-object p0

    #@15
    :catch_15
    move-exception p0

    #@16
    .line 632
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    #@19
    return-object v0
.end method

.method public static int2HexString(I)Ljava/lang/String;
    .registers 1

    #@0
    .line 58
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static jsonArray2Bytes(Lorg/json/JSONArray;)[B
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 290
    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static jsonObject2Bytes(Lorg/json/JSONObject;)[B
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 269
    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static memorySize2Byte(JI)J
    .registers 5

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gez v0, :cond_9

    #@6
    const-wide/16 p0, -0x1

    #@8
    return-wide p0

    #@9
    :cond_9
    int-to-long v0, p2

    #@a
    mul-long/2addr p0, v0

    #@b
    return-wide p0
.end method

.method public static millis2FitTimeSpan(JI)Ljava/lang/String;
    .registers 3

    #@0
    .line 538
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->millis2FitTimeSpan(JI)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static millis2TimeSpan(JI)J
    .registers 5

    #@0
    int-to-long v0, p2

    #@1
    .line 518
    div-long/2addr p0, v0

    #@2
    return-wide p0
.end method

.method public static output2InputStream(Ljava/io/OutputStream;)Ljava/io/ByteArrayInputStream;
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 571
    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@6
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    #@8
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@b
    move-result-object p0

    #@c
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@f
    return-object v0
.end method

.method public static outputStream2Bytes(Ljava/io/OutputStream;)[B
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 595
    :cond_4
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    #@6
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static outputStream2String(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, ""

    #@2
    if-nez p0, :cond_5

    #@4
    return-object v0

    #@5
    .line 656
    :cond_5
    :try_start_5
    new-instance v1, Ljava/lang/String;

    #@7
    invoke-static {p0}, Lcom/blankj/utilcode/util/ConvertUtils;->outputStream2Bytes(Ljava/io/OutputStream;)[B

    #@a
    move-result-object p0

    #@b
    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_12} :catch_13

    #@12
    return-object v1

    #@13
    :catch_13
    move-exception p0

    #@14
    .line 658
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    #@17
    return-object v0
.end method

.method public static parcelable2Bytes(Landroid/os/Parcelable;)[B
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 312
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    .line 313
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@c
    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    #@f
    move-result-object p0

    #@10
    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@13
    return-object p0
.end method

.method public static px2dp(F)I
    .registers 1

    #@0
    .line 737
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->px2dp(F)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static px2sp(F)I
    .registers 1

    #@0
    .line 751
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->px2sp(F)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static serializable2Bytes(Ljava/io/Serializable;)[B
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 350
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ObjectOutputStream;

    #@6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@8
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@b
    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_22
    .catchall {:try_start_4 .. :try_end_e} :catchall_20

    #@e
    .line 351
    :try_start_e
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@11
    .line 352
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@14
    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_1e
    .catchall {:try_start_e .. :try_end_15} :catchall_32

    #@15
    .line 359
    :try_start_15
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    #@18
    goto :goto_1d

    #@19
    :catch_19
    move-exception v0

    #@1a
    .line 362
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@1d
    :goto_1d
    return-object p0

    #@1e
    :catch_1e
    move-exception p0

    #@1f
    goto :goto_24

    #@20
    :catchall_20
    move-exception p0

    #@21
    goto :goto_34

    #@22
    :catch_22
    move-exception p0

    #@23
    move-object v1, v0

    #@24
    .line 354
    :goto_24
    :try_start_24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_32

    #@27
    if-eqz v1, :cond_31

    #@29
    .line 359
    :try_start_29
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    #@2c
    goto :goto_31

    #@2d
    :catch_2d
    move-exception p0

    #@2e
    .line 362
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@31
    :cond_31
    :goto_31
    return-object v0

    #@32
    :catchall_32
    move-exception p0

    #@33
    move-object v0, v1

    #@34
    :goto_34
    if-eqz v0, :cond_3e

    #@36
    .line 359
    :try_start_36
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    #@39
    goto :goto_3e

    #@3a
    :catch_3a
    move-exception v0

    #@3b
    .line 362
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@3e
    .line 364
    :cond_3e
    :goto_3e
    throw p0
.end method

.method public static sp2px(F)I
    .registers 1

    #@0
    .line 744
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->sp2px(F)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static string2Bytes(Ljava/lang/String;)[B
    .registers 2

    #@0
    const-string v0, ""

    #@2
    .line 235
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ConvertUtils;->string2Bytes(Ljava/lang/String;Ljava/lang/String;)[B

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static string2Bytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 244
    :cond_4
    :try_start_4
    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@b
    move-result-object p0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_c} :catch_d

    #@c
    return-object p0

    #@d
    :catch_d
    move-exception p1

    #@e
    .line 246
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    #@11
    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@14
    move-result-object p0

    #@15
    return-object p0
.end method

.method public static string2InputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 643
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@6
    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@d
    move-result-object p0

    #@e
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_11} :catch_12

    #@11
    return-object v1

    #@12
    :catch_12
    move-exception p0

    #@13
    .line 645
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    #@16
    return-object v0
.end method

.method public static string2OutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 669
    :cond_4
    :try_start_4
    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@b
    move-result-object p0

    #@c
    invoke-static {p0}, Lcom/blankj/utilcode/util/ConvertUtils;->bytes2OutputStream([B)Ljava/io/OutputStream;

    #@f
    move-result-object p0
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_10} :catch_11

    #@10
    return-object p0

    #@11
    :catch_11
    move-exception p0

    #@12
    .line 671
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    #@15
    return-object v0
.end method

.method public static timeSpan2Millis(JI)J
    .registers 5

    #@0
    int-to-long v0, p2

    #@1
    mul-long/2addr p0, v0

    #@2
    return-wide p0
.end method

.method public static view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 1

    #@0
    .line 723
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

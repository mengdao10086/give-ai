.class public final Lcom/blankj/utilcode/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    const/4 v1, 0x0

    #@5
    if-eqz p0, :cond_32

    #@7
    if-eqz p1, :cond_32

    #@9
    .line 70
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v2

    #@d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@10
    move-result v3

    #@11
    if-ne v2, v3, :cond_32

    #@13
    .line 71
    instance-of v3, p0, Ljava/lang/String;

    #@15
    if-eqz v3, :cond_20

    #@17
    instance-of v3, p1, Ljava/lang/String;

    #@19
    if-eqz v3, :cond_20

    #@1b
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result p0

    #@1f
    return p0

    #@20
    :cond_20
    move v3, v1

    #@21
    :goto_21
    if-ge v3, v2, :cond_31

    #@23
    .line 75
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@26
    move-result v4

    #@27
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@2a
    move-result v5

    #@2b
    if-eq v4, v5, :cond_2e

    #@2d
    return v1

    #@2e
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    #@30
    goto :goto_21

    #@31
    :cond_31
    return v0

    #@32
    :cond_32
    return v1
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    #@0
    if-nez p0, :cond_8

    #@2
    if-nez p1, :cond_6

    #@4
    const/4 p0, 0x1

    #@5
    goto :goto_c

    #@6
    :cond_6
    const/4 p0, 0x0

    #@7
    goto :goto_c

    #@8
    .line 91
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b
    move-result p0

    #@c
    :goto_c
    return p0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    #@0
    if-eqz p0, :cond_10

    #@2
    if-eqz p1, :cond_10

    #@4
    .line 252
    array-length v0, p1

    #@5
    if-lez v0, :cond_10

    #@7
    .line 254
    :try_start_7
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object p0
    :try_end_b
    .catch Ljava/util/IllegalFormatException; {:try_start_7 .. :try_end_b} :catch_c

    #@b
    goto :goto_10

    #@c
    :catch_c
    move-exception p1

    #@d
    .line 256
    invoke-virtual {p1}, Ljava/util/IllegalFormatException;->printStackTrace()V

    #@10
    :cond_10
    :goto_10
    return-object p0
.end method

.method public static getString(I)Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 208
    move-object v1, v0

    #@2
    check-cast v1, [Ljava/lang/Object;

    #@4
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/StringUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    #@0
    .line 220
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object p0
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    #@c
    return-object p0

    #@d
    :catch_d
    move-exception p1

    #@e
    .line 222
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    #@11
    .line 223
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    return-object p0
.end method

.method public static getStringArray(I)[Ljava/lang/String;
    .registers 3

    #@0
    .line 235
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@b
    move-result-object p0
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    #@c
    return-object p0

    #@d
    :catch_d
    move-exception v0

    #@e
    .line 237
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    #@11
    const/4 v0, 0x1

    #@12
    new-array v0, v0, [Ljava/lang/String;

    #@14
    const/4 v1, 0x0

    #@15
    .line 238
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@18
    move-result-object p0

    #@19
    aput-object p0, v0, v1

    #@1b
    return-object v0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 31
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result p0

    #@6
    if-nez p0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p0, 0x1

    #@c
    :goto_c
    return p0
.end method

.method public static isSpace(Ljava/lang/String;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    .line 52
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    move v3, v2

    #@a
    :goto_a
    if-ge v3, v1, :cond_1a

    #@c
    .line 53
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v4

    #@10
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_17

    #@16
    return v2

    #@17
    :cond_17
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return v0
.end method

.method public static isTrimEmpty(Ljava/lang/String;)Z
    .registers 1

    #@0
    if-eqz p0, :cond_f

    #@2
    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result p0

    #@a
    if-nez p0, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 p0, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 p0, 0x1

    #@10
    :goto_10
    return p0
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_8

    #@4
    .line 111
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result p0

    #@8
    :goto_8
    return p0
.end method

.method public static lowerFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    if-eqz p0, :cond_37

    #@2
    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_37

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v1

    #@e
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_15

    #@14
    return-object p0

    #@15
    .line 135
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v0

    #@1e
    add-int/lit8 v0, v0, 0x20

    #@20
    int-to-char v0, v0

    #@21
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const/4 v1, 0x1

    #@2a
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2d
    move-result-object p0

    #@2e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public static null2Length0(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const-string p0, ""

    #@4
    :cond_4
    return-object p0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, ""

    #@4
    return-object p0

    #@5
    .line 146
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x1

    #@a
    if-gt v0, v1, :cond_d

    #@c
    return-object p0

    #@d
    :cond_d
    shr-int/lit8 v2, v0, 0x1

    #@f
    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@12
    move-result-object p0

    #@13
    const/4 v3, 0x0

    #@14
    :goto_14
    if-ge v3, v2, :cond_24

    #@16
    .line 152
    aget-char v4, p0, v3

    #@18
    sub-int v5, v0, v3

    #@1a
    sub-int/2addr v5, v1

    #@1b
    .line 153
    aget-char v6, p0, v5

    #@1d
    aput-char v6, p0, v3

    #@1f
    .line 154
    aput-char v4, p0, v5

    #@21
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_14

    #@24
    .line 156
    :cond_24
    new-instance v0, Ljava/lang/String;

    #@26
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    #@29
    return-object v0
.end method

.method public static toDBC(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    if-eqz p0, :cond_39

    #@2
    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_39

    #@9
    .line 167
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@c
    move-result-object p0

    #@d
    .line 168
    array-length v0, p0

    #@e
    const/4 v1, 0x0

    #@f
    :goto_f
    if-ge v1, v0, :cond_33

    #@11
    .line 169
    aget-char v2, p0, v1

    #@13
    const/16 v3, 0x3000

    #@15
    if-ne v2, v3, :cond_1c

    #@17
    const/16 v2, 0x20

    #@19
    .line 170
    aput-char v2, p0, v1

    #@1b
    goto :goto_30

    #@1c
    :cond_1c
    const v3, 0xff01

    #@1f
    if-gt v3, v2, :cond_2e

    #@21
    const v3, 0xff5e

    #@24
    if-gt v2, v3, :cond_2e

    #@26
    const v3, 0xfee0

    #@29
    sub-int/2addr v2, v3

    #@2a
    int-to-char v2, v2

    #@2b
    .line 172
    aput-char v2, p0, v1

    #@2d
    goto :goto_30

    #@2e
    .line 174
    :cond_2e
    aput-char v2, p0, v1

    #@30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_f

    #@33
    .line 177
    :cond_33
    new-instance v0, Ljava/lang/String;

    #@35
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    #@38
    return-object v0

    #@39
    :cond_39
    :goto_39
    const-string p0, ""

    #@3b
    return-object p0
.end method

.method public static toSBC(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    if-eqz p0, :cond_37

    #@2
    .line 187
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_37

    #@9
    .line 188
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@c
    move-result-object p0

    #@d
    .line 189
    array-length v0, p0

    #@e
    const/4 v1, 0x0

    #@f
    :goto_f
    if-ge v1, v0, :cond_31

    #@11
    .line 190
    aget-char v2, p0, v1

    #@13
    const/16 v3, 0x20

    #@15
    if-ne v2, v3, :cond_1c

    #@17
    const/16 v2, 0x3000

    #@19
    .line 191
    aput-char v2, p0, v1

    #@1b
    goto :goto_2e

    #@1c
    :cond_1c
    const/16 v3, 0x21

    #@1e
    if-gt v3, v2, :cond_2c

    #@20
    const/16 v3, 0x7e

    #@22
    if-gt v2, v3, :cond_2c

    #@24
    const v3, 0xfee0

    #@27
    add-int/2addr v2, v3

    #@28
    int-to-char v2, v2

    #@29
    .line 193
    aput-char v2, p0, v1

    #@2b
    goto :goto_2e

    #@2c
    .line 195
    :cond_2c
    aput-char v2, p0, v1

    #@2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_f

    #@31
    .line 198
    :cond_31
    new-instance v0, Ljava/lang/String;

    #@33
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    #@36
    return-object v0

    #@37
    :cond_37
    :goto_37
    const-string p0, ""

    #@39
    return-object p0
.end method

.method public static upperFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    if-eqz p0, :cond_33

    #@2
    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_33

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v1

    #@e
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_15

    #@14
    return-object p0

    #@15
    .line 123
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v0

    #@1e
    add-int/lit8 v0, v0, -0x20

    #@20
    int-to-char v0, v0

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const/4 v1, 0x1

    #@26
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@29
    move-result-object p0

    #@2a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object p0

    #@2e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object p0

    #@32
    return-object p0

    #@33
    :cond_33
    :goto_33
    const-string p0, ""

    #@35
    return-object p0
.end method

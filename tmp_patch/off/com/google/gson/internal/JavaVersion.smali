.class public final Lcom/google/gson/internal/JavaVersion;
.super Ljava/lang/Object;
.source "JavaVersion.java"


# static fields
.field private static final majorJavaVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 26
    invoke-static {}, Lcom/google/gson/internal/JavaVersion;->determineMajorJavaVersion()I

    #@3
    move-result v0

    #@4
    sput v0, Lcom/google/gson/internal/JavaVersion;->majorJavaVersion:I

    #@6
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static determineMajorJavaVersion()I
    .registers 1

    #@0
    const-string v0, "java.version"

    #@2
    .line 29
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 30
    invoke-static {v0}, Lcom/google/gson/internal/JavaVersion;->getMajorJavaVersion(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private static extractBeginningInt(Ljava/lang/String;)I
    .registers 5

    #@0
    .line 62
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 63
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    if-ge v1, v2, :cond_1c

    #@c
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v2

    #@10
    .line 65
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1c

    #@16
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_6

    #@1c
    .line 71
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object p0

    #@20
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@23
    move-result p0
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_24} :catch_25

    #@24
    return p0

    #@25
    :catch_25
    const/4 p0, -0x1

    #@26
    return p0
.end method

.method public static getMajorJavaVersion()I
    .registers 1

    #@0
    .line 81
    sget v0, Lcom/google/gson/internal/JavaVersion;->majorJavaVersion:I

    #@2
    return v0
.end method

.method static getMajorJavaVersion(Ljava/lang/String;)I
    .registers 3

    #@0
    .line 35
    invoke-static {p0}, Lcom/google/gson/internal/JavaVersion;->parseDotted(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_b

    #@7
    .line 37
    invoke-static {p0}, Lcom/google/gson/internal/JavaVersion;->extractBeginningInt(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    :cond_b
    if-ne v0, v1, :cond_f

    #@d
    const/4 p0, 0x6

    #@e
    return p0

    #@f
    :cond_f
    return v0
.end method

.method public static isJava9OrLater()Z
    .registers 2

    #@0
    .line 88
    sget v0, Lcom/google/gson/internal/JavaVersion;->majorJavaVersion:I

    #@2
    const/16 v1, 0x9

    #@4
    if-lt v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method private static parseDotted(Ljava/lang/String;)I
    .registers 4

    #@0
    :try_start_0
    const-string v0, "[._]"

    #@2
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    const/4 v0, 0x0

    #@7
    .line 49
    aget-object v0, p0, v0

    #@9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x1

    #@e
    if-ne v0, v1, :cond_1a

    #@10
    .line 50
    array-length v2, p0

    #@11
    if-le v2, v1, :cond_1a

    #@13
    .line 51
    aget-object p0, p0, v1

    #@15
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@18
    move-result p0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_19} :catch_1b

    #@19
    return p0

    #@1a
    :cond_1a
    return v0

    #@1b
    :catch_1b
    const/4 p0, -0x1

    #@1c
    return p0
.end method

.class public final Landroidx/core/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 40
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    #@7
    const/16 v0, 0x18

    #@9
    new-array v0, v0, [C

    #@b
    .line 41
    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    #@d
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static accumField(IIZI)I
    .registers 6

    #@0
    const/16 v0, 0x63

    #@2
    const/4 v1, 0x3

    #@3
    if-gt p0, v0, :cond_20

    #@5
    if-eqz p2, :cond_a

    #@7
    if-lt p3, v1, :cond_a

    #@9
    goto :goto_20

    #@a
    :cond_a
    const/16 v0, 0x9

    #@c
    const/4 v1, 0x2

    #@d
    if-gt p0, v0, :cond_1e

    #@f
    if-eqz p2, :cond_14

    #@11
    if-lt p3, v1, :cond_14

    #@13
    goto :goto_1e

    #@14
    :cond_14
    if-nez p2, :cond_1b

    #@16
    if-lez p0, :cond_19

    #@18
    goto :goto_1b

    #@19
    :cond_19
    const/4 p0, 0x0

    #@1a
    return p0

    #@1b
    :cond_1b
    :goto_1b
    add-int/lit8 p1, p1, 0x1

    #@1d
    return p1

    #@1e
    :cond_1e
    :goto_1e
    add-int/2addr p1, v1

    #@1f
    return p1

    #@20
    :cond_20
    :goto_20
    add-int/2addr p1, v1

    #@21
    return p1
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .registers 7

    #@0
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-nez v0, :cond_c

    #@6
    const-string p0, "--"

    #@8
    .line 179
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    return-void

    #@c
    :cond_c
    sub-long/2addr p0, p2

    #@d
    const/4 p2, 0x0

    #@e
    .line 182
    invoke-static {p0, p1, p4, p2}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    #@11
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 172
    invoke-static {p0, p1, p2, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    #@4
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .registers 6

    #@0
    .line 163
    sget-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 164
    :try_start_3
    invoke-static {p0, p1, p3}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    #@6
    move-result p0

    #@7
    .line 165
    new-instance p1, Ljava/lang/String;

    #@9
    sget-object p3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    #@b
    const/4 v1, 0x0

    #@c
    invoke-direct {p1, p3, v1, p0}, Ljava/lang/String;-><init>([CII)V

    #@f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 166
    monitor-exit v0

    #@13
    return-void

    #@14
    :catchall_14
    move-exception p0

    #@15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    #@16
    throw p0
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .registers 5

    #@0
    .line 154
    sget-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    const/4 v1, 0x0

    #@4
    .line 155
    :try_start_4
    invoke-static {p0, p1, v1}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    #@7
    move-result p0

    #@8
    .line 156
    sget-object p1, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    #@a
    invoke-virtual {p2, p1, v1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@d
    .line 157
    monitor-exit v0

    #@e
    return-void

    #@f
    :catchall_f
    move-exception p0

    #@10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    #@11
    throw p0
.end method

.method private static formatDurationLocked(JI)I
    .registers 20

    #@0
    move-wide/from16 v0, p0

    #@2
    move/from16 v2, p2

    #@4
    .line 81
    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    #@6
    array-length v3, v3

    #@7
    if-ge v3, v2, :cond_d

    #@9
    .line 82
    new-array v3, v2, [C

    #@b
    sput-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    #@d
    .line 85
    :cond_d
    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    #@f
    const-wide/16 v4, 0x0

    #@11
    cmp-long v4, v0, v4

    #@13
    const/16 v5, 0x20

    #@15
    const/4 v10, 0x1

    #@16
    const/4 v11, 0x0

    #@17
    if-nez v4, :cond_25

    #@19
    add-int/lit8 v0, v2, -0x1

    #@1b
    :goto_1b
    if-lez v0, :cond_20

    #@1d
    .line 91
    aput-char v5, v3, v11

    #@1f
    goto :goto_1b

    #@20
    :cond_20
    const/16 v0, 0x30

    #@22
    .line 93
    aput-char v0, v3, v11

    #@24
    return v10

    #@25
    :cond_25
    if-lez v4, :cond_2a

    #@27
    const/16 v4, 0x2b

    #@29
    goto :goto_2d

    #@2a
    :cond_2a
    neg-long v0, v0

    #@2b
    const/16 v4, 0x2d

    #@2d
    :goto_2d
    const-wide/16 v6, 0x3e8

    #@2f
    .line 105
    rem-long v8, v0, v6

    #@31
    long-to-int v12, v8

    #@32
    .line 106
    div-long/2addr v0, v6

    #@33
    long-to-double v0, v0

    #@34
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@37
    move-result-wide v0

    #@38
    double-to-int v0, v0

    #@39
    const v1, 0x15180

    #@3c
    if-le v0, v1, :cond_43

    #@3e
    .line 110
    div-int v6, v0, v1

    #@40
    mul-int/2addr v1, v6

    #@41
    sub-int/2addr v0, v1

    #@42
    goto :goto_44

    #@43
    :cond_43
    move v6, v11

    #@44
    :goto_44
    const/16 v1, 0xe10

    #@46
    if-le v0, v1, :cond_4e

    #@48
    .line 114
    div-int/lit16 v1, v0, 0xe10

    #@4a
    mul-int/lit16 v7, v1, 0xe10

    #@4c
    sub-int/2addr v0, v7

    #@4d
    goto :goto_4f

    #@4e
    :cond_4e
    move v1, v11

    #@4f
    :goto_4f
    const/16 v7, 0x3c

    #@51
    if-le v0, v7, :cond_5b

    #@53
    .line 118
    div-int/lit8 v7, v0, 0x3c

    #@55
    mul-int/lit8 v8, v7, 0x3c

    #@57
    sub-int/2addr v0, v8

    #@58
    move v13, v0

    #@59
    move v0, v7

    #@5a
    goto :goto_5d

    #@5b
    :cond_5b
    move v13, v0

    #@5c
    move v0, v11

    #@5d
    :goto_5d
    const/4 v14, 0x3

    #@5e
    const/4 v15, 0x2

    #@5f
    if-eqz v2, :cond_98

    #@61
    .line 125
    invoke-static {v6, v10, v11, v11}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    #@64
    move-result v7

    #@65
    if-lez v7, :cond_69

    #@67
    move v8, v10

    #@68
    goto :goto_6a

    #@69
    :cond_69
    move v8, v11

    #@6a
    .line 126
    :goto_6a
    invoke-static {v1, v10, v8, v15}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    #@6d
    move-result v8

    #@6e
    add-int/2addr v7, v8

    #@6f
    if-lez v7, :cond_73

    #@71
    move v8, v10

    #@72
    goto :goto_74

    #@73
    :cond_73
    move v8, v11

    #@74
    .line 127
    :goto_74
    invoke-static {v0, v10, v8, v15}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    #@77
    move-result v8

    #@78
    add-int/2addr v7, v8

    #@79
    if-lez v7, :cond_7d

    #@7b
    move v8, v10

    #@7c
    goto :goto_7e

    #@7d
    :cond_7d
    move v8, v11

    #@7e
    .line 128
    :goto_7e
    invoke-static {v13, v10, v8, v15}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    #@81
    move-result v8

    #@82
    add-int/2addr v7, v8

    #@83
    if-lez v7, :cond_87

    #@85
    move v8, v14

    #@86
    goto :goto_88

    #@87
    :cond_87
    move v8, v11

    #@88
    .line 129
    :goto_88
    invoke-static {v12, v15, v10, v8}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    #@8b
    move-result v8

    #@8c
    add-int/2addr v8, v10

    #@8d
    add-int/2addr v7, v8

    #@8e
    move v8, v11

    #@8f
    :goto_8f
    if-ge v7, v2, :cond_99

    #@91
    .line 131
    aput-char v5, v3, v8

    #@93
    add-int/lit8 v8, v8, 0x1

    #@95
    add-int/lit8 v7, v7, 0x1

    #@97
    goto :goto_8f

    #@98
    :cond_98
    move v8, v11

    #@99
    .line 137
    :cond_99
    aput-char v4, v3, v8

    #@9b
    add-int/lit8 v9, v8, 0x1

    #@9d
    if-eqz v2, :cond_a1

    #@9f
    move v2, v10

    #@a0
    goto :goto_a2

    #@a1
    :cond_a1
    move v2, v11

    #@a2
    :goto_a2
    const/16 v7, 0x64

    #@a4
    const/4 v8, 0x0

    #@a5
    const/16 v16, 0x0

    #@a7
    move-object v4, v3

    #@a8
    move v5, v6

    #@a9
    move v6, v7

    #@aa
    move v7, v9

    #@ab
    move v11, v9

    #@ac
    move/from16 v9, v16

    #@ae
    .line 142
    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    #@b1
    move-result v7

    #@b2
    const/16 v6, 0x68

    #@b4
    if-eq v7, v11, :cond_b8

    #@b6
    move v8, v10

    #@b7
    goto :goto_b9

    #@b8
    :cond_b8
    const/4 v8, 0x0

    #@b9
    :goto_b9
    if-eqz v2, :cond_bd

    #@bb
    move v9, v15

    #@bc
    goto :goto_be

    #@bd
    :cond_bd
    const/4 v9, 0x0

    #@be
    :goto_be
    move-object v4, v3

    #@bf
    move v5, v1

    #@c0
    .line 143
    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    #@c3
    move-result v7

    #@c4
    const/16 v6, 0x6d

    #@c6
    if-eq v7, v11, :cond_ca

    #@c8
    move v8, v10

    #@c9
    goto :goto_cb

    #@ca
    :cond_ca
    const/4 v8, 0x0

    #@cb
    :goto_cb
    if-eqz v2, :cond_cf

    #@cd
    move v9, v15

    #@ce
    goto :goto_d0

    #@cf
    :cond_cf
    const/4 v9, 0x0

    #@d0
    :goto_d0
    move-object v4, v3

    #@d1
    move v5, v0

    #@d2
    .line 144
    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    #@d5
    move-result v7

    #@d6
    const/16 v6, 0x73

    #@d8
    if-eq v7, v11, :cond_dc

    #@da
    move v8, v10

    #@db
    goto :goto_dd

    #@dc
    :cond_dc
    const/4 v8, 0x0

    #@dd
    :goto_dd
    if-eqz v2, :cond_e1

    #@df
    move v9, v15

    #@e0
    goto :goto_e2

    #@e1
    :cond_e1
    const/4 v9, 0x0

    #@e2
    :goto_e2
    move-object v4, v3

    #@e3
    move v5, v13

    #@e4
    .line 145
    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    #@e7
    move-result v7

    #@e8
    const/16 v6, 0x6d

    #@ea
    const/4 v8, 0x1

    #@eb
    if-eqz v2, :cond_f1

    #@ed
    if-eq v7, v11, :cond_f1

    #@ef
    move v9, v14

    #@f0
    goto :goto_f2

    #@f1
    :cond_f1
    const/4 v9, 0x0

    #@f2
    :goto_f2
    move-object v4, v3

    #@f3
    move v5, v12

    #@f4
    .line 146
    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    #@f7
    move-result v0

    #@f8
    const/16 v1, 0x73

    #@fa
    .line 147
    aput-char v1, v3, v0

    #@fc
    add-int/2addr v0, v10

    #@fd
    return v0
.end method

.method private static printField([CICIZI)I
    .registers 8

    #@0
    if-nez p4, :cond_4

    #@2
    if-lez p1, :cond_3d

    #@4
    :cond_4
    if-eqz p4, :cond_9

    #@6
    const/4 v0, 0x3

    #@7
    if-ge p5, v0, :cond_d

    #@9
    :cond_9
    const/16 v0, 0x63

    #@b
    if-le p1, v0, :cond_1a

    #@d
    .line 61
    :cond_d
    div-int/lit8 v0, p1, 0x64

    #@f
    add-int/lit8 v1, v0, 0x30

    #@11
    int-to-char v1, v1

    #@12
    .line 62
    aput-char v1, p0, p3

    #@14
    add-int/lit8 v1, p3, 0x1

    #@16
    mul-int/lit8 v0, v0, 0x64

    #@18
    sub-int/2addr p1, v0

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    move v1, p3

    #@1b
    :goto_1b
    if-eqz p4, :cond_20

    #@1d
    const/4 p4, 0x2

    #@1e
    if-ge p5, p4, :cond_26

    #@20
    :cond_20
    const/16 p4, 0x9

    #@22
    if-gt p1, p4, :cond_26

    #@24
    if-eq p3, v1, :cond_32

    #@26
    .line 67
    :cond_26
    div-int/lit8 p3, p1, 0xa

    #@28
    add-int/lit8 p4, p3, 0x30

    #@2a
    int-to-char p4, p4

    #@2b
    .line 68
    aput-char p4, p0, v1

    #@2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    mul-int/lit8 p3, p3, 0xa

    #@31
    sub-int/2addr p1, p3

    #@32
    :cond_32
    add-int/lit8 p1, p1, 0x30

    #@34
    int-to-char p1, p1

    #@35
    .line 72
    aput-char p1, p0, v1

    #@37
    add-int/lit8 v1, v1, 0x1

    #@39
    .line 74
    aput-char p2, p0, v1

    #@3b
    add-int/lit8 p3, v1, 0x1

    #@3d
    :cond_3d
    return p3
.end method

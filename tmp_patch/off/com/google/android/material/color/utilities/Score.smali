.class public final Lcom/google/android/material/color/utilities/Score;
.super Ljava/lang/Object;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/Score$ScoredComparator;
    }
.end annotation


# static fields
.field private static final CUTOFF_CHROMA:D = 15.0

.field private static final CUTOFF_EXCITED_PROPORTION:D = 0.01

.field private static final CUTOFF_TONE:D = 10.0

.field private static final TARGET_CHROMA:D = 48.0

.field private static final WEIGHT_CHROMA_ABOVE:D = 0.3

.field private static final WEIGHT_CHROMA_BELOW:D = 0.1

.field private static final WEIGHT_PROPORTION:D = 0.7


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static filter(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/color/utilities/Cam16;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 162
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@8
    move-result-object p1

    #@9
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object p1

    #@d
    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_5c

    #@13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/util/Map$Entry;

    #@19
    .line 163
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/Integer;

    #@1f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@22
    move-result v2

    #@23
    .line 164
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Lcom/google/android/material/color/utilities/Cam16;

    #@29
    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v3

    #@2d
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Ljava/lang/Double;

    #@33
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    #@36
    move-result-wide v3

    #@37
    .line 167
    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    #@3a
    move-result-wide v5

    #@3b
    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    #@3d
    cmpl-double v1, v5, v7

    #@3f
    if-ltz v1, :cond_d

    #@41
    .line 168
    invoke-static {v2}, Lcom/google/android/material/color/utilities/ColorUtils;->lstarFromArgb(I)D

    #@44
    move-result-wide v5

    #@45
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    #@47
    cmpl-double v1, v5, v7

    #@49
    if-ltz v1, :cond_d

    #@4b
    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    #@50
    cmpl-double v1, v3, v5

    #@52
    if-ltz v1, :cond_d

    #@54
    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@57
    move-result-object v1

    #@58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_d

    #@5c
    :cond_5c
    return-object v0
.end method

.method public static score(Ljava/util/Map;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 65
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    const-wide/16 v1, 0x0

    #@a
    move-wide v3, v1

    #@b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_24

    #@11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    check-cast v5, Ljava/util/Map$Entry;

    #@17
    .line 66
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    check-cast v5, Ljava/lang/Integer;

    #@1d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@20
    move-result v5

    #@21
    int-to-double v5, v5

    #@22
    add-double/2addr v3, v5

    #@23
    goto :goto_b

    #@24
    .line 72
    :cond_24
    new-instance v0, Ljava/util/HashMap;

    #@26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@29
    const/16 v5, 0x169

    #@2b
    new-array v5, v5, [D

    #@2d
    .line 74
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@30
    move-result-object p0

    #@31
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object p0

    #@35
    :goto_35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v6

    #@39
    if-eqz v6, :cond_71

    #@3b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v6

    #@3f
    check-cast v6, Ljava/util/Map$Entry;

    #@41
    .line 75
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@44
    move-result-object v7

    #@45
    check-cast v7, Ljava/lang/Integer;

    #@47
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@4a
    move-result v7

    #@4b
    .line 76
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4e
    move-result-object v6

    #@4f
    check-cast v6, Ljava/lang/Integer;

    #@51
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@54
    move-result v6

    #@55
    int-to-double v8, v6

    #@56
    div-double/2addr v8, v3

    #@57
    .line 79
    invoke-static {v7}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    #@5a
    move-result-object v6

    #@5b
    .line 80
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v7

    #@5f
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 82
    invoke-virtual {v6}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    #@65
    move-result-wide v6

    #@66
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    #@69
    move-result-wide v6

    #@6a
    long-to-int v6, v6

    #@6b
    .line 83
    aget-wide v10, v5, v6

    #@6d
    add-double/2addr v10, v8

    #@6e
    aput-wide v10, v5, v6

    #@70
    goto :goto_35

    #@71
    .line 88
    :cond_71
    new-instance p0, Ljava/util/HashMap;

    #@73
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #@76
    .line 89
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@79
    move-result-object v3

    #@7a
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7d
    move-result-object v3

    #@7e
    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@81
    move-result v4

    #@82
    if-eqz v4, :cond_c0

    #@84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@87
    move-result-object v4

    #@88
    check-cast v4, Ljava/util/Map$Entry;

    #@8a
    .line 90
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@8d
    move-result-object v6

    #@8e
    check-cast v6, Ljava/lang/Integer;

    #@90
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@93
    move-result v6

    #@94
    .line 91
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@97
    move-result-object v4

    #@98
    check-cast v4, Lcom/google/android/material/color/utilities/Cam16;

    #@9a
    .line 92
    invoke-virtual {v4}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    #@9d
    move-result-wide v7

    #@9e
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    #@a1
    move-result-wide v7

    #@a2
    long-to-int v4, v7

    #@a3
    add-int/lit8 v7, v4, -0xf

    #@a5
    move-wide v8, v1

    #@a6
    :goto_a6
    add-int/lit8 v10, v4, 0xf

    #@a8
    if-ge v7, v10, :cond_b4

    #@aa
    .line 96
    invoke-static {v7}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    #@ad
    move-result v10

    #@ae
    .line 97
    aget-wide v10, v5, v10

    #@b0
    add-double/2addr v8, v10

    #@b1
    add-int/lit8 v7, v7, 0x1

    #@b3
    goto :goto_a6

    #@b4
    .line 100
    :cond_b4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b7
    move-result-object v4

    #@b8
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@bb
    move-result-object v6

    #@bc
    invoke-interface {p0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bf
    goto :goto_7e

    #@c0
    .line 104
    :cond_c0
    new-instance v1, Ljava/util/HashMap;

    #@c2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@c5
    .line 105
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@c8
    move-result-object v2

    #@c9
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@cc
    move-result-object v2

    #@cd
    :goto_cd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d0
    move-result v3

    #@d1
    if-eqz v3, :cond_128

    #@d3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d6
    move-result-object v3

    #@d7
    check-cast v3, Ljava/util/Map$Entry;

    #@d9
    .line 106
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@dc
    move-result-object v4

    #@dd
    check-cast v4, Ljava/lang/Integer;

    #@df
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@e2
    move-result v4

    #@e3
    .line 107
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@e6
    move-result-object v3

    #@e7
    check-cast v3, Lcom/google/android/material/color/utilities/Cam16;

    #@e9
    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ec
    move-result-object v5

    #@ed
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f0
    move-result-object v5

    #@f1
    check-cast v5, Ljava/lang/Double;

    #@f3
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    #@f6
    move-result-wide v5

    #@f7
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    #@f9
    mul-double/2addr v5, v7

    #@fa
    const-wide v7, 0x3fe6666666666666L    # 0.7

    #@ff
    mul-double/2addr v5, v7

    #@100
    .line 113
    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    #@103
    move-result-wide v7

    #@104
    const-wide/high16 v9, 0x4048000000000000L    # 48.0

    #@106
    cmpg-double v7, v7, v9

    #@108
    if-gez v7, :cond_110

    #@10a
    const-wide v7, 0x3fb999999999999aL    # 0.1

    #@10f
    goto :goto_115

    #@110
    :cond_110
    const-wide v7, 0x3fd3333333333333L    # 0.3

    #@115
    .line 114
    :goto_115
    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    #@118
    move-result-wide v11

    #@119
    sub-double/2addr v11, v9

    #@11a
    mul-double/2addr v11, v7

    #@11b
    add-double/2addr v5, v11

    #@11c
    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11f
    move-result-object v3

    #@120
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@123
    move-result-object v4

    #@124
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@127
    goto :goto_cd

    #@128
    .line 122
    :cond_128
    invoke-static {p0, v0}, Lcom/google/android/material/color/utilities/Score;->filter(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    #@12b
    move-result-object p0

    #@12c
    .line 123
    new-instance v2, Ljava/util/HashMap;

    #@12e
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@131
    .line 124
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@134
    move-result-object p0

    #@135
    :goto_135
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@138
    move-result v3

    #@139
    if-eqz v3, :cond_157

    #@13b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13e
    move-result-object v3

    #@13f
    check-cast v3, Ljava/lang/Integer;

    #@141
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@144
    move-result v3

    #@145
    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@148
    move-result-object v4

    #@149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14c
    move-result-object v3

    #@14d
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@150
    move-result-object v3

    #@151
    check-cast v3, Ljava/lang/Double;

    #@153
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@156
    goto :goto_135

    #@157
    .line 130
    :cond_157
    new-instance p0, Ljava/util/ArrayList;

    #@159
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@15c
    move-result-object v1

    #@15d
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@160
    .line 131
    new-instance v1, Lcom/google/android/material/color/utilities/Score$ScoredComparator;

    #@162
    invoke-direct {v1}, Lcom/google/android/material/color/utilities/Score$ScoredComparator;-><init>()V

    #@165
    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@168
    .line 132
    new-instance v1, Ljava/util/ArrayList;

    #@16a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@16d
    .line 133
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@170
    move-result-object p0

    #@171
    :goto_171
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@174
    move-result v2

    #@175
    if-eqz v2, :cond_1c9

    #@177
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17a
    move-result-object v2

    #@17b
    check-cast v2, Ljava/util/Map$Entry;

    #@17d
    .line 134
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@180
    move-result-object v3

    #@181
    check-cast v3, Ljava/lang/Integer;

    #@183
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@186
    move-result v3

    #@187
    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18a
    move-result-object v3

    #@18b
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18e
    move-result-object v3

    #@18f
    check-cast v3, Lcom/google/android/material/color/utilities/Cam16;

    #@191
    .line 138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@194
    move-result-object v4

    #@195
    :cond_195
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@198
    move-result v5

    #@199
    if-eqz v5, :cond_1bb

    #@19b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19e
    move-result-object v5

    #@19f
    check-cast v5, Ljava/lang/Integer;

    #@1a1
    .line 139
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a4
    move-result-object v5

    #@1a5
    check-cast v5, Lcom/google/android/material/color/utilities/Cam16;

    #@1a7
    .line 140
    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    #@1aa
    move-result-wide v6

    #@1ab
    invoke-virtual {v5}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    #@1ae
    move-result-wide v8

    #@1af
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/material/color/utilities/MathUtils;->differenceDegrees(DD)D

    #@1b2
    move-result-wide v5

    #@1b3
    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    #@1b5
    cmpg-double v5, v5, v7

    #@1b7
    if-gez v5, :cond_195

    #@1b9
    const/4 v3, 0x1

    #@1ba
    goto :goto_1bc

    #@1bb
    :cond_1bb
    const/4 v3, 0x0

    #@1bc
    :goto_1bc
    if-eqz v3, :cond_1bf

    #@1be
    goto :goto_171

    #@1bf
    .line 149
    :cond_1bf
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c2
    move-result-object v2

    #@1c3
    check-cast v2, Ljava/lang/Integer;

    #@1c5
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c8
    goto :goto_171

    #@1c9
    .line 153
    :cond_1c9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@1cc
    move-result p0

    #@1cd
    if-eqz p0, :cond_1d9

    #@1cf
    const p0, -0xbd7a0c

    #@1d2
    .line 154
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d5
    move-result-object p0

    #@1d6
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d9
    :cond_1d9
    return-object v1
.end method

.class public final Lcom/blankj/utilcode/util/RegexUtils;
.super Ljava/lang/Object;
.source "RegexUtils.java"


# static fields
.field private static final CITY_MAP:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 23
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    #@2
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static extractEmailProvider(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "@"

    #@2
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static extractEmailUsername(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, "@"

    #@2
    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    return-object p0
.end method

.method public static getMatches(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_7

    #@2
    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@5
    move-result-object p0

    #@6
    return-object p0

    #@7
    .line 307
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 308
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@f
    move-result-object p0

    #@10
    .line 309
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@13
    move-result-object p0

    #@14
    .line 310
    :goto_14
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    #@17
    move-result p1

    #@18
    if-eqz p1, :cond_22

    #@1a
    .line 311
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@1d
    move-result-object p1

    #@1e
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    goto :goto_14

    #@22
    :cond_22
    return-object v0
.end method

.method public static getReplaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, ""

    #@4
    return-object p0

    #@5
    .line 361
    :cond_5
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@c
    move-result-object p0

    #@d
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    return-object p0
.end method

.method public static getReplaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, ""

    #@4
    return-object p0

    #@5
    .line 343
    :cond_5
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@c
    move-result-object p0

    #@d
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    return-object p0
.end method

.method public static getSplits(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    #@0
    if-nez p0, :cond_6

    #@2
    const/4 p0, 0x0

    #@3
    new-array p0, p0, [Ljava/lang/String;

    #@5
    return-object p0

    #@6
    .line 325
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static isDate(Ljava/lang/CharSequence;)Z
    .registers 2

    #@0
    const-string v0, "^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$"

    #@2
    .line 274
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static isEmail(Ljava/lang/CharSequence;)Z
    .registers 2

    #@0
    const-string v0, "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$"

    #@2
    .line 231
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static isFromAnyOfEmailProviders(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 84
    invoke-static {p0}, Lcom/blankj/utilcode/util/RegexUtils;->extractEmailProvider(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static isFromEmailProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 73
    invoke-static {p0}, Lcom/blankj/utilcode/util/RegexUtils;->extractEmailProvider(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static isIDCard15(Ljava/lang/CharSequence;)Z
    .registers 2

    #@0
    const-string v0, "^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$"

    #@2
    .line 144
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static isIDCard18(Ljava/lang/CharSequence;)Z
    .registers 2

    #@0
    const-string v0, "^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9Xx])$"

    #@2
    .line 154
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static isIDCard18Exact(Ljava/lang/CharSequence;)Z
    .registers 10

    #@0
    .line 164
    invoke-static {p0}, Lcom/blankj/utilcode/util/RegexUtils;->isIDCard18(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_143

    #@7
    const/16 v0, 0x11

    #@9
    new-array v2, v0, [I

    #@b
    .line 165
    fill-array-data v2, :array_144

    #@e
    const/16 v3, 0xb

    #@10
    new-array v4, v3, [C

    #@12
    .line 166
    fill-array-data v4, :array_16a

    #@15
    .line 167
    sget-object v5, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    #@17
    invoke-virtual {v5}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_119

    #@1d
    const-string v6, "11"

    #@1f
    const-string v7, "\u5317\u4eac"

    #@21
    .line 168
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    const-string v6, "12"

    #@26
    const-string v7, "\u5929\u6d25"

    #@28
    .line 169
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    const-string v6, "13"

    #@2d
    const-string v7, "\u6cb3\u5317"

    #@2f
    .line 170
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    const-string v6, "14"

    #@34
    const-string v7, "\u5c71\u897f"

    #@36
    .line 171
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    const-string v6, "15"

    #@3b
    const-string v7, "\u5185\u8499\u53e4"

    #@3d
    .line 172
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    const-string v6, "21"

    #@42
    const-string v7, "\u8fbd\u5b81"

    #@44
    .line 174
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    const-string v6, "22"

    #@49
    const-string v7, "\u5409\u6797"

    #@4b
    .line 175
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    const-string v6, "23"

    #@50
    const-string v7, "\u9ed1\u9f99\u6c5f"

    #@52
    .line 176
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    const-string v6, "31"

    #@57
    const-string v7, "\u4e0a\u6d77"

    #@59
    .line 178
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    const-string v6, "32"

    #@5e
    const-string v7, "\u6c5f\u82cf"

    #@60
    .line 179
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    const-string v6, "33"

    #@65
    const-string v7, "\u6d59\u6c5f"

    #@67
    .line 180
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    const-string v6, "34"

    #@6c
    const-string v7, "\u5b89\u5fbd"

    #@6e
    .line 181
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    const-string v6, "35"

    #@73
    const-string v7, "\u798f\u5efa"

    #@75
    .line 182
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    const-string v6, "36"

    #@7a
    const-string v7, "\u6c5f\u897f"

    #@7c
    .line 183
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    const-string v6, "37"

    #@81
    const-string v7, "\u5c71\u4e1c"

    #@83
    .line 184
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    const-string v6, "41"

    #@88
    const-string v7, "\u6cb3\u5357"

    #@8a
    .line 186
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    const-string v6, "42"

    #@8f
    const-string v7, "\u6e56\u5317"

    #@91
    .line 187
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    const-string v6, "43"

    #@96
    const-string v7, "\u6e56\u5357"

    #@98
    .line 188
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    const-string v6, "44"

    #@9d
    const-string v7, "\u5e7f\u4e1c"

    #@9f
    .line 189
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a2
    const-string v6, "45"

    #@a4
    const-string v7, "\u5e7f\u897f"

    #@a6
    .line 190
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    const-string v6, "46"

    #@ab
    const-string v7, "\u6d77\u5357"

    #@ad
    .line 191
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b0
    const-string v6, "50"

    #@b2
    const-string v7, "\u91cd\u5e86"

    #@b4
    .line 193
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    const-string v6, "51"

    #@b9
    const-string v7, "\u56db\u5ddd"

    #@bb
    .line 194
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@be
    const-string v6, "52"

    #@c0
    const-string v7, "\u8d35\u5dde"

    #@c2
    .line 195
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c5
    const-string v6, "53"

    #@c7
    const-string v7, "\u4e91\u5357"

    #@c9
    .line 196
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cc
    const-string v6, "54"

    #@ce
    const-string v7, "\u897f\u85cf"

    #@d0
    .line 197
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d3
    const-string v6, "61"

    #@d5
    const-string v7, "\u9655\u897f"

    #@d7
    .line 199
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@da
    const-string v6, "62"

    #@dc
    const-string v7, "\u7518\u8083"

    #@de
    .line 200
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e1
    const-string v6, "63"

    #@e3
    const-string v7, "\u9752\u6d77"

    #@e5
    .line 201
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e8
    const-string v6, "64"

    #@ea
    const-string v7, "\u5b81\u590f"

    #@ec
    .line 202
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ef
    const-string v6, "65"

    #@f1
    const-string v7, "\u65b0\u7586"

    #@f3
    .line 203
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f6
    const-string v6, "71"

    #@f8
    const-string v7, "\u53f0\u6e7e\u8001"

    #@fa
    .line 205
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fd
    const-string v6, "81"

    #@ff
    const-string v7, "\u9999\u6e2f"

    #@101
    .line 206
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@104
    const-string v6, "82"

    #@106
    const-string v7, "\u6fb3\u95e8"

    #@108
    .line 207
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10b
    const-string v6, "83"

    #@10d
    const-string v7, "\u53f0\u6e7e\u65b0"

    #@10f
    .line 208
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@112
    const-string v6, "91"

    #@114
    const-string v7, "\u56fd\u5916"

    #@116
    .line 209
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@119
    :cond_119
    const/4 v6, 0x2

    #@11a
    .line 211
    invoke-interface {p0, v1, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@11d
    move-result-object v6

    #@11e
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@121
    move-result-object v6

    #@122
    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@125
    move-result-object v5

    #@126
    if-eqz v5, :cond_143

    #@128
    move v5, v1

    #@129
    move v6, v5

    #@12a
    :goto_12a
    if-ge v5, v0, :cond_139

    #@12c
    .line 214
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@12f
    move-result v7

    #@130
    add-int/lit8 v7, v7, -0x30

    #@132
    aget v8, v2, v5

    #@134
    mul-int/2addr v7, v8

    #@135
    add-int/2addr v6, v7

    #@136
    add-int/lit8 v5, v5, 0x1

    #@138
    goto :goto_12a

    #@139
    .line 216
    :cond_139
    rem-int/2addr v6, v3

    #@13a
    .line 217
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@13d
    move-result p0

    #@13e
    .line 218
    aget-char v0, v4, v6

    #@140
    if-ne p0, v0, :cond_143

    #@142
    const/4 v1, 0x1

    #@143
    :cond_143
    return v1

    #@144
    :array_144
    .array-data 4
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
        0x1
        0x6
        0x3
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
    .end array-data

    #@16a
    :array_16a
    .array-data 2
        0x31s
        0x30s
        0x58s
        0x39s
        0x38s
        0x37s
        0x36s
        0x35s
        0x34s
        0x33s
        0x32s
    .end array-data
.end method

.method public static isIP(Ljava/lang/CharSequence;)Z
    .registers 2

    #@0
    const-string v0, "((2[0-4]\\d|25[0-5]|[01]?\\d\\d?)\\.){3}(2[0-4]\\d|25[0-5]|[01]?\\d\\d?)"

    #@2
    .line 284
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 3

    #@0
    if-eqz p1, :cond_10

    #@2
    .line 295
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_10

    #@8
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@b
    move-result p0

    #@c
    if-eqz p0, :cond_10

    #@e
    const/4 p0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 p0, 0x0

    #@11
    :goto_11
    return p0
.end method

.method public static isMobileExact(Ljava/lang/CharSequence;)Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 98
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/RegexUtils;->isMobileExact(Ljava/lang/CharSequence;Ljava/util/List;)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static isMobileExact(Ljava/lang/CharSequence;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    const-string v0, "^((13[0-9])|(14[579])|(15[0-35-9])|(16[2567])|(17[0-35-8])|(18[0-9])|(19[0-35-9]))\\d{8}$"

    #@2
    .line 109
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-eqz v0, :cond_a

    #@9
    return v1

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    if-nez p1, :cond_e

    #@d
    return v0

    #@e
    :cond_e
    if-eqz p0, :cond_48

    #@10
    .line 112
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@13
    move-result v2

    #@14
    const/16 v3, 0xb

    #@16
    if-eq v2, v3, :cond_19

    #@18
    goto :goto_48

    #@19
    .line 113
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@20
    move-result-object v2

    #@21
    array-length v3, v2

    #@22
    move v4, v0

    #@23
    :goto_23
    if-ge v4, v3, :cond_31

    #@25
    aget-char v5, v2, v4

    #@27
    .line 115
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_2e

    #@2d
    return v0

    #@2e
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    #@30
    goto :goto_23

    #@31
    .line 119
    :cond_31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object p1

    #@35
    :cond_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_48

    #@3b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Ljava/lang/String;

    #@41
    .line 120
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_35

    #@47
    return v1

    #@48
    :cond_48
    :goto_48
    return v0
.end method

.method public static isMobileSimple(Ljava/lang/CharSequence;)Z
    .registers 2

    #@0
    const-string v0, "^[1]\\d{10}$"

    #@2
    .line 40
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static isTel(Ljava/lang/CharSequence;)Z
    .registers 2

    #@0
    const-string v0, "^0\\d{2,3}[- ]?\\d{7,8}$"

    #@2
    .line 134
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static isURL(Ljava/lang/CharSequence;)Z
    .registers 2

    #@0
    const-string v0, "[a-zA-z]+://[^\\s]*"

    #@2
    .line 241
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static isUsername(Ljava/lang/CharSequence;)Z
    .registers 2

    #@0
    const-string v0, "^[\\w\\u4e00-\\u9fa5]{6,20}(?<!_)$"

    #@2
    .line 264
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static isZh(Ljava/lang/CharSequence;)Z
    .registers 2

    #@0
    const-string v0, "^[\\u4e00-\\u9fa5]+$"

    #@2
    .line 251
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

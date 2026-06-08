.class public final Lcom/blankj/utilcode/util/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field private static final TYPE_BOOLEAN:B = 0x0t

.field private static final TYPE_DOUBLE:B = 0x3t

.field private static final TYPE_INT:B = 0x1t

.field private static final TYPE_JSON_ARRAY:B = 0x6t

.field private static final TYPE_JSON_OBJECT:B = 0x5t

.field private static final TYPE_LONG:B = 0x2t

.field private static final TYPE_STRING:B = 0x4t


# direct methods
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

.method public static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x4

    #@1
    .line 235
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/JsonUtils;->formatJson(Ljava/lang/String;I)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static formatJson(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    #@0
    .line 240
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_35

    #@7
    .line 241
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    const/16 v3, 0x7b

    #@d
    if-ne v2, v3, :cond_19

    #@f
    .line 243
    new-instance v0, Lorg/json/JSONObject;

    #@11
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    #@17
    move-result-object p0

    #@18
    return-object p0

    #@19
    :cond_19
    const/16 v3, 0x5b

    #@1b
    if-ne v2, v3, :cond_27

    #@1d
    .line 245
    new-instance v0, Lorg/json/JSONArray;

    #@1f
    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    #@22
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    #@25
    move-result-object p0

    #@26
    return-object p0

    #@27
    .line 246
    :cond_27
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    #@2a
    move-result v2
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2b} :catch_31

    #@2b
    if-nez v2, :cond_2e

    #@2d
    return-object p0

    #@2e
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_5

    #@31
    :catch_31
    move-exception p1

    #@32
    .line 251
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    #@35
    :cond_35
    return-object p0
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 63
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    #@0
    .line 69
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object p2

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Ljava/lang/Boolean;

    #@b
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result p0

    #@f
    return p0
.end method

.method public static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 52
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .registers 4

    #@0
    .line 58
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object p2

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Ljava/lang/Boolean;

    #@b
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result p0

    #@f
    return p0
.end method

.method public static getDouble(Ljava/lang/String;Ljava/lang/String;)D
    .registers 4

    #@0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    #@2
    .line 129
    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getDouble(Ljava/lang/String;Ljava/lang/String;D)D

    #@5
    move-result-wide p0

    #@6
    return-wide p0
.end method

.method public static getDouble(Ljava/lang/String;Ljava/lang/String;D)D
    .registers 4

    #@0
    .line 135
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3
    move-result-object p2

    #@4
    const/4 p3, 0x3

    #@5
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Ljava/lang/Double;

    #@b
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    #@e
    move-result-wide p0

    #@f
    return-wide p0
.end method

.method public static getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D
    .registers 4

    #@0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    #@2
    .line 118
    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D

    #@5
    move-result-wide p0

    #@6
    return-wide p0
.end method

.method public static getDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D
    .registers 4

    #@0
    .line 124
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3
    move-result-object p2

    #@4
    const/4 p3, 0x3

    #@5
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Ljava/lang/Double;

    #@b
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    #@e
    move-result-wide p0

    #@f
    return-wide p0
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    .line 85
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    #@0
    .line 91
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object p2

    #@4
    const/4 v0, 0x1

    #@5
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Ljava/lang/Integer;

    #@b
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@e
    move-result p0

    #@f
    return p0
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    .line 74
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .registers 4

    #@0
    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object p2

    #@4
    const/4 v0, 0x1

    #@5
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Ljava/lang/Integer;

    #@b
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@e
    move-result p0

    #@f
    return p0
.end method

.method public static getJSONArray(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 4

    #@0
    const/4 v0, 0x6

    #@1
    .line 181
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@4
    move-result-object p0

    #@5
    check-cast p0, Lorg/json/JSONArray;

    #@7
    return-object p0
.end method

.method public static getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 4

    #@0
    const/4 v0, 0x6

    #@1
    .line 175
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@4
    move-result-object p0

    #@5
    check-cast p0, Lorg/json/JSONArray;

    #@7
    return-object p0
.end method

.method public static getJSONObject(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    #@0
    const/4 v0, 0x5

    #@1
    .line 169
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@4
    move-result-object p0

    #@5
    check-cast p0, Lorg/json/JSONObject;

    #@7
    return-object p0
.end method

.method public static getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    #@0
    const/4 v0, 0x5

    #@1
    .line 163
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@4
    move-result-object p0

    #@5
    check-cast p0, Lorg/json/JSONObject;

    #@7
    return-object p0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;)J
    .registers 4

    #@0
    const-wide/16 v0, -0x1

    #@2
    .line 107
    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    #@5
    move-result-wide p0

    #@6
    return-wide p0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 4

    #@0
    .line 113
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object p2

    #@4
    const/4 p3, 0x2

    #@5
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Ljava/lang/Long;

    #@b
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@e
    move-result-wide p0

    #@f
    return-wide p0
.end method

.method public static getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .registers 4

    #@0
    const-wide/16 v0, -0x1

    #@2
    .line 96
    invoke-static {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    #@5
    move-result-wide p0

    #@6
    return-wide p0
.end method

.method public static getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .registers 4

    #@0
    .line 102
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object p2

    #@4
    const/4 p3, 0x2

    #@5
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Ljava/lang/Long;

    #@b
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@e
    move-result-wide p0

    #@f
    return-wide p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, ""

    #@2
    .line 151
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    .line 157
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@4
    move-result-object p0

    #@5
    check-cast p0, Ljava/lang/String;

    #@7
    return-object p0
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, ""

    #@2
    .line 140
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    .line 146
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@4
    move-result-object p0

    #@5
    check-cast p0, Ljava/lang/String;

    #@7
    return-object p0
.end method

.method private static getValueByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;B)TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_1f

    #@2
    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1f

    #@8
    if-eqz p1, :cond_1f

    #@a
    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_11

    #@10
    goto :goto_1f

    #@11
    .line 227
    :cond_11
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    #@13
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@16
    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/JsonUtils;->getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;

    #@19
    move-result-object p0
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_1a} :catch_1b

    #@1a
    return-object p0

    #@1b
    :catch_1b
    move-exception p0

    #@1c
    .line 229
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    #@1f
    :cond_1f
    :goto_1f
    return-object p2
.end method

.method private static getValueByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;B)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;B)TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_57

    #@2
    if-eqz p1, :cond_57

    #@4
    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_b

    #@a
    goto :goto_57

    #@b
    :cond_b
    if-nez p3, :cond_18

    #@d
    .line 194
    :try_start_d
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    #@10
    move-result p0

    #@11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@14
    move-result-object p0

    #@15
    goto :goto_53

    #@16
    :catch_16
    move-exception p0

    #@17
    goto :goto_54

    #@18
    :cond_18
    const/4 v0, 0x1

    #@19
    if-ne p3, v0, :cond_24

    #@1b
    .line 196
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    #@1e
    move-result p0

    #@1f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object p0

    #@23
    goto :goto_53

    #@24
    :cond_24
    const/4 v0, 0x2

    #@25
    if-ne p3, v0, :cond_30

    #@27
    .line 198
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    #@2a
    move-result-wide p0

    #@2b
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e
    move-result-object p0

    #@2f
    goto :goto_53

    #@30
    :cond_30
    const/4 v0, 0x3

    #@31
    if-ne p3, v0, :cond_3c

    #@33
    .line 200
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    #@36
    move-result-wide p0

    #@37
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3a
    move-result-object p0

    #@3b
    goto :goto_53

    #@3c
    :cond_3c
    const/4 v0, 0x4

    #@3d
    if-ne p3, v0, :cond_44

    #@3f
    .line 202
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object p0

    #@43
    goto :goto_53

    #@44
    :cond_44
    const/4 v0, 0x5

    #@45
    if-ne p3, v0, :cond_4c

    #@47
    .line 204
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@4a
    move-result-object p0

    #@4b
    goto :goto_53

    #@4c
    :cond_4c
    const/4 v0, 0x6

    #@4d
    if-ne p3, v0, :cond_57

    #@4f
    .line 206
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@52
    move-result-object p0
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_53} :catch_16

    #@53
    :goto_53
    return-object p0

    #@54
    .line 213
    :goto_54
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    #@57
    :cond_57
    :goto_57
    return-object p2
.end method

.method public static isJSONArray(Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    #@0
    .line 47
    instance-of p0, p0, Lorg/json/JSONArray;

    #@2
    return p0
.end method

.method public static isJSONObject(Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    #@0
    .line 37
    instance-of p0, p0, Lorg/json/JSONObject;

    #@2
    return p0
.end method

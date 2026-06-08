.class final Lcom/blankj/utilcode/util/LogUtils$LogFormatter;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogFormatter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static array2String(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    #@0
    .line 1150
    instance-of v0, p0, [Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 1151
    check-cast p0, [Ljava/lang/Object;

    #@6
    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 1152
    :cond_b
    instance-of v0, p0, [Z

    #@d
    if-eqz v0, :cond_16

    #@f
    .line 1153
    check-cast p0, [Z

    #@11
    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    return-object p0

    #@16
    .line 1154
    :cond_16
    instance-of v0, p0, [B

    #@18
    if-eqz v0, :cond_21

    #@1a
    .line 1155
    check-cast p0, [B

    #@1c
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@1f
    move-result-object p0

    #@20
    return-object p0

    #@21
    .line 1156
    :cond_21
    instance-of v0, p0, [C

    #@23
    if-eqz v0, :cond_2c

    #@25
    .line 1157
    check-cast p0, [C

    #@27
    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    #@2a
    move-result-object p0

    #@2b
    return-object p0

    #@2c
    .line 1158
    :cond_2c
    instance-of v0, p0, [D

    #@2e
    if-eqz v0, :cond_37

    #@30
    .line 1159
    check-cast p0, [D

    #@32
    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    #@35
    move-result-object p0

    #@36
    return-object p0

    #@37
    .line 1160
    :cond_37
    instance-of v0, p0, [F

    #@39
    if-eqz v0, :cond_42

    #@3b
    .line 1161
    check-cast p0, [F

    #@3d
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    #@40
    move-result-object p0

    #@41
    return-object p0

    #@42
    .line 1162
    :cond_42
    instance-of v0, p0, [I

    #@44
    if-eqz v0, :cond_4d

    #@46
    .line 1163
    check-cast p0, [I

    #@48
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@4b
    move-result-object p0

    #@4c
    return-object p0

    #@4d
    .line 1164
    :cond_4d
    instance-of v0, p0, [J

    #@4f
    if-eqz v0, :cond_58

    #@51
    .line 1165
    check-cast p0, [J

    #@53
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    #@56
    move-result-object p0

    #@57
    return-object p0

    #@58
    .line 1166
    :cond_58
    instance-of v0, p0, [S

    #@5a
    if-eqz v0, :cond_63

    #@5c
    .line 1167
    check-cast p0, [S

    #@5e
    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    #@61
    move-result-object p0

    #@62
    return-object p0

    #@63
    .line 1169
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@65
    new-instance v1, Ljava/lang/StringBuilder;

    #@67
    const-string v2, "Array has incompatible type: "

    #@69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6f
    move-result-object p0

    #@70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object p0

    #@74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object p0

    #@78
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v0
.end method

.method private static bundle2String(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6

    #@0
    .line 936
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    .line 937
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_11

    #@e
    const-string p0, "Bundle {}"

    #@10
    return-object p0

    #@11
    .line 940
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    const/16 v2, 0x80

    #@15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@18
    const-string v2, "Bundle { "

    #@1a
    .line 941
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 943
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Ljava/lang/String;

    #@23
    .line 944
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    .line 945
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    const/16 v4, 0x3d

    #@2d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 946
    instance-of v2, v3, Landroid/os/Bundle;

    #@32
    if-eqz v2, :cond_43

    #@34
    if-ne v3, p0, :cond_39

    #@36
    const-string v2, "(this Bundle)"

    #@38
    goto :goto_3f

    #@39
    .line 947
    :cond_39
    check-cast v3, Landroid/os/Bundle;

    #@3b
    invoke-static {v3}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->bundle2String(Landroid/os/Bundle;)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    :goto_3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    goto :goto_4a

    #@43
    .line 949
    :cond_43
    # invokes: Lcom/blankj/utilcode/util/LogUtils;->formatObject(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v3}, Lcom/blankj/utilcode/util/LogUtils;->access$1500(Ljava/lang/Object;)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 951
    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v2

    #@4e
    if-nez v2, :cond_5b

    #@50
    const-string p0, " }"

    #@52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object p0

    #@56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object p0

    #@5a
    return-object p0

    #@5b
    :cond_5b
    const-string v2, ", "

    #@5d
    .line 952
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    goto :goto_1d
.end method

.method private static clipData2String(Landroid/content/ClipData;Ljava/lang/StringBuilder;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 1068
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@4
    move-result-object p0

    #@5
    if-nez p0, :cond_d

    #@7
    const-string p0, "ClipData.Item {}"

    #@9
    .line 1070
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    return-void

    #@d
    :cond_d
    const-string v0, "ClipData.Item { "

    #@f
    .line 1073
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 1074
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    const-string v1, "}"

    #@18
    if-eqz v0, :cond_26

    #@1a
    const-string p0, "H:"

    #@1c
    .line 1076
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 1077
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 1078
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    return-void

    #@26
    .line 1081
    :cond_26
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    #@29
    move-result-object v0

    #@2a
    if-eqz v0, :cond_38

    #@2c
    const-string p0, "T:"

    #@2e
    .line 1083
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 1084
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@34
    .line 1085
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    return-void

    #@38
    .line 1088
    :cond_38
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@3b
    move-result-object v0

    #@3c
    if-eqz v0, :cond_4b

    #@3e
    const-string p0, "U:"

    #@40
    .line 1090
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object p0

    #@44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    .line 1091
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    return-void

    #@4b
    .line 1094
    :cond_4b
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@4e
    move-result-object p0

    #@4f
    if-eqz p0, :cond_61

    #@51
    const-string v0, "I:"

    #@53
    .line 1096
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 1097
    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->intent2String(Landroid/content/Intent;)Ljava/lang/String;

    #@59
    move-result-object p0

    #@5a
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 1098
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    return-void

    #@61
    :cond_61
    const-string p0, "NULL"

    #@63
    .line 1101
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 1102
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    return-void
.end method

.method private static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    #@0
    .line 1118
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_36

    #@7
    .line 1119
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    const/16 v3, 0x7b

    #@d
    const/4 v4, 0x2

    #@e
    if-ne v2, v3, :cond_1a

    #@10
    .line 1121
    new-instance v0, Lorg/json/JSONObject;

    #@12
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    #@18
    move-result-object p0

    #@19
    return-object p0

    #@1a
    :cond_1a
    const/16 v3, 0x5b

    #@1c
    if-ne v2, v3, :cond_28

    #@1e
    .line 1123
    new-instance v0, Lorg/json/JSONArray;

    #@20
    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    #@23
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    #@26
    move-result-object p0

    #@27
    return-object p0

    #@28
    .line 1124
    :cond_28
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    #@2b
    move-result v2
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2c} :catch_32

    #@2c
    if-nez v2, :cond_2f

    #@2e
    return-object p0

    #@2f
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_5

    #@32
    :catch_32
    move-exception v0

    #@33
    .line 1129
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    #@36
    :cond_36
    return-object p0
.end method

.method private static formatXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    #@0
    const-string v0, ">"

    #@2
    .line 1136
    :try_start_2
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    #@4
    new-instance v2, Ljava/io/StringReader;

    #@6
    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@9
    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    #@c
    .line 1137
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    #@e
    new-instance v3, Ljava/io/StringWriter;

    #@10
    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    #@13
    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    #@16
    .line 1138
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    #@1d
    move-result-object v3

    #@1e
    const-string v4, "indent"

    #@20
    const-string v5, "yes"

    #@22
    .line 1139
    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    const-string v4, "{http://xml.apache.org/xslt}indent-amount"

    #@27
    const-string v5, "2"

    #@29
    .line 1140
    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 1141
    invoke-virtual {v3, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    #@2f
    .line 1142
    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3c
    # getter for: Lcom/blankj/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object p0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_4d

    #@4c
    goto :goto_51

    #@4d
    :catch_4d
    move-exception v0

    #@4e
    .line 1144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@51
    :goto_51
    return-object p0
.end method

.method private static intent2String(Landroid/content/Intent;)Ljava/lang/String;
    .registers 7

    #@0
    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    const-string v1, "Intent { "

    #@9
    .line 958
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 960
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x0

    #@11
    const/4 v3, 0x1

    #@12
    if-eqz v1, :cond_1f

    #@14
    const-string v4, "act="

    #@16
    .line 962
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move v1, v2

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v1, v3

    #@20
    .line 965
    :goto_20
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@23
    move-result-object v4

    #@24
    const/16 v5, 0x20

    #@26
    if-eqz v4, :cond_54

    #@28
    if-nez v1, :cond_2d

    #@2a
    .line 968
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    :cond_2d
    const-string v1, "cat=["

    #@2f
    .line 971
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 973
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v1

    #@36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_4e

    #@3c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    check-cast v4, Ljava/lang/String;

    #@42
    if-nez v3, :cond_49

    #@44
    const/16 v3, 0x2c

    #@46
    .line 975
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    .line 977
    :cond_49
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move v3, v2

    #@4d
    goto :goto_36

    #@4e
    :cond_4e
    const-string v1, "]"

    #@50
    .line 980
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move v1, v2

    #@54
    .line 982
    :cond_54
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@57
    move-result-object v3

    #@58
    if-eqz v3, :cond_69

    #@5a
    if-nez v1, :cond_5f

    #@5c
    .line 985
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5f
    :cond_5f
    const-string v1, "dat="

    #@61
    .line 988
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move v1, v2

    #@69
    .line 990
    :cond_69
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    if-eqz v3, :cond_7e

    #@6f
    if-nez v1, :cond_74

    #@71
    .line 993
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@74
    :cond_74
    const-string v1, "typ="

    #@76
    .line 996
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move v1, v2

    #@7e
    .line 998
    :cond_7e
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    #@81
    move-result v3

    #@82
    if-eqz v3, :cond_97

    #@84
    if-nez v1, :cond_89

    #@86
    .line 1001
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@89
    :cond_89
    const-string v1, "flg=0x"

    #@8b
    .line 1004
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@92
    move-result-object v3

    #@93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move v1, v2

    #@97
    .line 1006
    :cond_97
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    #@9a
    move-result-object v3

    #@9b
    if-eqz v3, :cond_ac

    #@9d
    if-nez v1, :cond_a2

    #@9f
    .line 1009
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a2
    :cond_a2
    const-string v1, "pkg="

    #@a4
    .line 1012
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move v1, v2

    #@ac
    .line 1014
    :cond_ac
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@af
    move-result-object v3

    #@b0
    if-eqz v3, :cond_c5

    #@b2
    if-nez v1, :cond_b7

    #@b4
    .line 1017
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b7
    :cond_b7
    const-string v1, "cmp="

    #@b9
    .line 1020
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move v1, v2

    #@c5
    .line 1022
    :cond_c5
    invoke-virtual {p0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@c8
    move-result-object v3

    #@c9
    if-eqz v3, :cond_de

    #@cb
    if-nez v1, :cond_d0

    #@cd
    .line 1025
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d0
    :cond_d0
    const-string v1, "bnds="

    #@d2
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@d9
    move-result-object v3

    #@da
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move v1, v2

    #@de
    .line 1031
    :cond_de
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    #@e1
    move-result-object v3

    #@e2
    if-eqz v3, :cond_ed

    #@e4
    if-nez v1, :cond_e9

    #@e6
    .line 1034
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e9
    .line 1037
    :cond_e9
    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->clipData2String(Landroid/content/ClipData;Ljava/lang/StringBuilder;)V

    #@ec
    move v1, v2

    #@ed
    .line 1040
    :cond_ed
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@f0
    move-result-object v3

    #@f1
    if-eqz v3, :cond_10a

    #@f3
    if-nez v1, :cond_f8

    #@f5
    .line 1043
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f8
    :cond_f8
    const-string v1, "extras={"

    #@fa
    .line 1046
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    .line 1047
    invoke-static {v3}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->bundle2String(Landroid/os/Bundle;)Ljava/lang/String;

    #@100
    move-result-object v1

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    const/16 v1, 0x7d

    #@106
    .line 1048
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@109
    goto :goto_10b

    #@10a
    :cond_10a
    move v2, v1

    #@10b
    .line 1051
    :goto_10b
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    #@10e
    move-result-object v1

    #@10f
    if-eqz v1, :cond_12c

    #@111
    if-nez v2, :cond_116

    #@113
    .line 1054
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@116
    :cond_116
    const-string v2, "sel={"

    #@118
    .line 1057
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    if-ne v1, p0, :cond_120

    #@11d
    const-string p0, "(this Intent)"

    #@11f
    goto :goto_124

    #@120
    .line 1058
    :cond_120
    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->intent2String(Landroid/content/Intent;)Ljava/lang/String;

    #@123
    move-result-object p0

    #@124
    :goto_124
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    const-string p0, "}"

    #@129
    .line 1059
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    :cond_12c
    const-string p0, " }"

    #@12e
    .line 1062
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    .line 1063
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object p0

    #@135
    return-object p0
.end method

.method private static object2Json(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    #@0
    .line 1106
    instance-of v0, p0, Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_d

    #@4
    .line 1107
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    return-object p0

    #@d
    .line 1110
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getGson4LogUtils()Lcom/google/gson/Gson;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object p0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    #@15
    return-object p0

    #@16
    .line 1112
    :catchall_16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@19
    move-result-object p0

    #@1a
    return-object p0
.end method

.method static object2String(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    .line 918
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->object2String(Ljava/lang/Object;I)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method static object2String(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 3

    #@0
    .line 922
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_f

    #@a
    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->array2String(Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object p0

    #@e
    return-object p0

    #@f
    .line 923
    :cond_f
    instance-of v0, p0, Ljava/lang/Throwable;

    #@11
    if-eqz v0, :cond_1a

    #@13
    .line 924
    check-cast p0, Ljava/lang/Throwable;

    #@15
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    #@18
    move-result-object p0

    #@19
    return-object p0

    #@1a
    .line 925
    :cond_1a
    instance-of v0, p0, Landroid/os/Bundle;

    #@1c
    if-eqz v0, :cond_25

    #@1e
    check-cast p0, Landroid/os/Bundle;

    #@20
    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->bundle2String(Landroid/os/Bundle;)Ljava/lang/String;

    #@23
    move-result-object p0

    #@24
    return-object p0

    #@25
    .line 926
    :cond_25
    instance-of v0, p0, Landroid/content/Intent;

    #@27
    if-eqz v0, :cond_30

    #@29
    check-cast p0, Landroid/content/Intent;

    #@2b
    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->intent2String(Landroid/content/Intent;)Ljava/lang/String;

    #@2e
    move-result-object p0

    #@2f
    return-object p0

    #@30
    :cond_30
    const/16 v0, 0x20

    #@32
    if-ne p1, v0, :cond_39

    #@34
    .line 928
    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->object2Json(Ljava/lang/Object;)Ljava/lang/String;

    #@37
    move-result-object p0

    #@38
    return-object p0

    #@39
    :cond_39
    const/16 v0, 0x30

    #@3b
    if-ne p1, v0, :cond_46

    #@3d
    .line 930
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@40
    move-result-object p0

    #@41
    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils$LogFormatter;->formatXml(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object p0

    #@45
    return-object p0

    #@46
    .line 932
    :cond_46
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@49
    move-result-object p0

    #@4a
    return-object p0
.end method

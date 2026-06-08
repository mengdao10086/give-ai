.class public final Landroidx/core/net/MailTo;
.super Ljava/lang/Object;
.source "MailTo.java"


# static fields
.field private static final BCC:Ljava/lang/String; = "bcc"

.field private static final BODY:Ljava/lang/String; = "body"

.field private static final CC:Ljava/lang/String; = "cc"

.field private static final MAILTO:Ljava/lang/String; = "mailto"

.field public static final MAILTO_SCHEME:Ljava/lang/String; = "mailto:"

.field private static final SUBJECT:Ljava/lang/String; = "subject"

.field private static final TO:Ljava/lang/String; = "to"


# instance fields
.field private mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@a
    return-void
.end method

.method public static isMailTo(Landroid/net/Uri;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_10

    #@2
    const-string v0, "mailto"

    #@4
    .line 89
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isMailTo(Ljava/lang/String;)Z
    .registers 2

    #@0
    if-eqz p0, :cond_c

    #@2
    const-string v0, "mailto:"

    #@4
    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result p0

    #@8
    if-eqz p0, :cond_c

    #@a
    const/4 p0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p0, 0x0

    #@d
    :goto_d
    return p0
.end method

.method public static parse(Landroid/net/Uri;)Landroidx/core/net/MailTo;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/core/net/ParseException;
        }
    .end annotation

    #@0
    .line 178
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Landroidx/core/net/MailTo;->parse(Ljava/lang/String;)Landroidx/core/net/MailTo;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Landroidx/core/net/MailTo;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/core/net/ParseException;
        }
    .end annotation

    #@0
    .line 107
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 109
    invoke-static {p0}, Landroidx/core/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_9c

    #@9
    const/16 v0, 0x23

    #@b
    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v0

    #@f
    const/4 v1, -0x1

    #@10
    const/4 v2, 0x0

    #@11
    if-eq v0, v1, :cond_17

    #@13
    .line 116
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object p0

    #@17
    :cond_17
    const/16 v0, 0x3f

    #@19
    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@1c
    move-result v0

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x7

    #@1f
    const/4 v5, 0x1

    #@20
    if-ne v0, v1, :cond_2d

    #@22
    .line 123
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@25
    move-result-object p0

    #@26
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object p0

    #@2a
    move-object v1, p0

    #@2b
    move-object p0, v3

    #@2c
    goto :goto_3a

    #@2d
    .line 126
    :cond_2d
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    add-int/2addr v0, v5

    #@36
    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@39
    move-result-object p0

    #@3a
    .line 130
    :goto_3a
    new-instance v0, Landroidx/core/net/MailTo;

    #@3c
    invoke-direct {v0}, Landroidx/core/net/MailTo;-><init>()V

    #@3f
    if-eqz p0, :cond_77

    #@41
    const-string v4, "&"

    #@43
    .line 135
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@46
    move-result-object p0

    #@47
    .line 136
    array-length v4, p0

    #@48
    move v6, v2

    #@49
    :goto_49
    if-ge v6, v4, :cond_77

    #@4b
    aget-object v7, p0, v6

    #@4d
    const-string v8, "="

    #@4f
    const/4 v9, 0x2

    #@50
    .line 137
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@53
    move-result-object v7

    #@54
    .line 138
    array-length v8, v7

    #@55
    if-nez v8, :cond_58

    #@57
    goto :goto_74

    #@58
    .line 144
    :cond_58
    aget-object v8, v7, v2

    #@5a
    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@60
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    .line 145
    array-length v9, v7

    #@65
    if-le v9, v5, :cond_6e

    #@67
    .line 146
    aget-object v7, v7, v5

    #@69
    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    goto :goto_6f

    #@6e
    :cond_6e
    move-object v7, v3

    #@6f
    .line 148
    :goto_6f
    iget-object v9, v0, Landroidx/core/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@71
    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    :goto_74
    add-int/lit8 v6, v6, 0x1

    #@76
    goto :goto_49

    #@77
    .line 154
    :cond_77
    invoke-virtual {v0}, Landroidx/core/net/MailTo;->getTo()Ljava/lang/String;

    #@7a
    move-result-object p0

    #@7b
    if-eqz p0, :cond_94

    #@7d
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    const-string v2, ", "

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object p0

    #@90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    .line 158
    :cond_94
    iget-object p0, v0, Landroidx/core/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@96
    const-string v2, "to"

    #@98
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    return-object v0

    #@9c
    .line 110
    :cond_9c
    new-instance p0, Landroidx/core/net/ParseException;

    #@9e
    const-string v0, "Not a mailto scheme"

    #@a0
    invoke-direct {p0, v0}, Landroidx/core/net/ParseException;-><init>(Ljava/lang/String;)V

    #@a3
    throw p0
.end method


# virtual methods
.method public getBcc()Ljava/lang/String;
    .registers 3

    #@0
    .line 211
    iget-object v0, p0, Landroidx/core/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@2
    const-string v1, "bcc"

    #@4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .registers 3

    #@0
    .line 231
    iget-object v0, p0, Landroidx/core/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@2
    const-string v1, "body"

    #@4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getCc()Ljava/lang/String;
    .registers 3

    #@0
    .line 200
    iget-object v0, p0, Landroidx/core/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@2
    const-string v1, "cc"

    #@4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 240
    iget-object v0, p0, Landroidx/core/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 3

    #@0
    .line 221
    iget-object v0, p0, Landroidx/core/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@2
    const-string v1, "subject"

    #@4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .registers 3

    #@0
    .line 189
    iget-object v0, p0, Landroidx/core/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@2
    const-string v1, "to"

    #@4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "mailto:?"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 248
    iget-object v1, p0, Landroidx/core/net/MailTo;->mHeaders:Ljava/util/HashMap;

    #@9
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_42

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Ljava/util/Map$Entry;

    #@1d
    .line 249
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Ljava/lang/String;

    #@23
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    const/16 v3, 0x3d

    #@2c
    .line 250
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 251
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Ljava/lang/String;

    #@35
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    const/16 v2, 0x26

    #@3e
    .line 252
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    goto :goto_11

    #@42
    .line 254
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    return-object v0
.end method

.class public final Landroidx/core/net/UriCompat;
.super Ljava/lang/Object;
.source "UriCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static toSafeString(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8

    #@0
    .line 40
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 41
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const/16 v2, 0x3a

    #@a
    const/16 v3, 0x40

    #@c
    if-eqz v0, :cond_d5

    #@e
    const-string v4, "tel"

    #@10
    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_a1

    #@16
    const-string v4, "sip"

    #@18
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_a1

    #@1e
    const-string v4, "sms"

    #@20
    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v4

    #@24
    if-nez v4, :cond_a1

    #@26
    const-string v4, "smsto"

    #@28
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_a1

    #@2e
    const-string v4, "mailto"

    #@30
    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@33
    move-result v4

    #@34
    if-nez v4, :cond_a1

    #@36
    const-string v4, "nfc"

    #@38
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_3f

    #@3e
    goto :goto_a1

    #@3f
    :cond_3f
    const-string v4, "http"

    #@41
    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@44
    move-result v4

    #@45
    if-nez v4, :cond_5f

    #@47
    const-string v4, "https"

    #@49
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4c
    move-result v4

    #@4d
    if-nez v4, :cond_5f

    #@4f
    const-string v4, "ftp"

    #@51
    .line 61
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@54
    move-result v4

    #@55
    if-nez v4, :cond_5f

    #@57
    const-string v4, "rtsp"

    #@59
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5c
    move-result v4

    #@5d
    if-eqz v4, :cond_d5

    #@5f
    .line 62
    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    const-string v4, "//"

    #@63
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@66
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    const-string v5, ""

    #@6c
    if-eqz v4, :cond_73

    #@6e
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    goto :goto_74

    #@73
    :cond_73
    move-object v4, v5

    #@74
    :goto_74
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    .line 63
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    #@7b
    move-result v4

    #@7c
    const/4 v6, -0x1

    #@7d
    if-eq v4, v6, :cond_92

    #@7f
    new-instance v4, Ljava/lang/StringBuilder;

    #@81
    const-string v5, ":"

    #@83
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@86
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    #@89
    move-result p0

    #@8a
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object p0

    #@8e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v5

    #@92
    :cond_92
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object p0

    #@96
    const-string v1, "/..."

    #@98
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object p0

    #@9c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    goto :goto_d5

    #@a1
    .line 46
    :cond_a1
    :goto_a1
    new-instance p0, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a6
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    .line 48
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ac
    if-eqz v1, :cond_d0

    #@ae
    const/4 v0, 0x0

    #@af
    .line 50
    :goto_af
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@b2
    move-result v2

    #@b3
    if-ge v0, v2, :cond_d0

    #@b5
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@b8
    move-result v2

    #@b9
    const/16 v4, 0x2d

    #@bb
    if-eq v2, v4, :cond_ca

    #@bd
    if-eq v2, v3, :cond_ca

    #@bf
    const/16 v4, 0x2e

    #@c1
    if-ne v2, v4, :cond_c4

    #@c3
    goto :goto_ca

    #@c4
    :cond_c4
    const/16 v2, 0x78

    #@c6
    .line 55
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c9
    goto :goto_cd

    #@ca
    .line 53
    :cond_ca
    :goto_ca
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@cd
    :goto_cd
    add-int/lit8 v0, v0, 0x1

    #@cf
    goto :goto_af

    #@d0
    .line 59
    :cond_d0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object p0

    #@d4
    return-object p0

    #@d5
    .line 70
    :cond_d5
    :goto_d5
    new-instance p0, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@da
    if-eqz v0, :cond_e2

    #@dc
    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    .line 73
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e2
    :cond_e2
    if-eqz v1, :cond_e7

    #@e4
    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    .line 78
    :cond_e7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object p0

    #@eb
    return-object p0
.end method

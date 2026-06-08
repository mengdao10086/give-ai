.class Landroidx/core/content/FileProvider$SimplePathStrategy;
.super Ljava/lang/Object;
.source "FileProvider.java"

# interfaces
.implements Landroidx/core/content/FileProvider$PathStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/FileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimplePathStrategy"
.end annotation


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mRoots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 779
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    #@a
    .line 782
    iput-object p1, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mAuthority:Ljava/lang/String;

    #@c
    return-void
.end method


# virtual methods
.method addRoot(Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    #@0
    .line 790
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_26

    #@6
    .line 796
    :try_start_6
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    #@9
    move-result-object p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_10

    #@a
    .line 802
    iget-object v0, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    #@c
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    return-void

    #@10
    :catch_10
    move-exception p1

    #@11
    .line 798
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    const-string v2, "Failed to resolve canonical path for "

    #@17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p2

    #@1e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object p2

    #@22
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@25
    throw v0

    #@26
    .line 791
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@28
    const-string p2, "Name must not be empty"

    #@2a
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw p1
.end method

.method public getFileForUri(Landroid/net/Uri;)Ljava/io/File;
    .registers 6

    #@0
    .line 845
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x2f

    #@6
    const/4 v2, 0x1

    #@7
    .line 847
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    #@a
    move-result v1

    #@b
    .line 848
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    add-int/2addr v1, v2

    #@14
    .line 849
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 851
    iget-object v1, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Ljava/io/File;

    #@24
    if-eqz v1, :cond_5b

    #@26
    .line 856
    new-instance p1, Ljava/io/File;

    #@28
    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2b
    .line 858
    :try_start_2b
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    #@2e
    move-result-object p1
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2f} :catch_46

    #@2f
    .line 863
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_3e

    #@3d
    return-object p1

    #@3e
    .line 864
    :cond_3e
    new-instance p1, Ljava/lang/SecurityException;

    #@40
    const-string v0, "Resolved path jumped beyond configured root"

    #@42
    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@45
    throw p1

    #@46
    .line 860
    :catch_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@48
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    const-string v2, "Failed to resolve canonical path for "

    #@4c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object p1

    #@53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object p1

    #@57
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v0

    #@5b
    .line 853
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5d
    new-instance v1, Ljava/lang/StringBuilder;

    #@5f
    const-string v2, "Unable to find configured root for "

    #@61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object p1

    #@68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object p1

    #@6c
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v0
.end method

.method public getUriForFile(Ljava/io/File;)Landroid/net/Uri;
    .registers 7

    #@0
    .line 809
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@3
    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_be

    #@4
    .line 816
    iget-object v0, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    #@6
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    const/4 v1, 0x0

    #@f
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_43

    #@15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Ljava/util/Map$Entry;

    #@1b
    .line 817
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Ljava/io/File;

    #@21
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 818
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_f

    #@2b
    if-eqz v1, :cond_41

    #@2d
    .line 819
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@30
    move-result v3

    #@31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Ljava/io/File;

    #@37
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@3e
    move-result v4

    #@3f
    if-le v3, v4, :cond_f

    #@41
    :cond_41
    move-object v1, v2

    #@42
    goto :goto_f

    #@43
    :cond_43
    if-eqz v1, :cond_a9

    #@45
    .line 830
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Ljava/io/File;

    #@4b
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    const-string v2, "/"

    #@51
    .line 831
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@54
    move-result v3

    #@55
    if-eqz v3, :cond_60

    #@57
    .line 832
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5a
    move-result v0

    #@5b
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5e
    move-result-object p1

    #@5f
    goto :goto_6a

    #@60
    .line 834
    :cond_60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@63
    move-result v0

    #@64
    add-int/lit8 v0, v0, 0x1

    #@66
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@69
    move-result-object p1

    #@6a
    .line 838
    :goto_6a
    new-instance v0, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@72
    move-result-object v1

    #@73
    check-cast v1, Ljava/lang/String;

    #@75
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    const/16 v1, 0x2f

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    invoke-static {p1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object p1

    #@87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object p1

    #@8b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object p1

    #@8f
    .line 839
    new-instance v0, Landroid/net/Uri$Builder;

    #@91
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@94
    const-string v1, "content"

    #@96
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@99
    move-result-object v0

    #@9a
    iget-object v1, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mAuthority:Ljava/lang/String;

    #@9c
    .line 840
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@9f
    move-result-object v0

    #@a0
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@a3
    move-result-object p1

    #@a4
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@a7
    move-result-object p1

    #@a8
    return-object p1

    #@a9
    .line 825
    :cond_a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@ab
    new-instance v1, Ljava/lang/StringBuilder;

    #@ad
    const-string v2, "Failed to find configured root that contains "

    #@af
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object p1

    #@b6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object p1

    #@ba
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bd
    throw v0

    #@be
    .line 811
    :catch_be
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c0
    new-instance v1, Ljava/lang/StringBuilder;

    #@c2
    const-string v2, "Failed to resolve canonical path for "

    #@c4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object p1

    #@cb
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object p1

    #@cf
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d2
    throw v0
.end method

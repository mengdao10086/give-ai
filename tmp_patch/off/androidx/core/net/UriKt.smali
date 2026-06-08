.class public final Landroidx/core/net/UriKt;
.super Ljava/lang/Object;
.source "Uri.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUri.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uri.kt\nandroidx/core/net/UriKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,46:1\n1#2:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\r\u0010\u0003\u001a\u00020\u0002*\u00020\u0001H\u0086\u0008\u001a\r\u0010\u0003\u001a\u00020\u0002*\u00020\u0004H\u0086\u0008\u00a8\u0006\u0005"
    }
    d2 = {
        "toFile",
        "Ljava/io/File;",
        "Landroid/net/Uri;",
        "toUri",
        "",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toFile(Landroid/net/Uri;)Ljava/io/File;
    .registers 3

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 43
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    const-string v1, "file"

    #@b
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_36

    #@11
    .line 44
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_1d

    #@17
    new-instance p0, Ljava/io/File;

    #@19
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1c
    return-object p0

    #@1d
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    const-string v1, "Uri path is null: "

    #@21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object p0

    #@28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object p0

    #@2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@31
    move-result-object p0

    #@32
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 43
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    #@38
    const-string v1, "Uri lacks \'file\' scheme: "

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object p0

    #@41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object p0

    #@45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@47
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@4a
    move-result-object p0

    #@4b
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v0
.end method

.method public static final toUri(Ljava/io/File;)Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 36
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@8
    move-result-object p0

    #@9
    const-string v0, "fromFile(this)"

    #@b
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@e
    return-object p0
.end method

.method public static final toUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "<this>"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 29
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object p0

    #@9
    const-string v0, "parse(this)"

    #@b
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@e
    return-object p0
.end method

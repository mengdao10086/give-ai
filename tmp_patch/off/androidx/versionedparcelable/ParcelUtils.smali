.class public Landroidx/versionedparcelable/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# static fields
.field private static final INNER_BUNDLE_KEY:Ljava/lang/String; = "a"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static fromInputStream(Ljava/io/InputStream;)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 82
    new-instance v0, Landroidx/versionedparcelable/VersionedParcelStream;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@6
    .line 83
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcelStream;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 58
    instance-of v0, p0, Landroidx/versionedparcelable/ParcelImpl;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 61
    check-cast p0, Landroidx/versionedparcelable/ParcelImpl;

    #@6
    invoke-virtual {p0}, Landroidx/versionedparcelable/ParcelImpl;->getVersionedParcel()Landroidx/versionedparcelable/VersionedParcelable;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 59
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string v0, "Invalid parcel"

    #@f
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw p0
.end method

.method public static getVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 109
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@4
    move-result-object p0

    #@5
    check-cast p0, Landroid/os/Bundle;

    #@7
    if-nez p0, :cond_a

    #@9
    return-object v0

    #@a
    .line 113
    :cond_a
    const-class p1, Landroidx/versionedparcelable/ParcelUtils;

    #@c
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@f
    move-result-object p1

    #@10
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@13
    const-string p1, "a"

    #@15
    .line 114
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@18
    move-result-object p0

    #@19
    invoke-static {p0}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    #@1c
    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1d} :catch_1e

    #@1d
    return-object p0

    #@1e
    :catch_1e
    return-object v0
.end method

.method public static getVersionedParcelableList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 146
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@8
    move-result-object p0

    #@9
    check-cast p0, Landroid/os/Bundle;

    #@b
    .line 147
    const-class p1, Landroidx/versionedparcelable/ParcelUtils;

    #@d
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@10
    move-result-object p1

    #@11
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@14
    const-string p1, "a"

    #@16
    .line 149
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@19
    move-result-object p0

    #@1a
    .line 150
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object p0

    #@1e
    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result p1

    #@22
    if-eqz p1, :cond_32

    #@24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object p1

    #@28
    check-cast p1, Landroid/os/Parcelable;

    #@2a
    .line 151
    invoke-static {p1}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    #@2d
    move-result-object p1

    #@2e
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_31} :catch_33

    #@31
    goto :goto_1e

    #@32
    :cond_32
    return-object v0

    #@33
    :catch_33
    const/4 p0, 0x0

    #@34
    return-object p0
.end method

.method public static putVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcelable;)V
    .registers 5

    #@0
    if-nez p2, :cond_3

    #@2
    return-void

    #@3
    .line 94
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@8
    const-string v1, "a"

    #@a
    .line 95
    invoke-static {p2}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    #@d
    move-result-object p2

    #@e
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@11
    .line 96
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@14
    return-void
.end method

.method public static putVersionedParcelableList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 126
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 127
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 128
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object p2

    #@e
    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_22

    #@14
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroidx/versionedparcelable/VersionedParcelable;

    #@1a
    .line 129
    invoke-static {v2}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    goto :goto_e

    #@22
    :cond_22
    const-string p2, "a"

    #@24
    .line 131
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@27
    .line 132
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@2a
    return-void
.end method

.method public static toOutputStream(Landroidx/versionedparcelable/VersionedParcelable;Ljava/io/OutputStream;)V
    .registers 4

    #@0
    .line 70
    new-instance v0, Landroidx/versionedparcelable/VersionedParcelStream;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, p1}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@6
    .line 71
    invoke-virtual {v0, p0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    #@9
    .line 72
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcelStream;->closeField()V

    #@c
    return-void
.end method

.method public static toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;
    .registers 2

    #@0
    .line 48
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    #@2
    invoke-direct {v0, p0}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroidx/versionedparcelable/VersionedParcelable;)V

    #@5
    return-object v0
.end method

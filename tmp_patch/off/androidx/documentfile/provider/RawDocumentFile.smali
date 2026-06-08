.class Landroidx/documentfile/provider/RawDocumentFile;
.super Landroidx/documentfile/provider/DocumentFile;
.source "RawDocumentFile.java"


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V
    .registers 3

    #@0
    .line 33
    invoke-direct {p0, p1}, Landroidx/documentfile/provider/DocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    #@3
    .line 34
    iput-object p2, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@5
    return-void
.end method

.method private static deleteContents(Ljava/io/File;)Z
    .registers 7

    #@0
    .line 169
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x1

    #@5
    if-eqz p0, :cond_37

    #@7
    .line 172
    array-length v1, p0

    #@8
    const/4 v2, 0x0

    #@9
    move v3, v2

    #@a
    :goto_a
    if-ge v3, v1, :cond_37

    #@c
    aget-object v4, p0, v3

    #@e
    .line 173
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_19

    #@14
    .line 174
    invoke-static {v4}, Landroidx/documentfile/provider/RawDocumentFile;->deleteContents(Ljava/io/File;)Z

    #@17
    move-result v5

    #@18
    and-int/2addr v0, v5

    #@19
    .line 176
    :cond_19
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@1c
    move-result v5

    #@1d
    if-nez v5, :cond_34

    #@1f
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    const-string v5, "Failed to delete "

    #@23
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    const-string v4, "DocumentFile"

    #@30
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    move v0, v2

    #@34
    :cond_34
    add-int/lit8 v3, v3, 0x1

    #@36
    goto :goto_a

    #@37
    :cond_37
    return v0
.end method

.method private static getTypeForName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    const/16 v0, 0x2e

    #@2
    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_1d

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object p0

    #@e
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    .line 159
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object p0

    #@1a
    if-eqz p0, :cond_1d

    #@1c
    return-object p0

    #@1d
    :cond_1d
    const-string p0, "application/octet-stream"

    #@1f
    return-object p0
.end method


# virtual methods
.method public canRead()Z
    .registers 2

    #@0
    .line 113
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public canWrite()Z
    .registers 2

    #@0
    .line 118
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .registers 4

    #@0
    .line 58
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@4
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@7
    .line 59
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@a
    move-result p1

    #@b
    if-nez p1, :cond_16

    #@d
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@10
    move-result p1

    #@11
    if-eqz p1, :cond_14

    #@13
    goto :goto_16

    #@14
    :cond_14
    const/4 p1, 0x0

    #@15
    return-object p1

    #@16
    .line 60
    :cond_16
    :goto_16
    new-instance p1, Landroidx/documentfile/provider/RawDocumentFile;

    #@18
    invoke-direct {p1, p0, v0}, Landroidx/documentfile/provider/RawDocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V

    #@1b
    return-object p1
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .registers 4

    #@0
    .line 41
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    if-eqz p1, :cond_21

    #@a
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object p2

    #@13
    const-string v0, "."

    #@15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object p2

    #@19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p1

    #@1d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object p2

    #@21
    .line 45
    :cond_21
    new-instance p1, Ljava/io/File;

    #@23
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@25
    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@28
    .line 47
    :try_start_28
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    #@2b
    .line 48
    new-instance p2, Landroidx/documentfile/provider/RawDocumentFile;

    #@2d
    invoke-direct {p2, p0, p1}, Landroidx/documentfile/provider/RawDocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_31

    #@30
    return-object p2

    #@31
    :catch_31
    move-exception p1

    #@32
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    #@34
    const-string v0, "Failed to createFile: "

    #@36
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object p1

    #@3d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object p1

    #@41
    const-string p2, "DocumentFile"

    #@43
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    const/4 p1, 0x0

    #@47
    return-object p1
.end method

.method public delete()Z
    .registers 2

    #@0
    .line 123
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-static {v0}, Landroidx/documentfile/provider/RawDocumentFile;->deleteContents(Ljava/io/File;)Z

    #@5
    .line 124
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public exists()Z
    .registers 2

    #@0
    .line 129
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    .line 73
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    #@0
    .line 79
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 82
    :cond_a
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@c
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Landroidx/documentfile/provider/RawDocumentFile;->getTypeForName(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    #@0
    .line 68
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    #@0
    .line 88
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFile()Z
    .registers 2

    #@0
    .line 93
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isVirtual()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public lastModified()J
    .registers 3

    #@0
    .line 103
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public length()J
    .registers 3

    #@0
    .line 108
    iget-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public listFiles()[Landroidx/documentfile/provider/DocumentFile;
    .registers 7

    #@0
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 135
    iget-object v1, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@7
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_1e

    #@d
    .line 137
    array-length v2, v1

    #@e
    const/4 v3, 0x0

    #@f
    :goto_f
    if-ge v3, v2, :cond_1e

    #@11
    aget-object v4, v1, v3

    #@13
    .line 138
    new-instance v5, Landroidx/documentfile/provider/RawDocumentFile;

    #@15
    invoke-direct {v5, p0, v4}, Landroidx/documentfile/provider/RawDocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V

    #@18
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_f

    #@1e
    .line 141
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v1

    #@22
    new-array v1, v1, [Landroidx/documentfile/provider/DocumentFile;

    #@24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, [Landroidx/documentfile/provider/DocumentFile;

    #@2a
    return-object v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 4

    #@0
    .line 146
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@b
    .line 147
    iget-object p1, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@d
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@10
    move-result p1

    #@11
    if-eqz p1, :cond_17

    #@13
    .line 148
    iput-object v0, p0, Landroidx/documentfile/provider/RawDocumentFile;->mFile:Ljava/io/File;

    #@15
    const/4 p1, 0x1

    #@16
    return p1

    #@17
    :cond_17
    const/4 p1, 0x0

    #@18
    return p1
.end method

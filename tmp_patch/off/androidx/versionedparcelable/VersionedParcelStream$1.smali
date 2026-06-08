.class Landroidx/versionedparcelable/VersionedParcelStream$1;
.super Ljava/io/FilterInputStream;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/versionedparcelable/VersionedParcelStream;


# direct methods
.method constructor <init>(Landroidx/versionedparcelable/VersionedParcelStream;Ljava/io/InputStream;)V
    .registers 3

    #@0
    .line 85
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    #@2
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    return-void
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 88
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    #@2
    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_18

    #@7
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    #@9
    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    #@b
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    #@d
    iget v1, v1, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    #@f
    if-ge v0, v1, :cond_12

    #@11
    goto :goto_18

    #@12
    .line 89
    :cond_12
    new-instance v0, Ljava/io/IOException;

    #@14
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@17
    throw v0

    #@18
    .line 91
    :cond_18
    :goto_18
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    #@1b
    move-result v0

    #@1c
    .line 92
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    #@1e
    iget v2, v1, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    iput v2, v1, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    #@24
    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 98
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    #@2
    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_18

    #@7
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    #@9
    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    #@b
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    #@d
    iget v1, v1, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    #@f
    if-ge v0, v1, :cond_12

    #@11
    goto :goto_18

    #@12
    .line 99
    :cond_12
    new-instance p1, Ljava/io/IOException;

    #@14
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    #@17
    throw p1

    #@18
    .line 101
    :cond_18
    :goto_18
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    #@1b
    move-result p1

    #@1c
    if-lez p1, :cond_25

    #@1e
    .line 103
    iget-object p2, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    #@20
    iget p3, p2, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    #@22
    add-int/2addr p3, p1

    #@23
    iput p3, p2, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    #@25
    :cond_25
    return p1
.end method

.method public skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 110
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    #@2
    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_18

    #@7
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    #@9
    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    #@b
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    #@d
    iget v1, v1, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    #@f
    if-ge v0, v1, :cond_12

    #@11
    goto :goto_18

    #@12
    .line 111
    :cond_12
    new-instance p1, Ljava/io/IOException;

    #@14
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    #@17
    throw p1

    #@18
    .line 113
    :cond_18
    :goto_18
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    #@1b
    move-result-wide p1

    #@1c
    const-wide/16 v0, 0x0

    #@1e
    cmp-long v0, p1, v0

    #@20
    if-lez v0, :cond_2a

    #@22
    .line 115
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    #@24
    iget v1, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    #@26
    long-to-int v2, p1

    #@27
    add-int/2addr v1, v2

    #@28
    iput v1, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    #@2a
    :cond_2a
    return-wide p1
.end method

.class Landroidx/emoji2/text/MetadataListReader;
.super Ljava/lang/Object;
.source "MetadataListReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;,
        Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;,
        Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;,
        Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
    }
.end annotation


# static fields
.field private static final EMJI_TAG:I = 0x456d6a69

.field private static final EMJI_TAG_DEPRECATED:I = 0x656d6a69

.field private static final META_TABLE_NAME:I = 0x6d657461


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static findOffsetInfo(Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;)Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x4

    #@1
    .line 120
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    #@4
    .line 122
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedShort()I

    #@7
    move-result v1

    #@8
    const/16 v2, 0x64

    #@a
    const-string v3, "Cannot read metadata."

    #@c
    if-gt v1, v2, :cond_73

    #@e
    const/4 v2, 0x6

    #@f
    .line 128
    invoke-interface {p0, v2}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    #@12
    const/4 v2, 0x0

    #@13
    move v4, v2

    #@14
    :goto_14
    const-wide/16 v5, -0x1

    #@16
    if-ge v4, v1, :cond_2f

    #@18
    .line 132
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readTag()I

    #@1b
    move-result v7

    #@1c
    .line 134
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    #@1f
    .line 135
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedInt()J

    #@22
    move-result-wide v8

    #@23
    .line 137
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    #@26
    const v10, 0x6d657461

    #@29
    if-ne v10, v7, :cond_2c

    #@2b
    goto :goto_30

    #@2c
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    #@2e
    goto :goto_14

    #@2f
    :cond_2f
    move-wide v8, v5

    #@30
    :goto_30
    cmp-long v0, v8, v5

    #@32
    if-eqz v0, :cond_6d

    #@34
    .line 146
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->getPosition()J

    #@37
    move-result-wide v0

    #@38
    sub-long v0, v8, v0

    #@3a
    long-to-int v0, v0

    #@3b
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    #@3e
    const/16 v0, 0xc

    #@40
    .line 148
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    #@43
    .line 150
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedInt()J

    #@46
    move-result-wide v0

    #@47
    :goto_47
    int-to-long v4, v2

    #@48
    cmp-long v4, v4, v0

    #@4a
    if-gez v4, :cond_6d

    #@4c
    .line 152
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readTag()I

    #@4f
    move-result v4

    #@50
    .line 153
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedInt()J

    #@53
    move-result-wide v5

    #@54
    .line 154
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedInt()J

    #@57
    move-result-wide v10

    #@58
    const v7, 0x456d6a69

    #@5b
    if-eq v7, v4, :cond_66

    #@5d
    const v7, 0x656d6a69

    #@60
    if-ne v7, v4, :cond_63

    #@62
    goto :goto_66

    #@63
    :cond_63
    add-int/lit8 v2, v2, 0x1

    #@65
    goto :goto_47

    #@66
    .line 156
    :cond_66
    :goto_66
    new-instance p0, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;

    #@68
    add-long/2addr v5, v8

    #@69
    invoke-direct {p0, v5, v6, v10, v11}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;-><init>(JJ)V

    #@6c
    return-object p0

    #@6d
    .line 161
    :cond_6d
    new-instance p0, Ljava/io/IOException;

    #@6f
    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@72
    throw p0

    #@73
    .line 125
    :cond_73
    new-instance p0, Ljava/io/IOException;

    #@75
    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@78
    throw p0
.end method

.method static read(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 106
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    #@3
    move-result-object p0

    #@4
    .line 107
    :try_start_4
    invoke-static {p0}, Landroidx/emoji2/text/MetadataListReader;->read(Ljava/io/InputStream;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@7
    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_e

    #@8
    if-eqz p0, :cond_d

    #@a
    .line 108
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    #@d
    :cond_d
    return-object p1

    #@e
    :catchall_e
    move-exception p1

    #@f
    if-eqz p0, :cond_19

    #@11
    .line 106
    :try_start_11
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    #@14
    goto :goto_19

    #@15
    :catchall_15
    move-exception p0

    #@16
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@19
    :cond_19
    :goto_19
    throw p1
.end method

.method static read(Ljava/io/InputStream;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 69
    new-instance v0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;

    #@2
    invoke-direct {v0, p0}, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 70
    invoke-static {v0}, Landroidx/emoji2/text/MetadataListReader;->findOffsetInfo(Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;)Landroidx/emoji2/text/MetadataListReader$OffsetInfo;

    #@8
    move-result-object v1

    #@9
    .line 72
    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getStartOffset()J

    #@c
    move-result-wide v2

    #@d
    invoke-interface {v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->getPosition()J

    #@10
    move-result-wide v4

    #@11
    sub-long/2addr v2, v4

    #@12
    long-to-int v2, v2

    #@13
    invoke-interface {v0, v2}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    #@16
    .line 74
    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getLength()J

    #@19
    move-result-wide v2

    #@1a
    long-to-int v0, v2

    #@1b
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1e
    move-result-object v0

    #@1f
    .line 75
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    #@26
    move-result p0

    #@27
    int-to-long v2, p0

    #@28
    .line 76
    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getLength()J

    #@2b
    move-result-wide v4

    #@2c
    cmp-long v2, v2, v4

    #@2e
    if-nez v2, :cond_35

    #@30
    .line 80
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->getRootAsMetadataList(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@33
    move-result-object p0

    #@34
    return-object p0

    #@35
    .line 77
    :cond_35
    new-instance v0, Ljava/io/IOException;

    #@37
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    const-string v3, "Needed "

    #@3b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3e
    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getLength()J

    #@41
    move-result-wide v3

    #@42
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    const-string v2, " bytes, got "

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object p0

    #@50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object p0

    #@54
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0
.end method

.method static read(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@3
    move-result-object p0

    #@4
    .line 90
    new-instance v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;

    #@6
    invoke-direct {v0, p0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    #@9
    .line 91
    invoke-static {v0}, Landroidx/emoji2/text/MetadataListReader;->findOffsetInfo(Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;)Landroidx/emoji2/text/MetadataListReader$OffsetInfo;

    #@c
    move-result-object v0

    #@d
    .line 93
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getStartOffset()J

    #@10
    move-result-wide v0

    #@11
    long-to-int v0, v0

    #@12
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@15
    .line 94
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->getRootAsMetadataList(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@18
    move-result-object p0

    #@19
    return-object p0
.end method

.method static toUnsignedInt(I)J
    .registers 5

    #@0
    int-to-long v0, p0

    #@1
    const-wide v2, 0xffffffffL

    #@6
    and-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method static toUnsignedShort(S)I
    .registers 2

    #@0
    const v0, 0xffff

    #@3
    and-int/2addr p0, v0

    #@4
    return p0
.end method

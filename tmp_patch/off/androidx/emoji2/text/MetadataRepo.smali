.class public final Landroidx/emoji2/text/MetadataRepo;
.super Ljava/lang/Object;
.source "MetadataRepo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/MetadataRepo$Node;
    }
.end annotation


# static fields
.field private static final DEFAULT_ROOT_SIZE:I = 0x400

.field private static final S_TRACE_CREATE_REPO:Ljava/lang/String; = "EmojiCompat.MetadataRepo.create"


# instance fields
.field private final mEmojiCharArray:[C

.field private final mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

.field private final mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    .registers 4

    #@0
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    iput-object p1, p0, Landroidx/emoji2/text/MetadataRepo;->mTypeface:Landroid/graphics/Typeface;

    #@5
    .line 77
    iput-object p2, p0, Landroidx/emoji2/text/MetadataRepo;->mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@7
    .line 78
    new-instance p1, Landroidx/emoji2/text/MetadataRepo$Node;

    #@9
    const/16 v0, 0x400

    #@b
    invoke-direct {p1, v0}, Landroidx/emoji2/text/MetadataRepo$Node;-><init>(I)V

    #@e
    iput-object p1, p0, Landroidx/emoji2/text/MetadataRepo;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@10
    .line 79
    invoke-virtual {p2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->listLength()I

    #@13
    move-result p1

    #@14
    mul-int/lit8 p1, p1, 0x2

    #@16
    new-array p1, p1, [C

    #@18
    iput-object p1, p0, Landroidx/emoji2/text/MetadataRepo;->mEmojiCharArray:[C

    #@1a
    .line 80
    invoke-direct {p0, p2}, Landroidx/emoji2/text/MetadataRepo;->constructIndex(Landroidx/emoji2/text/flatbuffer/MetadataList;)V

    #@1d
    return-void
.end method

.method private constructIndex(Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    .registers 7

    #@0
    .line 160
    invoke-virtual {p1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->listLength()I

    #@3
    move-result p1

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    if-ge v0, p1, :cond_1d

    #@7
    .line 162
    new-instance v1, Landroidx/emoji2/text/EmojiMetadata;

    #@9
    invoke-direct {v1, p0, v0}, Landroidx/emoji2/text/EmojiMetadata;-><init>(Landroidx/emoji2/text/MetadataRepo;I)V

    #@c
    .line 166
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiMetadata;->getId()I

    #@f
    move-result v2

    #@10
    iget-object v3, p0, Landroidx/emoji2/text/MetadataRepo;->mEmojiCharArray:[C

    #@12
    mul-int/lit8 v4, v0, 0x2

    #@14
    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    #@17
    .line 167
    invoke-virtual {p0, v1}, Landroidx/emoji2/text/MetadataRepo;->put(Landroidx/emoji2/text/EmojiMetadata;)V

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_5

    #@1d
    :cond_1d
    return-void
.end method

.method public static create(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroidx/emoji2/text/MetadataRepo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    :try_start_0
    const-string v0, "EmojiCompat.MetadataRepo.create"

    #@2
    .line 147
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    #@5
    .line 148
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    #@8
    move-result-object v0

    #@9
    .line 149
    new-instance v1, Landroidx/emoji2/text/MetadataRepo;

    #@b
    .line 150
    invoke-static {p0, p1}, Landroidx/emoji2/text/MetadataListReader;->read(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@e
    move-result-object p0

    #@f
    invoke-direct {v1, v0, p0}, Landroidx/emoji2/text/MetadataRepo;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_16

    #@12
    .line 152
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@15
    return-object v1

    #@16
    :catchall_16
    move-exception p0

    #@17
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@1a
    .line 153
    throw p0
.end method

.method public static create(Landroid/graphics/Typeface;)Landroidx/emoji2/text/MetadataRepo;
    .registers 3

    #@0
    :try_start_0
    const-string v0, "EmojiCompat.MetadataRepo.create"

    #@2
    .line 93
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    #@5
    .line 94
    new-instance v0, Landroidx/emoji2/text/MetadataRepo;

    #@7
    new-instance v1, Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@9
    invoke-direct {v1}, Landroidx/emoji2/text/flatbuffer/MetadataList;-><init>()V

    #@c
    invoke-direct {v0, p0, v1}, Landroidx/emoji2/text/MetadataRepo;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_13

    #@f
    .line 96
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@12
    return-object v0

    #@13
    :catchall_13
    move-exception p0

    #@14
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@17
    .line 97
    throw p0
.end method

.method public static create(Landroid/graphics/Typeface;Ljava/io/InputStream;)Landroidx/emoji2/text/MetadataRepo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    :try_start_0
    const-string v0, "EmojiCompat.MetadataRepo.create"

    #@2
    .line 111
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    #@5
    .line 112
    new-instance v0, Landroidx/emoji2/text/MetadataRepo;

    #@7
    invoke-static {p1}, Landroidx/emoji2/text/MetadataListReader;->read(Ljava/io/InputStream;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@a
    move-result-object p1

    #@b
    invoke-direct {v0, p0, p1}, Landroidx/emoji2/text/MetadataRepo;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_12

    #@e
    .line 114
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@11
    return-object v0

    #@12
    :catchall_12
    move-exception p0

    #@13
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@16
    .line 115
    throw p0
.end method

.method public static create(Landroid/graphics/Typeface;Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/MetadataRepo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    :try_start_0
    const-string v0, "EmojiCompat.MetadataRepo.create"

    #@2
    .line 129
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    #@5
    .line 130
    new-instance v0, Landroidx/emoji2/text/MetadataRepo;

    #@7
    invoke-static {p1}, Landroidx/emoji2/text/MetadataListReader;->read(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@a
    move-result-object p1

    #@b
    invoke-direct {v0, p0, p1}, Landroidx/emoji2/text/MetadataRepo;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_12

    #@e
    .line 132
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@11
    return-object v0

    #@12
    :catchall_12
    move-exception p0

    #@13
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@16
    .line 133
    throw p0
.end method


# virtual methods
.method public getEmojiCharArray()[C
    .registers 2

    #@0
    .line 203
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mEmojiCharArray:[C

    #@2
    return-object v0
.end method

.method public getMetadataList()Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 2

    #@0
    .line 212
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@2
    return-object v0
.end method

.method getMetadataVersion()I
    .registers 2

    #@0
    .line 185
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mMetadataList:Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@2
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->version()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;
    .registers 2

    #@0
    .line 194
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@2
    return-object v0
.end method

.method getTypeface()Landroid/graphics/Typeface;
    .registers 2

    #@0
    .line 177
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mTypeface:Landroid/graphics/Typeface;

    #@2
    return-object v0
.end method

.method put(Landroidx/emoji2/text/EmojiMetadata;)V
    .registers 6

    #@0
    const-string v0, "emoji metadata cannot be null"

    #@2
    .line 223
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 224
    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointsLength()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x1

    #@a
    const/4 v2, 0x0

    #@b
    if-lez v0, :cond_f

    #@d
    move v0, v1

    #@e
    goto :goto_10

    #@f
    :cond_f
    move v0, v2

    #@10
    :goto_10
    const-string v3, "invalid metadata codepoint length"

    #@12
    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    #@15
    .line 227
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    #@17
    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointsLength()I

    #@1a
    move-result v3

    #@1b
    sub-int/2addr v3, v1

    #@1c
    invoke-virtual {v0, p1, v2, v3}, Landroidx/emoji2/text/MetadataRepo$Node;->put(Landroidx/emoji2/text/EmojiMetadata;II)V

    #@1f
    return-void
.end method

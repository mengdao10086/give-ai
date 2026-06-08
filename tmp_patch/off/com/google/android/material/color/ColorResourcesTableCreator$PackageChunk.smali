.class Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageChunk"
.end annotation


# static fields
.field private static final HEADER_SIZE:S = 0x120s

.field private static final PACKAGE_NAME_MAX_LENGTH:I = 0x80


# instance fields
.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

.field private final packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

.field private final typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

.field private final typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;


# direct methods
.method constructor <init>(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 339
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    #@5
    .line 342
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    #@7
    const-string v0, "?1"

    #@9
    const-string v1, "?2"

    #@b
    const-string v2, "?3"

    #@d
    const-string v3, "?4"

    #@f
    const-string v4, "?5"

    #@11
    const-string v5, "color"

    #@13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    const/4 v1, 0x0

    #@18
    invoke-direct {p1, v1, v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    #@1b
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    #@1d
    .line 343
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@20
    move-result p1

    #@21
    new-array p1, p1, [Ljava/lang/String;

    #@23
    .line 344
    :goto_23
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@26
    move-result v0

    #@27
    if-ge v1, v0, :cond_38

    #@29
    .line 345
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    #@2f
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$100(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    aput-object v0, p1, v1

    #@35
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_23

    #@38
    .line 347
    :cond_38
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    #@3a
    const/4 v1, 0x1

    #@3b
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    #@3e
    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    #@40
    .line 348
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    #@42
    invoke-direct {p1, p2}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;-><init>(Ljava/util/List;)V

    #@45
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    #@47
    .line 350
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@49
    const/16 p2, 0x120

    #@4b
    invoke-virtual {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->getChunkSize()I

    #@4e
    move-result v0

    #@4f
    const/16 v1, 0x200

    #@51
    invoke-direct {p1, v1, p2, v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    #@54
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@56
    return-void
.end method


# virtual methods
.method getChunkSize()I
    .registers 3

    #@0
    .line 376
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    #@2
    .line 377
    invoke-virtual {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    #@5
    move-result v0

    #@6
    add-int/lit16 v0, v0, 0x120

    #@8
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    #@a
    .line 378
    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    #@d
    move-result v1

    #@e
    add-int/2addr v0, v1

    #@f
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    #@11
    .line 379
    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->getChunkSizeWithTypeChunk()I

    #@14
    move-result v1

    #@15
    add-int/2addr v0, v1

    #@16
    return v0
.end method

.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 354
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@5
    .line 355
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    #@7
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->id:I
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->access$1000(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)I

    #@a
    move-result v0

    #@b
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@12
    .line 356
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    #@14
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->access$1100(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@1b
    move-result-object v0

    #@1c
    const/4 v1, 0x0

    #@1d
    move v2, v1

    #@1e
    :goto_1e
    const/16 v3, 0x80

    #@20
    if-ge v2, v3, :cond_39

    #@22
    .line 358
    array-length v3, v0

    #@23
    if-ge v2, v3, :cond_2f

    #@25
    .line 359
    aget-char v3, v0, v2

    #@27
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->charToByteArray(C)[B
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$1200(C)[B

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@2e
    goto :goto_36

    #@2f
    .line 361
    :cond_2f
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->charToByteArray(C)[B
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$1200(C)[B

    #@32
    move-result-object v3

    #@33
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_1e

    #@39
    :cond_39
    const/16 v0, 0x120

    #@3b
    .line 364
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@42
    .line 365
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@45
    move-result-object v2

    #@46
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@49
    .line 366
    iget-object v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    #@4b
    .line 367
    invoke-virtual {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    #@4e
    move-result v2

    #@4f
    add-int/2addr v2, v0

    #@50
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@53
    move-result-object v0

    #@54
    .line 366
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@57
    .line 368
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@5e
    .line 369
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@61
    move-result-object v0

    #@62
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@65
    .line 370
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    #@67
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@6a
    .line 371
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    #@6c
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@6f
    .line 372
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    #@71
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@74
    return-void
.end method

.class Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeChunk"
.end annotation


# static fields
.field private static final CONFIG_SIZE:B = 0x40t

.field private static final HEADER_SIZE:S = 0x54s

.field private static final OFFSET_NO_ENTRY:I = -0x1


# instance fields
.field private final config:[B

.field private final entryCount:I

.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final offsetTable:[I

.field private final resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Set;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;I)V"
        }
    .end annotation

    #@0
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0x40

    #@5
    new-array v1, v0, [B

    #@7
    .line 453
    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->config:[B

    #@9
    .line 458
    iput p3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->entryCount:I

    #@b
    const/4 v2, 0x0

    #@c
    aput-byte v0, v1, v2

    #@e
    .line 461
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@11
    move-result v0

    #@12
    new-array v0, v0, [Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    #@14
    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    #@16
    move v0, v2

    #@17
    .line 463
    :goto_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@1a
    move-result v1

    #@1b
    if-ge v0, v1, :cond_33

    #@1d
    .line 464
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    #@23
    .line 465
    iget-object v3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    #@25
    new-instance v4, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    #@27
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->value:I
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$1400(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)I

    #@2a
    move-result v1

    #@2b
    invoke-direct {v4, v0, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;-><init>(II)V

    #@2e
    aput-object v4, v3, v0

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_17

    #@33
    .line 468
    :cond_33
    new-array p1, p3, [I

    #@35
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    #@37
    move p1, v2

    #@38
    :goto_38
    if-ge v2, p3, :cond_54

    #@3a
    .line 471
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@3d
    move-result-object v0

    #@3e
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_4b

    #@44
    .line 472
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    #@46
    aput p1, v0, v2

    #@48
    add-int/lit8 p1, p1, 0x10

    #@4a
    goto :goto_50

    #@4b
    .line 475
    :cond_4b
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    #@4d
    const/4 v1, -0x1

    #@4e
    aput v1, v0, v2

    #@50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    #@52
    int-to-short v2, v2

    #@53
    goto :goto_38

    #@54
    .line 479
    :cond_54
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@56
    const/16 p2, 0x54

    #@58
    invoke-virtual {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getChunkSize()I

    #@5b
    move-result p3

    #@5c
    const/16 v0, 0x201

    #@5e
    invoke-direct {p1, v0, p2, p3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    #@61
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@63
    return-void
.end method

.method private getEntryStart()I
    .registers 2

    #@0
    .line 501
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getOffsetTableSize()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, 0x54

    #@6
    return v0
.end method

.method private getOffsetTableSize()I
    .registers 2

    #@0
    .line 505
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    #@2
    array-length v0, v0

    #@3
    mul-int/lit8 v0, v0, 0x4

    #@5
    return v0
.end method


# virtual methods
.method getChunkSize()I
    .registers 3

    #@0
    .line 497
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getEntryStart()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    #@6
    array-length v1, v1

    #@7
    mul-int/lit8 v1, v1, 0x10

    #@9
    add-int/2addr v0, v1

    #@a
    return v0
.end method

.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 483
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@5
    const/4 v0, 0x4

    #@6
    new-array v0, v0, [B

    #@8
    .line 484
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator;->typeIdColor:B
    invoke-static {}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$1300()B

    #@b
    move-result v1

    #@c
    const/4 v2, 0x0

    #@d
    aput-byte v1, v0, v2

    #@f
    const/4 v1, 0x1

    #@10
    aput-byte v2, v0, v1

    #@12
    const/4 v1, 0x2

    #@13
    aput-byte v2, v0, v1

    #@15
    const/4 v1, 0x3

    #@16
    aput-byte v2, v0, v1

    #@18
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@1b
    .line 485
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->entryCount:I

    #@1d
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@24
    .line 486
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getEntryStart()I

    #@27
    move-result v0

    #@28
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@2f
    .line 487
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->config:[B

    #@31
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@34
    .line 488
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    #@36
    array-length v1, v0

    #@37
    move v3, v2

    #@38
    :goto_38
    if-ge v3, v1, :cond_46

    #@3a
    aget v4, v0, v3

    #@3c
    .line 489
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v4}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@43
    add-int/lit8 v3, v3, 0x1

    #@45
    goto :goto_38

    #@46
    .line 491
    :cond_46
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    #@48
    array-length v1, v0

    #@49
    :goto_49
    if-ge v2, v1, :cond_53

    #@4b
    aget-object v3, v0, v2

    #@4d
    .line 492
    invoke-virtual {v3, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@50
    add-int/lit8 v2, v2, 0x1

    #@52
    goto :goto_49

    #@53
    :cond_53
    return-void
.end method

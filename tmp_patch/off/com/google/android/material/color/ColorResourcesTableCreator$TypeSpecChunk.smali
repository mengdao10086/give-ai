.class Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeSpecChunk"
.end annotation


# static fields
.field private static final HEADER_SIZE:S = 0x10s

.field private static final SPEC_PUBLIC:I = 0x40000000


# instance fields
.field private final entryCount:I

.field private final entryFlags:[I

.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 402
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    #@f
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    #@12
    move-result v0

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    iput v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    #@17
    .line 403
    new-instance v0, Ljava/util/HashSet;

    #@19
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1c
    .line 404
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_38

    #@26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    #@2c
    .line 405
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S
    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    #@2f
    move-result v2

    #@30
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@33
    move-result-object v2

    #@34
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_20

    #@38
    .line 407
    :cond_38
    iget v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    #@3a
    new-array v1, v1, [I

    #@3c
    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryFlags:[I

    #@3e
    const/4 v1, 0x0

    #@3f
    .line 409
    :goto_3f
    iget v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    #@41
    if-ge v1, v2, :cond_57

    #@43
    .line 410
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@46
    move-result-object v2

    #@47
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@4a
    move-result v2

    #@4b
    if-eqz v2, :cond_53

    #@4d
    .line 411
    iget-object v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryFlags:[I

    #@4f
    const/high16 v3, 0x40000000    # 2.0f

    #@51
    aput v3, v2, v1

    #@53
    :cond_53
    add-int/lit8 v1, v1, 0x1

    #@55
    int-to-short v1, v1

    #@56
    goto :goto_3f

    #@57
    .line 415
    :cond_57
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@59
    const/16 v2, 0x10

    #@5b
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->getChunkSize()I

    #@5e
    move-result v3

    #@5f
    const/16 v4, 0x202

    #@61
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    #@64
    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@66
    .line 417
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    #@68
    iget v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    #@6a
    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;-><init>(Ljava/util/List;Ljava/util/Set;I)V

    #@6d
    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    #@6f
    return-void
.end method

.method private getChunkSize()I
    .registers 2

    #@0
    .line 435
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    #@2
    mul-int/lit8 v0, v0, 0x4

    #@4
    add-int/lit8 v0, v0, 0x10

    #@6
    return v0
.end method


# virtual methods
.method getChunkSizeWithTypeChunk()I
    .registers 3

    #@0
    .line 431
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->getChunkSize()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    #@6
    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getChunkSize()I

    #@9
    move-result v1

    #@a
    add-int/2addr v0, v1

    #@b
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
    .line 421
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@5
    const/4 v0, 0x4

    #@6
    new-array v0, v0, [B

    #@8
    .line 422
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
    .line 423
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    #@1d
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@24
    .line 424
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryFlags:[I

    #@26
    array-length v1, v0

    #@27
    :goto_27
    if-ge v2, v1, :cond_35

    #@29
    aget v3, v0, v2

    #@2b
    .line 425
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@32
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_27

    #@35
    .line 427
    :cond_35
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    #@37
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@3a
    return-void
.end method

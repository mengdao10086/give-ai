.class Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResTable"
.end annotation


# static fields
.field private static final HEADER_SIZE:S = 0xcs


# instance fields
.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final packageChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final packageCount:I

.field private final stringPool:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageChunks:Ljava/util/List;

    #@a
    .line 135
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageCount:I

    #@10
    .line 136
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    #@12
    const/4 v1, 0x0

    #@13
    new-array v1, v1, [Ljava/lang/String;

    #@15
    invoke-direct {v0, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>([Ljava/lang/String;)V

    #@18
    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->stringPool:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    #@1a
    .line 137
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1d
    move-result-object p1

    #@1e
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object p1

    #@22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_4c

    #@28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ljava/util/Map$Entry;

    #@2e
    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Ljava/util/List;

    #@34
    .line 139
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator;->COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;
    invoke-static {}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$400()Ljava/util/Comparator;

    #@37
    move-result-object v2

    #@38
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@3b
    .line 140
    iget-object v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageChunks:Ljava/util/List;

    #@3d
    new-instance v3, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;

    #@3f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    #@45
    invoke-direct {v3, v0, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;-><init>(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List;)V

    #@48
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_22

    #@4c
    .line 142
    :cond_4c
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@4e
    const/16 v0, 0xc

    #@50
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->getOverallSize()I

    #@53
    move-result v1

    #@54
    const/4 v2, 0x2

    #@55
    invoke-direct {p1, v2, v0, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    #@58
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@5a
    return-void
.end method

.method private getOverallSize()I
    .registers 4

    #@0
    .line 156
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageChunks:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_19

    #@d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;

    #@13
    .line 157
    invoke-virtual {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->getChunkSize()I

    #@16
    move-result v2

    #@17
    add-int/2addr v1, v2

    #@18
    goto :goto_7

    #@19
    .line 159
    :cond_19
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->stringPool:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    #@1b
    invoke-virtual {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    #@1e
    move-result v0

    #@1f
    add-int/lit8 v0, v0, 0xc

    #@21
    add-int/2addr v0, v1

    #@22
    return v0
.end method


# virtual methods
.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 146
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@5
    .line 147
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageCount:I

    #@7
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@e
    .line 148
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->stringPool:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    #@10
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@13
    .line 149
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageChunks:Ljava/util/List;

    #@15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v0

    #@19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_29

    #@1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;

    #@25
    .line 150
    invoke-virtual {v1, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@28
    goto :goto_19

    #@29
    :cond_29
    return-void
.end method

.class Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResChunkHeader"
.end annotation


# instance fields
.field private final chunkSize:I

.field private final headerSize:S

.field private final type:S


# direct methods
.method constructor <init>(SSI)V
    .registers 4

    #@0
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 180
    iput-short p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->type:S

    #@5
    .line 181
    iput-short p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->headerSize:S

    #@7
    .line 182
    iput p3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->chunkSize:I

    #@9
    return-void
.end method


# virtual methods
.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 186
    iget-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->type:S

    #@2
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@9
    .line 187
    iget-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->headerSize:S

    #@b
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@12
    .line 188
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->chunkSize:I

    #@14
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@1b
    return-void
.end method

.class Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResEntry"
.end annotation


# static fields
.field private static final DATA_TYPE_AARRGGBB:B = 0x1ct

.field private static final ENTRY_SIZE:S = 0x8s

.field private static final FLAG_PUBLIC:S = 0x2s

.field private static final SIZE:I = 0x10

.field private static final VALUE_SIZE:S = 0x8s


# instance fields
.field private final data:I

.field private final keyStringIndex:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    #@0
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 527
    iput p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->keyStringIndex:I

    #@5
    .line 528
    iput p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->data:I

    #@7
    return-void
.end method


# virtual methods
.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v0, 0x8

    #@2
    .line 532
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@9
    const/4 v1, 0x2

    #@a
    .line 533
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@11
    .line 534
    iget v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->keyStringIndex:I

    #@13
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@16
    move-result-object v2

    #@17
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@1a
    .line 535
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@21
    new-array v0, v1, [B

    #@23
    .line 536
    fill-array-data v0, :array_34

    #@26
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@29
    .line 537
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->data:I

    #@2b
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@32
    return-void

    #@33
    nop

    #@34
    :array_34
    .array-data 1
        0x0t
        0x1ct
    .end array-data
.end method

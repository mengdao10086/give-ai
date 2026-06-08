.class Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringPoolChunk"
.end annotation


# static fields
.field private static final FLAG_UTF8:I = 0x100

.field private static final HEADER_SIZE:S = 0x1cs

.field private static final STYLED_SPAN_LIST_END:I = -0x1


# instance fields
.field private final chunkSize:I

.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final stringCount:I

.field private final stringIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final stringsPaddingSize:I

.field private final stringsStart:I

.field private final styledSpanCount:I

.field private final styledSpanIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final styledSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;",
            ">;>;"
        }
    .end annotation
.end field

.field private final styledSpansStart:I

.field private final utf8Encode:Z


# direct methods
.method varargs constructor <init>(Z[Ljava/lang/String;)V
    .registers 11

    #@0
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/List;

    #@a
    .line 207
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    #@11
    .line 208
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    #@18
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    #@1f
    .line 220
    iput-boolean p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->utf8Encode:Z

    #@21
    .line 222
    array-length p1, p2

    #@22
    const/4 v0, 0x0

    #@23
    move v1, v0

    #@24
    move v2, v1

    #@25
    :goto_25
    if-ge v1, p1, :cond_51

    #@27
    aget-object v3, p2, v1

    #@29
    .line 223
    invoke-direct {p0, v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->processString(Ljava/lang/String;)Landroid/util/Pair;

    #@2c
    move-result-object v3

    #@2d
    .line 224
    iget-object v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/List;

    #@2f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v5

    #@33
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    .line 225
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@38
    check-cast v4, [B

    #@3a
    array-length v4, v4

    #@3b
    add-int/2addr v2, v4

    #@3c
    .line 226
    iget-object v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    #@3e
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@40
    check-cast v5, [B

    #@42
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    .line 227
    iget-object v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    #@47
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@49
    check-cast v3, Ljava/util/List;

    #@4b
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4e
    add-int/lit8 v1, v1, 0x1

    #@50
    goto :goto_25

    #@51
    .line 230
    :cond_51
    iget-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    #@53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object p1

    #@57
    move v1, v0

    #@58
    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v3

    #@5c
    if-eqz v3, :cond_a0

    #@5e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v3

    #@62
    check-cast v3, Ljava/util/List;

    #@64
    .line 231
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v4

    #@68
    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v5

    #@6c
    if-eqz v5, :cond_8d

    #@6e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v5

    #@72
    check-cast v5, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;

    #@74
    .line 232
    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/List;

    #@76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v7

    #@7a
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7d
    .line 233
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->styleString:[B
    invoke-static {v5}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->access$700(Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;)[B

    #@80
    move-result-object v6

    #@81
    array-length v6, v6

    #@82
    add-int/2addr v2, v6

    #@83
    .line 234
    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    #@85
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->styleString:[B
    invoke-static {v5}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->access$700(Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;)[B

    #@88
    move-result-object v5

    #@89
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8c
    goto :goto_68

    #@8d
    .line 236
    :cond_8d
    iget-object v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    #@8f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@92
    move-result-object v5

    #@93
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@96
    .line 238
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@99
    move-result v3

    #@9a
    mul-int/lit8 v3, v3, 0xc

    #@9c
    add-int/lit8 v3, v3, 0x4

    #@9e
    add-int/2addr v1, v3

    #@9f
    goto :goto_58

    #@a0
    .line 242
    :cond_a0
    rem-int/lit8 p1, v2, 0x4

    #@a2
    if-nez p1, :cond_a6

    #@a4
    move p1, v0

    #@a5
    goto :goto_a8

    #@a6
    :cond_a6
    rsub-int/lit8 p1, p1, 0x4

    #@a8
    .line 243
    :goto_a8
    iput p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsPaddingSize:I

    #@aa
    .line 244
    iget-object v3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    #@ac
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@af
    move-result v3

    #@b0
    iput v3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringCount:I

    #@b2
    .line 245
    iget-object v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    #@b4
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@b7
    move-result v4

    #@b8
    array-length v5, p2

    #@b9
    sub-int/2addr v4, v5

    #@ba
    iput v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanCount:I

    #@bc
    .line 247
    iget-object v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    #@be
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@c1
    move-result v4

    #@c2
    array-length p2, p2

    #@c3
    sub-int/2addr v4, p2

    #@c4
    const/4 p2, 0x1

    #@c5
    if-lez v4, :cond_c9

    #@c7
    move v4, p2

    #@c8
    goto :goto_ca

    #@c9
    :cond_c9
    move v4, v0

    #@ca
    :goto_ca
    if-nez v4, :cond_d6

    #@cc
    .line 250
    iget-object v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    #@ce
    invoke-interface {v5}, Ljava/util/List;->clear()V

    #@d1
    .line 251
    iget-object v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    #@d3
    invoke-interface {v5}, Ljava/util/List;->clear()V

    #@d6
    :cond_d6
    mul-int/lit8 v3, v3, 0x4

    #@d8
    const/16 v5, 0x1c

    #@da
    add-int/2addr v3, v5

    #@db
    .line 255
    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    #@dd
    .line 258
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@e0
    move-result v6

    #@e1
    mul-int/lit8 v6, v6, 0x4

    #@e3
    add-int/2addr v3, v6

    #@e4
    iput v3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsStart:I

    #@e6
    add-int/2addr v2, p1

    #@e7
    if-eqz v4, :cond_ec

    #@e9
    add-int p1, v3, v2

    #@eb
    goto :goto_ed

    #@ec
    :cond_ec
    move p1, v0

    #@ed
    .line 260
    :goto_ed
    iput p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpansStart:I

    #@ef
    add-int/2addr v3, v2

    #@f0
    if-eqz v4, :cond_f3

    #@f2
    move v0, v1

    #@f3
    :cond_f3
    add-int/2addr v3, v0

    #@f4
    .line 261
    iput v3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->chunkSize:I

    #@f6
    .line 262
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@f8
    invoke-direct {p1, p2, v5, v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    #@fb
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@fd
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/String;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 216
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    #@4
    return-void
.end method

.method private processString(Ljava/lang/String;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;",
            ">;>;"
        }
    .end annotation

    #@0
    .line 298
    new-instance v0, Landroid/util/Pair;

    #@2
    .line 299
    iget-boolean v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->utf8Encode:Z

    #@4
    if-eqz v1, :cond_b

    #@6
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->stringToByteArrayUtf8(Ljava/lang/String;)[B
    invoke-static {p1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$800(Ljava/lang/String;)[B

    #@9
    move-result-object p1

    #@a
    goto :goto_f

    #@b
    :cond_b
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->stringToByteArray(Ljava/lang/String;)[B
    invoke-static {p1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$900(Ljava/lang/String;)[B

    #@e
    move-result-object p1

    #@f
    .line 300
    :goto_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@16
    return-object v0
.end method


# virtual methods
.method getChunkSize()I
    .registers 2

    #@0
    .line 293
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->chunkSize:I

    #@2
    return v0
.end method

.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 266
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@5
    .line 267
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringCount:I

    #@7
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@e
    .line 268
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanCount:I

    #@10
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@17
    .line 269
    iget-boolean v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->utf8Encode:Z

    #@19
    if-eqz v0, :cond_1e

    #@1b
    const/16 v0, 0x100

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    :goto_1f
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@26
    .line 270
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsStart:I

    #@28
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@2f
    .line 271
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpansStart:I

    #@31
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@38
    .line 272
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/List;

    #@3a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v0

    #@3e
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_56

    #@44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Ljava/lang/Integer;

    #@4a
    .line 273
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@4d
    move-result v1

    #@4e
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@51
    move-result-object v1

    #@52
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@55
    goto :goto_3e

    #@56
    .line 275
    :cond_56
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    #@58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5b
    move-result-object v0

    #@5c
    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5f
    move-result v1

    #@60
    if-eqz v1, :cond_74

    #@62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@65
    move-result-object v1

    #@66
    check-cast v1, Ljava/lang/Integer;

    #@68
    .line 276
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@6b
    move-result v1

    #@6c
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@73
    goto :goto_5c

    #@74
    .line 278
    :cond_74
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    #@76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@79
    move-result-object v0

    #@7a
    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_8a

    #@80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@83
    move-result-object v1

    #@84
    check-cast v1, [B

    #@86
    .line 279
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@89
    goto :goto_7a

    #@8a
    .line 281
    :cond_8a
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsPaddingSize:I

    #@8c
    if-lez v0, :cond_93

    #@8e
    .line 282
    new-array v0, v0, [B

    #@90
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@93
    .line 284
    :cond_93
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    #@95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@98
    move-result-object v0

    #@99
    :goto_99
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9c
    move-result v1

    #@9d
    if-eqz v1, :cond_c2

    #@9f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a2
    move-result-object v1

    #@a3
    check-cast v1, Ljava/util/List;

    #@a5
    .line 285
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a8
    move-result-object v1

    #@a9
    :goto_a9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@ac
    move-result v2

    #@ad
    if-eqz v2, :cond_b9

    #@af
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b2
    move-result-object v2

    #@b3
    check-cast v2, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;

    #@b5
    .line 286
    invoke-virtual {v2, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    #@b8
    goto :goto_a9

    #@b9
    :cond_b9
    const/4 v1, -0x1

    #@ba
    .line 288
    # invokes: Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    #@bd
    move-result-object v1

    #@be
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@c1
    goto :goto_99

    #@c2
    :cond_c2
    return-void
.end method

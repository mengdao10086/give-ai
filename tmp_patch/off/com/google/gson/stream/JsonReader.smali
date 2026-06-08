.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NON_EXECUTE_PREFIX:[C

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, ")]}\'\n"

    #@2
    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    #@8
    .line 1594
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    #@a
    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    #@d
    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    #@f
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    #@0
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 230
    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    #@6
    const/16 v1, 0x400

    #@8
    new-array v1, v1, [C

    #@a
    .line 238
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@c
    .line 239
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@e
    .line 240
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@10
    .line 242
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@12
    .line 243
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    #@14
    .line 245
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@16
    const/16 v1, 0x20

    #@18
    new-array v2, v1, [I

    #@1a
    .line 269
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    #@1c
    add-int/lit8 v3, v0, 0x1

    #@1e
    .line 272
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@20
    const/4 v3, 0x6

    #@21
    aput v3, v2, v0

    #@23
    new-array v0, v1, [Ljava/lang/String;

    #@25
    .line 283
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    #@27
    new-array v0, v1, [I

    #@29
    .line 284
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@2b
    if-eqz p1, :cond_30

    #@2d
    .line 293
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    #@2f
    return-void

    #@30
    .line 291
    :cond_30
    new-instance p1, Ljava/lang/NullPointerException;

    #@32
    const-string v0, "in == null"

    #@34
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@37
    throw p1
.end method

.method private checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 1408
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    #@7
    .line 1409
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@a
    move-result-object v0

    #@b
    throw v0
.end method

.method private consumeNonExecutePrefix()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 1576
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    #@4
    .line 1577
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@6
    sub-int/2addr v1, v0

    #@7
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@9
    .line 1579
    sget-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    #@b
    array-length v2, v0

    #@c
    add-int/2addr v1, v2

    #@d
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@f
    if-le v1, v2, :cond_19

    #@11
    array-length v0, v0

    #@12
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_19

    #@18
    return-void

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    .line 1583
    :goto_1a
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    #@1c
    array-length v2, v1

    #@1d
    if-ge v0, v2, :cond_2e

    #@1f
    .line 1584
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@21
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@23
    add-int/2addr v3, v0

    #@24
    aget-char v2, v2, v3

    #@26
    aget-char v1, v1, v0

    #@28
    if-eq v2, v1, :cond_2b

    #@2a
    return-void

    #@2b
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_1a

    #@2e
    .line 1590
    :cond_2e
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@30
    array-length v1, v1

    #@31
    add-int/2addr v0, v1

    #@32
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@34
    return-void
.end method

.method private fillBuffer(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 1284
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@2
    .line 1285
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    #@4
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@6
    sub-int/2addr v1, v2

    #@7
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    #@9
    .line 1286
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@b
    const/4 v3, 0x0

    #@c
    if-eq v1, v2, :cond_15

    #@e
    sub-int/2addr v1, v2

    #@f
    .line 1287
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@11
    .line 1288
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    goto :goto_17

    #@15
    .line 1290
    :cond_15
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@17
    .line 1293
    :goto_17
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@19
    .line 1295
    :cond_19
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    #@1b
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@1d
    array-length v4, v0

    #@1e
    sub-int/2addr v4, v2

    #@1f
    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    #@22
    move-result v1

    #@23
    const/4 v2, -0x1

    #@24
    if-eq v1, v2, :cond_4b

    #@26
    .line 1296
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@28
    add-int/2addr v2, v1

    #@29
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@2b
    .line 1299
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@2d
    const/4 v4, 0x1

    #@2e
    if-nez v1, :cond_48

    #@30
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    #@32
    if-nez v1, :cond_48

    #@34
    if-lez v2, :cond_48

    #@36
    aget-char v5, v0, v3

    #@38
    const v6, 0xfeff

    #@3b
    if-ne v5, v6, :cond_48

    #@3d
    .line 1300
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@3f
    add-int/2addr v5, v4

    #@40
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@42
    add-int/lit8 v1, v1, 0x1

    #@44
    .line 1301
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    #@46
    add-int/lit8 p1, p1, 0x1

    #@48
    :cond_48
    if-lt v2, p1, :cond_19

    #@4a
    return v4

    #@4b
    :cond_4b
    return v3
.end method

.method private isLiteral(C)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v0, 0x9

    #@2
    if-eq p1, v0, :cond_3c

    #@4
    const/16 v0, 0xa

    #@6
    if-eq p1, v0, :cond_3c

    #@8
    const/16 v0, 0xc

    #@a
    if-eq p1, v0, :cond_3c

    #@c
    const/16 v0, 0xd

    #@e
    if-eq p1, v0, :cond_3c

    #@10
    const/16 v0, 0x20

    #@12
    if-eq p1, v0, :cond_3c

    #@14
    const/16 v0, 0x23

    #@16
    if-eq p1, v0, :cond_39

    #@18
    const/16 v0, 0x2c

    #@1a
    if-eq p1, v0, :cond_3c

    #@1c
    const/16 v0, 0x2f

    #@1e
    if-eq p1, v0, :cond_39

    #@20
    const/16 v0, 0x3d

    #@22
    if-eq p1, v0, :cond_39

    #@24
    const/16 v0, 0x7b

    #@26
    if-eq p1, v0, :cond_3c

    #@28
    const/16 v0, 0x7d

    #@2a
    if-eq p1, v0, :cond_3c

    #@2c
    const/16 v0, 0x3a

    #@2e
    if-eq p1, v0, :cond_3c

    #@30
    const/16 v0, 0x3b

    #@32
    if-eq p1, v0, :cond_39

    #@34
    packed-switch p1, :pswitch_data_3e

    #@37
    const/4 p1, 0x1

    #@38
    return p1

    #@39
    .line 751
    :cond_39
    :pswitch_39
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@3c
    :cond_3c
    :pswitch_3c
    const/4 p1, 0x0

    #@3d
    return p1

    #@3e
    :pswitch_data_3e
    .packed-switch 0x5b
        :pswitch_3c
        :pswitch_39
        :pswitch_3c
    .end packed-switch
.end method

.method private nextNonWhitespace(Z)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 1327
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@2
    .line 1328
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@4
    .line 1329
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@6
    :goto_6
    const/4 v3, 0x1

    #@7
    if-ne v1, v2, :cond_32

    #@9
    .line 1332
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@b
    .line 1333
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_2e

    #@11
    if-nez p1, :cond_15

    #@13
    const/4 p1, -0x1

    #@14
    return p1

    #@15
    .line 1401
    :cond_15
    new-instance p1, Ljava/io/EOFException;

    #@17
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    const-string v1, "End of input"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@2d
    throw p1

    #@2e
    .line 1336
    :cond_2e
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@30
    .line 1337
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@32
    :cond_32
    add-int/lit8 v4, v1, 0x1

    #@34
    .line 1340
    aget-char v1, v0, v1

    #@36
    const/16 v5, 0xa

    #@38
    if-ne v1, v5, :cond_43

    #@3a
    .line 1342
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@3c
    add-int/2addr v1, v3

    #@3d
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@3f
    .line 1343
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    #@41
    goto/16 :goto_b2

    #@43
    :cond_43
    const/16 v5, 0x20

    #@45
    if-eq v1, v5, :cond_b2

    #@47
    const/16 v5, 0xd

    #@49
    if-eq v1, v5, :cond_b2

    #@4b
    const/16 v5, 0x9

    #@4d
    if-ne v1, v5, :cond_50

    #@4f
    goto :goto_b2

    #@50
    :cond_50
    const/16 v5, 0x2f

    #@52
    if-ne v1, v5, :cond_9d

    #@54
    .line 1350
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@56
    const/4 v6, 0x2

    #@57
    if-ne v4, v2, :cond_69

    #@59
    add-int/lit8 v4, v4, -0x1

    #@5b
    .line 1352
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@5d
    .line 1353
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@60
    move-result v2

    #@61
    .line 1354
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@63
    add-int/2addr v4, v3

    #@64
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@66
    if-nez v2, :cond_69

    #@68
    return v1

    #@69
    .line 1360
    :cond_69
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@6c
    .line 1361
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@6e
    aget-char v3, v0, v2

    #@70
    const/16 v4, 0x2a

    #@72
    if-eq v3, v4, :cond_83

    #@74
    if-eq v3, v5, :cond_77

    #@76
    return v1

    #@77
    :cond_77
    add-int/lit8 v2, v2, 0x1

    #@79
    .line 1375
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@7b
    .line 1376
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    #@7e
    .line 1377
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@80
    .line 1378
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@82
    goto :goto_6

    #@83
    :cond_83
    add-int/lit8 v2, v2, 0x1

    #@85
    .line 1365
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@87
    const-string v1, "*/"

    #@89
    .line 1366
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_96

    #@8f
    .line 1369
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@91
    add-int/2addr v1, v6

    #@92
    .line 1370
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@94
    goto/16 :goto_6

    #@96
    :cond_96
    const-string p1, "Unterminated comment"

    #@98
    .line 1367
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@9b
    move-result-object p1

    #@9c
    throw p1

    #@9d
    :cond_9d
    const/16 v2, 0x23

    #@9f
    if-ne v1, v2, :cond_af

    #@a1
    .line 1385
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@a3
    .line 1391
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@a6
    .line 1392
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    #@a9
    .line 1393
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@ab
    .line 1394
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@ad
    goto/16 :goto_6

    #@af
    .line 1396
    :cond_af
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@b1
    return v1

    #@b2
    :cond_b2
    :goto_b2
    move v1, v4

    #@b3
    goto/16 :goto_6
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 987
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@2
    const/4 v1, 0x0

    #@3
    .line 990
    :goto_3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@5
    .line 991
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@7
    :goto_7
    move v4, v3

    #@8
    move v3, v2

    #@9
    :goto_9
    const/16 v5, 0x10

    #@b
    const/4 v6, 0x1

    #@c
    if-ge v2, v4, :cond_5c

    #@e
    add-int/lit8 v7, v2, 0x1

    #@10
    .line 995
    aget-char v2, v0, v2

    #@12
    if-ne v2, p1, :cond_28

    #@14
    .line 998
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@16
    sub-int/2addr v7, v3

    #@17
    sub-int/2addr v7, v6

    #@18
    if-nez v1, :cond_20

    #@1a
    .line 1001
    new-instance p1, Ljava/lang/String;

    #@1c
    invoke-direct {p1, v0, v3, v7}, Ljava/lang/String;-><init>([CII)V

    #@1f
    return-object p1

    #@20
    .line 1003
    :cond_20
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@23
    .line 1004
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object p1

    #@27
    return-object p1

    #@28
    :cond_28
    const/16 v8, 0x5c

    #@2a
    if-ne v2, v8, :cond_4f

    #@2c
    .line 1007
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@2e
    sub-int/2addr v7, v3

    #@2f
    sub-int/2addr v7, v6

    #@30
    if-nez v1, :cond_40

    #@32
    add-int/lit8 v1, v7, 0x1

    #@34
    mul-int/lit8 v1, v1, 0x2

    #@36
    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result v1

    #@3c
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@3f
    move-object v1, v2

    #@40
    .line 1013
    :cond_40
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@43
    .line 1014
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    #@46
    move-result v2

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    .line 1015
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@4c
    .line 1016
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@4e
    goto :goto_7

    #@4f
    :cond_4f
    const/16 v5, 0xa

    #@51
    if-ne v2, v5, :cond_5a

    #@53
    .line 1019
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@55
    add-int/2addr v2, v6

    #@56
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@58
    .line 1020
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    #@5a
    :cond_5a
    move v2, v7

    #@5b
    goto :goto_9

    #@5c
    :cond_5c
    if-nez v1, :cond_6c

    #@5e
    sub-int v1, v2, v3

    #@60
    mul-int/lit8 v1, v1, 0x2

    #@62
    .line 1026
    new-instance v4, Ljava/lang/StringBuilder;

    #@64
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    #@67
    move-result v1

    #@68
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@6b
    move-object v1, v4

    #@6c
    :cond_6c
    sub-int v4, v2, v3

    #@6e
    .line 1028
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@71
    .line 1029
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@73
    .line 1030
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@76
    move-result v2

    #@77
    if-eqz v2, :cond_7a

    #@79
    goto :goto_3

    #@7a
    :cond_7a
    const-string p1, "Unterminated string"

    #@7c
    .line 1031
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@7f
    move-result-object p1

    #@80
    throw p1
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    :cond_2
    move v2, v1

    #@3
    .line 1046
    :goto_3
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@5
    add-int v4, v3, v2

    #@7
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@9
    if-ge v4, v5, :cond_4e

    #@b
    .line 1047
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@d
    add-int/2addr v3, v2

    #@e
    aget-char v3, v4, v3

    #@10
    const/16 v4, 0x9

    #@12
    if-eq v3, v4, :cond_5c

    #@14
    const/16 v4, 0xa

    #@16
    if-eq v3, v4, :cond_5c

    #@18
    const/16 v4, 0xc

    #@1a
    if-eq v3, v4, :cond_5c

    #@1c
    const/16 v4, 0xd

    #@1e
    if-eq v3, v4, :cond_5c

    #@20
    const/16 v4, 0x20

    #@22
    if-eq v3, v4, :cond_5c

    #@24
    const/16 v4, 0x23

    #@26
    if-eq v3, v4, :cond_4a

    #@28
    const/16 v4, 0x2c

    #@2a
    if-eq v3, v4, :cond_5c

    #@2c
    const/16 v4, 0x2f

    #@2e
    if-eq v3, v4, :cond_4a

    #@30
    const/16 v4, 0x3d

    #@32
    if-eq v3, v4, :cond_4a

    #@34
    const/16 v4, 0x7b

    #@36
    if-eq v3, v4, :cond_5c

    #@38
    const/16 v4, 0x7d

    #@3a
    if-eq v3, v4, :cond_5c

    #@3c
    const/16 v4, 0x3a

    #@3e
    if-eq v3, v4, :cond_5c

    #@40
    const/16 v4, 0x3b

    #@42
    if-eq v3, v4, :cond_4a

    #@44
    packed-switch v3, :pswitch_data_9c

    #@47
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_3

    #@4a
    .line 1053
    :cond_4a
    :pswitch_4a
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@4d
    goto :goto_5c

    #@4e
    .line 1070
    :cond_4e
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@50
    array-length v3, v3

    #@51
    if-ge v2, v3, :cond_5e

    #@53
    add-int/lit8 v3, v2, 0x1

    #@55
    .line 1071
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@58
    move-result v3

    #@59
    if-eqz v3, :cond_5c

    #@5b
    goto :goto_3

    #@5c
    :cond_5c
    :goto_5c
    :pswitch_5c
    move v1, v2

    #@5d
    goto :goto_7e

    #@5e
    :cond_5e
    if-nez v0, :cond_6b

    #@60
    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    #@62
    const/16 v3, 0x10

    #@64
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@67
    move-result v3

    #@68
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@6b
    .line 1082
    :cond_6b
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@6d
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@6f
    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@72
    .line 1083
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@74
    add-int/2addr v3, v2

    #@75
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@77
    const/4 v2, 0x1

    #@78
    .line 1085
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@7b
    move-result v2

    #@7c
    if-nez v2, :cond_2

    #@7e
    :goto_7e
    if-nez v0, :cond_8a

    #@80
    .line 1090
    new-instance v0, Ljava/lang/String;

    #@82
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@84
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@86
    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    #@89
    goto :goto_96

    #@8a
    :cond_8a
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@8c
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@8e
    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v0

    #@96
    .line 1091
    :goto_96
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@98
    add-int/2addr v2, v1

    #@99
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@9b
    return-object v0

    #@9c
    :pswitch_data_9c
    .packed-switch 0x5b
        :pswitch_5c
        :pswitch_4a
        :pswitch_5c
    .end packed-switch
.end method

.method private peekKeyword()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 599
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@4
    aget-char v0, v0, v1

    #@6
    const/16 v1, 0x74

    #@8
    const/4 v2, 0x0

    #@9
    if-eq v0, v1, :cond_2f

    #@b
    const/16 v1, 0x54

    #@d
    if-ne v0, v1, :cond_10

    #@f
    goto :goto_2f

    #@10
    :cond_10
    const/16 v1, 0x66

    #@12
    if-eq v0, v1, :cond_29

    #@14
    const/16 v1, 0x46

    #@16
    if-ne v0, v1, :cond_19

    #@18
    goto :goto_29

    #@19
    :cond_19
    const/16 v1, 0x6e

    #@1b
    if-eq v0, v1, :cond_23

    #@1d
    const/16 v1, 0x4e

    #@1f
    if-ne v0, v1, :cond_22

    #@21
    goto :goto_23

    #@22
    :cond_22
    return v2

    #@23
    :cond_23
    :goto_23
    const-string v0, "null"

    #@25
    const-string v1, "NULL"

    #@27
    const/4 v3, 0x7

    #@28
    goto :goto_34

    #@29
    :cond_29
    :goto_29
    const-string v0, "false"

    #@2b
    const-string v1, "FALSE"

    #@2d
    const/4 v3, 0x6

    #@2e
    goto :goto_34

    #@2f
    :cond_2f
    :goto_2f
    const-string v0, "true"

    #@31
    const-string v1, "TRUE"

    #@33
    const/4 v3, 0x5

    #@34
    .line 620
    :goto_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@37
    move-result v4

    #@38
    const/4 v5, 0x1

    #@39
    :goto_39
    if-ge v5, v4, :cond_62

    #@3b
    .line 622
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@3d
    add-int/2addr v6, v5

    #@3e
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@40
    if-lt v6, v7, :cond_4b

    #@42
    add-int/lit8 v6, v5, 0x1

    #@44
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@47
    move-result v6

    #@48
    if-nez v6, :cond_4b

    #@4a
    return v2

    #@4b
    .line 625
    :cond_4b
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@4d
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@4f
    add-int/2addr v7, v5

    #@50
    aget-char v6, v6, v7

    #@52
    .line 626
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@55
    move-result v7

    #@56
    if-eq v6, v7, :cond_5f

    #@58
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    #@5b
    move-result v7

    #@5c
    if-eq v6, v7, :cond_5f

    #@5e
    return v2

    #@5f
    :cond_5f
    add-int/lit8 v5, v5, 0x1

    #@61
    goto :goto_39

    #@62
    .line 631
    :cond_62
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@64
    add-int/2addr v0, v4

    #@65
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@67
    if-lt v0, v1, :cond_71

    #@69
    add-int/lit8 v0, v4, 0x1

    #@6b
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@6e
    move-result v0

    #@6f
    if-eqz v0, :cond_7f

    #@71
    :cond_71
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@73
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@75
    add-int/2addr v1, v4

    #@76
    aget-char v0, v0, v1

    #@78
    .line 632
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    #@7b
    move-result v0

    #@7c
    if-eqz v0, :cond_7f

    #@7e
    return v2

    #@7f
    .line 637
    :cond_7f
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@81
    add-int/2addr v0, v4

    #@82
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@84
    .line 638
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@86
    return v3
.end method

.method private peekNumber()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    .line 643
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@4
    .line 644
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@6
    .line 645
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@8
    const/4 v6, 0x0

    #@9
    const/4 v7, 0x1

    #@a
    move v8, v6

    #@b
    move v9, v8

    #@c
    move v13, v9

    #@d
    move v10, v7

    #@e
    const-wide/16 v11, 0x0

    #@10
    :goto_10
    add-int v14, v2, v8

    #@12
    const/4 v15, 0x2

    #@13
    if-ne v14, v3, :cond_27

    #@15
    .line 657
    array-length v2, v1

    #@16
    if-ne v8, v2, :cond_19

    #@18
    return v6

    #@19
    :cond_19
    add-int/lit8 v2, v8, 0x1

    #@1b
    .line 662
    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_23

    #@21
    goto/16 :goto_93

    #@23
    .line 665
    :cond_23
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@25
    .line 666
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@27
    :cond_27
    add-int v14, v2, v8

    #@29
    .line 669
    aget-char v14, v1, v14

    #@2b
    const/16 v6, 0x2b

    #@2d
    const/4 v5, 0x5

    #@2e
    if-eq v14, v6, :cond_eb

    #@30
    const/16 v6, 0x45

    #@32
    if-eq v14, v6, :cond_df

    #@34
    const/16 v6, 0x65

    #@36
    if-eq v14, v6, :cond_df

    #@38
    const/16 v6, 0x2d

    #@3a
    if-eq v14, v6, :cond_d2

    #@3c
    const/16 v6, 0x2e

    #@3e
    const/4 v4, 0x3

    #@3f
    if-eq v14, v6, :cond_cb

    #@41
    const/16 v6, 0x30

    #@43
    if-lt v14, v6, :cond_8d

    #@45
    const/16 v6, 0x39

    #@47
    if-le v14, v6, :cond_4a

    #@49
    goto :goto_8d

    #@4a
    :cond_4a
    if-eq v9, v7, :cond_83

    #@4c
    if-nez v9, :cond_4f

    #@4e
    goto :goto_83

    #@4f
    :cond_4f
    if-ne v9, v15, :cond_76

    #@51
    const-wide/16 v16, 0x0

    #@53
    cmp-long v4, v11, v16

    #@55
    if-nez v4, :cond_59

    #@57
    const/4 v4, 0x0

    #@58
    return v4

    #@59
    :cond_59
    const-wide/16 v4, 0xa

    #@5b
    mul-long/2addr v4, v11

    #@5c
    add-int/lit8 v14, v14, -0x30

    #@5e
    int-to-long v14, v14

    #@5f
    sub-long/2addr v4, v14

    #@60
    const-wide v14, -0xcccccccccccccccL

    #@65
    cmp-long v6, v11, v14

    #@67
    if-gtz v6, :cond_72

    #@69
    if-nez v6, :cond_70

    #@6b
    cmp-long v6, v4, v11

    #@6d
    if-gez v6, :cond_70

    #@6f
    goto :goto_72

    #@70
    :cond_70
    const/4 v6, 0x0

    #@71
    goto :goto_73

    #@72
    :cond_72
    :goto_72
    move v6, v7

    #@73
    :goto_73
    and-int/2addr v10, v6

    #@74
    move-wide v11, v4

    #@75
    goto :goto_88

    #@76
    :cond_76
    if-ne v9, v4, :cond_7b

    #@78
    const/4 v6, 0x0

    #@79
    const/4 v9, 0x4

    #@7a
    goto :goto_89

    #@7b
    :cond_7b
    if-eq v9, v5, :cond_80

    #@7d
    const/4 v4, 0x6

    #@7e
    if-ne v9, v4, :cond_88

    #@80
    :cond_80
    const/4 v6, 0x0

    #@81
    const/4 v9, 0x7

    #@82
    goto :goto_89

    #@83
    :cond_83
    :goto_83
    add-int/lit8 v14, v14, -0x30

    #@85
    neg-int v4, v14

    #@86
    int-to-long v11, v4

    #@87
    move v9, v15

    #@88
    :cond_88
    :goto_88
    const/4 v6, 0x0

    #@89
    :goto_89
    const-wide/16 v16, 0x0

    #@8b
    goto/16 :goto_f2

    #@8d
    .line 706
    :cond_8d
    :goto_8d
    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    #@90
    move-result v1

    #@91
    if-nez v1, :cond_c9

    #@93
    :goto_93
    if-ne v9, v15, :cond_b7

    #@95
    if-eqz v10, :cond_b7

    #@97
    const-wide/high16 v1, -0x8000000000000000L

    #@99
    cmp-long v1, v11, v1

    #@9b
    if-nez v1, :cond_9f

    #@9d
    if-eqz v13, :cond_b7

    #@9f
    :cond_9f
    const-wide/16 v16, 0x0

    #@a1
    cmp-long v1, v11, v16

    #@a3
    if-nez v1, :cond_a7

    #@a5
    if-nez v13, :cond_b7

    #@a7
    :cond_a7
    if-eqz v13, :cond_aa

    #@a9
    goto :goto_ab

    #@aa
    :cond_aa
    neg-long v11, v11

    #@ab
    .line 732
    :goto_ab
    iput-wide v11, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    #@ad
    .line 733
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@af
    add-int/2addr v1, v8

    #@b0
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@b2
    const/16 v1, 0xf

    #@b4
    .line 734
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@b6
    return v1

    #@b7
    :cond_b7
    if-eq v9, v15, :cond_c2

    #@b9
    const/4 v1, 0x4

    #@ba
    if-eq v9, v1, :cond_c2

    #@bc
    const/4 v1, 0x7

    #@bd
    if-ne v9, v1, :cond_c0

    #@bf
    goto :goto_c2

    #@c0
    :cond_c0
    const/4 v6, 0x0

    #@c1
    return v6

    #@c2
    .line 737
    :cond_c2
    :goto_c2
    iput v8, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    #@c4
    const/16 v1, 0x10

    #@c6
    .line 738
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@c8
    return v1

    #@c9
    :cond_c9
    const/4 v6, 0x0

    #@ca
    return v6

    #@cb
    :cond_cb
    const/4 v6, 0x0

    #@cc
    const-wide/16 v16, 0x0

    #@ce
    if-ne v9, v15, :cond_d1

    #@d0
    goto :goto_f1

    #@d1
    :cond_d1
    return v6

    #@d2
    :cond_d2
    const/4 v4, 0x6

    #@d3
    const/4 v6, 0x0

    #@d4
    const-wide/16 v16, 0x0

    #@d6
    if-nez v9, :cond_db

    #@d8
    move v9, v7

    #@d9
    move v13, v9

    #@da
    goto :goto_f2

    #@db
    :cond_db
    if-ne v9, v5, :cond_de

    #@dd
    goto :goto_f1

    #@de
    :cond_de
    return v6

    #@df
    :cond_df
    const/4 v6, 0x0

    #@e0
    const-wide/16 v16, 0x0

    #@e2
    if-eq v9, v15, :cond_e9

    #@e4
    const/4 v4, 0x4

    #@e5
    if-ne v9, v4, :cond_e8

    #@e7
    goto :goto_e9

    #@e8
    :cond_e8
    return v6

    #@e9
    :cond_e9
    :goto_e9
    move v9, v5

    #@ea
    goto :goto_f2

    #@eb
    :cond_eb
    const/4 v4, 0x6

    #@ec
    const/4 v6, 0x0

    #@ed
    const-wide/16 v16, 0x0

    #@ef
    if-ne v9, v5, :cond_f6

    #@f1
    :goto_f1
    move v9, v4

    #@f2
    :goto_f2
    add-int/lit8 v8, v8, 0x1

    #@f4
    goto/16 :goto_10

    #@f6
    :cond_f6
    return v6
.end method

.method private push(I)V
    .registers 8

    #@0
    .line 1264
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@2
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    #@4
    array-length v2, v1

    #@5
    if-ne v0, v2, :cond_2b

    #@7
    mul-int/lit8 v2, v0, 0x2

    #@9
    .line 1265
    new-array v2, v2, [I

    #@b
    mul-int/lit8 v3, v0, 0x2

    #@d
    .line 1266
    new-array v3, v3, [I

    #@f
    mul-int/lit8 v4, v0, 0x2

    #@11
    .line 1267
    new-array v4, v4, [Ljava/lang/String;

    #@13
    const/4 v5, 0x0

    #@14
    .line 1268
    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    .line 1269
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@19
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@1b
    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1e
    .line 1270
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    #@20
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@22
    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@25
    .line 1271
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    #@27
    .line 1272
    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@29
    .line 1273
    iput-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    #@2b
    .line 1275
    :cond_2b
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    #@2d
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@2f
    add-int/lit8 v2, v1, 0x1

    #@31
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@33
    aput p1, v0, v1

    #@35
    return-void
.end method

.method private readEscapeCharacter()C
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 1504
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@4
    const-string v2, "Unterminated escape sequence"

    #@6
    const/4 v3, 0x1

    #@7
    if-ne v0, v1, :cond_15

    #@9
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_10

    #@f
    goto :goto_15

    #@10
    .line 1505
    :cond_10
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@13
    move-result-object v0

    #@14
    throw v0

    #@15
    .line 1508
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@17
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@19
    add-int/lit8 v4, v1, 0x1

    #@1b
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@1d
    aget-char v0, v0, v1

    #@1f
    const/16 v1, 0xa

    #@21
    if-eq v0, v1, :cond_bf

    #@23
    const/16 v3, 0x22

    #@25
    if-eq v0, v3, :cond_c6

    #@27
    const/16 v3, 0x27

    #@29
    if-eq v0, v3, :cond_c6

    #@2b
    const/16 v3, 0x2f

    #@2d
    if-eq v0, v3, :cond_c6

    #@2f
    const/16 v3, 0x5c

    #@31
    if-eq v0, v3, :cond_c6

    #@33
    const/16 v3, 0x62

    #@35
    if-eq v0, v3, :cond_bc

    #@37
    const/16 v3, 0x66

    #@39
    if-eq v0, v3, :cond_b9

    #@3b
    const/16 v5, 0x6e

    #@3d
    if-eq v0, v5, :cond_b8

    #@3f
    const/16 v5, 0x72

    #@41
    if-eq v0, v5, :cond_b5

    #@43
    const/16 v5, 0x74

    #@45
    if-eq v0, v5, :cond_b2

    #@47
    const/16 v5, 0x75

    #@49
    if-ne v0, v5, :cond_ab

    #@4b
    const/4 v0, 0x4

    #@4c
    add-int/2addr v4, v0

    #@4d
    .line 1511
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@4f
    if-le v4, v5, :cond_5d

    #@51
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@54
    move-result v4

    #@55
    if-eqz v4, :cond_58

    #@57
    goto :goto_5d

    #@58
    .line 1512
    :cond_58
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@5b
    move-result-object v0

    #@5c
    throw v0

    #@5d
    .line 1516
    :cond_5d
    :goto_5d
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@5f
    add-int/lit8 v4, v2, 0x4

    #@61
    const/4 v5, 0x0

    #@62
    :goto_62
    if-ge v2, v4, :cond_a5

    #@64
    .line 1517
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@66
    aget-char v6, v6, v2

    #@68
    shl-int/lit8 v5, v5, 0x4

    #@6a
    int-to-char v5, v5

    #@6b
    const/16 v7, 0x30

    #@6d
    if-lt v6, v7, :cond_78

    #@6f
    const/16 v7, 0x39

    #@71
    if-gt v6, v7, :cond_78

    #@73
    add-int/lit8 v6, v6, -0x30

    #@75
    :goto_75
    add-int/2addr v5, v6

    #@76
    int-to-char v5, v5

    #@77
    goto :goto_8d

    #@78
    :cond_78
    const/16 v7, 0x61

    #@7a
    if-lt v6, v7, :cond_82

    #@7c
    if-gt v6, v3, :cond_82

    #@7e
    add-int/lit8 v6, v6, -0x61

    #@80
    :goto_80
    add-int/2addr v6, v1

    #@81
    goto :goto_75

    #@82
    :cond_82
    const/16 v7, 0x41

    #@84
    if-lt v6, v7, :cond_90

    #@86
    const/16 v7, 0x46

    #@88
    if-gt v6, v7, :cond_90

    #@8a
    add-int/lit8 v6, v6, -0x41

    #@8c
    goto :goto_80

    #@8d
    :goto_8d
    add-int/lit8 v2, v2, 0x1

    #@8f
    goto :goto_62

    #@90
    .line 1526
    :cond_90
    new-instance v1, Ljava/lang/NumberFormatException;

    #@92
    new-instance v2, Ljava/lang/String;

    #@94
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@96
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@98
    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    #@9b
    const-string v0, "\\u"

    #@9d
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@a0
    move-result-object v0

    #@a1
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@a4
    throw v1

    #@a5
    .line 1529
    :cond_a5
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@a7
    add-int/2addr v1, v0

    #@a8
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@aa
    return v5

    #@ab
    :cond_ab
    const-string v0, "Invalid escape sequence"

    #@ad
    .line 1559
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@b0
    move-result-object v0

    #@b1
    throw v0

    #@b2
    :cond_b2
    const/16 v0, 0x9

    #@b4
    return v0

    #@b5
    :cond_b5
    const/16 v0, 0xd

    #@b7
    return v0

    #@b8
    :cond_b8
    return v1

    #@b9
    :cond_b9
    const/16 v0, 0xc

    #@bb
    return v0

    #@bc
    :cond_bc
    const/16 v0, 0x8

    #@be
    return v0

    #@bf
    .line 1548
    :cond_bf
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@c1
    add-int/2addr v1, v3

    #@c2
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@c4
    .line 1549
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    #@c6
    :cond_c6
    return v0
.end method

.method private skipQuotedValue(C)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 1097
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@2
    .line 1099
    :goto_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@4
    .line 1100
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@6
    :goto_6
    const/4 v3, 0x1

    #@7
    if-ge v1, v2, :cond_2d

    #@9
    add-int/lit8 v4, v1, 0x1

    #@b
    .line 1103
    aget-char v1, v0, v1

    #@d
    if-ne v1, p1, :cond_12

    #@f
    .line 1105
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@11
    return-void

    #@12
    :cond_12
    const/16 v5, 0x5c

    #@14
    if-ne v1, v5, :cond_20

    #@16
    .line 1108
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@18
    .line 1109
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    #@1b
    .line 1110
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@1d
    .line 1111
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@1f
    goto :goto_6

    #@20
    :cond_20
    const/16 v5, 0xa

    #@22
    if-ne v1, v5, :cond_2b

    #@24
    .line 1113
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@26
    add-int/2addr v1, v3

    #@27
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@29
    .line 1114
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    #@2b
    :cond_2b
    move v1, v4

    #@2c
    goto :goto_6

    #@2d
    .line 1117
    :cond_2d
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@2f
    .line 1118
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_36

    #@35
    goto :goto_2

    #@36
    :cond_36
    const-string p1, "Unterminated string"

    #@38
    .line 1119
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@3b
    move-result-object p1

    #@3c
    throw p1
.end method

.method private skipTo(Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 1435
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 1437
    :goto_4
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@6
    add-int/2addr v1, v0

    #@7
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@9
    const/4 v3, 0x0

    #@a
    if-le v1, v2, :cond_14

    #@c
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_13

    #@12
    goto :goto_14

    #@13
    :cond_13
    return v3

    #@14
    .line 1438
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@16
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@18
    aget-char v1, v1, v2

    #@1a
    const/16 v4, 0xa

    #@1c
    const/4 v5, 0x1

    #@1d
    if-ne v1, v4, :cond_29

    #@1f
    .line 1439
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@21
    add-int/2addr v1, v5

    #@22
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@24
    add-int/lit8 v2, v2, 0x1

    #@26
    .line 1440
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    #@28
    goto :goto_38

    #@29
    :cond_29
    :goto_29
    if-ge v3, v0, :cond_41

    #@2b
    .line 1444
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@2d
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@2f
    add-int/2addr v2, v3

    #@30
    aget-char v1, v1, v2

    #@32
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@35
    move-result v2

    #@36
    if-eq v1, v2, :cond_3e

    #@38
    .line 1437
    :goto_38
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@3a
    add-int/2addr v1, v5

    #@3b
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@3d
    goto :goto_4

    #@3e
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    #@40
    goto :goto_29

    #@41
    :cond_41
    return v5
.end method

.method private skipToEndOfLine()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 1419
    :cond_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@4
    const/4 v2, 0x1

    #@5
    if-lt v0, v1, :cond_d

    #@7
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_27

    #@d
    .line 1420
    :cond_d
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@f
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@11
    add-int/lit8 v3, v1, 0x1

    #@13
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@15
    aget-char v0, v0, v1

    #@17
    const/16 v1, 0xa

    #@19
    if-ne v0, v1, :cond_23

    #@1b
    .line 1422
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@1d
    add-int/2addr v0, v2

    #@1e
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@20
    .line 1423
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    #@22
    goto :goto_27

    #@23
    :cond_23
    const/16 v1, 0xd

    #@25
    if-ne v0, v1, :cond_0

    #@27
    :cond_27
    :goto_27
    return-void
.end method

.method private skipUnquotedValue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    :cond_0
    const/4 v0, 0x0

    #@1
    .line 1125
    :goto_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@3
    add-int v2, v1, v0

    #@5
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@7
    if-ge v2, v3, :cond_51

    #@9
    .line 1126
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@b
    add-int/2addr v1, v0

    #@c
    aget-char v1, v2, v1

    #@e
    const/16 v2, 0x9

    #@10
    if-eq v1, v2, :cond_4b

    #@12
    const/16 v2, 0xa

    #@14
    if-eq v1, v2, :cond_4b

    #@16
    const/16 v2, 0xc

    #@18
    if-eq v1, v2, :cond_4b

    #@1a
    const/16 v2, 0xd

    #@1c
    if-eq v1, v2, :cond_4b

    #@1e
    const/16 v2, 0x20

    #@20
    if-eq v1, v2, :cond_4b

    #@22
    const/16 v2, 0x23

    #@24
    if-eq v1, v2, :cond_48

    #@26
    const/16 v2, 0x2c

    #@28
    if-eq v1, v2, :cond_4b

    #@2a
    const/16 v2, 0x2f

    #@2c
    if-eq v1, v2, :cond_48

    #@2e
    const/16 v2, 0x3d

    #@30
    if-eq v1, v2, :cond_48

    #@32
    const/16 v2, 0x7b

    #@34
    if-eq v1, v2, :cond_4b

    #@36
    const/16 v2, 0x7d

    #@38
    if-eq v1, v2, :cond_4b

    #@3a
    const/16 v2, 0x3a

    #@3c
    if-eq v1, v2, :cond_4b

    #@3e
    const/16 v2, 0x3b

    #@40
    if-eq v1, v2, :cond_48

    #@42
    packed-switch v1, :pswitch_data_5c

    #@45
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_1

    #@48
    .line 1132
    :cond_48
    :pswitch_48
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@4b
    .line 1144
    :cond_4b
    :pswitch_4b
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@4d
    add-int/2addr v1, v0

    #@4e
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@50
    return-void

    #@51
    :cond_51
    add-int/2addr v1, v0

    #@52
    .line 1148
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@54
    const/4 v0, 0x1

    #@55
    .line 1149
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@58
    move-result v0

    #@59
    if-nez v0, :cond_0

    #@5b
    return-void

    #@5c
    :pswitch_data_5c
    .packed-switch 0x5b
        :pswitch_4b
        :pswitch_48
        :pswitch_4b
    .end packed-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 1568
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object p1

    #@b
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object p1

    #@13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    invoke-direct {v0, p1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
.end method


# virtual methods
.method public beginArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 341
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 343
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@7
    move-result v0

    #@8
    :cond_8
    const/4 v1, 0x3

    #@9
    if-ne v0, v1, :cond_1a

    #@b
    const/4 v0, 0x1

    #@c
    .line 346
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    #@f
    .line 347
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@11
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@13
    sub-int/2addr v2, v0

    #@14
    const/4 v0, 0x0

    #@15
    aput v0, v1, v2

    #@17
    .line 348
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@19
    return-void

    #@1a
    .line 350
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    const-string v2, "Expected BEGIN_ARRAY but was "

    #@20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@23
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0
.end method

.method public beginObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 377
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 379
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@7
    move-result v0

    #@8
    :cond_8
    const/4 v1, 0x1

    #@9
    if-ne v0, v1, :cond_13

    #@b
    const/4 v0, 0x3

    #@c
    .line 382
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    #@f
    const/4 v0, 0x0

    #@10
    .line 383
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@12
    return-void

    #@13
    .line 385
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    const-string v2, "Expected BEGIN_OBJECT but was "

    #@19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 1216
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@3
    .line 1217
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    #@5
    const/16 v2, 0x8

    #@7
    aput v2, v1, v0

    #@9
    const/4 v0, 0x1

    #@a
    .line 1218
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@c
    .line 1219
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    #@e
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    #@11
    return-void
.end method

.method doPeek()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 462
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    #@2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@4
    add-int/lit8 v2, v1, -0x1

    #@6
    aget v2, v0, v2

    #@8
    const/16 v3, 0x8

    #@a
    const/16 v4, 0x27

    #@c
    const/16 v5, 0x22

    #@e
    const/16 v6, 0x5d

    #@10
    const/4 v7, 0x3

    #@11
    const/4 v8, 0x7

    #@12
    const/16 v9, 0x3b

    #@14
    const/16 v10, 0x2c

    #@16
    const/4 v11, 0x4

    #@17
    const/4 v12, 0x2

    #@18
    const/4 v13, 0x1

    #@19
    if-ne v2, v13, :cond_20

    #@1b
    sub-int/2addr v1, v13

    #@1c
    .line 464
    aput v12, v0, v1

    #@1e
    goto/16 :goto_a2

    #@20
    :cond_20
    if-ne v2, v12, :cond_3a

    #@22
    .line 467
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    #@25
    move-result v0

    #@26
    if-eq v0, v10, :cond_a2

    #@28
    if-eq v0, v9, :cond_36

    #@2a
    if-ne v0, v6, :cond_2f

    #@2c
    .line 470
    iput v11, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2e
    return v11

    #@2f
    :cond_2f
    const-string v0, "Unterminated array"

    #@31
    .line 476
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@34
    move-result-object v0

    #@35
    throw v0

    #@36
    .line 472
    :cond_36
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@39
    goto :goto_a2

    #@3a
    :cond_3a
    const/4 v14, 0x5

    #@3b
    if-eq v2, v7, :cond_11b

    #@3d
    if-ne v2, v14, :cond_41

    #@3f
    goto/16 :goto_11b

    #@41
    :cond_41
    if-ne v2, v11, :cond_76

    #@43
    sub-int/2addr v1, v13

    #@44
    .line 517
    aput v14, v0, v1

    #@46
    .line 519
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    #@49
    move-result v0

    #@4a
    const/16 v1, 0x3a

    #@4c
    if-eq v0, v1, :cond_a2

    #@4e
    const/16 v1, 0x3d

    #@50
    if-ne v0, v1, :cond_6f

    #@52
    .line 524
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@55
    .line 525
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@57
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    #@59
    if-lt v0, v1, :cond_61

    #@5b
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_a2

    #@61
    :cond_61
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@63
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@65
    aget-char v0, v0, v1

    #@67
    const/16 v14, 0x3e

    #@69
    if-ne v0, v14, :cond_a2

    #@6b
    add-int/2addr v1, v13

    #@6c
    .line 526
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@6e
    goto :goto_a2

    #@6f
    :cond_6f
    const-string v0, "Expected \':\'"

    #@71
    .line 530
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@74
    move-result-object v0

    #@75
    throw v0

    #@76
    :cond_76
    const/4 v0, 0x6

    #@77
    if-ne v2, v0, :cond_88

    #@79
    .line 533
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    #@7b
    if-eqz v0, :cond_80

    #@7d
    .line 534
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    #@80
    .line 536
    :cond_80
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    #@82
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@84
    sub-int/2addr v1, v13

    #@85
    aput v8, v0, v1

    #@87
    goto :goto_a2

    #@88
    :cond_88
    if-ne v2, v8, :cond_a0

    #@8a
    const/4 v0, 0x0

    #@8b
    .line 538
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    #@8e
    move-result v0

    #@8f
    const/4 v1, -0x1

    #@90
    if-ne v0, v1, :cond_97

    #@92
    const/16 v0, 0x11

    #@94
    .line 540
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@96
    return v0

    #@97
    .line 542
    :cond_97
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@9a
    .line 543
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@9c
    sub-int/2addr v0, v13

    #@9d
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@9f
    goto :goto_a2

    #@a0
    :cond_a0
    if-eq v2, v3, :cond_113

    #@a2
    .line 549
    :cond_a2
    :goto_a2
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    #@a5
    move-result v0

    #@a6
    if-eq v0, v5, :cond_10e

    #@a8
    if-eq v0, v4, :cond_108

    #@aa
    if-eq v0, v10, :cond_f1

    #@ac
    if-eq v0, v9, :cond_f1

    #@ae
    const/16 v1, 0x5b

    #@b0
    if-eq v0, v1, :cond_ee

    #@b2
    if-eq v0, v6, :cond_e9

    #@b4
    const/16 v1, 0x7b

    #@b6
    if-eq v0, v1, :cond_e6

    #@b8
    .line 576
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@ba
    sub-int/2addr v0, v13

    #@bb
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@bd
    .line 579
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    #@c0
    move-result v0

    #@c1
    if-eqz v0, :cond_c4

    #@c3
    return v0

    #@c4
    .line 584
    :cond_c4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    #@c7
    move-result v0

    #@c8
    if-eqz v0, :cond_cb

    #@ca
    return v0

    #@cb
    .line 589
    :cond_cb
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@cd
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@cf
    aget-char v0, v0, v1

    #@d1
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    #@d4
    move-result v0

    #@d5
    if-eqz v0, :cond_df

    #@d7
    .line 593
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@da
    const/16 v0, 0xa

    #@dc
    .line 594
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@de
    return v0

    #@df
    :cond_df
    const-string v0, "Expected value"

    #@e1
    .line 590
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@e4
    move-result-object v0

    #@e5
    throw v0

    #@e6
    .line 574
    :cond_e6
    iput v13, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@e8
    return v13

    #@e9
    :cond_e9
    if-ne v2, v13, :cond_f1

    #@eb
    .line 553
    iput v11, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@ed
    return v11

    #@ee
    .line 572
    :cond_ee
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@f0
    return v7

    #@f1
    :cond_f1
    if-eq v2, v13, :cond_fd

    #@f3
    if-ne v2, v12, :cond_f6

    #@f5
    goto :goto_fd

    #@f6
    :cond_f6
    const-string v0, "Unexpected value"

    #@f8
    .line 564
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@fb
    move-result-object v0

    #@fc
    throw v0

    #@fd
    .line 560
    :cond_fd
    :goto_fd
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@100
    .line 561
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@102
    sub-int/2addr v0, v13

    #@103
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@105
    .line 562
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@107
    return v8

    #@108
    .line 567
    :cond_108
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@10b
    .line 568
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@10d
    return v3

    #@10e
    :cond_10e
    const/16 v0, 0x9

    #@110
    .line 570
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@112
    return v0

    #@113
    .line 546
    :cond_113
    new-instance v0, Ljava/lang/IllegalStateException;

    #@115
    const-string v1, "JsonReader is closed"

    #@117
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11a
    throw v0

    #@11b
    :cond_11b
    :goto_11b
    sub-int/2addr v1, v13

    #@11c
    .line 479
    aput v11, v0, v1

    #@11e
    const/16 v0, 0x7d

    #@120
    if-ne v2, v14, :cond_139

    #@122
    .line 482
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    #@125
    move-result v1

    #@126
    if-eq v1, v10, :cond_139

    #@128
    if-eq v1, v9, :cond_136

    #@12a
    if-ne v1, v0, :cond_12f

    #@12c
    .line 485
    iput v12, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@12e
    return v12

    #@12f
    :cond_12f
    const-string v0, "Unterminated object"

    #@131
    .line 491
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@134
    move-result-object v0

    #@135
    throw v0

    #@136
    .line 487
    :cond_136
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@139
    .line 494
    :cond_139
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    #@13c
    move-result v1

    #@13d
    if-eq v1, v5, :cond_170

    #@13f
    if-eq v1, v4, :cond_168

    #@141
    const-string v3, "Expected name"

    #@143
    if-eq v1, v0, :cond_15e

    #@145
    .line 508
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@148
    .line 509
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@14a
    sub-int/2addr v0, v13

    #@14b
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@14d
    int-to-char v0, v1

    #@14e
    .line 510
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    #@151
    move-result v0

    #@152
    if-eqz v0, :cond_159

    #@154
    const/16 v0, 0xe

    #@156
    .line 511
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@158
    return v0

    #@159
    .line 513
    :cond_159
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@15c
    move-result-object v0

    #@15d
    throw v0

    #@15e
    :cond_15e
    if-eq v2, v14, :cond_163

    #@160
    .line 503
    iput v12, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@162
    return v12

    #@163
    .line 505
    :cond_163
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@166
    move-result-object v0

    #@167
    throw v0

    #@168
    .line 499
    :cond_168
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    #@16b
    const/16 v0, 0xc

    #@16d
    .line 500
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@16f
    return v0

    #@170
    :cond_170
    const/16 v0, 0xd

    #@172
    .line 497
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@174
    return v0
.end method

.method public endArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 359
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 361
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@7
    move-result v0

    #@8
    :cond_8
    const/4 v1, 0x4

    #@9
    if-ne v0, v1, :cond_1f

    #@b
    .line 364
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@11
    .line 365
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@13
    add-int/lit8 v0, v0, -0x1

    #@15
    aget v2, v1, v0

    #@17
    add-int/lit8 v2, v2, 0x1

    #@19
    aput v2, v1, v0

    #@1b
    const/4 v0, 0x0

    #@1c
    .line 366
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@1e
    return-void

    #@1f
    .line 368
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    const-string v2, "Expected END_ARRAY but was "

    #@25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@28
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0
.end method

.method public endObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 394
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 396
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@7
    move-result v0

    #@8
    :cond_8
    const/4 v1, 0x2

    #@9
    if-ne v0, v1, :cond_24

    #@b
    .line 399
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@d
    add-int/lit8 v0, v0, -0x1

    #@f
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@11
    .line 400
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    #@13
    const/4 v2, 0x0

    #@14
    aput-object v2, v1, v0

    #@16
    .line 401
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@18
    add-int/lit8 v0, v0, -0x1

    #@1a
    aget v2, v1, v0

    #@1c
    add-int/lit8 v2, v2, 0x1

    #@1e
    aput v2, v1, v0

    #@20
    const/4 v0, 0x0

    #@21
    .line 402
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@23
    return-void

    #@24
    .line 404
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    const-string v2, "Expected END_OBJECT but was "

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2d
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 6

    #@0
    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "$"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 1469
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@9
    const/4 v2, 0x0

    #@a
    :goto_a
    if-ge v2, v1, :cond_45

    #@c
    .line 1470
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    #@e
    aget v3, v3, v2

    #@10
    const/4 v4, 0x1

    #@11
    if-eq v3, v4, :cond_2f

    #@13
    const/4 v4, 0x2

    #@14
    if-eq v3, v4, :cond_2f

    #@16
    const/4 v4, 0x3

    #@17
    if-eq v3, v4, :cond_20

    #@19
    const/4 v4, 0x4

    #@1a
    if-eq v3, v4, :cond_20

    #@1c
    const/4 v4, 0x5

    #@1d
    if-eq v3, v4, :cond_20

    #@1f
    goto :goto_42

    #@20
    :cond_20
    const/16 v3, 0x2e

    #@22
    .line 1479
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 1480
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    #@27
    aget-object v3, v3, v2

    #@29
    if-eqz v3, :cond_42

    #@2b
    .line 1481
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    goto :goto_42

    #@2f
    :cond_2f
    const/16 v3, 0x5b

    #@31
    .line 1473
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@37
    aget v4, v4, v2

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    const/16 v4, 0x5d

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_a

    #@45
    .line 1491
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    return-object v0
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 412
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 414
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@7
    move-result v0

    #@8
    :cond_8
    const/4 v1, 0x2

    #@9
    if-eq v0, v1, :cond_10

    #@b
    const/4 v1, 0x4

    #@c
    if-eq v0, v1, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method public final isLenient()Z
    .registers 2

    #@0
    .line 333
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    #@2
    return v0
.end method

.method locationString()Ljava/lang/String;
    .registers 5

    #@0
    .line 1458
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    .line 1459
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@6
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    #@8
    sub-int/2addr v1, v2

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    .line 1460
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    const-string v3, " at line "

    #@f
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string v2, " column "

    #@18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string v1, " path "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

.method public nextBoolean()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 840
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 842
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@7
    move-result v0

    #@8
    :cond_8
    const/4 v1, 0x5

    #@9
    const/4 v2, 0x0

    #@a
    const/4 v3, 0x1

    #@b
    if-ne v0, v1, :cond_1a

    #@d
    .line 845
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@f
    .line 846
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@11
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@13
    sub-int/2addr v1, v3

    #@14
    aget v2, v0, v1

    #@16
    add-int/2addr v2, v3

    #@17
    aput v2, v0, v1

    #@19
    return v3

    #@1a
    :cond_1a
    const/4 v1, 0x6

    #@1b
    if-ne v0, v1, :cond_2a

    #@1d
    .line 849
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@1f
    .line 850
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@21
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@23
    sub-int/2addr v1, v3

    #@24
    aget v4, v0, v1

    #@26
    add-int/2addr v4, v3

    #@27
    aput v4, v0, v1

    #@29
    return v2

    #@2a
    .line 853
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2c
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    const-string v2, "Expected a boolean but was "

    #@30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@33
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0
.end method

.method public nextDouble()D
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 886
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 888
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@7
    move-result v0

    #@8
    :cond_8
    const/16 v1, 0xf

    #@a
    const/4 v2, 0x0

    #@b
    if-ne v0, v1, :cond_1f

    #@d
    .line 892
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@f
    .line 893
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@11
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@13
    add-int/lit8 v1, v1, -0x1

    #@15
    aget v2, v0, v1

    #@17
    add-int/lit8 v2, v2, 0x1

    #@19
    aput v2, v0, v1

    #@1b
    .line 894
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    #@1d
    long-to-double v0, v0

    #@1e
    return-wide v0

    #@1f
    :cond_1f
    const/16 v1, 0x10

    #@21
    const/16 v3, 0xb

    #@23
    if-ne v0, v1, :cond_3a

    #@25
    .line 898
    new-instance v0, Ljava/lang/String;

    #@27
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@29
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@2b
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    #@2d
    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    #@30
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@32
    .line 899
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@34
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    #@36
    add-int/2addr v0, v1

    #@37
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@39
    goto :goto_7f

    #@3a
    :cond_3a
    const/16 v1, 0x8

    #@3c
    if-eq v0, v1, :cond_72

    #@3e
    const/16 v4, 0x9

    #@40
    if-ne v0, v4, :cond_43

    #@42
    goto :goto_72

    #@43
    :cond_43
    const/16 v1, 0xa

    #@45
    if-ne v0, v1, :cond_4e

    #@47
    .line 903
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@4d
    goto :goto_7f

    #@4e
    :cond_4e
    if-ne v0, v3, :cond_51

    #@50
    goto :goto_7f

    #@51
    .line 905
    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    #@53
    new-instance v1, Ljava/lang/StringBuilder;

    #@55
    const-string v2, "Expected a double but was "

    #@57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5a
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@71
    throw v0

    #@72
    :cond_72
    :goto_72
    if-ne v0, v1, :cond_77

    #@74
    const/16 v0, 0x27

    #@76
    goto :goto_79

    #@77
    :cond_77
    const/16 v0, 0x22

    #@79
    .line 901
    :goto_79
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@7f
    .line 908
    :goto_7f
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@81
    .line 909
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@83
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@86
    move-result-wide v0

    #@87
    .line 910
    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    #@89
    if-nez v3, :cond_b5

    #@8b
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    #@8e
    move-result v3

    #@8f
    if-nez v3, :cond_98

    #@91
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    #@94
    move-result v3

    #@95
    if-nez v3, :cond_98

    #@97
    goto :goto_b5

    #@98
    .line 911
    :cond_98
    new-instance v2, Lcom/google/gson/stream/MalformedJsonException;

    #@9a
    new-instance v3, Ljava/lang/StringBuilder;

    #@9c
    const-string v4, "JSON forbids NaN and infinities: "

    #@9e
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a1
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v0

    #@a5
    .line 912
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v0

    #@ad
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v0

    #@b1
    invoke-direct {v2, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v2

    #@b5
    :cond_b5
    :goto_b5
    const/4 v3, 0x0

    #@b6
    .line 914
    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@b8
    .line 915
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@ba
    .line 916
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@bc
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@be
    add-int/lit8 v3, v3, -0x1

    #@c0
    aget v4, v2, v3

    #@c2
    add-int/lit8 v4, v4, 0x1

    #@c4
    aput v4, v2, v3

    #@c6
    return-wide v0
.end method

.method public nextInt()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 1163
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 1165
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@7
    move-result v0

    #@8
    :cond_8
    const/16 v1, 0xf

    #@a
    const-string v2, "Expected an int but was "

    #@c
    const/4 v3, 0x0

    #@d
    if-ne v0, v1, :cond_43

    #@f
    .line 1170
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    #@11
    long-to-int v4, v0

    #@12
    int-to-long v5, v4

    #@13
    cmp-long v0, v0, v5

    #@15
    if-nez v0, :cond_26

    #@17
    .line 1174
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@19
    .line 1175
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@1b
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@1d
    add-int/lit8 v1, v1, -0x1

    #@1f
    aget v2, v0, v1

    #@21
    add-int/lit8 v2, v2, 0x1

    #@23
    aput v2, v0, v1

    #@25
    return v4

    #@26
    .line 1172
    :cond_26
    new-instance v0, Ljava/lang/NumberFormatException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2d
    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    #@2f
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    :cond_43
    const/16 v1, 0x10

    #@45
    if-ne v0, v1, :cond_5c

    #@47
    .line 1180
    new-instance v0, Ljava/lang/String;

    #@49
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@4b
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@4d
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    #@4f
    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    #@52
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@54
    .line 1181
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@56
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    #@58
    add-int/2addr v0, v1

    #@59
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@5b
    goto :goto_b3

    #@5c
    :cond_5c
    const/16 v1, 0xa

    #@5e
    const/16 v4, 0x8

    #@60
    if-eq v0, v4, :cond_88

    #@62
    const/16 v5, 0x9

    #@64
    if-eq v0, v5, :cond_88

    #@66
    if-ne v0, v1, :cond_69

    #@68
    goto :goto_88

    #@69
    .line 1197
    :cond_69
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6b
    new-instance v1, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@70
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@87
    throw v0

    #@88
    :cond_88
    :goto_88
    if-ne v0, v1, :cond_91

    #@8a
    .line 1184
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    #@8d
    move-result-object v0

    #@8e
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@90
    goto :goto_9e

    #@91
    :cond_91
    if-ne v0, v4, :cond_96

    #@93
    const/16 v0, 0x27

    #@95
    goto :goto_98

    #@96
    :cond_96
    const/16 v0, 0x22

    #@98
    .line 1186
    :goto_98
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@9e
    .line 1189
    :goto_9e
    :try_start_9e
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@a0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a3
    move-result v0

    #@a4
    .line 1190
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@a6
    .line 1191
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@a8
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@aa
    add-int/lit8 v4, v4, -0x1

    #@ac
    aget v5, v1, v4

    #@ae
    add-int/lit8 v5, v5, 0x1

    #@b0
    aput v5, v1, v4
    :try_end_b2
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_b2} :catch_b3

    #@b2
    return v0

    #@b3
    :catch_b3
    :goto_b3
    const/16 v0, 0xb

    #@b5
    .line 1200
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@b7
    .line 1201
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@b9
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@bc
    move-result-wide v0

    #@bd
    double-to-int v4, v0

    #@be
    int-to-double v5, v4

    #@bf
    cmpl-double v0, v5, v0

    #@c1
    if-nez v0, :cond_d5

    #@c3
    const/4 v0, 0x0

    #@c4
    .line 1206
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@c6
    .line 1207
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@c8
    .line 1208
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@ca
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@cc
    add-int/lit8 v1, v1, -0x1

    #@ce
    aget v2, v0, v1

    #@d0
    add-int/lit8 v2, v2, 0x1

    #@d2
    aput v2, v0, v1

    #@d4
    return v4

    #@d5
    .line 1204
    :cond_d5
    new-instance v0, Ljava/lang/NumberFormatException;

    #@d7
    new-instance v1, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@dc
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@de
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v1

    #@e2
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@e5
    move-result-object v2

    #@e6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v1

    #@ea
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v1

    #@ee
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@f1
    throw v0
.end method

.method public nextLong()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 931
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 933
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@7
    move-result v0

    #@8
    :cond_8
    const/16 v1, 0xf

    #@a
    const/4 v2, 0x0

    #@b
    if-ne v0, v1, :cond_1e

    #@d
    .line 937
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@f
    .line 938
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@11
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@13
    add-int/lit8 v1, v1, -0x1

    #@15
    aget v2, v0, v1

    #@17
    add-int/lit8 v2, v2, 0x1

    #@19
    aput v2, v0, v1

    #@1b
    .line 939
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    #@1d
    return-wide v0

    #@1e
    :cond_1e
    const/16 v1, 0x10

    #@20
    const-string v3, "Expected a long but was "

    #@22
    if-ne v0, v1, :cond_39

    #@24
    .line 943
    new-instance v0, Ljava/lang/String;

    #@26
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@28
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@2a
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    #@2c
    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    #@2f
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@31
    .line 944
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@33
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    #@35
    add-int/2addr v0, v1

    #@36
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@38
    goto :goto_90

    #@39
    :cond_39
    const/16 v1, 0xa

    #@3b
    const/16 v4, 0x8

    #@3d
    if-eq v0, v4, :cond_65

    #@3f
    const/16 v5, 0x9

    #@41
    if-eq v0, v5, :cond_65

    #@43
    if-ne v0, v1, :cond_46

    #@45
    goto :goto_65

    #@46
    .line 960
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    #@48
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4d
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@64
    throw v0

    #@65
    :cond_65
    :goto_65
    if-ne v0, v1, :cond_6e

    #@67
    .line 947
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@6d
    goto :goto_7b

    #@6e
    :cond_6e
    if-ne v0, v4, :cond_73

    #@70
    const/16 v0, 0x27

    #@72
    goto :goto_75

    #@73
    :cond_73
    const/16 v0, 0x22

    #@75
    .line 949
    :goto_75
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@7b
    .line 952
    :goto_7b
    :try_start_7b
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@7d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@80
    move-result-wide v0

    #@81
    .line 953
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@83
    .line 954
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@85
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@87
    add-int/lit8 v5, v5, -0x1

    #@89
    aget v6, v4, v5

    #@8b
    add-int/lit8 v6, v6, 0x1

    #@8d
    aput v6, v4, v5
    :try_end_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_8f} :catch_90

    #@8f
    return-wide v0

    #@90
    :catch_90
    :goto_90
    const/16 v0, 0xb

    #@92
    .line 963
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@94
    .line 964
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@96
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@99
    move-result-wide v0

    #@9a
    double-to-long v4, v0

    #@9b
    long-to-double v6, v4

    #@9c
    cmpl-double v0, v6, v0

    #@9e
    if-nez v0, :cond_b2

    #@a0
    const/4 v0, 0x0

    #@a1
    .line 969
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@a3
    .line 970
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@a5
    .line 971
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@a7
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@a9
    add-int/lit8 v1, v1, -0x1

    #@ab
    aget v2, v0, v1

    #@ad
    add-int/lit8 v2, v2, 0x1

    #@af
    aput v2, v0, v1

    #@b1
    return-wide v4

    #@b2
    .line 967
    :cond_b2
    new-instance v0, Ljava/lang/NumberFormatException;

    #@b4
    new-instance v1, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b9
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v1

    #@bf
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@c2
    move-result-object v2

    #@c3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v1

    #@c7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v1

    #@cb
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@ce
    throw v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 777
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 779
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@7
    move-result v0

    #@8
    :cond_8
    const/16 v1, 0xe

    #@a
    if-ne v0, v1, :cond_11

    #@c
    .line 783
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    goto :goto_26

    #@11
    :cond_11
    const/16 v1, 0xc

    #@13
    if-ne v0, v1, :cond_1c

    #@15
    const/16 v0, 0x27

    #@17
    .line 785
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    goto :goto_26

    #@1c
    :cond_1c
    const/16 v1, 0xd

    #@1e
    if-ne v0, v1, :cond_32

    #@20
    const/16 v0, 0x22

    #@22
    .line 787
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    :goto_26
    const/4 v1, 0x0

    #@27
    .line 791
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@29
    .line 792
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    #@2b
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@2d
    add-int/lit8 v2, v2, -0x1

    #@2f
    aput-object v0, v1, v2

    #@31
    return-object v0

    #@32
    .line 789
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    #@34
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    const-string v2, "Expected a name but was "

    #@38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3b
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@52
    throw v0
.end method

.method public nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 864
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 866
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@7
    move-result v0

    #@8
    :cond_8
    const/4 v1, 0x7

    #@9
    if-ne v0, v1, :cond_1b

    #@b
    const/4 v0, 0x0

    #@c
    .line 869
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@e
    .line 870
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@10
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@12
    add-int/lit8 v1, v1, -0x1

    #@14
    aget v2, v0, v1

    #@16
    add-int/lit8 v2, v2, 0x1

    #@18
    aput v2, v0, v1

    #@1a
    return-void

    #@1b
    .line 872
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    const-string v2, "Expected null but was "

    #@21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 805
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 807
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@7
    move-result v0

    #@8
    :cond_8
    const/16 v1, 0xa

    #@a
    if-ne v0, v1, :cond_11

    #@c
    .line 811
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    goto :goto_52

    #@11
    :cond_11
    const/16 v1, 0x8

    #@13
    if-ne v0, v1, :cond_1c

    #@15
    const/16 v0, 0x27

    #@17
    .line 813
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    goto :goto_52

    #@1c
    :cond_1c
    const/16 v1, 0x9

    #@1e
    if-ne v0, v1, :cond_27

    #@20
    const/16 v0, 0x22

    #@22
    .line 815
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    goto :goto_52

    #@27
    :cond_27
    const/16 v1, 0xb

    #@29
    if-ne v0, v1, :cond_31

    #@2b
    .line 817
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@2d
    const/4 v1, 0x0

    #@2e
    .line 818
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    #@30
    goto :goto_52

    #@31
    :cond_31
    const/16 v1, 0xf

    #@33
    if-ne v0, v1, :cond_3c

    #@35
    .line 820
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    #@37
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    goto :goto_52

    #@3c
    :cond_3c
    const/16 v1, 0x10

    #@3e
    if-ne v0, v1, :cond_62

    #@40
    .line 822
    new-instance v0, Ljava/lang/String;

    #@42
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    #@44
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@46
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    #@48
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    #@4b
    .line 823
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@4d
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    #@4f
    add-int/2addr v1, v2

    #@50
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@52
    :goto_52
    const/4 v1, 0x0

    #@53
    .line 827
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@55
    .line 828
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@57
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@59
    add-int/lit8 v2, v2, -0x1

    #@5b
    aget v3, v1, v2

    #@5d
    add-int/lit8 v3, v3, 0x1

    #@5f
    aput v3, v1, v2

    #@61
    return-object v0

    #@62
    .line 825
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    #@64
    new-instance v1, Ljava/lang/StringBuilder;

    #@66
    const-string v2, "Expected a string but was "

    #@68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6b
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@82
    throw v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 423
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@2
    if-nez v0, :cond_8

    #@4
    .line 425
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@7
    move-result v0

    #@8
    :cond_8
    packed-switch v0, :pswitch_data_30

    #@b
    .line 457
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v0

    #@11
    .line 455
    :pswitch_11
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    #@13
    return-object v0

    #@14
    .line 453
    :pswitch_14
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    #@16
    return-object v0

    #@17
    .line 440
    :pswitch_17
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    #@19
    return-object v0

    #@1a
    .line 450
    :pswitch_1a
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    #@1c
    return-object v0

    #@1d
    .line 445
    :pswitch_1d
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    #@1f
    return-object v0

    #@20
    .line 443
    :pswitch_20
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    #@22
    return-object v0

    #@23
    .line 436
    :pswitch_23
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    #@25
    return-object v0

    #@26
    .line 434
    :pswitch_26
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    #@28
    return-object v0

    #@29
    .line 432
    :pswitch_29
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    #@2b
    return-object v0

    #@2c
    .line 430
    :pswitch_2c
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    #@2e
    return-object v0

    #@2f
    nop

    #@30
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .registers 2

    #@0
    .line 326
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    #@2
    return-void
.end method

.method public skipValue()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 1230
    :cond_2
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@4
    if-nez v2, :cond_a

    #@6
    .line 1232
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    #@9
    move-result v2

    #@a
    :cond_a
    const/4 v3, 0x3

    #@b
    const/4 v4, 0x1

    #@c
    if-ne v2, v3, :cond_14

    #@e
    .line 1236
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->push(I)V

    #@11
    :goto_11
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_64

    #@14
    :cond_14
    if-ne v2, v4, :cond_1a

    #@16
    .line 1239
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->push(I)V

    #@19
    goto :goto_11

    #@1a
    :cond_1a
    const/4 v3, 0x4

    #@1b
    if-ne v2, v3, :cond_25

    #@1d
    .line 1242
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@1f
    sub-int/2addr v2, v4

    #@20
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@22
    :goto_22
    add-int/lit8 v1, v1, -0x1

    #@24
    goto :goto_64

    #@25
    :cond_25
    const/4 v3, 0x2

    #@26
    if-ne v2, v3, :cond_2e

    #@28
    .line 1245
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@2a
    sub-int/2addr v2, v4

    #@2b
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@2d
    goto :goto_22

    #@2e
    :cond_2e
    const/16 v3, 0xe

    #@30
    if-eq v2, v3, :cond_61

    #@32
    const/16 v3, 0xa

    #@34
    if-ne v2, v3, :cond_37

    #@36
    goto :goto_61

    #@37
    :cond_37
    const/16 v3, 0x8

    #@39
    if-eq v2, v3, :cond_5b

    #@3b
    const/16 v3, 0xc

    #@3d
    if-ne v2, v3, :cond_40

    #@3f
    goto :goto_5b

    #@40
    :cond_40
    const/16 v3, 0x9

    #@42
    if-eq v2, v3, :cond_55

    #@44
    const/16 v3, 0xd

    #@46
    if-ne v2, v3, :cond_49

    #@48
    goto :goto_55

    #@49
    :cond_49
    const/16 v3, 0x10

    #@4b
    if-ne v2, v3, :cond_64

    #@4d
    .line 1254
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@4f
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    #@51
    add-int/2addr v2, v3

    #@52
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    #@54
    goto :goto_64

    #@55
    :cond_55
    :goto_55
    const/16 v2, 0x22

    #@57
    .line 1252
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    #@5a
    goto :goto_64

    #@5b
    :cond_5b
    :goto_5b
    const/16 v2, 0x27

    #@5d
    .line 1250
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    #@60
    goto :goto_64

    #@61
    .line 1248
    :cond_61
    :goto_61
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    #@64
    .line 1256
    :cond_64
    :goto_64
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    #@66
    if-nez v1, :cond_2

    #@68
    .line 1259
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    #@6a
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    #@6c
    add-int/lit8 v2, v1, -0x1

    #@6e
    aget v3, v0, v2

    #@70
    add-int/2addr v3, v4

    #@71
    aput v3, v0, v2

    #@73
    .line 1260
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    #@75
    sub-int/2addr v1, v4

    #@76
    const-string v2, "null"

    #@78
    aput-object v2, v0, v1

    #@7a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

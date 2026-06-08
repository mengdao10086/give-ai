.class public Lcom/google/gson/stream/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private htmlSafe:Z

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/16 v0, 0x80

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 145
    sput-object v0, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    :goto_8
    const/16 v2, 0x1f

    #@a
    if-gt v1, v2, :cond_22

    #@c
    .line 147
    sget-object v2, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    #@e
    const/4 v3, 0x1

    #@f
    new-array v3, v3, [Ljava/lang/Object;

    #@11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v4

    #@15
    aput-object v4, v3, v0

    #@17
    const-string v4, "\\u%04x"

    #@19
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    aput-object v3, v2, v1

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_8

    #@22
    .line 149
    :cond_22
    sget-object v0, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    #@24
    const/16 v1, 0x22

    #@26
    const-string v2, "\\\""

    #@28
    aput-object v2, v0, v1

    #@2a
    const/16 v1, 0x5c

    #@2c
    const-string v2, "\\\\"

    #@2e
    .line 150
    aput-object v2, v0, v1

    #@30
    const/16 v1, 0x9

    #@32
    const-string v2, "\\t"

    #@34
    .line 151
    aput-object v2, v0, v1

    #@36
    const/16 v1, 0x8

    #@38
    const-string v2, "\\b"

    #@3a
    .line 152
    aput-object v2, v0, v1

    #@3c
    const/16 v1, 0xa

    #@3e
    const-string v2, "\\n"

    #@40
    .line 153
    aput-object v2, v0, v1

    #@42
    const/16 v1, 0xd

    #@44
    const-string v2, "\\r"

    #@46
    .line 154
    aput-object v2, v0, v1

    #@48
    const/16 v1, 0xc

    #@4a
    const-string v2, "\\f"

    #@4c
    .line 155
    aput-object v2, v0, v1

    #@4e
    .line 156
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, [Ljava/lang/String;

    #@54
    sput-object v0, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    #@56
    const/16 v1, 0x3c

    #@58
    const-string v2, "\\u003c"

    #@5a
    .line 157
    aput-object v2, v0, v1

    #@5c
    const/16 v1, 0x3e

    #@5e
    const-string v2, "\\u003e"

    #@60
    .line 158
    aput-object v2, v0, v1

    #@62
    const/16 v1, 0x26

    #@64
    const-string v2, "\\u0026"

    #@66
    .line 159
    aput-object v2, v0, v1

    #@68
    const/16 v1, 0x3d

    #@6a
    const-string v2, "\\u003d"

    #@6c
    .line 160
    aput-object v2, v0, v1

    #@6e
    const/16 v1, 0x27

    #@70
    const-string v2, "\\u0027"

    #@72
    .line 161
    aput-object v2, v0, v1

    #@74
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    #@0
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0x20

    #@5
    new-array v0, v0, [I

    #@7
    .line 167
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    #@9
    const/4 v0, 0x0

    #@a
    .line 168
    iput v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    #@c
    const/4 v0, 0x6

    #@d
    .line 170
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->push(I)V

    #@10
    const-string v0, ":"

    #@12
    .line 182
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    #@14
    const/4 v0, 0x1

    #@15
    .line 190
    iput-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    #@17
    if-eqz p1, :cond_1c

    #@19
    .line 201
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@1b
    return-void

    #@1c
    .line 199
    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    #@1e
    const-string v0, "out == null"

    #@20
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@23
    throw p1
.end method

.method private beforeName()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 612
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x5

    #@5
    if-ne v0, v1, :cond_f

    #@7
    .line 614
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@9
    const/16 v1, 0x2c

    #@b
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    #@e
    goto :goto_12

    #@f
    :cond_f
    const/4 v1, 0x3

    #@10
    if-ne v0, v1, :cond_1a

    #@12
    .line 618
    :goto_12
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    #@15
    const/4 v0, 0x4

    #@16
    .line 619
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    #@19
    return-void

    #@1a
    .line 616
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1c
    const-string v1, "Nesting problem."

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method private beforeValue()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 629
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x2

    #@6
    if-eq v0, v1, :cond_43

    #@8
    if-eq v0, v2, :cond_38

    #@a
    const/4 v1, 0x4

    #@b
    if-eq v0, v1, :cond_2c

    #@d
    const/4 v1, 0x6

    #@e
    const/4 v2, 0x7

    #@f
    if-eq v0, v1, :cond_28

    #@11
    if-ne v0, v2, :cond_20

    #@13
    .line 631
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    #@15
    if-eqz v0, :cond_18

    #@17
    goto :goto_28

    #@18
    .line 632
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1a
    const-string v1, "JSON must have only one top-level value."

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 656
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    #@22
    const-string v1, "Nesting problem."

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 637
    :cond_28
    :goto_28
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    #@2b
    goto :goto_49

    #@2c
    .line 651
    :cond_2c
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@2e
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    #@30
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    #@33
    const/4 v0, 0x5

    #@34
    .line 652
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    #@37
    goto :goto_49

    #@38
    .line 646
    :cond_38
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@3a
    const/16 v1, 0x2c

    #@3c
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    #@3f
    .line 647
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    #@42
    goto :goto_49

    #@43
    .line 641
    :cond_43
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    #@46
    .line 642
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    #@49
    :goto_49
    return-void
.end method

.method private close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 337
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    #@3
    move-result v0

    #@4
    if-eq v0, p2, :cond_11

    #@6
    if-ne v0, p1, :cond_9

    #@8
    goto :goto_11

    #@9
    .line 339
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    #@b
    const-string p2, "Nesting problem."

    #@d
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw p1

    #@11
    .line 341
    :cond_11
    :goto_11
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    #@13
    if-nez p1, :cond_26

    #@15
    .line 345
    iget p1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    #@17
    add-int/lit8 p1, p1, -0x1

    #@19
    iput p1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    #@1b
    if-ne v0, p2, :cond_20

    #@1d
    .line 347
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    #@20
    .line 349
    :cond_20
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@22
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@25
    return-object p0

    #@26
    .line 342
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    #@28
    new-instance p2, Ljava/lang/StringBuilder;

    #@2a
    const-string p3, "Dangling name: "

    #@2c
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2f
    iget-object p3, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    #@31
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object p2

    #@35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object p2

    #@39
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3c
    throw p1
.end method

.method private newline()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 597
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 601
    :cond_5
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@7
    const-string v1, "\n"

    #@9
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@c
    .line 602
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    #@e
    const/4 v1, 0x1

    #@f
    :goto_f
    if-ge v1, v0, :cond_1b

    #@11
    .line 603
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@13
    iget-object v3, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    #@15
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_f

    #@1b
    :cond_1b
    return-void
.end method

.method private open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 325
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    #@3
    .line 326
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonWriter;->push(I)V

    #@6
    .line 327
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@8
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@b
    return-object p0
.end method

.method private peek()I
    .registers 3

    #@0
    .line 366
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 369
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    aget v0, v1, v0

    #@a
    return v0

    #@b
    .line 367
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    const-string v1, "JsonWriter is closed."

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method

.method private push(I)V
    .registers 6

    #@0
    .line 354
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    #@2
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    #@4
    array-length v2, v1

    #@5
    if-ne v0, v2, :cond_11

    #@7
    mul-int/lit8 v2, v0, 0x2

    #@9
    .line 355
    new-array v2, v2, [I

    #@b
    const/4 v3, 0x0

    #@c
    .line 356
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@f
    .line 357
    iput-object v2, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    #@11
    .line 359
    :cond_11
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    #@13
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    #@15
    add-int/lit8 v2, v1, 0x1

    #@17
    iput v2, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    #@19
    aput p1, v0, v1

    #@1b
    return-void
.end method

.method private replaceTop(I)V
    .registers 4

    #@0
    .line 376
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    #@2
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    aput p1, v0, v1

    #@8
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 565
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    sget-object v0, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    #@6
    goto :goto_9

    #@7
    :cond_7
    sget-object v0, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    #@9
    .line 566
    :goto_9
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@b
    const-string v2, "\""

    #@d
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@10
    .line 568
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@13
    move-result v1

    #@14
    const/4 v3, 0x0

    #@15
    move v4, v3

    #@16
    :goto_16
    if-ge v3, v1, :cond_45

    #@18
    .line 570
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v5

    #@1c
    const/16 v6, 0x80

    #@1e
    if-ge v5, v6, :cond_25

    #@20
    .line 573
    aget-object v5, v0, v5

    #@22
    if-nez v5, :cond_32

    #@24
    goto :goto_42

    #@25
    :cond_25
    const/16 v6, 0x2028

    #@27
    if-ne v5, v6, :cond_2c

    #@29
    const-string v5, "\\u2028"

    #@2b
    goto :goto_32

    #@2c
    :cond_2c
    const/16 v6, 0x2029

    #@2e
    if-ne v5, v6, :cond_42

    #@30
    const-string v5, "\\u2029"

    #@32
    :cond_32
    :goto_32
    if-ge v4, v3, :cond_3b

    #@34
    .line 585
    iget-object v6, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@36
    sub-int v7, v3, v4

    #@38
    invoke-virtual {v6, p1, v4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    #@3b
    .line 587
    :cond_3b
    iget-object v4, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@3d
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@40
    add-int/lit8 v4, v3, 0x1

    #@42
    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x1

    #@44
    goto :goto_16

    #@45
    :cond_45
    if-ge v4, v1, :cond_4d

    #@47
    .line 591
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@49
    sub-int/2addr v1, v4

    #@4a
    invoke-virtual {v0, p1, v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    #@4d
    .line 593
    :cond_4d
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@4f
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@52
    return-void
.end method

.method private writeDeferredName()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 400
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_f

    #@4
    .line 401
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeName()V

    #@7
    .line 402
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    #@9
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    #@c
    const/4 v0, 0x0

    #@d
    .line 403
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    #@f
    :cond_f
    return-void
.end method


# virtual methods
.method public beginArray()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 287
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    #@3
    const/4 v0, 0x1

    #@4
    const-string v1, "["

    #@6
    .line 288
    invoke-direct {p0, v0, v1}, Lcom/google/gson/stream/JsonWriter;->open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public beginObject()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 307
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    #@3
    const/4 v0, 0x3

    #@4
    const-string v1, "{"

    #@6
    .line 308
    invoke-direct {p0, v0, v1}, Lcom/google/gson/stream/JsonWriter;->open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 555
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    #@5
    .line 557
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    #@7
    const/4 v1, 0x1

    #@8
    if-gt v0, v1, :cond_18

    #@a
    if-ne v0, v1, :cond_14

    #@c
    .line 558
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    #@e
    sub-int/2addr v0, v1

    #@f
    aget v0, v2, v0

    #@11
    const/4 v1, 0x7

    #@12
    if-ne v0, v1, :cond_18

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    .line 561
    iput v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    #@17
    return-void

    #@18
    .line 559
    :cond_18
    new-instance v0, Ljava/io/IOException;

    #@1a
    const-string v1, "Incomplete document"

    #@1c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
.end method

.method public endArray()Lcom/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x2

    #@1
    const-string v1, "]"

    #@3
    const/4 v2, 0x1

    #@4
    .line 297
    invoke-direct {p0, v2, v0, v1}, Lcom/google/gson/stream/JsonWriter;->close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public endObject()Lcom/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x5

    #@1
    const-string v1, "}"

    #@3
    const/4 v2, 0x3

    #@4
    .line 317
    invoke-direct {p0, v2, v0, v1}, Lcom/google/gson/stream/JsonWriter;->close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 543
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 546
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@6
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    #@9
    return-void

    #@a
    .line 544
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    const-string v1, "JsonWriter is closed."

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
.end method

.method public final getSerializeNulls()Z
    .registers 2

    #@0
    .line 277
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    #@2
    return v0
.end method

.method public final isHtmlSafe()Z
    .registers 2

    #@0
    .line 261
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    #@2
    return v0
.end method

.method public isLenient()Z
    .registers 2

    #@0
    .line 242
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    #@2
    return v0
.end method

.method public jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p1, :cond_7

    #@2
    .line 432
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    #@5
    move-result-object p1

    #@6
    return-object p1

    #@7
    .line 434
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    #@a
    .line 435
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    #@d
    .line 436
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@f
    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    #@12
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-eqz p1, :cond_1b

    #@2
    .line 389
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    #@4
    if-nez v0, :cond_15

    #@6
    .line 392
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 395
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    #@c
    return-object p0

    #@d
    .line 393
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    #@f
    const-string v0, "JsonWriter is closed."

    #@11
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw p1

    #@15
    .line 390
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    #@17
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    #@1a
    throw p1

    #@1b
    .line 387
    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    #@1d
    const-string v0, "name == null"

    #@1f
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw p1
.end method

.method public nullValue()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 446
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_10

    #@4
    .line 447
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    #@6
    if-eqz v0, :cond_c

    #@8
    .line 448
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    #@b
    goto :goto_10

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    .line 450
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    #@f
    return-object p0

    #@10
    .line 454
    :cond_10
    :goto_10
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    #@13
    .line 455
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@15
    const-string v1, "null"

    #@17
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1a
    return-object p0
.end method

.method public final setHtmlSafe(Z)V
    .registers 2

    #@0
    .line 253
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    #@2
    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    const/4 p1, 0x0

    #@7
    .line 214
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    #@9
    const-string p1, ":"

    #@b
    .line 215
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    #@d
    goto :goto_14

    #@e
    .line 217
    :cond_e
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    #@10
    const-string p1, ": "

    #@12
    .line 218
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    #@14
    :goto_14
    return-void
.end method

.method public final setLenient(Z)V
    .registers 2

    #@0
    .line 235
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    #@2
    return-void
.end method

.method public final setSerializeNulls(Z)V
    .registers 2

    #@0
    .line 269
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    #@2
    return-void
.end method

.method public value(D)Lcom/google/gson/stream/JsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 494
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    #@3
    .line 495
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    #@5
    if-nez v0, :cond_29

    #@7
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_14

    #@d
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_14

    #@13
    goto :goto_29

    #@14
    .line 496
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    const-string v2, "Numeric values must be finite, but was "

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1d
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@20
    move-result-object p1

    #@21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object p1

    #@25
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 498
    :cond_29
    :goto_29
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    #@2c
    .line 499
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@2e
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@31
    move-result-object p1

    #@32
    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    #@35
    return-object p0
.end method

.method public value(J)Lcom/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 509
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    #@3
    .line 510
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    #@6
    .line 511
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@8
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@f
    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p1, :cond_7

    #@2
    .line 478
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    #@5
    move-result-object p1

    #@6
    return-object p1

    #@7
    .line 480
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    #@a
    .line 481
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    #@d
    .line 482
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@f
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@12
    move-result p1

    #@13
    if-eqz p1, :cond_18

    #@15
    const-string p1, "true"

    #@17
    goto :goto_1a

    #@18
    :cond_18
    const-string p1, "false"

    #@1a
    :goto_1a
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1d
    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p1, :cond_7

    #@2
    .line 524
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    #@5
    move-result-object p1

    #@6
    return-object p1

    #@7
    .line 527
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    #@a
    .line 528
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 529
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    #@10
    if-nez v1, :cond_40

    #@12
    const-string v1, "-Infinity"

    #@14
    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_2b

    #@1a
    const-string v1, "Infinity"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_2b

    #@22
    const-string v1, "NaN"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_2b

    #@2a
    goto :goto_40

    #@2b
    .line 531
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    const-string v2, "Numeric values must be finite, but was "

    #@31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object p1

    #@38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object p1

    #@3c
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 533
    :cond_40
    :goto_40
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    #@43
    .line 534
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@45
    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    #@48
    return-object p0
.end method

.method public value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p1, :cond_7

    #@2
    .line 415
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    #@5
    move-result-object p1

    #@6
    return-object p1

    #@7
    .line 417
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    #@a
    .line 418
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    #@d
    .line 419
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    #@10
    return-object p0
.end method

.method public value(Z)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 465
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    #@3
    .line 466
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    #@6
    .line 467
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    #@8
    if-eqz p1, :cond_d

    #@a
    const-string p1, "true"

    #@c
    goto :goto_f

    #@d
    :cond_d
    const-string p1, "false"

    #@f
    :goto_f
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@12
    return-object p0
.end method

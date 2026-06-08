.class public Landroidx/emoji2/text/flatbuffer/Utf8Old;
.super Landroidx/emoji2/text/flatbuffer/Utf8;
.source "Utf8Old.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 45
    new-instance v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$$ExternalSyntheticLambda0;

    #@2
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/Utf8Old$$ExternalSyntheticLambda0;-><init>()V

    #@5
    .line 46
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroidx/emoji2/text/flatbuffer/Utf8Old;->CACHE:Ljava/lang/ThreadLocal;

    #@b
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 31
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/Utf8;-><init>()V

    #@3
    return-void
.end method

.method static synthetic lambda$static$0()Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;
    .registers 1

    #@0
    .line 46
    new-instance v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;

    #@2
    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method public decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 5

    #@0
    .line 87
    sget-object v0, Landroidx/emoji2/text/flatbuffer/Utf8Old;->CACHE:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;

    #@8
    iget-object v0, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@a
    .line 88
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@d
    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@10
    move-result-object p1

    #@11
    .line 90
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@14
    add-int/2addr p2, p3

    #@15
    .line 91
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@18
    .line 93
    :try_start_18
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@1b
    move-result-object p1

    #@1c
    .line 94
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    #@1f
    move-result-object p1
    :try_end_20
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_18 .. :try_end_20} :catch_21

    #@20
    return-object p1

    #@21
    :catch_21
    move-exception p1

    #@22
    .line 96
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@24
    const-string p3, "Bad encoding"

    #@26
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    throw p2
.end method

.method public encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 5

    #@0
    .line 76
    sget-object v0, Landroidx/emoji2/text/flatbuffer/Utf8Old;->CACHE:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;

    #@8
    .line 77
    iget-object v1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;->lastInput:Ljava/lang/CharSequence;

    #@a
    if-eq v1, p1, :cond_f

    #@c
    .line 80
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/Utf8Old;->encodedLength(Ljava/lang/CharSequence;)I

    #@f
    .line 82
    :cond_f
    iget-object p1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    #@11
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@14
    return-void
.end method

.method public encodedLength(Ljava/lang/CharSequence;)I
    .registers 6

    #@0
    .line 53
    sget-object v0, Landroidx/emoji2/text/flatbuffer/Utf8Old;->CACHE:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;

    #@8
    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v1

    #@c
    int-to-float v1, v1

    #@d
    iget-object v2, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@f
    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    #@12
    move-result v2

    #@13
    mul-float/2addr v1, v2

    #@14
    float-to-int v1, v1

    #@15
    .line 55
    iget-object v2, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    #@17
    if-eqz v2, :cond_21

    #@19
    iget-object v2, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    #@1b
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    #@1e
    move-result v2

    #@1f
    if-ge v2, v1, :cond_2d

    #@21
    :cond_21
    const/16 v2, 0x80

    #@23
    .line 56
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@26
    move-result v1

    #@27
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    #@2d
    .line 58
    :cond_2d
    iget-object v1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    #@2f
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@32
    .line 59
    iput-object p1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;->lastInput:Ljava/lang/CharSequence;

    #@34
    .line 60
    instance-of v1, p1, Ljava/nio/CharBuffer;

    #@36
    if-eqz v1, :cond_3b

    #@38
    check-cast p1, Ljava/nio/CharBuffer;

    #@3a
    goto :goto_3f

    #@3b
    .line 61
    :cond_3b
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@3e
    move-result-object p1

    #@3f
    .line 62
    :goto_3f
    iget-object v1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@41
    iget-object v2, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    #@43
    const/4 v3, 0x1

    #@44
    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@47
    move-result-object p1

    #@48
    .line 63
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_5b

    #@4e
    .line 65
    :try_start_4e
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_51
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_4e .. :try_end_51} :catch_52

    #@51
    goto :goto_5b

    #@52
    :catch_52
    move-exception p1

    #@53
    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@55
    const-string v1, "bad character encoding"

    #@57
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5a
    throw v0

    #@5b
    .line 70
    :cond_5b
    :goto_5b
    iget-object p1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    #@5d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@60
    .line 71
    iget-object p1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    #@62
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@65
    move-result p1

    #@66
    return p1
.end method

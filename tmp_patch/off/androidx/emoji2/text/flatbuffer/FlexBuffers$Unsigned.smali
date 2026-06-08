.class Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Unsigned"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static byteToUnsignedInt(B)I
    .registers 1

    #@0
    and-int/lit16 p0, p0, 0xff

    #@2
    return p0
.end method

.method static intToUnsignedLong(I)J
    .registers 5

    #@0
    int-to-long v0, p0

    #@1
    const-wide v2, 0xffffffffL

    #@6
    and-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method static shortToUnsignedInt(S)I
    .registers 2

    #@0
    const v0, 0xffff

    #@3
    and-int/2addr p0, v0

    #@4
    return p0
.end method

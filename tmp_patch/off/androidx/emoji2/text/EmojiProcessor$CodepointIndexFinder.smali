.class final Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodepointIndexFinder"
.end annotation


# static fields
.field private static final INVALID_INDEX:I = -0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static findIndexBackward(Ljava/lang/CharSequence;II)I
    .registers 8

    #@0
    .line 725
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ltz p1, :cond_3c

    #@7
    if-ge v0, p1, :cond_a

    #@9
    goto :goto_3c

    #@a
    :cond_a
    if-gez p2, :cond_d

    #@c
    return v1

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    :goto_e
    move v2, v0

    #@f
    :goto_f
    if-nez p2, :cond_12

    #@11
    return p1

    #@12
    :cond_12
    add-int/lit8 p1, p1, -0x1

    #@14
    if-gez p1, :cond_1a

    #@16
    if-eqz v2, :cond_19

    #@18
    return v1

    #@19
    :cond_19
    return v0

    #@1a
    .line 746
    :cond_1a
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@1d
    move-result v3

    #@1e
    if-eqz v2, :cond_2a

    #@20
    .line 748
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_27

    #@26
    return v1

    #@27
    :cond_27
    add-int/lit8 p2, p2, -0x1

    #@29
    goto :goto_e

    #@2a
    .line 755
    :cond_2a
    invoke-static {v3}, Ljava/lang/Character;->isSurrogate(C)Z

    #@2d
    move-result v4

    #@2e
    if-nez v4, :cond_33

    #@30
    add-int/lit8 p2, p2, -0x1

    #@32
    goto :goto_f

    #@33
    .line 759
    :cond_33
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_3a

    #@39
    return v1

    #@3a
    :cond_3a
    const/4 v2, 0x1

    #@3b
    goto :goto_f

    #@3c
    :cond_3c
    :goto_3c
    return v1
.end method

.method static findIndexForward(Ljava/lang/CharSequence;II)I
    .registers 9

    #@0
    .line 781
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ltz p1, :cond_40

    #@7
    if-ge v0, p1, :cond_a

    #@9
    goto :goto_40

    #@a
    :cond_a
    if-gez p2, :cond_d

    #@c
    return v1

    #@d
    :cond_d
    const/4 v2, 0x0

    #@e
    :goto_e
    move v3, v2

    #@f
    :goto_f
    if-nez p2, :cond_12

    #@11
    return p1

    #@12
    :cond_12
    if-lt p1, v0, :cond_18

    #@14
    if-eqz v3, :cond_17

    #@16
    return v1

    #@17
    :cond_17
    return v0

    #@18
    .line 802
    :cond_18
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@1b
    move-result v4

    #@1c
    if-eqz v3, :cond_2a

    #@1e
    .line 804
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_25

    #@24
    return v1

    #@25
    :cond_25
    add-int/lit8 p2, p2, -0x1

    #@27
    add-int/lit8 p1, p1, 0x1

    #@29
    goto :goto_e

    #@2a
    .line 812
    :cond_2a
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    #@2d
    move-result v5

    #@2e
    if-nez v5, :cond_35

    #@30
    add-int/lit8 p2, p2, -0x1

    #@32
    add-int/lit8 p1, p1, 0x1

    #@34
    goto :goto_f

    #@35
    .line 817
    :cond_35
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_3c

    #@3b
    return v1

    #@3c
    :cond_3c
    add-int/lit8 p1, p1, 0x1

    #@3e
    const/4 v3, 0x1

    #@3f
    goto :goto_f

    #@40
    :cond_40
    :goto_40
    return v1
.end method

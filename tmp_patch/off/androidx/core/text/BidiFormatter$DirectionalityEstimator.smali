.class Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/16 v0, 0x700

    #@2
    new-array v1, v0, [B

    #@4
    .line 584
    sput-object v1, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_14

    #@9
    .line 586
    sget-object v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    #@b
    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    #@e
    move-result v3

    #@f
    aput-byte v3, v2, v1

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_7

    #@14
    :cond_14
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Z)V
    .registers 3

    #@0
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 629
    iput-object p1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    #@5
    .line 630
    iput-boolean p2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    #@7
    .line 631
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@a
    move-result p1

    #@b
    iput p1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@d
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .registers 2

    #@0
    const/16 v0, 0x700

    #@2
    if-ge p0, v0, :cond_9

    #@4
    .line 803
    sget-object v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    #@6
    aget-byte p0, v0, p0

    #@8
    goto :goto_d

    #@9
    :cond_9
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    #@c
    move-result p0

    #@d
    :goto_d
    return p0
.end method

.method private skipEntityBackward()B
    .registers 5

    #@0
    .line 944
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2
    .line 945
    :cond_2
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    const/16 v2, 0x3b

    #@6
    if-lez v1, :cond_1d

    #@8
    .line 946
    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    #@a
    add-int/lit8 v1, v1, -0x1

    #@c
    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@e
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v1

    #@12
    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@14
    const/16 v3, 0x26

    #@16
    if-ne v1, v3, :cond_1b

    #@18
    const/16 v0, 0xc

    #@1a
    return v0

    #@1b
    :cond_1b
    if-ne v1, v2, :cond_2

    #@1d
    .line 954
    :cond_1d
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@1f
    .line 955
    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@21
    const/16 v0, 0xd

    #@23
    return v0
.end method

.method private skipEntityForward()B
    .registers 4

    #@0
    .line 929
    :goto_0
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@4
    if-ge v0, v1, :cond_17

    #@6
    iget-object v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    #@8
    add-int/lit8 v2, v0, 0x1

    #@a
    iput v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@c
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@f
    move-result v0

    #@10
    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@12
    const/16 v1, 0x3b

    #@14
    if-eq v0, v1, :cond_17

    #@16
    goto :goto_0

    #@17
    :cond_17
    const/16 v0, 0xc

    #@19
    return v0
.end method

.method private skipTagBackward()B
    .registers 5

    #@0
    .line 901
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2
    .line 902
    :cond_2
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    const/16 v2, 0x3e

    #@6
    if-lez v1, :cond_39

    #@8
    .line 903
    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    #@a
    add-int/lit8 v1, v1, -0x1

    #@c
    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@e
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v1

    #@12
    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@14
    const/16 v3, 0x3c

    #@16
    if-ne v1, v3, :cond_1b

    #@18
    const/16 v0, 0xc

    #@1a
    return v0

    #@1b
    :cond_1b
    if-ne v1, v2, :cond_1e

    #@1d
    goto :goto_39

    #@1e
    :cond_1e
    const/16 v2, 0x22

    #@20
    if-eq v1, v2, :cond_26

    #@22
    const/16 v2, 0x27

    #@24
    if-ne v1, v2, :cond_2

    #@26
    .line 914
    :cond_26
    :goto_26
    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@28
    if-lez v2, :cond_2

    #@2a
    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    #@2c
    add-int/lit8 v2, v2, -0x1

    #@2e
    iput v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@30
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@33
    move-result v2

    #@34
    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@36
    if-eq v2, v1, :cond_2

    #@38
    goto :goto_26

    #@39
    .line 918
    :cond_39
    :goto_39
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@3b
    .line 919
    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@3d
    const/16 v0, 0xd

    #@3f
    return v0
.end method

.method private skipTagForward()B
    .registers 6

    #@0
    .line 872
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2
    .line 873
    :cond_2
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@6
    if-ge v1, v2, :cond_38

    #@8
    .line 874
    iget-object v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    #@a
    add-int/lit8 v3, v1, 0x1

    #@c
    iput v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@e
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v1

    #@12
    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@14
    const/16 v2, 0x3e

    #@16
    if-ne v1, v2, :cond_1b

    #@18
    const/16 v0, 0xc

    #@1a
    return v0

    #@1b
    :cond_1b
    const/16 v2, 0x22

    #@1d
    if-eq v1, v2, :cond_23

    #@1f
    const/16 v2, 0x27

    #@21
    if-ne v1, v2, :cond_2

    #@23
    .line 882
    :cond_23
    :goto_23
    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@25
    iget v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@27
    if-ge v2, v3, :cond_2

    #@29
    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    #@2b
    add-int/lit8 v4, v2, 0x1

    #@2d
    iput v4, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2f
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@32
    move-result v2

    #@33
    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@35
    if-eq v2, v1, :cond_2

    #@37
    goto :goto_23

    #@38
    .line 886
    :cond_38
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@3a
    const/16 v0, 0x3c

    #@3c
    .line 887
    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@3e
    const/16 v0, 0xd

    #@40
    return v0
.end method


# virtual methods
.method dirTypeBackward()B
    .registers 4

    #@0
    .line 846
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    #@2
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@9
    move-result v0

    #@a
    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@c
    .line 847
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_28

    #@12
    .line 848
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    #@14
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@16
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@19
    move-result v0

    #@1a
    .line 849
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@1c
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@1f
    move-result v2

    #@20
    sub-int/2addr v1, v2

    #@21
    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@23
    .line 850
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    #@26
    move-result v0

    #@27
    return v0

    #@28
    .line 852
    :cond_28
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2a
    add-int/lit8 v0, v0, -0x1

    #@2c
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2e
    .line 853
    iget-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@30
    invoke-static {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    #@33
    move-result v0

    #@34
    .line 854
    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    #@36
    if-eqz v1, :cond_4b

    #@38
    .line 856
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@3a
    const/16 v2, 0x3e

    #@3c
    if-ne v1, v2, :cond_43

    #@3e
    .line 857
    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    #@41
    move-result v0

    #@42
    goto :goto_4b

    #@43
    :cond_43
    const/16 v2, 0x3b

    #@45
    if-ne v1, v2, :cond_4b

    #@47
    .line 859
    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    #@4a
    move-result v0

    #@4b
    :cond_4b
    :goto_4b
    return v0
.end method

.method dirTypeForward()B
    .registers 4

    #@0
    .line 816
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    #@2
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@7
    move-result v0

    #@8
    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@a
    .line 817
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_26

    #@10
    .line 818
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    #@12
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@14
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@17
    move-result v0

    #@18
    .line 819
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@1a
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@1d
    move-result v2

    #@1e
    add-int/2addr v1, v2

    #@1f
    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@21
    .line 820
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 822
    :cond_26
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@28
    add-int/lit8 v0, v0, 0x1

    #@2a
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@2c
    .line 823
    iget-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@2e
    invoke-static {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    #@31
    move-result v0

    #@32
    .line 824
    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    #@34
    if-eqz v1, :cond_49

    #@36
    .line 826
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    #@38
    const/16 v2, 0x3c

    #@3a
    if-ne v1, v2, :cond_41

    #@3c
    .line 827
    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    #@3f
    move-result v0

    #@40
    goto :goto_49

    #@41
    :cond_41
    const/16 v2, 0x26

    #@43
    if-ne v1, v2, :cond_49

    #@45
    .line 829
    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    #@48
    move-result v0

    #@49
    :cond_49
    :goto_49
    return v0
.end method

.method getEntryDir()I
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    .line 646
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@3
    move v1, v0

    #@4
    move v2, v1

    #@5
    move v3, v2

    #@6
    .line 650
    :cond_6
    :goto_6
    iget v4, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@8
    iget v5, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@a
    const/4 v6, -0x1

    #@b
    const/4 v7, 0x1

    #@c
    if-ge v4, v5, :cond_37

    #@e
    if-nez v1, :cond_37

    #@10
    .line 651
    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_32

    #@16
    if-eq v4, v7, :cond_2f

    #@18
    const/4 v5, 0x2

    #@19
    if-eq v4, v5, :cond_2f

    #@1b
    const/16 v5, 0x9

    #@1d
    if-eq v4, v5, :cond_6

    #@1f
    packed-switch v4, :pswitch_data_56

    #@22
    goto :goto_35

    #@23
    :pswitch_23
    add-int/lit8 v3, v3, -0x1

    #@25
    move v2, v0

    #@26
    goto :goto_6

    #@27
    :pswitch_27
    add-int/lit8 v3, v3, 0x1

    #@29
    move v2, v7

    #@2a
    goto :goto_6

    #@2b
    :pswitch_2b
    add-int/lit8 v3, v3, 0x1

    #@2d
    move v2, v6

    #@2e
    goto :goto_6

    #@2f
    :cond_2f
    if-nez v3, :cond_35

    #@31
    return v7

    #@32
    :cond_32
    if-nez v3, :cond_35

    #@34
    return v6

    #@35
    :cond_35
    :goto_35
    move v1, v3

    #@36
    goto :goto_6

    #@37
    :cond_37
    if-nez v1, :cond_3a

    #@39
    return v0

    #@3a
    :cond_3a
    if-eqz v2, :cond_3d

    #@3c
    return v2

    #@3d
    .line 706
    :cond_3d
    :goto_3d
    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@3f
    if-lez v2, :cond_55

    #@41
    .line 707
    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    #@44
    move-result v2

    #@45
    packed-switch v2, :pswitch_data_64

    #@48
    goto :goto_3d

    #@49
    :pswitch_49
    add-int/lit8 v3, v3, 0x1

    #@4b
    goto :goto_3d

    #@4c
    :pswitch_4c
    if-ne v1, v3, :cond_52

    #@4e
    return v7

    #@4f
    :pswitch_4f
    if-ne v1, v3, :cond_52

    #@51
    return v6

    #@52
    :cond_52
    add-int/lit8 v3, v3, -0x1

    #@54
    goto :goto_3d

    #@55
    :cond_55
    return v0

    #@56
    :pswitch_data_56
    .packed-switch 0xe
        :pswitch_2b
        :pswitch_2b
        :pswitch_27
        :pswitch_27
        :pswitch_23
    .end packed-switch

    #@64
    :pswitch_data_64
    .packed-switch 0xe
        :pswitch_4f
        :pswitch_4f
        :pswitch_4c
        :pswitch_4c
        :pswitch_49
    .end packed-switch
.end method

.method getExitDir()I
    .registers 8

    #@0
    .line 744
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    #@2
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    :goto_6
    move v2, v1

    #@7
    .line 747
    :cond_7
    :goto_7
    iget v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    #@9
    if-lez v3, :cond_3a

    #@b
    .line 748
    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    #@e
    move-result v3

    #@f
    const/4 v4, -0x1

    #@10
    if-eqz v3, :cond_34

    #@12
    const/4 v5, 0x1

    #@13
    if-eq v3, v5, :cond_2e

    #@15
    const/4 v6, 0x2

    #@16
    if-eq v3, v6, :cond_2e

    #@18
    const/16 v6, 0x9

    #@1a
    if-eq v3, v6, :cond_7

    #@1c
    packed-switch v3, :pswitch_data_3c

    #@1f
    if-nez v2, :cond_7

    #@21
    goto :goto_39

    #@22
    :pswitch_22
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_7

    #@25
    :pswitch_25
    if-ne v2, v1, :cond_2b

    #@27
    return v5

    #@28
    :pswitch_28
    if-ne v2, v1, :cond_2b

    #@2a
    return v4

    #@2b
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    #@2d
    goto :goto_7

    #@2e
    :cond_2e
    if-nez v1, :cond_31

    #@30
    return v5

    #@31
    :cond_31
    if-nez v2, :cond_7

    #@33
    goto :goto_39

    #@34
    :cond_34
    if-nez v1, :cond_37

    #@36
    return v4

    #@37
    :cond_37
    if-nez v2, :cond_7

    #@39
    :goto_39
    goto :goto_6

    #@3a
    :cond_3a
    return v0

    #@3b
    nop

    #@3c
    :pswitch_data_3c
    .packed-switch 0xe
        :pswitch_28
        :pswitch_28
        :pswitch_25
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

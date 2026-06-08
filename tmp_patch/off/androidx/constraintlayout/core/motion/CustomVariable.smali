.class public Landroidx/constraintlayout/core/motion/CustomVariable;
.super Ljava/lang/Object;
.source "CustomVariable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionLayout"


# instance fields
.field mBooleanValue:Z

.field private mFloatValue:F

.field private mIntegerValue:I

.field mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomVariable;)V
    .registers 3

    #@0
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, -0x80000000

    #@5
    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@7
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@9
    .line 28
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@b
    const/4 v0, 0x0

    #@c
    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@e
    .line 37
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@10
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@12
    .line 38
    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@14
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@16
    .line 39
    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@18
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@1a
    .line 40
    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@1c
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@1e
    .line 41
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@20
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@22
    .line 42
    iget-boolean p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    #@24
    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    #@26
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomVariable;Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, -0x80000000

    #@5
    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@7
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@9
    .line 28
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@b
    const/4 v0, 0x0

    #@c
    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@e
    .line 317
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@10
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@12
    .line 318
    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@14
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@16
    .line 319
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/CustomVariable;->setValue(Ljava/lang/Object;)V

    #@19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    #@0
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, -0x80000000

    #@5
    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@7
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@9
    .line 28
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@b
    const/4 v0, 0x0

    #@c
    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@e
    .line 306
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@10
    .line 307
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IF)V
    .registers 5

    #@0
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, -0x80000000

    #@5
    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@7
    const/4 v0, 0x0

    #@8
    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@a
    .line 62
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@c
    .line 63
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@e
    .line 64
    iput p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    #@0
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, -0x80000000

    #@5
    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@7
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@9
    .line 28
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@b
    const/4 v0, 0x0

    #@c
    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@e
    .line 52
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@10
    .line 53
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@12
    const/16 p1, 0x385

    #@14
    if-ne p2, p1, :cond_1a

    #@16
    int-to-float p1, p3

    #@17
    .line 55
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@19
    goto :goto_1c

    #@1a
    .line 57
    :cond_1a
    iput p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@1c
    :goto_1c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    #@0
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, -0x80000000

    #@5
    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@7
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@9
    .line 28
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@b
    const/4 v0, 0x0

    #@c
    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@e
    .line 311
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@10
    .line 312
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@12
    .line 313
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;->setValue(Ljava/lang/Object;)V

    #@15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    #@0
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, -0x80000000

    #@5
    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@7
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@9
    .line 28
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@b
    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@d
    .line 47
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@f
    .line 48
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 5

    #@0
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, -0x80000000

    #@5
    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@7
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@9
    .line 28
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@b
    const/4 v0, 0x0

    #@c
    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@e
    .line 68
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@10
    .line 69
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@12
    .line 70
    iput-boolean p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    #@14
    return-void
.end method

.method private static clamp(I)I
    .registers 2

    #@0
    shr-int/lit8 v0, p0, 0x1f

    #@2
    not-int v0, v0

    #@3
    and-int/2addr p0, v0

    #@4
    add-int/lit16 p0, p0, -0xff

    #@6
    shr-int/lit8 v0, p0, 0x1f

    #@8
    and-int/2addr p0, v0

    #@9
    add-int/lit16 p0, p0, 0xff

    #@b
    return p0
.end method

.method public static colorString(I)Ljava/lang/String;
    .registers 3

    #@0
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "00000000"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object p0

    #@f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object p0

    #@13
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    #@15
    const-string v1, "#"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1d
    move-result v1

    #@1e
    add-int/lit8 v1, v1, -0x8

    #@20
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@23
    move-result-object p0

    #@24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object p0

    #@28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object p0

    #@2c
    return-object p0
.end method

.method public static hsvToRgb(FFF)I
    .registers 8

    #@0
    const/high16 v0, 0x40c00000    # 6.0f

    #@2
    mul-float/2addr p0, v0

    #@3
    float-to-int v0, p0

    #@4
    int-to-float v1, v0

    #@5
    sub-float/2addr p0, v1

    #@6
    const/high16 v1, 0x437f0000    # 255.0f

    #@8
    mul-float/2addr p2, v1

    #@9
    const/high16 v1, 0x3f800000    # 1.0f

    #@b
    sub-float v2, v1, p1

    #@d
    mul-float/2addr v2, p2

    #@e
    const/high16 v3, 0x3f000000    # 0.5f

    #@10
    add-float/2addr v2, v3

    #@11
    float-to-int v2, v2

    #@12
    mul-float v4, p0, p1

    #@14
    sub-float v4, v1, v4

    #@16
    mul-float/2addr v4, p2

    #@17
    add-float/2addr v4, v3

    #@18
    float-to-int v4, v4

    #@19
    sub-float p0, v1, p0

    #@1b
    mul-float/2addr p0, p1

    #@1c
    sub-float/2addr v1, p0

    #@1d
    mul-float/2addr v1, p2

    #@1e
    add-float/2addr v1, v3

    #@1f
    float-to-int p0, v1

    #@20
    add-float/2addr p2, v3

    #@21
    float-to-int p1, p2

    #@22
    const/high16 p2, -0x1000000

    #@24
    if-eqz v0, :cond_60

    #@26
    const/4 v1, 0x1

    #@27
    if-eq v0, v1, :cond_58

    #@29
    const/4 v1, 0x2

    #@2a
    if-eq v0, v1, :cond_4f

    #@2c
    const/4 v1, 0x3

    #@2d
    if-eq v0, v1, :cond_47

    #@2f
    const/4 v1, 0x4

    #@30
    if-eq v0, v1, :cond_3f

    #@32
    const/4 p0, 0x5

    #@33
    if-eq v0, p0, :cond_37

    #@35
    const/4 p0, 0x0

    #@36
    return p0

    #@37
    :cond_37
    shl-int/lit8 p0, p1, 0x10

    #@39
    shl-int/lit8 p1, v2, 0x8

    #@3b
    add-int/2addr p0, p1

    #@3c
    add-int/2addr p0, v4

    #@3d
    or-int/2addr p0, p2

    #@3e
    return p0

    #@3f
    :cond_3f
    shl-int/lit8 p0, p0, 0x10

    #@41
    shl-int/lit8 v0, v2, 0x8

    #@43
    add-int/2addr p0, v0

    #@44
    add-int/2addr p0, p1

    #@45
    or-int/2addr p0, p2

    #@46
    return p0

    #@47
    :cond_47
    shl-int/lit8 p0, v2, 0x10

    #@49
    shl-int/lit8 v0, v4, 0x8

    #@4b
    add-int/2addr p0, v0

    #@4c
    add-int/2addr p0, p1

    #@4d
    or-int/2addr p0, p2

    #@4e
    return p0

    #@4f
    :cond_4f
    shl-int/lit8 v0, v2, 0x10

    #@51
    shl-int/lit8 p1, p1, 0x8

    #@53
    add-int/2addr v0, p1

    #@54
    add-int/2addr v0, p0

    #@55
    or-int p0, v0, p2

    #@57
    return p0

    #@58
    :cond_58
    shl-int/lit8 p0, v4, 0x10

    #@5a
    shl-int/lit8 p1, p1, 0x8

    #@5c
    add-int/2addr p0, p1

    #@5d
    add-int/2addr p0, v2

    #@5e
    or-int/2addr p0, p2

    #@5f
    return p0

    #@60
    :cond_60
    shl-int/lit8 p1, p1, 0x10

    #@62
    shl-int/lit8 p0, p0, 0x8

    #@64
    add-int/2addr p1, p0

    #@65
    add-int/2addr p1, v2

    #@66
    or-int p0, p1, p2

    #@68
    return p0
.end method

.method public static rgbaTocColor(FFFF)I
    .registers 5

    #@0
    const/high16 v0, 0x437f0000    # 255.0f

    #@2
    mul-float/2addr p0, v0

    #@3
    float-to-int p0, p0

    #@4
    .line 393
    invoke-static {p0}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    #@7
    move-result p0

    #@8
    mul-float/2addr p1, v0

    #@9
    float-to-int p1, p1

    #@a
    .line 394
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    #@d
    move-result p1

    #@e
    mul-float/2addr p2, v0

    #@f
    float-to-int p2, p2

    #@10
    .line 395
    invoke-static {p2}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    #@13
    move-result p2

    #@14
    mul-float/2addr p3, v0

    #@15
    float-to-int p3, p3

    #@16
    .line 396
    invoke-static {p3}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    #@19
    move-result p3

    #@1a
    shl-int/lit8 p3, p3, 0x18

    #@1c
    shl-int/lit8 p0, p0, 0x10

    #@1e
    or-int/2addr p0, p3

    #@1f
    shl-int/lit8 p1, p1, 0x8

    #@21
    or-int/2addr p0, p1

    #@22
    or-int/2addr p0, p2

    #@23
    return p0
.end method


# virtual methods
.method public applyToWidget(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 5

    #@0
    .line 402
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@2
    packed-switch v0, :pswitch_data_26

    #@5
    goto :goto_25

    #@6
    .line 412
    :pswitch_6
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@8
    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    #@a
    invoke-virtual {p1, v1, v0, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IZ)V

    #@d
    goto :goto_25

    #@e
    .line 409
    :pswitch_e
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@10
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@12
    invoke-virtual {p1, v1, v0, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V

    #@15
    goto :goto_25

    #@16
    .line 416
    :pswitch_16
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@18
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@1a
    invoke-virtual {p1, v1, v0, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IF)V

    #@1d
    goto :goto_25

    #@1e
    .line 406
    :pswitch_1e
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@20
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@22
    invoke-virtual {p1, v1, v0, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;II)V

    #@25
    :goto_25
    return-void

    #@26
    :pswitch_data_26
    .packed-switch 0x384
        :pswitch_1e
        :pswitch_16
        :pswitch_1e
        :pswitch_e
        :pswitch_6
        :pswitch_16
        :pswitch_1e
    .end packed-switch
.end method

.method public copy()Landroidx/constraintlayout/core/motion/CustomVariable;
    .registers 2

    #@0
    .line 33
    new-instance v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@2
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Landroidx/constraintlayout/core/motion/CustomVariable;)V

    #@5
    return-object v0
.end method

.method public diff(Landroidx/constraintlayout/core/motion/CustomVariable;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_42

    #@3
    .line 284
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@5
    iget v2, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@7
    if-eq v1, v2, :cond_a

    #@9
    goto :goto_42

    #@a
    :cond_a
    const/4 v2, 0x1

    #@b
    packed-switch v1, :pswitch_data_44

    #@e
    return v0

    #@f
    .line 300
    :pswitch_f
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@11
    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@13
    cmpl-float p1, v1, p1

    #@15
    if-nez p1, :cond_18

    #@17
    move v0, v2

    #@18
    :cond_18
    return v0

    #@19
    .line 298
    :pswitch_19
    iget-boolean v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    #@1b
    iget-boolean p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    #@1d
    if-ne v1, p1, :cond_20

    #@1f
    move v0, v2

    #@20
    :cond_20
    return v0

    #@21
    .line 296
    :pswitch_21
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@23
    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@25
    if-ne v1, p1, :cond_28

    #@27
    move v0, v2

    #@28
    :cond_28
    return v0

    #@29
    .line 294
    :pswitch_29
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@2b
    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@2d
    if-ne v1, p1, :cond_30

    #@2f
    move v0, v2

    #@30
    :cond_30
    return v0

    #@31
    .line 292
    :pswitch_31
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@33
    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@35
    cmpl-float p1, v1, p1

    #@37
    if-nez p1, :cond_3a

    #@39
    move v0, v2

    #@3a
    :cond_3a
    return v0

    #@3b
    .line 290
    :pswitch_3b
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@3d
    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@3f
    if-ne v1, p1, :cond_42

    #@41
    move v0, v2

    #@42
    :cond_42
    :goto_42
    return v0

    #@43
    nop

    #@44
    :pswitch_data_44
    .packed-switch 0x384
        :pswitch_3b
        :pswitch_31
        :pswitch_29
        :pswitch_21
        :pswitch_19
        :pswitch_f
        :pswitch_3b
    .end packed-switch
.end method

.method public getBooleanValue()Z
    .registers 2

    #@0
    .line 103
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    #@2
    return v0
.end method

.method public getColorValue()I
    .registers 2

    #@0
    .line 111
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@2
    return v0
.end method

.method public getFloatValue()F
    .registers 2

    #@0
    .line 107
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@2
    return v0
.end method

.method public getIntegerValue()I
    .registers 2

    #@0
    .line 115
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@2
    return v0
.end method

.method public getInterpolatedColor([F)I
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    .line 357
    aget v0, p1, v0

    #@3
    float-to-double v0, v0

    #@4
    const-wide v2, 0x3fdd1745d1745d17L    # 0.45454545454545453

    #@9
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@c
    move-result-wide v0

    #@d
    double-to-float v0, v0

    #@e
    const/high16 v1, 0x437f0000    # 255.0f

    #@10
    mul-float/2addr v0, v1

    #@11
    float-to-int v0, v0

    #@12
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    #@15
    move-result v0

    #@16
    const/4 v4, 0x1

    #@17
    .line 358
    aget v4, p1, v4

    #@19
    float-to-double v4, v4

    #@1a
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@1d
    move-result-wide v4

    #@1e
    double-to-float v4, v4

    #@1f
    mul-float/2addr v4, v1

    #@20
    float-to-int v4, v4

    #@21
    invoke-static {v4}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    #@24
    move-result v4

    #@25
    const/4 v5, 0x2

    #@26
    .line 359
    aget v5, p1, v5

    #@28
    float-to-double v5, v5

    #@29
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@2c
    move-result-wide v2

    #@2d
    double-to-float v2, v2

    #@2e
    mul-float/2addr v2, v1

    #@2f
    float-to-int v2, v2

    #@30
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    #@33
    move-result v2

    #@34
    const/4 v3, 0x3

    #@35
    .line 360
    aget p1, p1, v3

    #@37
    mul-float/2addr p1, v1

    #@38
    float-to-int p1, p1

    #@39
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    #@3c
    move-result p1

    #@3d
    shl-int/lit8 p1, p1, 0x18

    #@3f
    shl-int/lit8 v0, v0, 0x10

    #@41
    or-int/2addr p1, v0

    #@42
    shl-int/lit8 v0, v4, 0x8

    #@44
    or-int/2addr p1, v0

    #@45
    or-int/2addr p1, v2

    #@46
    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    .line 422
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 2

    #@0
    .line 119
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .registers 2

    #@0
    .line 99
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@2
    return v0
.end method

.method public getValueToInterpolate()F
    .registers 3

    #@0
    .line 175
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@2
    packed-switch v0, :pswitch_data_2c

    #@5
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@7
    return v0

    #@8
    .line 187
    :pswitch_8
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@a
    return v0

    #@b
    .line 185
    :pswitch_b
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    #@d
    if-eqz v0, :cond_12

    #@f
    const/high16 v0, 0x3f800000    # 1.0f

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0

    #@14
    .line 183
    :pswitch_14
    new-instance v0, Ljava/lang/RuntimeException;

    #@16
    const-string v1, "Cannot interpolate String"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 181
    :pswitch_1c
    new-instance v0, Ljava/lang/RuntimeException;

    #@1e
    const-string v1, "Color does not have a single color to interpolate"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 179
    :pswitch_24
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@26
    return v0

    #@27
    .line 177
    :pswitch_27
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@29
    int-to-float v0, v0

    #@2a
    return v0

    #@2b
    nop

    #@2c
    :pswitch_data_2c
    .packed-switch 0x384
        :pswitch_27
        :pswitch_24
        :pswitch_1c
        :pswitch_14
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public getValuesToInterpolate([F)V
    .registers 12

    #@0
    .line 193
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@2
    const/4 v1, 0x0

    #@3
    packed-switch v0, :pswitch_data_68

    #@6
    goto :goto_66

    #@7
    .line 219
    :pswitch_7
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@9
    aput v0, p1, v1

    #@b
    goto :goto_66

    #@c
    .line 216
    :pswitch_c
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    #@e
    if-eqz v0, :cond_13

    #@10
    const/high16 v0, 0x3f800000    # 1.0f

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    :goto_14
    aput v0, p1, v1

    #@16
    goto :goto_66

    #@17
    .line 214
    :pswitch_17
    new-instance p1, Ljava/lang/RuntimeException;

    #@19
    const-string v0, "Cannot interpolate String"

    #@1b
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw p1

    #@1f
    .line 201
    :pswitch_1f
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@21
    shr-int/lit8 v2, v0, 0x18

    #@23
    and-int/lit16 v2, v2, 0xff

    #@25
    shr-int/lit8 v3, v0, 0x10

    #@27
    and-int/lit16 v3, v3, 0xff

    #@29
    shr-int/lit8 v4, v0, 0x8

    #@2b
    and-int/lit16 v4, v4, 0xff

    #@2d
    and-int/lit16 v0, v0, 0xff

    #@2f
    int-to-float v3, v3

    #@30
    const/high16 v5, 0x437f0000    # 255.0f

    #@32
    div-float/2addr v3, v5

    #@33
    float-to-double v6, v3

    #@34
    const-wide v8, 0x400199999999999aL    # 2.2

    #@39
    .line 205
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@3c
    move-result-wide v6

    #@3d
    double-to-float v3, v6

    #@3e
    int-to-float v4, v4

    #@3f
    div-float/2addr v4, v5

    #@40
    float-to-double v6, v4

    #@41
    .line 206
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@44
    move-result-wide v6

    #@45
    double-to-float v4, v6

    #@46
    int-to-float v0, v0

    #@47
    div-float/2addr v0, v5

    #@48
    float-to-double v6, v0

    #@49
    .line 207
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@4c
    move-result-wide v6

    #@4d
    double-to-float v0, v6

    #@4e
    .line 208
    aput v3, p1, v1

    #@50
    const/4 v1, 0x1

    #@51
    .line 209
    aput v4, p1, v1

    #@53
    const/4 v1, 0x2

    #@54
    .line 210
    aput v0, p1, v1

    #@56
    int-to-float v0, v2

    #@57
    div-float/2addr v0, v5

    #@58
    const/4 v1, 0x3

    #@59
    .line 211
    aput v0, p1, v1

    #@5b
    goto :goto_66

    #@5c
    .line 198
    :pswitch_5c
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@5e
    aput v0, p1, v1

    #@60
    goto :goto_66

    #@61
    .line 195
    :pswitch_61
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@63
    int-to-float v0, v0

    #@64
    aput v0, p1, v1

    #@66
    :goto_66
    return-void

    #@67
    nop

    #@68
    :pswitch_data_68
    .packed-switch 0x384
        :pswitch_61
        :pswitch_5c
        :pswitch_1f
        :pswitch_17
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method

.method public isContinuous()Z
    .registers 3

    #@0
    .line 128
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@2
    const/16 v1, 0x387

    #@4
    if-eq v0, v1, :cond_10

    #@6
    const/16 v1, 0x388

    #@8
    if-eq v0, v1, :cond_10

    #@a
    const/16 v1, 0x38a

    #@c
    if-eq v0, v1, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    return v0
.end method

.method public numberOfInterpolatedValues()I
    .registers 3

    #@0
    .line 161
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@2
    const/16 v1, 0x386

    #@4
    if-eq v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x4

    #@9
    return v0
.end method

.method public setBooleanValue(Z)V
    .registers 2

    #@0
    .line 143
    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    #@2
    return-void
.end method

.method public setFloatValue(F)V
    .registers 2

    #@0
    .line 139
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@2
    return-void
.end method

.method public setIntValue(I)V
    .registers 2

    #@0
    .line 147
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@2
    return-void
.end method

.method public setInterpolatedValue(Landroidx/constraintlayout/core/motion/MotionWidget;[F)V
    .registers 11

    #@0
    .line 367
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    packed-switch v0, :pswitch_data_8e

    #@7
    goto/16 :goto_8c

    #@9
    .line 383
    :pswitch_9
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@b
    aget p2, p2, v2

    #@d
    const/high16 v4, 0x3f000000    # 0.5f

    #@f
    cmpl-float p2, p2, v4

    #@11
    if-lez p2, :cond_14

    #@13
    goto :goto_15

    #@14
    :cond_14
    move v1, v2

    #@15
    :goto_15
    invoke-virtual {p1, v3, v0, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IZ)V

    #@18
    goto :goto_8c

    #@19
    .line 381
    :pswitch_19
    new-instance p1, Ljava/lang/RuntimeException;

    #@1b
    new-instance p2, Ljava/lang/StringBuilder;

    #@1d
    const-string v0, "unable to interpolate "

    #@1f
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@22
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object p2

    #@28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object p2

    #@2c
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2f
    throw p1

    #@30
    .line 372
    :pswitch_30
    aget v0, p2, v2

    #@32
    float-to-double v2, v0

    #@33
    const-wide v4, 0x3fdd1745d1745d17L    # 0.45454545454545453

    #@38
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@3b
    move-result-wide v2

    #@3c
    double-to-float v0, v2

    #@3d
    const/high16 v2, 0x437f0000    # 255.0f

    #@3f
    mul-float/2addr v0, v2

    #@40
    float-to-int v0, v0

    #@41
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    #@44
    move-result v0

    #@45
    .line 373
    aget v1, p2, v1

    #@47
    float-to-double v6, v1

    #@48
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@4b
    move-result-wide v6

    #@4c
    double-to-float v1, v6

    #@4d
    mul-float/2addr v1, v2

    #@4e
    float-to-int v1, v1

    #@4f
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    #@52
    move-result v1

    #@53
    const/4 v3, 0x2

    #@54
    .line 374
    aget v3, p2, v3

    #@56
    float-to-double v6, v3

    #@57
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@5a
    move-result-wide v3

    #@5b
    double-to-float v3, v3

    #@5c
    mul-float/2addr v3, v2

    #@5d
    float-to-int v3, v3

    #@5e
    invoke-static {v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    #@61
    move-result v3

    #@62
    const/4 v4, 0x3

    #@63
    .line 375
    aget p2, p2, v4

    #@65
    mul-float/2addr p2, v2

    #@66
    float-to-int p2, p2

    #@67
    invoke-static {p2}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    #@6a
    move-result p2

    #@6b
    shl-int/lit8 p2, p2, 0x18

    #@6d
    shl-int/lit8 v0, v0, 0x10

    #@6f
    or-int/2addr p2, v0

    #@70
    shl-int/lit8 v0, v1, 0x8

    #@72
    or-int/2addr p2, v0

    #@73
    or-int/2addr p2, v3

    #@74
    .line 377
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@76
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@78
    invoke-virtual {p1, v0, v1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;II)V

    #@7b
    goto :goto_8c

    #@7c
    .line 387
    :pswitch_7c
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@7e
    aget p2, p2, v2

    #@80
    invoke-virtual {p1, v1, v0, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IF)V

    #@83
    goto :goto_8c

    #@84
    .line 369
    :pswitch_84
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@86
    aget p2, p2, v2

    #@88
    float-to-int p2, p2

    #@89
    invoke-virtual {p1, v1, v0, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;II)V

    #@8c
    :goto_8c
    return-void

    #@8d
    nop

    #@8e
    :pswitch_data_8e
    .packed-switch 0x384
        :pswitch_84
        :pswitch_7c
        :pswitch_30
        :pswitch_19
        :pswitch_9
        :pswitch_7c
        :pswitch_19
    .end packed-switch
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 151
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 324
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@2
    packed-switch v0, :pswitch_data_38

    #@5
    goto :goto_37

    #@6
    .line 342
    :pswitch_6
    check-cast p1, Ljava/lang/Float;

    #@8
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@b
    move-result p1

    #@c
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@e
    goto :goto_37

    #@f
    .line 339
    :pswitch_f
    check-cast p1, Ljava/lang/Boolean;

    #@11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@14
    move-result p1

    #@15
    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    #@17
    goto :goto_37

    #@18
    .line 336
    :pswitch_18
    check-cast p1, Ljava/lang/String;

    #@1a
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@1c
    goto :goto_37

    #@1d
    .line 333
    :pswitch_1d
    check-cast p1, Ljava/lang/Integer;

    #@1f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@22
    move-result p1

    #@23
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@25
    goto :goto_37

    #@26
    .line 330
    :pswitch_26
    check-cast p1, Ljava/lang/Float;

    #@28
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@2b
    move-result p1

    #@2c
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@2e
    goto :goto_37

    #@2f
    .line 327
    :pswitch_2f
    check-cast p1, Ljava/lang/Integer;

    #@31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@34
    move-result p1

    #@35
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@37
    :goto_37
    return-void

    #@38
    :pswitch_data_38
    .packed-switch 0x384
        :pswitch_2f
        :pswitch_26
        :pswitch_1d
        :pswitch_18
        :pswitch_f
        :pswitch_6
        :pswitch_2f
    .end packed-switch
.end method

.method public setValue([F)V
    .registers 10

    #@0
    .line 225
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    #@5
    const/4 v4, 0x0

    #@6
    packed-switch v0, :pswitch_data_70

    #@9
    goto :goto_6e

    #@a
    .line 247
    :pswitch_a
    aget p1, p1, v4

    #@c
    float-to-double v5, p1

    #@d
    cmpl-double p1, v5, v2

    #@f
    if-lez p1, :cond_12

    #@11
    goto :goto_13

    #@12
    :cond_12
    move v1, v4

    #@13
    :goto_13
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    #@15
    goto :goto_6e

    #@16
    .line 245
    :pswitch_16
    new-instance p1, Ljava/lang/RuntimeException;

    #@18
    const-string v0, "Cannot interpolate String"

    #@1a
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    throw p1

    #@1e
    .line 235
    :pswitch_1e
    aget v0, p1, v4

    #@20
    .line 236
    aget v1, p1, v1

    #@22
    const/4 v4, 0x2

    #@23
    .line 237
    aget v4, p1, v4

    #@25
    float-to-double v5, v0

    #@26
    .line 238
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@29
    move-result-wide v5

    #@2a
    double-to-float v0, v5

    #@2b
    const/high16 v5, 0x437f0000    # 255.0f

    #@2d
    mul-float/2addr v0, v5

    #@2e
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@31
    move-result v0

    #@32
    and-int/lit16 v0, v0, 0xff

    #@34
    float-to-double v6, v1

    #@35
    .line 239
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@38
    move-result-wide v6

    #@39
    double-to-float v1, v6

    #@3a
    mul-float/2addr v1, v5

    #@3b
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@3e
    move-result v1

    #@3f
    and-int/lit16 v1, v1, 0xff

    #@41
    float-to-double v6, v4

    #@42
    .line 240
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@45
    move-result-wide v2

    #@46
    double-to-float v2, v2

    #@47
    mul-float/2addr v2, v5

    #@48
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@4b
    move-result v2

    #@4c
    and-int/lit16 v2, v2, 0xff

    #@4e
    const/4 v3, 0x3

    #@4f
    .line 241
    aget p1, p1, v3

    #@51
    mul-float/2addr p1, v5

    #@52
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@55
    move-result p1

    #@56
    and-int/lit16 p1, p1, 0xff

    #@58
    shl-int/lit8 p1, p1, 0x18

    #@5a
    shl-int/lit8 v0, v0, 0x10

    #@5c
    or-int/2addr p1, v0

    #@5d
    shl-int/lit8 v0, v1, 0x8

    #@5f
    or-int/2addr p1, v0

    #@60
    or-int/2addr p1, v2

    #@61
    .line 242
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@63
    goto :goto_6e

    #@64
    .line 232
    :pswitch_64
    aget p1, p1, v4

    #@66
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@68
    goto :goto_6e

    #@69
    .line 228
    :pswitch_69
    aget p1, p1, v4

    #@6b
    float-to-int p1, p1

    #@6c
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@6e
    :goto_6e
    return-void

    #@6f
    nop

    #@70
    :pswitch_data_70
    .packed-switch 0x384
        :pswitch_69
        :pswitch_64
        :pswitch_1e
        :pswitch_16
        :pswitch_a
        :pswitch_64
        :pswitch_69
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const/16 v1, 0x3a

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 81
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    #@17
    packed-switch v1, :pswitch_data_ae

    #@1a
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string v1, "????"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0

    #@2e
    .line 93
    :pswitch_2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0

    #@42
    .line 91
    :pswitch_42
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    iget-boolean v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    #@4d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    return-object v0

    #@5a
    .line 89
    :pswitch_5a
    new-instance v1, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    return-object v0

    #@6e
    .line 87
    :pswitch_6e
    new-instance v1, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@79
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->colorString(I)Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    return-object v0

    #@86
    .line 85
    :pswitch_86
    new-instance v1, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v0

    #@99
    return-object v0

    #@9a
    .line 83
    :pswitch_9a
    new-instance v1, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v0

    #@a9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v0

    #@ad
    return-object v0

    #@ae
    :pswitch_data_ae
    .packed-switch 0x384
        :pswitch_9a
        :pswitch_86
        :pswitch_6e
        :pswitch_5a
        :pswitch_42
        :pswitch_2e
    .end packed-switch
.end method

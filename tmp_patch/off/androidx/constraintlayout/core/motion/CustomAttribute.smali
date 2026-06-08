.class public Landroidx/constraintlayout/core/motion/CustomAttribute;
.super Ljava/lang/Object;
.source "CustomAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionLayout"


# instance fields
.field mBooleanValue:Z

.field private mColorValue:I

.field private mFloatValue:F

.field private mIntegerValue:I

.field private mMethod:Z

.field mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomAttribute;Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 42
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    #@6
    .line 267
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    #@a
    .line 268
    iget-object p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@c
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@e
    .line 269
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/CustomAttribute;->setValue(Ljava/lang/Object;)V

    #@11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;)V
    .registers 4

    #@0
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 42
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    #@6
    .line 255
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    #@8
    .line 256
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;Ljava/lang/Object;Z)V
    .registers 5

    #@0
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 260
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    #@5
    .line 261
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@7
    .line 262
    iput-boolean p4, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    #@9
    .line 263
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/motion/CustomAttribute;->setValue(Ljava/lang/Object;)V

    #@c
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


# virtual methods
.method public diff(Landroidx/constraintlayout/core/motion/CustomAttribute;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_4c

    #@3
    .line 231
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@5
    iget-object v2, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@7
    if-eq v1, v2, :cond_a

    #@9
    goto :goto_4c

    #@a
    .line 234
    :cond_a
    sget-object v1, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    #@c
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@e
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    #@11
    move-result v2

    #@12
    aget v1, v1, v2

    #@14
    const/4 v2, 0x1

    #@15
    packed-switch v1, :pswitch_data_4e

    #@18
    return v0

    #@19
    .line 248
    :pswitch_19
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    #@1b
    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    #@1d
    cmpl-float p1, v1, p1

    #@1f
    if-nez p1, :cond_22

    #@21
    move v0, v2

    #@22
    :cond_22
    return v0

    #@23
    .line 239
    :pswitch_23
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    #@25
    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    #@27
    cmpl-float p1, v1, p1

    #@29
    if-nez p1, :cond_2c

    #@2b
    move v0, v2

    #@2c
    :cond_2c
    return v0

    #@2d
    .line 242
    :pswitch_2d
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    #@2f
    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    #@31
    if-ne v1, p1, :cond_34

    #@33
    move v0, v2

    #@34
    :cond_34
    return v0

    #@35
    .line 244
    :pswitch_35
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    #@37
    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    #@39
    if-ne v1, p1, :cond_3c

    #@3b
    move v0, v2

    #@3c
    :cond_3c
    return v0

    #@3d
    .line 246
    :pswitch_3d
    iget-boolean v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    #@3f
    iget-boolean p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    #@41
    if-ne v1, p1, :cond_44

    #@43
    move v0, v2

    #@44
    :cond_44
    return v0

    #@45
    .line 237
    :pswitch_45
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    #@47
    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    #@49
    if-ne v1, p1, :cond_4c

    #@4b
    move v0, v2

    #@4c
    :cond_4c
    :goto_4c
    return v0

    #@4d
    nop

    #@4e
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_2d
        :pswitch_45
        :pswitch_23
        :pswitch_19
    .end packed-switch
.end method

.method public getType()Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    .registers 2

    #@0
    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@2
    return-object v0
.end method

.method public getValueToInterpolate()F
    .registers 3

    #@0
    .line 120
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_34

    #@d
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@f
    return v0

    #@10
    .line 133
    :pswitch_10
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    #@12
    return v0

    #@13
    .line 124
    :pswitch_13
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    #@15
    return v0

    #@16
    .line 122
    :pswitch_16
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    #@18
    int-to-float v0, v0

    #@19
    return v0

    #@1a
    .line 127
    :pswitch_1a
    new-instance v0, Ljava/lang/RuntimeException;

    #@1c
    const-string v1, "Color does not have a single color to interpolate"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 129
    :pswitch_22
    new-instance v0, Ljava/lang/RuntimeException;

    #@24
    const-string v1, "Cannot interpolate String"

    #@26
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 131
    :pswitch_2a
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    #@2c
    if-eqz v0, :cond_31

    #@2e
    const/high16 v0, 0x3f800000    # 1.0f

    #@30
    goto :goto_32

    #@31
    :cond_31
    const/4 v0, 0x0

    #@32
    :goto_32
    return v0

    #@33
    nop

    #@34
    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public getValuesToInterpolate([F)V
    .registers 12

    #@0
    .line 140
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    const/4 v1, 0x0

    #@b
    packed-switch v0, :pswitch_data_70

    #@e
    goto :goto_6e

    #@f
    .line 167
    :pswitch_f
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    #@11
    aput v0, p1, v1

    #@13
    goto :goto_6e

    #@14
    .line 145
    :pswitch_14
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    #@16
    aput v0, p1, v1

    #@18
    goto :goto_6e

    #@19
    .line 142
    :pswitch_19
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    #@1b
    int-to-float v0, v0

    #@1c
    aput v0, p1, v1

    #@1e
    goto :goto_6e

    #@1f
    .line 149
    :pswitch_1f
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

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
    .line 153
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
    .line 154
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
    .line 155
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@4c
    move-result-wide v6

    #@4d
    double-to-float v0, v6

    #@4e
    .line 156
    aput v3, p1, v1

    #@50
    const/4 v1, 0x1

    #@51
    .line 157
    aput v4, p1, v1

    #@53
    const/4 v1, 0x2

    #@54
    .line 158
    aput v0, p1, v1

    #@56
    int-to-float v0, v2

    #@57
    div-float/2addr v0, v5

    #@58
    const/4 v1, 0x3

    #@59
    .line 159
    aput v0, p1, v1

    #@5b
    goto :goto_6e

    #@5c
    .line 162
    :pswitch_5c
    new-instance p1, Ljava/lang/RuntimeException;

    #@5e
    const-string v0, "Color does not have a single color to interpolate"

    #@60
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@63
    throw p1

    #@64
    .line 164
    :pswitch_64
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    #@66
    if-eqz v0, :cond_6b

    #@68
    const/high16 v0, 0x3f800000    # 1.0f

    #@6a
    goto :goto_6c

    #@6b
    :cond_6b
    const/4 v0, 0x0

    #@6c
    :goto_6c
    aput v0, p1, v1

    #@6e
    :goto_6e
    return-void

    #@6f
    nop

    #@70
    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_64
        :pswitch_5c
        :pswitch_1f
        :pswitch_1f
        :pswitch_19
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method

.method public isContinuous()Z
    .registers 4

    #@0
    .line 72
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    const/4 v1, 0x1

    #@b
    if-eq v0, v1, :cond_14

    #@d
    const/4 v2, 0x2

    #@e
    if-eq v0, v2, :cond_14

    #@10
    const/4 v2, 0x3

    #@11
    if-eq v0, v2, :cond_14

    #@13
    return v1

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    return v0
.end method

.method public numberOfInterpolatedValues()I
    .registers 4

    #@0
    .line 105
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    const/4 v1, 0x4

    #@b
    if-eq v0, v1, :cond_12

    #@d
    const/4 v2, 0x5

    #@e
    if-eq v0, v2, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    :cond_12
    return v1
.end method

.method public setColorValue(I)V
    .registers 2

    #@0
    .line 87
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    #@2
    return-void
.end method

.method public setFloatValue(F)V
    .registers 2

    #@0
    .line 83
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    #@2
    return-void
.end method

.method public setIntValue(I)V
    .registers 2

    #@0
    .line 91
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    #@2
    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 95
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mStringValue:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 274
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_40

    #@d
    goto :goto_3f

    #@e
    .line 293
    :pswitch_e
    check-cast p1, Ljava/lang/Float;

    #@10
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@13
    move-result p1

    #@14
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    #@16
    goto :goto_3f

    #@17
    .line 280
    :pswitch_17
    check-cast p1, Ljava/lang/Float;

    #@19
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@1c
    move-result p1

    #@1d
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    #@1f
    goto :goto_3f

    #@20
    .line 284
    :pswitch_20
    check-cast p1, Ljava/lang/Integer;

    #@22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@25
    move-result p1

    #@26
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    #@28
    goto :goto_3f

    #@29
    .line 287
    :pswitch_29
    check-cast p1, Ljava/lang/String;

    #@2b
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mStringValue:Ljava/lang/String;

    #@2d
    goto :goto_3f

    #@2e
    .line 290
    :pswitch_2e
    check-cast p1, Ljava/lang/Boolean;

    #@30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@33
    move-result p1

    #@34
    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    #@36
    goto :goto_3f

    #@37
    .line 277
    :pswitch_37
    check-cast p1, Ljava/lang/Integer;

    #@39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@3c
    move-result p1

    #@3d
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    #@3f
    :goto_3f
    return-void

    #@40
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2e
        :pswitch_29
        :pswitch_20
        :pswitch_20
        :pswitch_37
        :pswitch_17
        :pswitch_e
    .end packed-switch
.end method

.method public setValue([F)V
    .registers 9

    #@0
    .line 174
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    const/4 v1, 0x1

    #@b
    const/4 v2, 0x0

    #@c
    packed-switch v0, :pswitch_data_58

    #@f
    goto :goto_57

    #@10
    .line 193
    :pswitch_10
    aget p1, p1, v2

    #@12
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    #@14
    goto :goto_57

    #@15
    .line 180
    :pswitch_15
    aget p1, p1, v2

    #@17
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    #@19
    goto :goto_57

    #@1a
    .line 184
    :pswitch_1a
    aget v0, p1, v2

    #@1c
    aget v1, p1, v1

    #@1e
    const/4 v2, 0x2

    #@1f
    aget v2, p1, v2

    #@21
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/motion/CustomAttribute;->hsvToRgb(FFF)I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    #@27
    const v1, 0xffffff

    #@2a
    and-int/2addr v0, v1

    #@2b
    const/4 v1, 0x3

    #@2c
    .line 185
    aget p1, p1, v1

    #@2e
    const/high16 v1, 0x437f0000    # 255.0f

    #@30
    mul-float/2addr p1, v1

    #@31
    float-to-int p1, p1

    #@32
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/CustomAttribute;->clamp(I)I

    #@35
    move-result p1

    #@36
    shl-int/lit8 p1, p1, 0x18

    #@38
    or-int/2addr p1, v0

    #@39
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    #@3b
    goto :goto_57

    #@3c
    .line 188
    :pswitch_3c
    new-instance p1, Ljava/lang/RuntimeException;

    #@3e
    const-string v0, "Color does not have a single color to interpolate"

    #@40
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@43
    throw p1

    #@44
    .line 190
    :pswitch_44
    aget p1, p1, v2

    #@46
    float-to-double v3, p1

    #@47
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    #@49
    cmpl-double p1, v3, v5

    #@4b
    if-lez p1, :cond_4e

    #@4d
    goto :goto_4f

    #@4e
    :cond_4e
    move v1, v2

    #@4f
    :goto_4f
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    #@51
    goto :goto_57

    #@52
    .line 177
    :pswitch_52
    aget p1, p1, v2

    #@54
    float-to-int p1, p1

    #@55
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    #@57
    :goto_57
    return-void

    #@58
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_52
        :pswitch_44
        :pswitch_3c
        :pswitch_1a
        :pswitch_1a
        :pswitch_52
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method

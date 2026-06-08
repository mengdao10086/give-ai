.class Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;
.super Ljava/lang/Object;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/utils/widget/ImageFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageMatrix"
.end annotation


# instance fields
.field m:[F

.field mBrightness:F

.field mColorMatrix:Landroid/graphics/ColorMatrix;

.field mContrast:F

.field mSaturation:F

.field mTmpColorMatrix:Landroid/graphics/ColorMatrix;

.field mWarmth:F


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0x14

    #@5
    new-array v0, v0, [F

    #@7
    .line 90
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    #@9
    .line 91
    new-instance v0, Landroid/graphics/ColorMatrix;

    #@b
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    #@e
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    #@10
    .line 92
    new-instance v0, Landroid/graphics/ColorMatrix;

    #@12
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    #@15
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    #@17
    const/high16 v0, 0x3f800000    # 1.0f

    #@19
    .line 93
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    #@1b
    .line 94
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    #@1d
    .line 95
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    #@1f
    .line 96
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    #@21
    return-void
.end method

.method private brightness(F)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    #@0
    .line 228
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    #@2
    const/4 v1, 0x0

    #@3
    aput p1, v0, v1

    #@5
    const/4 v1, 0x1

    #@6
    const/4 v2, 0x0

    #@7
    .line 229
    aput v2, v0, v1

    #@9
    const/4 v1, 0x2

    #@a
    .line 230
    aput v2, v0, v1

    #@c
    const/4 v1, 0x3

    #@d
    .line 231
    aput v2, v0, v1

    #@f
    const/4 v1, 0x4

    #@10
    .line 232
    aput v2, v0, v1

    #@12
    const/4 v1, 0x5

    #@13
    .line 234
    aput v2, v0, v1

    #@15
    const/4 v1, 0x6

    #@16
    .line 235
    aput p1, v0, v1

    #@18
    const/4 v1, 0x7

    #@19
    .line 236
    aput v2, v0, v1

    #@1b
    const/16 v1, 0x8

    #@1d
    .line 237
    aput v2, v0, v1

    #@1f
    const/16 v1, 0x9

    #@21
    .line 238
    aput v2, v0, v1

    #@23
    const/16 v1, 0xa

    #@25
    .line 240
    aput v2, v0, v1

    #@27
    const/16 v1, 0xb

    #@29
    .line 241
    aput v2, v0, v1

    #@2b
    const/16 v1, 0xc

    #@2d
    .line 242
    aput p1, v0, v1

    #@2f
    const/16 p1, 0xd

    #@31
    .line 243
    aput v2, v0, p1

    #@33
    const/16 p1, 0xe

    #@35
    .line 244
    aput v2, v0, p1

    #@37
    const/16 p1, 0xf

    #@39
    .line 246
    aput v2, v0, p1

    #@3b
    const/16 p1, 0x10

    #@3d
    .line 247
    aput v2, v0, p1

    #@3f
    const/16 p1, 0x11

    #@41
    .line 248
    aput v2, v0, p1

    #@43
    const/16 p1, 0x12

    #@45
    const/high16 v1, 0x3f800000    # 1.0f

    #@47
    .line 249
    aput v1, v0, p1

    #@49
    const/16 p1, 0x13

    #@4b
    .line 250
    aput v2, v0, p1

    #@4d
    return-void
.end method

.method private saturation(F)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saturationStrength"
        }
    .end annotation

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    sub-float v1, v0, p1

    #@4
    const v2, 0x3e998c7e    # 0.2999f

    #@7
    mul-float/2addr v2, v1

    #@8
    const v3, 0x3f1645a2    # 0.587f

    #@b
    mul-float/2addr v3, v1

    #@c
    const v4, 0x3de978d5    # 0.114f

    #@f
    mul-float/2addr v1, v4

    #@10
    .line 109
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    #@12
    const/4 v5, 0x0

    #@13
    add-float v6, v2, p1

    #@15
    aput v6, v4, v5

    #@17
    const/4 v5, 0x1

    #@18
    .line 110
    aput v3, v4, v5

    #@1a
    const/4 v5, 0x2

    #@1b
    .line 111
    aput v1, v4, v5

    #@1d
    const/4 v5, 0x3

    #@1e
    const/4 v6, 0x0

    #@1f
    .line 112
    aput v6, v4, v5

    #@21
    const/4 v5, 0x4

    #@22
    .line 113
    aput v6, v4, v5

    #@24
    const/4 v5, 0x5

    #@25
    .line 115
    aput v2, v4, v5

    #@27
    const/4 v5, 0x6

    #@28
    add-float v7, v3, p1

    #@2a
    .line 116
    aput v7, v4, v5

    #@2c
    const/4 v5, 0x7

    #@2d
    .line 117
    aput v1, v4, v5

    #@2f
    const/16 v5, 0x8

    #@31
    .line 118
    aput v6, v4, v5

    #@33
    const/16 v5, 0x9

    #@35
    .line 119
    aput v6, v4, v5

    #@37
    const/16 v5, 0xa

    #@39
    .line 121
    aput v2, v4, v5

    #@3b
    const/16 v2, 0xb

    #@3d
    .line 122
    aput v3, v4, v2

    #@3f
    const/16 v2, 0xc

    #@41
    add-float/2addr v1, p1

    #@42
    .line 123
    aput v1, v4, v2

    #@44
    const/16 p1, 0xd

    #@46
    .line 124
    aput v6, v4, p1

    #@48
    const/16 p1, 0xe

    #@4a
    .line 125
    aput v6, v4, p1

    #@4c
    const/16 p1, 0xf

    #@4e
    .line 127
    aput v6, v4, p1

    #@50
    const/16 p1, 0x10

    #@52
    .line 128
    aput v6, v4, p1

    #@54
    const/16 p1, 0x11

    #@56
    .line 129
    aput v6, v4, p1

    #@58
    const/16 p1, 0x12

    #@5a
    .line 130
    aput v0, v4, p1

    #@5c
    const/16 p1, 0x13

    #@5e
    .line 131
    aput v6, v4, p1

    #@60
    return-void
.end method

.method private warmth(F)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warmth"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v1, p1, v0

    #@3
    if-gtz v1, :cond_8

    #@5
    const p1, 0x3c23d70a    # 0.01f

    #@8
    :cond_8
    const v1, 0x459c4000    # 5000.0f

    #@b
    div-float/2addr v1, p1

    #@c
    const/high16 p1, 0x42c80000    # 100.0f

    #@e
    div-float/2addr v1, p1

    #@f
    const/high16 p1, 0x42840000    # 66.0f

    #@11
    cmpl-float v2, v1, p1

    #@13
    const v3, 0x43211e9c

    #@16
    const v4, 0x42c6f10d

    #@19
    const/high16 v5, 0x437f0000    # 255.0f

    #@1b
    if-lez v2, :cond_3f

    #@1d
    const/high16 v2, 0x42700000    # 60.0f

    #@1f
    sub-float v2, v1, v2

    #@21
    float-to-double v6, v2

    #@22
    const-wide v8, -0x403ef32580000000L    # -0.13320475816726685

    #@27
    .line 147
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@2a
    move-result-wide v8

    #@2b
    double-to-float v2, v8

    #@2c
    const v8, 0x43a4d970

    #@2f
    mul-float/2addr v2, v8

    #@30
    const-wide v8, 0x3fb354f0e0000000L

    #@35
    .line 148
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@38
    move-result-wide v6

    #@39
    double-to-float v6, v6

    #@3a
    const v7, 0x43900fa3

    #@3d
    mul-float/2addr v6, v7

    #@3e
    goto :goto_49

    #@3f
    :cond_3f
    float-to-double v6, v1

    #@40
    .line 151
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    #@43
    move-result-wide v6

    #@44
    double-to-float v2, v6

    #@45
    mul-float/2addr v2, v4

    #@46
    sub-float v6, v2, v3

    #@48
    move v2, v5

    #@49
    :goto_49
    cmpg-float p1, v1, p1

    #@4b
    const v7, 0x439885bc

    #@4e
    const v8, 0x430a848a

    #@51
    if-gez p1, :cond_67

    #@53
    const/high16 p1, 0x41980000    # 19.0f

    #@55
    cmpl-float p1, v1, p1

    #@57
    if-lez p1, :cond_65

    #@59
    const/high16 p1, 0x41200000    # 10.0f

    #@5b
    sub-float/2addr v1, p1

    #@5c
    float-to-double v9, v1

    #@5d
    .line 156
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    #@60
    move-result-wide v9

    #@61
    double-to-float p1, v9

    #@62
    mul-float/2addr p1, v8

    #@63
    sub-float/2addr p1, v7

    #@64
    goto :goto_68

    #@65
    :cond_65
    move p1, v0

    #@66
    goto :goto_68

    #@67
    :cond_67
    move p1, v5

    #@68
    .line 163
    :goto_68
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    #@6b
    move-result v1

    #@6c
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    #@6f
    move-result v1

    #@70
    .line 164
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    #@73
    move-result v2

    #@74
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    #@77
    move-result v2

    #@78
    .line 165
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    #@7b
    move-result p1

    #@7c
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    #@7f
    move-result p1

    #@80
    const/high16 v6, 0x42480000    # 50.0f

    #@82
    float-to-double v9, v6

    #@83
    .line 181
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    #@86
    move-result-wide v9

    #@87
    double-to-float v6, v9

    #@88
    mul-float/2addr v6, v4

    #@89
    sub-float/2addr v6, v3

    #@8a
    const/high16 v3, 0x42200000    # 40.0f

    #@8c
    float-to-double v3, v3

    #@8d
    .line 186
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    #@90
    move-result-wide v3

    #@91
    double-to-float v3, v3

    #@92
    mul-float/2addr v3, v8

    #@93
    sub-float/2addr v3, v7

    #@94
    .line 193
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    #@97
    move-result v4

    #@98
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    #@9b
    move-result v4

    #@9c
    .line 194
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    #@9f
    move-result v6

    #@a0
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    #@a3
    move-result v6

    #@a4
    .line 195
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    #@a7
    move-result v3

    #@a8
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    #@ab
    move-result v3

    #@ac
    div-float/2addr v1, v4

    #@ad
    div-float/2addr v2, v6

    #@ae
    div-float/2addr p1, v3

    #@af
    .line 201
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    #@b1
    const/4 v4, 0x0

    #@b2
    aput v1, v3, v4

    #@b4
    const/4 v1, 0x1

    #@b5
    .line 202
    aput v0, v3, v1

    #@b7
    const/4 v1, 0x2

    #@b8
    .line 203
    aput v0, v3, v1

    #@ba
    const/4 v1, 0x3

    #@bb
    .line 204
    aput v0, v3, v1

    #@bd
    const/4 v1, 0x4

    #@be
    .line 205
    aput v0, v3, v1

    #@c0
    const/4 v1, 0x5

    #@c1
    .line 207
    aput v0, v3, v1

    #@c3
    const/4 v1, 0x6

    #@c4
    .line 208
    aput v2, v3, v1

    #@c6
    const/4 v1, 0x7

    #@c7
    .line 209
    aput v0, v3, v1

    #@c9
    const/16 v1, 0x8

    #@cb
    .line 210
    aput v0, v3, v1

    #@cd
    const/16 v1, 0x9

    #@cf
    .line 211
    aput v0, v3, v1

    #@d1
    const/16 v1, 0xa

    #@d3
    .line 213
    aput v0, v3, v1

    #@d5
    const/16 v1, 0xb

    #@d7
    .line 214
    aput v0, v3, v1

    #@d9
    const/16 v1, 0xc

    #@db
    .line 215
    aput p1, v3, v1

    #@dd
    const/16 p1, 0xd

    #@df
    .line 216
    aput v0, v3, p1

    #@e1
    const/16 p1, 0xe

    #@e3
    .line 217
    aput v0, v3, p1

    #@e5
    const/16 p1, 0xf

    #@e7
    .line 219
    aput v0, v3, p1

    #@e9
    const/16 p1, 0x10

    #@eb
    .line 220
    aput v0, v3, p1

    #@ed
    const/16 p1, 0x11

    #@ef
    .line 221
    aput v0, v3, p1

    #@f1
    const/16 p1, 0x12

    #@f3
    const/high16 v1, 0x3f800000    # 1.0f

    #@f5
    .line 222
    aput v1, v3, p1

    #@f7
    const/16 p1, 0x13

    #@f9
    .line 223
    aput v0, v3, p1

    #@fb
    return-void
.end method


# virtual methods
.method updateMatrix(Landroid/widget/ImageView;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    .line 254
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    #@2
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    #@5
    .line 256
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    #@7
    const/high16 v1, 0x3f800000    # 1.0f

    #@9
    cmpl-float v2, v0, v1

    #@b
    const/4 v3, 0x1

    #@c
    if-eqz v2, :cond_1a

    #@e
    .line 257
    invoke-direct {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->saturation(F)V

    #@11
    .line 258
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    #@13
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    #@15
    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    #@18
    move v0, v3

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    .line 261
    :goto_1b
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    #@1d
    cmpl-float v4, v2, v1

    #@1f
    if-eqz v4, :cond_2e

    #@21
    .line 262
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    #@23
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    #@26
    .line 263
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    #@28
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    #@2a
    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    #@2d
    move v0, v3

    #@2e
    .line 266
    :cond_2e
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    #@30
    cmpl-float v4, v2, v1

    #@32
    if-eqz v4, :cond_46

    #@34
    .line 267
    invoke-direct {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->warmth(F)V

    #@37
    .line 268
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    #@39
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    #@3b
    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    #@3e
    .line 269
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    #@40
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    #@42
    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    #@45
    move v0, v3

    #@46
    .line 272
    :cond_46
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    #@48
    cmpl-float v1, v2, v1

    #@4a
    if-eqz v1, :cond_5e

    #@4c
    .line 273
    invoke-direct {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->brightness(F)V

    #@4f
    .line 274
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    #@51
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    #@53
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    #@56
    .line 275
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    #@58
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    #@5a
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    #@5d
    goto :goto_5f

    #@5e
    :cond_5e
    move v3, v0

    #@5f
    :goto_5f
    if-eqz v3, :cond_6c

    #@61
    .line 280
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    #@63
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    #@65
    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    #@68
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@6b
    goto :goto_6f

    #@6c
    .line 282
    :cond_6c
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    #@6f
    :goto_6f
    return-void
.end method

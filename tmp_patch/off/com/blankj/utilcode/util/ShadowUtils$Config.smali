.class public Lcom/blankj/utilcode/util/ShadowUtils$Config;
.super Ljava/lang/Object;
.source "ShadowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ShadowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# static fields
.field private static final SHADOW_COLOR_DEFAULT:I = 0x44000000

.field private static final SHADOW_SIZE:I


# instance fields
.field private isCircle:Z

.field private mShadowColorNormal:I

.field private mShadowColorPressed:I

.field private mShadowMaxSizeNormal:F

.field private mShadowMaxSizePressed:F

.field private mShadowRadius:F

.field private mShadowSizeNormal:F

.field private mShadowSizePressed:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/high16 v0, 0x41000000    # 8.0f

    #@2
    .line 61
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->dp2px(F)I

    #@5
    move-result v0

    #@6
    sput v0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->SHADOW_SIZE:I

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, -0x40800000    # -1.0f

    #@5
    .line 63
    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowRadius:F

    #@7
    .line 64
    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowSizeNormal:F

    #@9
    .line 65
    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowSizePressed:F

    #@b
    .line 66
    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowMaxSizeNormal:F

    #@d
    .line 67
    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowMaxSizePressed:F

    #@f
    const/high16 v0, 0x44000000    # 512.0f

    #@11
    .line 68
    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowColorNormal:I

    #@13
    .line 69
    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowColorPressed:I

    #@15
    const/4 v0, 0x0

    #@16
    .line 70
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->isCircle:Z

    #@18
    return-void
.end method

.method private getShadowMaxSizeNormal()F
    .registers 3

    #@0
    .line 161
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowMaxSizeNormal:F

    #@2
    const/high16 v1, -0x40800000    # -1.0f

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-nez v0, :cond_e

    #@8
    .line 162
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->getShadowSizeNormal()F

    #@b
    move-result v0

    #@c
    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowMaxSizeNormal:F

    #@e
    .line 164
    :cond_e
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowMaxSizeNormal:F

    #@10
    return v0
.end method

.method private getShadowMaxSizePressed()F
    .registers 3

    #@0
    .line 168
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowMaxSizePressed:F

    #@2
    const/high16 v1, -0x40800000    # -1.0f

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-nez v0, :cond_e

    #@8
    .line 169
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->getShadowSizePressed()F

    #@b
    move-result v0

    #@c
    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowMaxSizePressed:F

    #@e
    .line 171
    :cond_e
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowMaxSizePressed:F

    #@10
    return v0
.end method

.method private getShadowRadius()F
    .registers 3

    #@0
    .line 140
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowRadius:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpg-float v0, v0, v1

    #@5
    if-gez v0, :cond_9

    #@7
    .line 141
    iput v1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowRadius:F

    #@9
    .line 143
    :cond_9
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowRadius:F

    #@b
    return v0
.end method

.method private getShadowSizeNormal()F
    .registers 3

    #@0
    .line 147
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowSizeNormal:F

    #@2
    const/high16 v1, -0x40800000    # -1.0f

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-nez v0, :cond_d

    #@8
    .line 148
    sget v0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->SHADOW_SIZE:I

    #@a
    int-to-float v0, v0

    #@b
    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowSizeNormal:F

    #@d
    .line 150
    :cond_d
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowSizeNormal:F

    #@f
    return v0
.end method

.method private getShadowSizePressed()F
    .registers 3

    #@0
    .line 154
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowSizePressed:F

    #@2
    const/high16 v1, -0x40800000    # -1.0f

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-nez v0, :cond_e

    #@8
    .line 155
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->getShadowSizeNormal()F

    #@b
    move-result v0

    #@c
    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowSizePressed:F

    #@e
    .line 157
    :cond_e
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowSizePressed:F

    #@10
    return v0
.end method


# virtual methods
.method apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_8

    #@3
    .line 123
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    #@5
    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@8
    .line 125
    :cond_8
    new-instance v8, Landroid/graphics/drawable/StateListDrawable;

    #@a
    invoke-direct {v8}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@d
    const/4 v1, 0x1

    #@e
    new-array v9, v1, [I

    #@10
    const v1, 0x10100a7

    #@13
    aput v1, v9, v0

    #@15
    .line 126
    new-instance v0, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;

    #@17
    .line 128
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->getShadowRadius()F

    #@1a
    move-result v3

    #@1b
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->getShadowSizeNormal()F

    #@1e
    move-result v4

    #@1f
    .line 129
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->getShadowMaxSizeNormal()F

    #@22
    move-result v5

    #@23
    iget v6, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowColorPressed:I

    #@25
    iget-boolean v7, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->isCircle:Z

    #@27
    move-object v1, v0

    #@28
    move-object v2, p1

    #@29
    invoke-direct/range {v1 .. v7}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFIZ)V

    #@2c
    .line 126
    invoke-virtual {v8, v9, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@2f
    .line 131
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    #@31
    new-instance v9, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;

    #@33
    .line 133
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->getShadowRadius()F

    #@36
    move-result v3

    #@37
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->getShadowSizePressed()F

    #@3a
    move-result v4

    #@3b
    .line 134
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->getShadowMaxSizePressed()F

    #@3e
    move-result v5

    #@3f
    iget v6, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowColorNormal:I

    #@41
    iget-boolean v7, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->isCircle:Z

    #@43
    move-object v1, v9

    #@44
    invoke-direct/range {v1 .. v7}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFIZ)V

    #@47
    .line 131
    invoke-virtual {v8, v0, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@4a
    return-object v8
.end method

.method public setCircle()Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 84
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->isCircle:Z

    #@3
    .line 85
    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowRadius:F

    #@5
    const/high16 v1, -0x40800000    # -1.0f

    #@7
    cmpl-float v0, v0, v1

    #@9
    if-nez v0, :cond_c

    #@b
    return-object p0

    #@c
    .line 86
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string v1, "Set circle needn\'t set radius."

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method

.method public setShadowColor(I)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .registers 2

    #@0
    .line 112
    invoke-virtual {p0, p1, p1}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->setShadowColor(II)Lcom/blankj/utilcode/util/ShadowUtils$Config;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setShadowColor(II)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .registers 3

    #@0
    .line 116
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowColorNormal:I

    #@2
    .line 117
    iput p2, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowColorPressed:I

    #@4
    return-object p0
.end method

.method public setShadowMaxSize(I)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .registers 2

    #@0
    .line 102
    invoke-virtual {p0, p1, p1}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->setShadowMaxSize(II)Lcom/blankj/utilcode/util/ShadowUtils$Config;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setShadowMaxSize(II)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .registers 3

    #@0
    int-to-float p1, p1

    #@1
    .line 106
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowMaxSizeNormal:F

    #@3
    int-to-float p1, p2

    #@4
    .line 107
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowMaxSizePressed:F

    #@6
    return-object p0
.end method

.method public setShadowRadius(F)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .registers 3

    #@0
    .line 76
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowRadius:F

    #@2
    .line 77
    iget-boolean p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->isCircle:Z

    #@4
    if-nez p1, :cond_7

    #@6
    return-object p0

    #@7
    .line 78
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string v0, "Set circle needn\'t set radius."

    #@b
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1
.end method

.method public setShadowSize(I)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .registers 2

    #@0
    .line 92
    invoke-virtual {p0, p1, p1}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->setShadowSize(II)Lcom/blankj/utilcode/util/ShadowUtils$Config;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setShadowSize(II)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .registers 3

    #@0
    int-to-float p1, p1

    #@1
    .line 96
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowSizeNormal:F

    #@3
    int-to-float p1, p2

    #@4
    .line 97
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->mShadowSizePressed:F

    #@6
    return-object p0
.end method

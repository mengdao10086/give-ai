.class public Landroidx/constraintlayout/utils/widget/MotionButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "MotionButton.java"


# instance fields
.field private mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field private mRound:F

.field private mRoundPercent:F

.field mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    #@0
    .line 66
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 59
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    #@6
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@8
    .line 60
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    #@a
    const/4 v0, 0x0

    #@b
    .line 67
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    .line 71
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 59
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    #@6
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@8
    .line 60
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    #@a
    .line 72
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    #@0
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/4 p3, 0x0

    #@4
    .line 59
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    #@6
    const/high16 p3, 0x7fc00000    # Float.NaN

    #@8
    .line 60
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    #@a
    .line 77
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@d
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/utils/widget/MotionButton;)F
    .registers 1

    #@0
    .line 58
    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    #@2
    return p0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/utils/widget/MotionButton;)F
    .registers 1

    #@0
    .line 58
    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    #@2
    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    const/4 p1, 0x0

    #@1
    .line 81
    invoke-virtual {p0, p1, p1, p1, p1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setPadding(IIII)V

    #@4
    if-eqz p2, :cond_38

    #@6
    .line 83
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView:[I

    #@c
    .line 84
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@f
    move-result-object p2

    #@10
    .line 85
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@13
    move-result v0

    #@14
    :goto_14
    if-ge p1, v0, :cond_35

    #@16
    .line 87
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@19
    move-result v1

    #@1a
    .line 88
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_round:I

    #@1c
    const/4 v3, 0x0

    #@1d
    if-ne v1, v2, :cond_27

    #@1f
    .line 90
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@22
    move-result v1

    #@23
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setRound(F)V

    #@26
    goto :goto_32

    #@27
    .line 92
    :cond_27
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_roundPercent:I

    #@29
    if-ne v1, v2, :cond_32

    #@2b
    .line 94
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@2e
    move-result v1

    #@2f
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setRoundPercent(F)V

    #@32
    :cond_32
    :goto_32
    add-int/lit8 p1, p1, 0x1

    #@34
    goto :goto_14

    #@35
    .line 98
    :cond_35
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@38
    :cond_38
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    #@0
    .line 238
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->draw(Landroid/graphics/Canvas;)V

    #@3
    return-void
.end method

.method public getRound()F
    .registers 2

    #@0
    .line 225
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    #@2
    return v0
.end method

.method public getRoundPercent()F
    .registers 2

    #@0
    .line 216
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    #@2
    return v0
.end method

.method public setRound(F)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    #@0
    .line 160
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 161
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    #@8
    .line 162
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    #@a
    const/high16 v0, -0x40800000    # -1.0f

    #@c
    .line 163
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    #@e
    .line 164
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setRoundPercent(F)V

    #@11
    return-void

    #@12
    .line 167
    :cond_12
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    #@14
    cmpl-float v0, v0, p1

    #@16
    const/4 v1, 0x1

    #@17
    const/4 v2, 0x0

    #@18
    if-eqz v0, :cond_1c

    #@1a
    move v0, v1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    move v0, v2

    #@1d
    .line 168
    :goto_1d
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    #@1f
    const/4 v3, 0x0

    #@20
    cmpl-float p1, p1, v3

    #@22
    if-eqz p1, :cond_6b

    #@24
    .line 171
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    #@26
    if-nez p1, :cond_2f

    #@28
    .line 172
    new-instance p1, Landroid/graphics/Path;

    #@2a
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    #@2d
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    #@2f
    .line 174
    :cond_2f
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    #@31
    if-nez p1, :cond_3a

    #@33
    .line 175
    new-instance p1, Landroid/graphics/RectF;

    #@35
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@38
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    #@3a
    .line 178
    :cond_3a
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    #@3c
    if-nez p1, :cond_48

    #@3e
    .line 179
    new-instance p1, Landroidx/constraintlayout/utils/widget/MotionButton$2;

    #@40
    invoke-direct {p1, p0}, Landroidx/constraintlayout/utils/widget/MotionButton$2;-><init>(Landroidx/constraintlayout/utils/widget/MotionButton;)V

    #@43
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    #@45
    .line 187
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    #@48
    .line 189
    :cond_48
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setClipToOutline(Z)V

    #@4b
    .line 192
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getWidth()I

    #@4e
    move-result p1

    #@4f
    .line 193
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getHeight()I

    #@52
    move-result v1

    #@53
    .line 194
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    #@55
    int-to-float p1, p1

    #@56
    int-to-float v1, v1

    #@57
    invoke-virtual {v2, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    #@5a
    .line 195
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    #@5c
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    #@5f
    .line 196
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    #@61
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    #@63
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    #@65
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@67
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    #@6a
    goto :goto_6e

    #@6b
    .line 199
    :cond_6b
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionButton;->setClipToOutline(Z)V

    #@6e
    :goto_6e
    if-eqz v0, :cond_73

    #@70
    .line 204
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->invalidateOutline()V

    #@73
    :cond_73
    return-void
.end method

.method public setRoundPercent(F)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    #@0
    .line 110
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-eqz v0, :cond_a

    #@8
    move v0, v1

    #@9
    goto :goto_b

    #@a
    :cond_a
    move v0, v2

    #@b
    .line 111
    :goto_b
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    #@d
    const/4 v3, 0x0

    #@e
    cmpl-float p1, p1, v3

    #@10
    if-eqz p1, :cond_62

    #@12
    .line 113
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    #@14
    if-nez p1, :cond_1d

    #@16
    .line 114
    new-instance p1, Landroid/graphics/Path;

    #@18
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    #@1b
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    #@1d
    .line 116
    :cond_1d
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    #@1f
    if-nez p1, :cond_28

    #@21
    .line 117
    new-instance p1, Landroid/graphics/RectF;

    #@23
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    #@26
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    #@28
    .line 120
    :cond_28
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    #@2a
    if-nez p1, :cond_36

    #@2c
    .line 121
    new-instance p1, Landroidx/constraintlayout/utils/widget/MotionButton$1;

    #@2e
    invoke-direct {p1, p0}, Landroidx/constraintlayout/utils/widget/MotionButton$1;-><init>(Landroidx/constraintlayout/utils/widget/MotionButton;)V

    #@31
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    #@33
    .line 130
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    #@36
    .line 132
    :cond_36
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setClipToOutline(Z)V

    #@39
    .line 134
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getWidth()I

    #@3c
    move-result p1

    #@3d
    .line 135
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getHeight()I

    #@40
    move-result v1

    #@41
    .line 136
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@44
    move-result v2

    #@45
    int-to-float v2, v2

    #@46
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    #@48
    mul-float/2addr v2, v4

    #@49
    const/high16 v4, 0x40000000    # 2.0f

    #@4b
    div-float/2addr v2, v4

    #@4c
    .line 137
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    #@4e
    int-to-float p1, p1

    #@4f
    int-to-float v1, v1

    #@50
    invoke-virtual {v4, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    #@53
    .line 138
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    #@55
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    #@58
    .line 139
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    #@5a
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    #@5c
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@5e
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    #@61
    goto :goto_65

    #@62
    .line 142
    :cond_62
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionButton;->setClipToOutline(Z)V

    #@65
    :goto_65
    if-eqz v0, :cond_6a

    #@67
    .line 147
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->invalidateOutline()V

    #@6a
    :cond_6a
    return-void
.end method

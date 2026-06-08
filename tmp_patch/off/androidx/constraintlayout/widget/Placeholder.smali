.class public Landroidx/constraintlayout/widget/Placeholder;
.super Landroid/view/View;
.source "Placeholder.java"


# instance fields
.field private mContent:Landroid/view/View;

.field private mContentId:I

.field private mEmptyVisibility:I


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
    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@3
    const/4 p1, -0x1

    #@4
    .line 46
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    #@6
    const/4 p1, 0x0

    #@7
    .line 47
    iput-object p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    #@9
    const/4 v0, 0x4

    #@a
    .line 48
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    #@c
    .line 52
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/Placeholder;->init(Landroid/util/AttributeSet;)V

    #@f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
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
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 p1, -0x1

    #@4
    .line 46
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    #@6
    const/4 p1, 0x0

    #@7
    .line 47
    iput-object p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    #@9
    const/4 p1, 0x4

    #@a
    .line 48
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    #@c
    .line 57
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/Placeholder;->init(Landroid/util/AttributeSet;)V

    #@f
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
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/4 p1, -0x1

    #@4
    .line 46
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    #@6
    const/4 p1, 0x0

    #@7
    .line 47
    iput-object p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    #@9
    const/4 p1, 0x4

    #@a
    .line 48
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    #@c
    .line 62
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/Placeholder;->init(Landroid/util/AttributeSet;)V

    #@f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    #@0
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/4 p1, -0x1

    #@4
    .line 46
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    #@6
    const/4 p1, 0x0

    #@7
    .line 47
    iput-object p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    #@9
    const/4 p1, 0x4

    #@a
    .line 48
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    #@c
    .line 67
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/Placeholder;->init(Landroid/util/AttributeSet;)V

    #@f
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    #@0
    .line 71
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    #@2
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    #@5
    const/4 v0, -0x1

    #@6
    .line 72
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    #@8
    if-eqz p1, :cond_3e

    #@a
    .line 74
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Placeholder;->getContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder:[I

    #@10
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object p1

    #@14
    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@17
    move-result v0

    #@18
    const/4 v1, 0x0

    #@19
    :goto_19
    if-ge v1, v0, :cond_3b

    #@1b
    .line 77
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@1e
    move-result v2

    #@1f
    .line 78
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder_content:I

    #@21
    if-ne v2, v3, :cond_2c

    #@23
    .line 79
    iget v3, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    #@25
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@28
    move-result v2

    #@29
    iput v2, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    #@2b
    goto :goto_38

    #@2c
    .line 81
    :cond_2c
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder_placeholder_emptyVisibility:I

    #@2e
    if-ne v2, v3, :cond_38

    #@30
    .line 82
    iget v3, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    #@32
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@35
    move-result v2

    #@36
    iput v2, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    #@38
    :cond_38
    :goto_38
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_19

    #@3b
    .line 86
    :cond_3b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@3e
    :cond_3e
    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .registers 2

    #@0
    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getEmptyVisibility()I
    .registers 2

    #@0
    .line 106
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    #@2
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    #@0
    .line 125
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Placeholder;->isInEditMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_68

    #@6
    const/16 v0, 0xdf

    #@8
    .line 126
    invoke-virtual {p1, v0, v0, v0}, Landroid/graphics/Canvas;->drawRGB(III)V

    #@b
    .line 129
    new-instance v0, Landroid/graphics/Paint;

    #@d
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@10
    const/16 v1, 0xff

    #@12
    const/16 v2, 0xd2

    #@14
    .line 130
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@17
    .line 131
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@1c
    .line 132
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@26
    .line 135
    new-instance v1, Landroid/graphics/Rect;

    #@28
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@2b
    .line 136
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    #@2e
    .line 137
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@31
    move-result v3

    #@32
    int-to-float v3, v3

    #@33
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    #@36
    .line 138
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@39
    move-result v3

    #@3a
    .line 139
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@3d
    move-result v4

    #@3e
    .line 140
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    #@40
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@43
    const/4 v5, 0x1

    #@44
    const-string v6, "?"

    #@46
    .line 142
    invoke-virtual {v0, v6, v2, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@49
    int-to-float v2, v4

    #@4a
    const/high16 v4, 0x40000000    # 2.0f

    #@4c
    div-float/2addr v2, v4

    #@4d
    .line 143
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@50
    move-result v5

    #@51
    int-to-float v5, v5

    #@52
    div-float/2addr v5, v4

    #@53
    sub-float/2addr v2, v5

    #@54
    iget v5, v1, Landroid/graphics/Rect;->left:I

    #@56
    int-to-float v5, v5

    #@57
    sub-float/2addr v2, v5

    #@58
    int-to-float v3, v3

    #@59
    div-float/2addr v3, v4

    #@5a
    .line 144
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@5d
    move-result v5

    #@5e
    int-to-float v5, v5

    #@5f
    div-float/2addr v5, v4

    #@60
    add-float/2addr v3, v5

    #@61
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@63
    int-to-float v1, v1

    #@64
    sub-float/2addr v3, v1

    #@65
    .line 145
    invoke-virtual {p1, v6, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@68
    :cond_68
    return-void
.end method

.method public setContentId(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 176
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 179
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    #@7
    if-eqz v0, :cond_1a

    #@9
    const/4 v1, 0x0

    #@a
    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@d
    .line 181
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    #@f
    .line 182
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@15
    .line 183
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    #@17
    const/4 v0, 0x0

    #@18
    .line 184
    iput-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    #@1a
    .line 187
    :cond_1a
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    #@1c
    const/4 v0, -0x1

    #@1d
    if-eq p1, v0, :cond_30

    #@1f
    .line 189
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Placeholder;->getParent()Landroid/view/ViewParent;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/view/View;

    #@25
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@28
    move-result-object p1

    #@29
    if-eqz p1, :cond_30

    #@2b
    const/16 v0, 0x8

    #@2d
    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@30
    :cond_30
    return-void
.end method

.method public setEmptyVisibility(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    #@0
    .line 97
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    #@2
    return-void
.end method

.method public updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    #@0
    .line 201
    iget-object p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    #@2
    if-nez p1, :cond_5

    #@4
    return-void

    #@5
    .line 204
    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Placeholder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@8
    move-result-object p1

    #@9
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@b
    .line 205
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    #@d
    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@13
    .line 207
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@15
    const/4 v2, 0x0

    #@16
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    #@19
    .line 208
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1b
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1e
    move-result-object v1

    #@1f
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@21
    if-eq v1, v2, :cond_2e

    #@23
    .line 209
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@25
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@27
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@2a
    move-result v2

    #@2b
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    #@2e
    .line 211
    :cond_2e
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@30
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@33
    move-result-object v1

    #@34
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@36
    if-eq v1, v2, :cond_43

    #@38
    .line 212
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3a
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3c
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@3f
    move-result v1

    #@40
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    #@43
    .line 214
    :cond_43
    iget-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@45
    const/16 v0, 0x8

    #@47
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    #@4a
    return-void
.end method

.method public updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    #@0
    .line 154
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_10

    #@5
    .line 155
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Placeholder;->isInEditMode()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_10

    #@b
    .line 156
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    #@d
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Placeholder;->setVisibility(I)V

    #@10
    .line 160
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    #@12
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    #@15
    move-result-object p1

    #@16
    iput-object p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    #@18
    if-eqz p1, :cond_2c

    #@1a
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1d
    move-result-object p1

    #@1e
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@20
    const/4 v0, 0x1

    #@21
    .line 164
    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    #@23
    .line 165
    iget-object p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    #@25
    const/4 v0, 0x0

    #@26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@29
    .line 166
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Placeholder;->setVisibility(I)V

    #@2c
    :cond_2c
    return-void
.end method

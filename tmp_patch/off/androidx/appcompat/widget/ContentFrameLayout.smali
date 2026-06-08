.class public Landroidx/appcompat/widget/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ContentFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;
    }
.end annotation


# instance fields
.field private mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

.field private final mDecorPadding:Landroid/graphics/Rect;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMinWidthMajor:Landroid/util/TypedValue;

.field private mMinWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 60
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 64
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    #@0
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 70
    new-instance p1, Landroid/graphics/Rect;

    #@5
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    #@a
    return-void
.end method


# virtual methods
.method public dispatchFitSystemWindows(Landroid/graphics/Rect;)V
    .registers 2

    #@0
    .line 78
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ContentFrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    #@3
    return-void
.end method

.method public getFixedHeightMajor()Landroid/util/TypedValue;
    .registers 2

    #@0
    .line 197
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Landroid/util/TypedValue;

    #@6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    #@b
    .line 198
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    #@d
    return-object v0
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
    .registers 2

    #@0
    .line 202
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Landroid/util/TypedValue;

    #@6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    #@b
    .line 203
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    #@d
    return-object v0
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
    .registers 2

    #@0
    .line 187
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Landroid/util/TypedValue;

    #@6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    #@b
    .line 188
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    #@d
    return-object v0
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
    .registers 2

    #@0
    .line 192
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Landroid/util/TypedValue;

    #@6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    #@b
    .line 193
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    #@d
    return-object v0
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
    .registers 2

    #@0
    .line 177
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Landroid/util/TypedValue;

    #@6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    #@b
    .line 178
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    #@d
    return-object v0
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
    .registers 2

    #@0
    .line 182
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Landroid/util/TypedValue;

    #@6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    #@b
    .line 183
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    #@d
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 208
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    #@3
    .line 209
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 210
    invoke-interface {v0}, Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;->onAttachedFromWindow()V

    #@a
    :cond_a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    .line 216
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    #@3
    .line 217
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 218
    invoke-interface {v0}, Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;->onDetachedFromWindow()V

    #@a
    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    #@0
    .line 101
    invoke-virtual {p0}, Landroidx/appcompat/widget/ContentFrameLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@b
    move-result-object v0

    #@c
    .line 102
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@e
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@10
    const/4 v3, 0x1

    #@11
    const/4 v4, 0x0

    #@12
    if-ge v1, v2, :cond_16

    #@14
    move v1, v3

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v1, v4

    #@17
    .line 104
    :goto_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@1a
    move-result v2

    #@1b
    .line 105
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@1e
    move-result v5

    #@1f
    const/4 v6, 0x6

    #@20
    const/4 v7, 0x5

    #@21
    const/high16 v8, -0x80000000

    #@23
    const/high16 v9, 0x40000000    # 2.0f

    #@25
    if-ne v2, v8, :cond_68

    #@27
    if-eqz v1, :cond_2c

    #@29
    .line 109
    iget-object v10, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    #@2b
    goto :goto_2e

    #@2c
    :cond_2c
    iget-object v10, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    #@2e
    :goto_2e
    if-eqz v10, :cond_68

    #@30
    .line 110
    iget v11, v10, Landroid/util/TypedValue;->type:I

    #@32
    if-eqz v11, :cond_68

    #@34
    .line 112
    iget v11, v10, Landroid/util/TypedValue;->type:I

    #@36
    if-ne v11, v7, :cond_3e

    #@38
    .line 113
    invoke-virtual {v10, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@3b
    move-result v10

    #@3c
    :goto_3c
    float-to-int v10, v10

    #@3d
    goto :goto_4e

    #@3e
    .line 114
    :cond_3e
    iget v11, v10, Landroid/util/TypedValue;->type:I

    #@40
    if-ne v11, v6, :cond_4d

    #@42
    .line 115
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@44
    int-to-float v11, v11

    #@45
    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@47
    int-to-float v12, v12

    #@48
    invoke-virtual {v10, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    #@4b
    move-result v10

    #@4c
    goto :goto_3c

    #@4d
    :cond_4d
    move v10, v4

    #@4e
    :goto_4e
    if-lez v10, :cond_68

    #@50
    .line 118
    iget-object v11, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    #@52
    iget v11, v11, Landroid/graphics/Rect;->left:I

    #@54
    iget-object v12, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    #@56
    iget v12, v12, Landroid/graphics/Rect;->right:I

    #@58
    add-int/2addr v11, v12

    #@59
    sub-int/2addr v10, v11

    #@5a
    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@5d
    move-result p1

    #@5e
    .line 121
    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    #@61
    move-result p1

    #@62
    .line 120
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@65
    move-result p1

    #@66
    move v10, v3

    #@67
    goto :goto_69

    #@68
    :cond_68
    move v10, v4

    #@69
    :goto_69
    if-ne v5, v8, :cond_aa

    #@6b
    if-eqz v1, :cond_70

    #@6d
    .line 128
    iget-object v5, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    #@6f
    goto :goto_72

    #@70
    :cond_70
    iget-object v5, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    #@72
    :goto_72
    if-eqz v5, :cond_aa

    #@74
    .line 129
    iget v11, v5, Landroid/util/TypedValue;->type:I

    #@76
    if-eqz v11, :cond_aa

    #@78
    .line 131
    iget v11, v5, Landroid/util/TypedValue;->type:I

    #@7a
    if-ne v11, v7, :cond_82

    #@7c
    .line 132
    invoke-virtual {v5, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@7f
    move-result v5

    #@80
    :goto_80
    float-to-int v5, v5

    #@81
    goto :goto_92

    #@82
    .line 133
    :cond_82
    iget v11, v5, Landroid/util/TypedValue;->type:I

    #@84
    if-ne v11, v6, :cond_91

    #@86
    .line 134
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@88
    int-to-float v11, v11

    #@89
    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@8b
    int-to-float v12, v12

    #@8c
    invoke-virtual {v5, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    #@8f
    move-result v5

    #@90
    goto :goto_80

    #@91
    :cond_91
    move v5, v4

    #@92
    :goto_92
    if-lez v5, :cond_aa

    #@94
    .line 137
    iget-object v11, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    #@96
    iget v11, v11, Landroid/graphics/Rect;->top:I

    #@98
    iget-object v12, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    #@9a
    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    #@9c
    add-int/2addr v11, v12

    #@9d
    sub-int/2addr v5, v11

    #@9e
    .line 138
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@a1
    move-result p2

    #@a2
    .line 140
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    #@a5
    move-result p2

    #@a6
    .line 139
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a9
    move-result p2

    #@aa
    .line 145
    :cond_aa
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@ad
    .line 147
    invoke-virtual {p0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredWidth()I

    #@b0
    move-result p1

    #@b1
    .line 150
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@b4
    move-result v5

    #@b5
    if-nez v10, :cond_f3

    #@b7
    if-ne v2, v8, :cond_f3

    #@b9
    if-eqz v1, :cond_be

    #@bb
    .line 153
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    #@bd
    goto :goto_c0

    #@be
    :cond_be
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    #@c0
    :goto_c0
    if-eqz v1, :cond_f3

    #@c2
    .line 154
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@c4
    if-eqz v2, :cond_f3

    #@c6
    .line 156
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@c8
    if-ne v2, v7, :cond_d0

    #@ca
    .line 157
    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@cd
    move-result v0

    #@ce
    :goto_ce
    float-to-int v0, v0

    #@cf
    goto :goto_e0

    #@d0
    .line 158
    :cond_d0
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@d2
    if-ne v2, v6, :cond_df

    #@d4
    .line 159
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@d6
    int-to-float v2, v2

    #@d7
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@d9
    int-to-float v0, v0

    #@da
    invoke-virtual {v1, v2, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    #@dd
    move-result v0

    #@de
    goto :goto_ce

    #@df
    :cond_df
    move v0, v4

    #@e0
    :goto_e0
    if-lez v0, :cond_ec

    #@e2
    .line 162
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    #@e4
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@e6
    iget-object v2, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    #@e8
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@ea
    add-int/2addr v1, v2

    #@eb
    sub-int/2addr v0, v1

    #@ec
    :cond_ec
    if-ge p1, v0, :cond_f3

    #@ee
    .line 165
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@f1
    move-result v5

    #@f2
    goto :goto_f4

    #@f3
    :cond_f3
    move v3, v4

    #@f4
    :goto_f4
    if-eqz v3, :cond_f9

    #@f6
    .line 172
    invoke-super {p0, v5, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@f9
    :cond_f9
    return-void
.end method

.method public setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;)V
    .registers 2

    #@0
    .line 82
    iput-object p1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    #@2
    return-void
.end method

.method public setDecorPadding(IIII)V
    .registers 6

    #@0
    .line 93
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@5
    .line 94
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@8
    move-result p1

    #@9
    if-eqz p1, :cond_e

    #@b
    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/widget/ContentFrameLayout;->requestLayout()V

    #@e
    :cond_e
    return-void
.end method

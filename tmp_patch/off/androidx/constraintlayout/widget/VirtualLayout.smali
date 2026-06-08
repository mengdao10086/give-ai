.class public abstract Landroidx/constraintlayout/widget/VirtualLayout;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "VirtualLayout.java"


# instance fields
.field private mApplyElevationOnAttach:Z

.field private mApplyVisibilityOnAttach:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    #@0
    .line 35
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    #@3
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
    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
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
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    return-void
.end method


# virtual methods
.method protected applyLayoutFeaturesInConstraintSet(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    #@0
    .line 125
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->applyLayoutFeatures(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@3
    return-void
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    #@0
    .line 48
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    #@3
    if-eqz p1, :cond_2e

    #@5
    .line 50
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    #@b
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@e
    move-result-object p1

    #@f
    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@12
    move-result v0

    #@13
    const/4 v1, 0x0

    #@14
    :goto_14
    if-ge v1, v0, :cond_2b

    #@16
    .line 53
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@19
    move-result v2

    #@1a
    .line 54
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_visibility:I

    #@1c
    const/4 v4, 0x1

    #@1d
    if-ne v2, v3, :cond_22

    #@1f
    .line 55
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyVisibilityOnAttach:Z

    #@21
    goto :goto_28

    #@22
    .line 56
    :cond_22
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_elevation:I

    #@24
    if-ne v2, v3, :cond_28

    #@26
    .line 57
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyElevationOnAttach:Z

    #@28
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_14

    #@2b
    .line 60
    :cond_2b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@2e
    :cond_2e
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 7

    #@0
    .line 73
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    #@3
    .line 74
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyVisibilityOnAttach:Z

    #@5
    if-nez v0, :cond_b

    #@7
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyElevationOnAttach:Z

    #@9
    if-eqz v0, :cond_47

    #@b
    .line 75
    :cond_b
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->getParent()Landroid/view/ViewParent;

    #@e
    move-result-object v0

    #@f
    .line 76
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@11
    if-eqz v1, :cond_47

    #@13
    .line 77
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@15
    .line 78
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->getVisibility()I

    #@18
    move-result v1

    #@19
    .line 81
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->getElevation()F

    #@1c
    move-result v2

    #@1d
    const/4 v3, 0x0

    #@1e
    .line 83
    :goto_1e
    iget v4, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mCount:I

    #@20
    if-ge v3, v4, :cond_47

    #@22
    .line 84
    iget-object v4, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mIds:[I

    #@24
    aget v4, v4, v3

    #@26
    .line 85
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    #@29
    move-result-object v4

    #@2a
    if-eqz v4, :cond_44

    #@2c
    .line 87
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyVisibilityOnAttach:Z

    #@2e
    if-eqz v5, :cond_33

    #@30
    .line 88
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    #@33
    .line 90
    :cond_33
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyElevationOnAttach:Z

    #@35
    if-eqz v5, :cond_44

    #@37
    const/4 v5, 0x0

    #@38
    cmpl-float v5, v2, v5

    #@3a
    if-lez v5, :cond_44

    #@3c
    .line 92
    invoke-virtual {v4}, Landroid/view/View;->getTranslationZ()F

    #@3f
    move-result v5

    #@40
    add-float/2addr v5, v2

    #@41
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationZ(F)V

    #@44
    :cond_44
    add-int/lit8 v3, v3, 0x1

    #@46
    goto :goto_1e

    #@47
    :cond_47
    return-void
.end method

.method public onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    #@0
    return-void
.end method

.method public setElevation(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elevation"
        }
    .end annotation

    #@0
    .line 115
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setElevation(F)V

    #@3
    .line 116
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->applyLayoutFeatures()V

    #@6
    return-void
.end method

.method public setVisibility(I)V
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
    .line 106
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    #@3
    .line 107
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->applyLayoutFeatures()V

    #@6
    return-void
.end method

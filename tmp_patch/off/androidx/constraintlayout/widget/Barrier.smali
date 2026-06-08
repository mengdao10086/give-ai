.class public Landroidx/constraintlayout/widget/Barrier;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final END:I = 0x6

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final START:I = 0x5

.field public static final TOP:I = 0x2


# instance fields
.field private mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

.field private mIndicatedType:I

.field private mResolvedType:I


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
    .line 118
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    #@3
    const/16 p1, 0x8

    #@5
    .line 119
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    #@8
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
    .line 123
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/16 p1, 0x8

    #@5
    .line 124
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    #@8
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
    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/16 p1, 0x8

    #@5
    .line 129
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    #@8
    return-void
.end method

.method private updateType(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "widget",
            "type",
            "isRtl"
        }
    .end annotation

    #@0
    .line 151
    iput p2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    #@2
    const/4 p2, 0x1

    #@3
    const/4 v0, 0x0

    #@4
    const/4 v1, 0x6

    #@5
    const/4 v2, 0x5

    #@6
    if-eqz p3, :cond_14

    #@8
    .line 163
    iget p3, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    #@a
    if-ne p3, v2, :cond_f

    #@c
    .line 164
    iput p2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    #@e
    goto :goto_1f

    #@f
    :cond_f
    if-ne p3, v1, :cond_1f

    #@11
    .line 166
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    #@13
    goto :goto_1f

    #@14
    .line 169
    :cond_14
    iget p3, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    #@16
    if-ne p3, v2, :cond_1b

    #@18
    .line 170
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    #@1a
    goto :goto_1f

    #@1b
    :cond_1b
    if-ne p3, v1, :cond_1f

    #@1d
    .line 172
    iput p2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    #@1f
    .line 176
    :cond_1f
    :goto_1f
    instance-of p2, p1, Landroidx/constraintlayout/core/widgets/Barrier;

    #@21
    if-eqz p2, :cond_2a

    #@23
    .line 177
    check-cast p1, Landroidx/constraintlayout/core/widgets/Barrier;

    #@25
    .line 178
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    #@27
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/Barrier;->setBarrierType(I)V

    #@2a
    :cond_2a
    return-void
.end method


# virtual methods
.method public allowsGoneWidget()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 230
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getAllowsGoneWidget()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getAllowsGoneWidget()Z
    .registers 2

    #@0
    .line 239
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getAllowsGoneWidget()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMargin()I
    .registers 2

    #@0
    .line 259
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getMargin()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getType()I
    .registers 2

    #@0
    .line 138
    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    #@2
    return v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    #@0
    .line 193
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    #@3
    .line 194
    new-instance v0, Landroidx/constraintlayout/core/widgets/Barrier;

    #@5
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/Barrier;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    #@a
    if-eqz p1, :cond_50

    #@c
    .line 196
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Barrier;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    #@12
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@15
    move-result-object p1

    #@16
    .line 197
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@19
    move-result v0

    #@1a
    const/4 v1, 0x0

    #@1b
    move v2, v1

    #@1c
    :goto_1c
    if-ge v2, v0, :cond_4d

    #@1e
    .line 199
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@21
    move-result v3

    #@22
    .line 200
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierDirection:I

    #@24
    if-ne v3, v4, :cond_2e

    #@26
    .line 201
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@29
    move-result v3

    #@2a
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    #@2d
    goto :goto_4a

    #@2e
    .line 202
    :cond_2e
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    #@30
    if-ne v3, v4, :cond_3d

    #@32
    .line 203
    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    #@34
    const/4 v5, 0x1

    #@35
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@38
    move-result v3

    #@39
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/widgets/Barrier;->setAllowsGoneWidget(Z)V

    #@3c
    goto :goto_4a

    #@3d
    .line 204
    :cond_3d
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierMargin:I

    #@3f
    if-ne v3, v4, :cond_4a

    #@41
    .line 205
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@44
    move-result v3

    #@45
    .line 206
    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    #@47
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/widgets/Barrier;->setMargin(I)V

    #@4a
    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_1c

    #@4d
    .line 209
    :cond_4d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@50
    .line 211
    :cond_50
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    #@52
    iput-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->mHelperWidget:Landroidx/constraintlayout/core/widgets/Helper;

    #@54
    .line 212
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Barrier;->validateParams()V

    #@57
    return-void
.end method

.method public loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "constraint",
            "child",
            "layoutParams",
            "mapIdToWidget"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            "Landroidx/constraintlayout/core/widgets/HelperWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintHelper;->loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    #@3
    .line 274
    instance-of p3, p2, Landroidx/constraintlayout/core/widgets/Barrier;

    #@5
    if-eqz p3, :cond_29

    #@7
    .line 275
    move-object p3, p2

    #@8
    check-cast p3, Landroidx/constraintlayout/core/widgets/Barrier;

    #@a
    .line 276
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@d
    move-result-object p2

    #@e
    check-cast p2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@10
    .line 277
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    #@13
    move-result p2

    #@14
    .line 278
    iget-object p4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@16
    iget p4, p4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    #@18
    invoke-direct {p0, p3, p4, p2}, Landroidx/constraintlayout/widget/Barrier;->updateType(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    #@1b
    .line 279
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@1d
    iget-boolean p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    #@1f
    invoke-virtual {p3, p2}, Landroidx/constraintlayout/core/widgets/Barrier;->setAllowsGoneWidget(Z)V

    #@22
    .line 280
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@24
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    #@26
    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/widgets/Barrier;->setMargin(I)V

    #@29
    :cond_29
    return-void
.end method

.method public resolveRtl(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widget",
            "isRtl"
        }
    .end annotation

    #@0
    .line 184
    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    #@2
    invoke-direct {p0, p1, v0, p2}, Landroidx/constraintlayout/widget/Barrier;->updateType(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    #@5
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportGone"
        }
    .end annotation

    #@0
    .line 216
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Barrier;->setAllowsGoneWidget(Z)V

    #@5
    return-void
.end method

.method public setDpMargin(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "margin"
        }
    .end annotation

    #@0
    .line 248
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Barrier;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@a
    int-to-float p1, p1

    #@b
    mul-float/2addr p1, v0

    #@c
    const/high16 v0, 0x3f000000    # 0.5f

    #@e
    add-float/2addr p1, v0

    #@f
    float-to-int p1, p1

    #@10
    .line 250
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    #@12
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Barrier;->setMargin(I)V

    #@15
    return-void
.end method

.method public setMargin(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "margin"
        }
    .end annotation

    #@0
    .line 268
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/core/widgets/Barrier;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/Barrier;->setMargin(I)V

    #@5
    return-void
.end method

.method public setType(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    #@0
    .line 147
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    #@2
    return-void
.end method

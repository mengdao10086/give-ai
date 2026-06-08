.class public Landroidx/constraintlayout/core/widgets/Guideline;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.source "Guideline.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNOWN:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field protected guidelineUseRtl:Z

.field private mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F

.field private resolved:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    #@0
    .line 47
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    #@3
    const/high16 v0, -0x40800000    # -1.0f

    #@5
    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    #@7
    const/4 v0, -0x1

    #@8
    .line 38
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    #@a
    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    #@c
    const/4 v0, 0x1

    #@d
    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->guidelineUseRtl:Z

    #@f
    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@11
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@13
    const/4 v0, 0x0

    #@14
    .line 43
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    #@16
    .line 44
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mMinimumPosition:I

    #@18
    .line 48
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@1d
    .line 49
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    #@1f
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 50
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@26
    array-length v1, v1

    #@27
    :goto_27
    if-ge v0, v1, :cond_32

    #@29
    .line 52
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2b
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2d
    aput-object v3, v2, v0

    #@2f
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_27

    #@32
    :cond_32
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 10

    #@0
    .line 217
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3
    move-result-object p2

    #@4
    check-cast p2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@6
    if-nez p2, :cond_9

    #@8
    return-void

    #@9
    .line 221
    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@b
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    move-result-object v0

    #@f
    .line 222
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@11
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    move-result-object v1

    #@15
    .line 223
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@17
    const/4 v3, 0x1

    #@18
    const/4 v4, 0x0

    #@19
    if-eqz v2, :cond_27

    #@1b
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1d
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1f
    aget-object v2, v2, v4

    #@21
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@23
    if-ne v2, v5, :cond_27

    #@25
    move v2, v3

    #@26
    goto :goto_28

    #@27
    :cond_27
    move v2, v4

    #@28
    .line 224
    :goto_28
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    #@2a
    if-nez v5, :cond_49

    #@2c
    .line 225
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2e
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@31
    move-result-object v0

    #@32
    .line 226
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@34
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@37
    move-result-object v1

    #@38
    .line 227
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3a
    if-eqz p2, :cond_47

    #@3c
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3e
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@40
    aget-object p2, p2, v3

    #@42
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@44
    if-ne p2, v2, :cond_47

    #@46
    goto :goto_48

    #@47
    :cond_47
    move v3, v4

    #@48
    :goto_48
    move v2, v3

    #@49
    .line 229
    :cond_49
    iget-boolean p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    #@4b
    const/4 v3, -0x1

    #@4c
    const/4 v5, 0x5

    #@4d
    if-eqz p2, :cond_8b

    #@4f
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@51
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@54
    move-result p2

    #@55
    if-eqz p2, :cond_8b

    #@57
    .line 230
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@59
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@5c
    move-result-object p2

    #@5d
    .line 234
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@5f
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@62
    move-result v6

    #@63
    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@66
    .line 235
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    #@68
    if-eq v6, v3, :cond_74

    #@6a
    if-eqz v2, :cond_88

    #@6c
    .line 237
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {p1, v0, p2, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@73
    goto :goto_88

    #@74
    .line 239
    :cond_74
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    #@76
    if-eq v6, v3, :cond_88

    #@78
    if-eqz v2, :cond_88

    #@7a
    .line 241
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@7d
    move-result-object v1

    #@7e
    .line 242
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {p1, p2, v0, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@85
    .line 243
    invoke-virtual {p1, v1, p2, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@88
    .line 246
    :cond_88
    :goto_88
    iput-boolean v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    #@8a
    return-void

    #@8b
    .line 249
    :cond_8b
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    #@8d
    const/16 v6, 0x8

    #@8f
    if-eq p2, v3, :cond_aa

    #@91
    .line 250
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@93
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@96
    move-result-object p2

    #@97
    .line 251
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@9a
    move-result-object v0

    #@9b
    .line 252
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    #@9d
    invoke-virtual {p1, p2, v0, v3, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@a0
    if-eqz v2, :cond_e6

    #@a2
    .line 254
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@a5
    move-result-object v0

    #@a6
    invoke-virtual {p1, v0, p2, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@a9
    goto :goto_e6

    #@aa
    .line 256
    :cond_aa
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    #@ac
    if-eq p2, v3, :cond_cb

    #@ae
    .line 257
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b0
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@b3
    move-result-object p2

    #@b4
    .line 258
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@b7
    move-result-object v1

    #@b8
    .line 259
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    #@ba
    neg-int v3, v3

    #@bb
    invoke-virtual {p1, p2, v1, v3, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@be
    if-eqz v2, :cond_e6

    #@c0
    .line 261
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {p1, p2, v0, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@c7
    .line 262
    invoke-virtual {p1, v1, p2, v4, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@ca
    goto :goto_e6

    #@cb
    .line 264
    :cond_cb
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    #@cd
    const/high16 v0, -0x40800000    # -1.0f

    #@cf
    cmpl-float p2, p2, v0

    #@d1
    if-eqz p2, :cond_e6

    #@d3
    .line 265
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@d5
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@d8
    move-result-object p2

    #@d9
    .line 266
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@dc
    move-result-object v0

    #@dd
    .line 267
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    #@df
    .line 268
    invoke-static {p1, p2, v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->createRowDimensionPercent(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    #@e2
    move-result-object p2

    #@e3
    .line 267
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@e6
    :cond_e6
    :goto_e6
    return-void
.end method

.method public allowedInBarrier()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 58
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    #@3
    .line 59
    check-cast p1, Landroidx/constraintlayout/core/widgets/Guideline;

    #@5
    .line 60
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    #@7
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    #@9
    .line 61
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    #@b
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    #@d
    .line 62
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    #@f
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    #@11
    .line 63
    iget-boolean p2, p1, Landroidx/constraintlayout/core/widgets/Guideline;->guidelineUseRtl:Z

    #@13
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->guidelineUseRtl:Z

    #@15
    .line 64
    iget p1, p1, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    #@17
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/Guideline;->setOrientation(I)V

    #@1a
    return-void
.end method

.method public cyclePosition()V
    .registers 4

    #@0
    .line 317
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_9

    #@5
    .line 319
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->inferRelativePercentPosition()V

    #@8
    goto :goto_1c

    #@9
    .line 320
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    #@b
    const/high16 v2, -0x40800000    # -1.0f

    #@d
    cmpl-float v0, v0, v2

    #@f
    if-eqz v0, :cond_15

    #@11
    .line 322
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->inferRelativeEndPosition()V

    #@14
    goto :goto_1c

    #@15
    .line 323
    :cond_15
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    #@17
    if-eq v0, v1, :cond_1c

    #@19
    .line 325
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->inferRelativeBeginPosition()V

    #@1c
    :cond_1c
    :goto_1c
    return-void
.end method

.method public getAnchor()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .registers 2

    #@0
    .line 104
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    return-object v0
.end method

.method public getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .registers 4

    #@0
    .line 127
    sget-object v0, Landroidx/constraintlayout/core/widgets/Guideline$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    #@2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    #@5
    move-result p1

    #@6
    aget p1, v0, p1

    #@8
    const/4 v0, 0x1

    #@9
    if-eq p1, v0, :cond_1c

    #@b
    const/4 v1, 0x2

    #@c
    if-eq p1, v1, :cond_1c

    #@e
    const/4 v0, 0x3

    #@f
    if-eq p1, v0, :cond_15

    #@11
    const/4 v0, 0x4

    #@12
    if-eq p1, v0, :cond_15

    #@14
    goto :goto_23

    #@15
    .line 137
    :cond_15
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    #@17
    if-nez p1, :cond_23

    #@19
    .line 138
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1b
    return-object p1

    #@1c
    .line 130
    :cond_1c
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    #@1e
    if-ne p1, v0, :cond_23

    #@20
    .line 131
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@22
    return-object p1

    #@23
    :cond_23
    :goto_23
    const/4 p1, 0x0

    #@24
    return-object p1
.end method

.method public getOrientation()I
    .registers 2

    #@0
    .line 118
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    #@2
    return v0
.end method

.method public getRelativeBegin()I
    .registers 2

    #@0
    .line 185
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    #@2
    return v0
.end method

.method public getRelativeBehaviour()I
    .registers 3

    #@0
    .line 73
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    #@2
    const/high16 v1, -0x40800000    # -1.0f

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 76
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    #@c
    const/4 v1, -0x1

    #@d
    if-eq v0, v1, :cond_11

    #@f
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 79
    :cond_11
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    #@13
    if-eq v0, v1, :cond_17

    #@15
    const/4 v0, 0x2

    #@16
    return v0

    #@17
    :cond_17
    return v1
.end method

.method public getRelativeEnd()I
    .registers 2

    #@0
    .line 189
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    #@2
    return v0
.end method

.method public getRelativePercent()F
    .registers 2

    #@0
    .line 181
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    #@2
    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "Guideline"

    #@2
    return-object v0
.end method

.method inferRelativeBeginPosition()V
    .registers 3

    #@0
    .line 301
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getX()I

    #@3
    move-result v0

    #@4
    .line 302
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    #@6
    if-nez v1, :cond_c

    #@8
    .line 303
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getY()I

    #@b
    move-result v0

    #@c
    .line 305
    :cond_c
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideBegin(I)V

    #@f
    return-void
.end method

.method inferRelativeEndPosition()V
    .registers 3

    #@0
    .line 309
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getX()I

    #@b
    move-result v1

    #@c
    sub-int/2addr v0, v1

    #@d
    .line 310
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    #@f
    if-nez v1, :cond_1e

    #@11
    .line 311
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@18
    move-result v0

    #@19
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getY()I

    #@1c
    move-result v1

    #@1d
    sub-int/2addr v0, v1

    #@1e
    .line 313
    :cond_1e
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideEnd(I)V

    #@21
    return-void
.end method

.method inferRelativePercentPosition()V
    .registers 3

    #@0
    .line 293
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getX()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@c
    move-result v1

    #@d
    int-to-float v1, v1

    #@e
    div-float/2addr v0, v1

    #@f
    .line 294
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    #@11
    if-nez v1, :cond_22

    #@13
    .line 295
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getY()I

    #@16
    move-result v0

    #@17
    int-to-float v0, v0

    #@18
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@1f
    move-result v1

    #@20
    int-to-float v1, v1

    #@21
    div-float/2addr v0, v1

    #@22
    .line 297
    :cond_22
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuidePercent(F)V

    #@25
    return-void
.end method

.method public isPercent()Z
    .registers 3

    #@0
    .line 330
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    #@2
    const/high16 v1, -0x40800000    # -1.0f

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-eqz v0, :cond_13

    #@8
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    #@a
    const/4 v1, -0x1

    #@b
    if-ne v0, v1, :cond_13

    #@d
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    #@f
    if-ne v0, v1, :cond_13

    #@11
    const/4 v0, 0x1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    :goto_14
    return v0
.end method

.method public isResolvedHorizontally()Z
    .registers 2

    #@0
    .line 201
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    #@2
    return v0
.end method

.method public isResolvedVertically()Z
    .registers 2

    #@0
    .line 205
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    #@2
    return v0
.end method

.method public setFinalValue(I)V
    .registers 3

    #@0
    .line 196
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    #@5
    const/4 p1, 0x1

    #@6
    .line 197
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    #@8
    return-void
.end method

.method public setGuideBegin(I)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    if-le p1, v0, :cond_b

    #@3
    const/high16 v1, -0x40800000    # -1.0f

    #@5
    .line 166
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    #@7
    .line 167
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    #@9
    .line 168
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    #@b
    :cond_b
    return-void
.end method

.method public setGuideEnd(I)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    if-le p1, v0, :cond_b

    #@3
    const/high16 v1, -0x40800000    # -1.0f

    #@5
    .line 174
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    #@7
    .line 175
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    #@9
    .line 176
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    #@b
    :cond_b
    return-void
.end method

.method public setGuidePercent(F)V
    .registers 3

    #@0
    const/high16 v0, -0x40800000    # -1.0f

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-lez v0, :cond_d

    #@6
    .line 158
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    #@8
    const/4 p1, -0x1

    #@9
    .line 159
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    #@b
    .line 160
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    #@d
    :cond_d
    return-void
.end method

.method public setGuidePercent(I)V
    .registers 3

    #@0
    int-to-float p1, p1

    #@1
    const/high16 v0, 0x42c80000    # 100.0f

    #@3
    div-float/2addr p1, v0

    #@4
    .line 153
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuidePercent(F)V

    #@7
    return-void
.end method

.method public setMinimumPosition(I)V
    .registers 2

    #@0
    .line 122
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mMinimumPosition:I

    #@2
    return-void
.end method

.method public setOrientation(I)V
    .registers 5

    #@0
    .line 86
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 89
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    #@7
    .line 90
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    #@9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    #@c
    .line 91
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    #@e
    const/4 v0, 0x1

    #@f
    if-ne p1, v0, :cond_16

    #@11
    .line 92
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@13
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@15
    goto :goto_1a

    #@16
    .line 94
    :cond_16
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a
    .line 96
    :goto_1a
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    #@1c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 97
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@23
    array-length p1, p1

    #@24
    const/4 v0, 0x0

    #@25
    :goto_25
    if-ge v0, p1, :cond_30

    #@27
    .line 99
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@29
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2b
    aput-object v2, v1, v0

    #@2d
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_25

    #@30
    :cond_30
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 5

    #@0
    .line 275
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3
    move-result-object p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-void

    #@7
    .line 278
    :cond_7
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    #@c
    move-result p1

    #@d
    .line 279
    iget p2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    #@f
    const/4 v0, 0x1

    #@10
    const/4 v1, 0x0

    #@11
    if-ne p2, v0, :cond_28

    #@13
    .line 280
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/Guideline;->setX(I)V

    #@16
    .line 281
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setY(I)V

    #@19
    .line 282
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1c
    move-result-object p1

    #@1d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@20
    move-result p1

    #@21
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/Guideline;->setHeight(I)V

    #@24
    .line 283
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setWidth(I)V

    #@27
    goto :goto_3c

    #@28
    .line 285
    :cond_28
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setX(I)V

    #@2b
    .line 286
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/Guideline;->setY(I)V

    #@2e
    .line 287
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@31
    move-result-object p1

    #@32
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@35
    move-result p1

    #@36
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/Guideline;->setWidth(I)V

    #@39
    .line 288
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setHeight(I)V

    #@3c
    :goto_3c
    return-void
.end method

.class public Landroidx/constraintlayout/core/state/helpers/BarrierReference;
.super Landroidx/constraintlayout/core/state/HelperReference;
.source "BarrierReference.java"


# instance fields
.field private mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

.field private mDirection:Landroidx/constraintlayout/core/state/State$Direction;

.field private mMargin:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .registers 3

    #@0
    .line 32
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->BARRIER:Landroidx/constraintlayout/core/state/State$Helper;

    #@2
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    #@5
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 4

    #@0
    .line 59
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@3
    .line 61
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    #@5
    iget-object v1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mDirection:Landroidx/constraintlayout/core/state/State$Direction;

    #@7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    #@a
    move-result v1

    #@b
    aget v0, v0, v1

    #@d
    const/4 v1, 0x3

    #@e
    if-eq v0, v1, :cond_1d

    #@10
    const/4 v2, 0x4

    #@11
    if-eq v0, v2, :cond_1d

    #@13
    const/4 v2, 0x5

    #@14
    if-eq v0, v2, :cond_1b

    #@16
    const/4 v2, 0x6

    #@17
    if-eq v0, v2, :cond_1e

    #@19
    const/4 v1, 0x0

    #@1a
    goto :goto_1e

    #@1b
    :cond_1b
    const/4 v1, 0x2

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 v1, 0x1

    #@1e
    .line 78
    :cond_1e
    :goto_1e
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    #@20
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Barrier;->setBarrierType(I)V

    #@23
    .line 79
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    #@25
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mMargin:I

    #@27
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Barrier;->setMargin(I)V

    #@2a
    return-void
.end method

.method public getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;
    .registers 2

    #@0
    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 53
    new-instance v0, Landroidx/constraintlayout/core/widgets/Barrier;

    #@6
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/Barrier;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    #@b
    .line 55
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    #@d
    return-object v0
.end method

.method public margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    #@0
    .line 46
    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mMargin:I

    #@2
    return-object p0
.end method

.method public margin(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    #@0
    .line 41
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mState:Landroidx/constraintlayout/core/state/State;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    #@5
    move-result p1

    #@6
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@9
    return-object p0
.end method

.method public setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V
    .registers 2

    #@0
    .line 36
    iput-object p1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mDirection:Landroidx/constraintlayout/core/state/State$Direction;

    #@2
    return-void
.end method

.class public Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;
.super Landroidx/constraintlayout/core/state/helpers/ChainReference;
.source "VerticalChainReference.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .registers 3

    #@0
    .line 26
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    #@2
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/helpers/ChainReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    #@5
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 6

    #@0
    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mReferences:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1a

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    .line 33
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mState:Landroidx/constraintlayout/core/state/State;

    #@12
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@15
    move-result-object v1

    #@16
    .line 34
    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->clearVertical()Landroidx/constraintlayout/core/state/ConstraintReference;

    #@19
    goto :goto_6

    #@1a
    .line 37
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mReferences:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v0

    #@20
    const/4 v1, 0x0

    #@21
    move-object v2, v1

    #@22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_78

    #@28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    .line 38
    iget-object v4, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mState:Landroidx/constraintlayout/core/state/State;

    #@2e
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@31
    move-result-object v3

    #@32
    if-nez v2, :cond_66

    #@34
    .line 41
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mTopToTop:Ljava/lang/Object;

    #@36
    if-eqz v2, :cond_4a

    #@38
    .line 42
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mTopToTop:Ljava/lang/Object;

    #@3a
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@3d
    move-result-object v2

    #@3e
    iget v4, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginTop:I

    #@40
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@43
    move-result-object v2

    #@44
    iget v4, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginTopGone:I

    #@46
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@49
    goto :goto_65

    #@4a
    .line 43
    :cond_4a
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mTopToBottom:Ljava/lang/Object;

    #@4c
    if-eqz v2, :cond_60

    #@4e
    .line 44
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mTopToBottom:Ljava/lang/Object;

    #@50
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@53
    move-result-object v2

    #@54
    iget v4, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginTop:I

    #@56
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@59
    move-result-object v2

    #@5a
    iget v4, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginTopGone:I

    #@5c
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@5f
    goto :goto_65

    #@60
    .line 47
    :cond_60
    sget-object v2, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    #@62
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@65
    :goto_65
    move-object v2, v3

    #@66
    :cond_66
    if-eqz v1, :cond_76

    #@68
    .line 51
    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@6f
    .line 52
    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@76
    :cond_76
    move-object v1, v3

    #@77
    goto :goto_22

    #@78
    :cond_78
    if-eqz v1, :cond_ab

    #@7a
    .line 58
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBottomToTop:Ljava/lang/Object;

    #@7c
    if-eqz v0, :cond_90

    #@7e
    .line 59
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBottomToTop:Ljava/lang/Object;

    #@80
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@83
    move-result-object v0

    #@84
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginBottom:I

    #@86
    .line 60
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@89
    move-result-object v0

    #@8a
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginBottomGone:I

    #@8c
    .line 61
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@8f
    goto :goto_ab

    #@90
    .line 62
    :cond_90
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBottomToBottom:Ljava/lang/Object;

    #@92
    if-eqz v0, :cond_a6

    #@94
    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBottomToBottom:Ljava/lang/Object;

    #@96
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@99
    move-result-object v0

    #@9a
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginBottom:I

    #@9c
    .line 64
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@9f
    move-result-object v0

    #@a0
    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginBottomGone:I

    #@a2
    .line 65
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@a5
    goto :goto_ab

    #@a6
    .line 68
    :cond_a6
    sget-object v0, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    #@a8
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@ab
    :cond_ab
    :goto_ab
    if-nez v2, :cond_ae

    #@ad
    return-void

    #@ae
    .line 76
    :cond_ae
    iget v0, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBias:F

    #@b0
    const/high16 v1, 0x3f000000    # 0.5f

    #@b2
    cmpl-float v0, v0, v1

    #@b4
    if-eqz v0, :cond_bb

    #@b6
    .line 77
    iget v0, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBias:F

    #@b8
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->verticalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    #@bb
    .line 80
    :cond_bb
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Chain:[I

    #@bd
    iget-object v1, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mStyle:Landroidx/constraintlayout/core/state/State$Chain;

    #@bf
    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Chain;->ordinal()I

    #@c2
    move-result v1

    #@c3
    aget v0, v0, v1

    #@c5
    const/4 v1, 0x1

    #@c6
    if-eq v0, v1, :cond_d7

    #@c8
    const/4 v3, 0x2

    #@c9
    if-eq v0, v3, :cond_d3

    #@cb
    const/4 v1, 0x3

    #@cc
    if-eq v0, v1, :cond_cf

    #@ce
    goto :goto_db

    #@cf
    .line 88
    :cond_cf
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->setVerticalChainStyle(I)V

    #@d2
    goto :goto_db

    #@d3
    .line 85
    :cond_d3
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setVerticalChainStyle(I)V

    #@d6
    goto :goto_db

    #@d7
    :cond_d7
    const/4 v0, 0x0

    #@d8
    .line 82
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setVerticalChainStyle(I)V

    #@db
    :goto_db
    return-void
.end method

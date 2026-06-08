.class public Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    }
.end annotation


# static fields
.field private static final ALLOW_BINARY:Z = false

.field private static final UNSET_GONE_MARGIN:I = -0x80000000


# instance fields
.field private mDependents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalValue:I

.field mGoneMargin:I

.field private mHasFinalValue:Z

.field public mMargin:I

.field public final mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

.field public mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public final mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .registers 4

    #@0
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 36
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@6
    const/4 v0, 0x0

    #@7
    .line 98
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@9
    const/high16 v0, -0x80000000

    #@b
    .line 99
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@d
    .line 132
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@f
    .line 133
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@11
    return-void
.end method

.method private isConnectionToMe(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashSet;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)Z"
        }
    .end annotation

    #@0
    .line 465
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 468
    :cond_8
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@b
    .line 470
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e
    move-result-object v0

    #@f
    const/4 v2, 0x1

    #@10
    if-ne p1, v0, :cond_13

    #@12
    return v2

    #@13
    .line 473
    :cond_13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    #@16
    move-result-object p1

    #@17
    .line 474
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v0

    #@1b
    move v3, v1

    #@1c
    :goto_1c
    if-ge v3, v0, :cond_42

    #@1e
    .line 475
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@24
    .line 476
    invoke-virtual {v4, p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isSimilarDimensionConnection(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_3f

    #@2a
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_3f

    #@30
    .line 477
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@37
    move-result-object v4

    #@38
    invoke-direct {p0, v4, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnectionToMe(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_3f

    #@3e
    return v2

    #@3f
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    #@41
    goto :goto_1c

    #@42
    :cond_42
    return v1
.end method


# virtual methods
.method public connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z
    .registers 5

    #@0
    const/high16 v0, -0x80000000

    #@2
    const/4 v1, 0x0

    #@3
    .line 242
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    #@6
    move-result p1

    #@7
    return p1
.end method

.method public connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-nez p1, :cond_7

    #@3
    .line 216
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@6
    return v0

    #@7
    :cond_7
    if-nez p4, :cond_11

    #@9
    .line 219
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isValidConnection(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Z

    #@c
    move-result p4

    #@d
    if-nez p4, :cond_11

    #@f
    const/4 p1, 0x0

    #@10
    return p1

    #@11
    .line 222
    :cond_11
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@13
    .line 223
    iget-object p4, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@15
    if-nez p4, :cond_1e

    #@17
    .line 224
    new-instance p4, Ljava/util/HashSet;

    #@19
    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    #@1c
    iput-object p4, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@1e
    .line 226
    :cond_1e
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@20
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@22
    if-eqz p1, :cond_27

    #@24
    .line 227
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@27
    .line 229
    :cond_27
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@29
    .line 230
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@2b
    return v0
.end method

.method public copyFrom(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 104
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 105
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 106
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@b
    .line 109
    :cond_b
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@d
    if-eqz v0, :cond_24

    #@f
    .line 110
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@12
    move-result-object v0

    #@13
    .line 111
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@15
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@17
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object p2

    #@1b
    check-cast p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1d
    .line 112
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@20
    move-result-object p2

    #@21
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@23
    goto :goto_27

    #@24
    :cond_24
    const/4 p2, 0x0

    #@25
    .line 114
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@27
    .line 116
    :goto_27
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@29
    if-eqz p2, :cond_3d

    #@2b
    .line 117
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@2d
    if-nez v0, :cond_36

    #@2f
    .line 118
    new-instance v0, Ljava/util/HashSet;

    #@31
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@34
    iput-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@36
    .line 120
    :cond_36
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@38
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@3a
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3d
    .line 122
    :cond_3d
    iget p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@3f
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@41
    .line 123
    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@43
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@45
    return-void
.end method

.method public findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;",
            ">;",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;",
            ")V"
        }
    .end annotation

    #@0
    .line 41
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@2
    if-eqz v0, :cond_1a

    #@4
    .line 42
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1a

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    .line 43
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16
    invoke-static {v1, p1, p2, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    #@19
    goto :goto_8

    #@1a
    :cond_1a
    return-void
.end method

.method public getDependents()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    #@0
    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@2
    return-object v0
.end method

.method public getFinalValue()I
    .registers 2

    #@0
    .line 75
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mHasFinalValue:Z

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 78
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mFinalValue:I

    #@8
    return v0
.end method

.method public getMargin()I
    .registers 4

    #@0
    .line 170
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x8

    #@8
    if-ne v0, v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 173
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@e
    const/high16 v2, -0x80000000

    #@10
    if-eq v0, v2, :cond_21

    #@12
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    if-eqz v0, :cond_21

    #@16
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@18
    .line 174
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@1b
    move-result v0

    #@1c
    if-ne v0, v1, :cond_21

    #@1e
    .line 175
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@20
    return v0

    #@21
    .line 177
    :cond_21
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@23
    return v0
.end method

.method public final getOpposite()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .registers 3

    #@0
    .line 490
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_30

    #@d
    .line 510
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@11
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@18
    throw v0

    #@19
    .line 501
    :pswitch_19
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1b
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1d
    return-object v0

    #@1e
    .line 498
    :pswitch_1e
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@20
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@22
    return-object v0

    #@23
    .line 495
    :pswitch_23
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@25
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@27
    return-object v0

    #@28
    .line 492
    :pswitch_28
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2c
    return-object v0

    #@2d
    :pswitch_2d
    const/4 v0, 0x0

    #@2e
    return-object v0

    #@2f
    nop

    #@30
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 2

    #@0
    .line 157
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    return-object v0
.end method

.method public getSolverVariable()Landroidx/constraintlayout/core/SolverVariable;
    .registers 2

    #@0
    .line 140
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    return-object v0
.end method

.method public getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .registers 2

    #@0
    .line 184
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    return-object v0
.end method

.method public getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .registers 2

    #@0
    .line 163
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2
    return-object v0
.end method

.method public hasCenteredDependents()Z
    .registers 4

    #@0
    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 60
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_22

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    .line 61
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19
    move-result-object v2

    #@1a
    .line 62
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_a

    #@20
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    :cond_22
    return v1
.end method

.method public hasDependents()Z
    .registers 3

    #@0
    .line 50
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 53
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_d

    #@c
    const/4 v1, 0x1

    #@d
    :cond_d
    return v1
.end method

.method public hasFinalValue()Z
    .registers 2

    #@0
    .line 86
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mHasFinalValue:Z

    #@2
    return v0
.end method

.method public isConnected()Z
    .registers 2

    #@0
    .line 250
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public isConnectionAllowed(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z
    .registers 5

    #@0
    .line 443
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 444
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnectionToMe(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    if-eqz v0, :cond_d

    #@c
    return v1

    #@d
    .line 447
    :cond_d
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@14
    move-result-object v0

    #@15
    const/4 v2, 0x1

    #@16
    if-ne v0, p1, :cond_19

    #@18
    return v2

    #@19
    .line 451
    :cond_19
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1c
    move-result-object p1

    #@1d
    if-ne p1, v0, :cond_20

    #@1f
    return v2

    #@20
    :cond_20
    return v1
.end method

.method public isConnectionAllowed(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Z
    .registers 3

    #@0
    .line 430
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnectionAllowed(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public isSideAnchor()Z
    .registers 3

    #@0
    .line 312
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_1e

    #@d
    .line 325
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@11
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@18
    throw v0

    #@19
    :pswitch_19
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    :pswitch_1b
    const/4 v0, 0x0

    #@1c
    return v0

    #@1d
    nop

    #@1e
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public isSimilarDimensionConnection(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Z
    .registers 5

    #@0
    .line 336
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@3
    move-result-object p1

    #@4
    .line 337
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@6
    const/4 v1, 0x1

    #@7
    if-ne p1, v0, :cond_a

    #@9
    return v1

    #@a
    .line 340
    :cond_a
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    #@c
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@e
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    #@11
    move-result v2

    #@12
    aget v0, v0, v2

    #@14
    const/4 v2, 0x0

    #@15
    packed-switch v0, :pswitch_data_4e

    #@18
    .line 358
    new-instance p1, Ljava/lang/AssertionError;

    #@1a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@23
    throw p1

    #@24
    :pswitch_24
    return v2

    #@25
    .line 353
    :pswitch_25
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@27
    if-eq p1, v0, :cond_37

    #@29
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2b
    if-eq p1, v0, :cond_37

    #@2d
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2f
    if-eq p1, v0, :cond_37

    #@31
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@33
    if-ne p1, v0, :cond_36

    #@35
    goto :goto_37

    #@36
    :cond_36
    move v1, v2

    #@37
    :cond_37
    :goto_37
    return v1

    #@38
    .line 347
    :pswitch_38
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@3a
    if-eq p1, v0, :cond_46

    #@3c
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@3e
    if-eq p1, v0, :cond_46

    #@40
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@42
    if-ne p1, v0, :cond_45

    #@44
    goto :goto_46

    #@45
    :cond_45
    move v1, v2

    #@46
    :cond_46
    :goto_46
    return v1

    #@47
    .line 342
    :pswitch_47
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@49
    if-eq p1, v0, :cond_4c

    #@4b
    goto :goto_4d

    #@4c
    :cond_4c
    move v1, v2

    #@4d
    :goto_4d
    return v1

    #@4e
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_47
        :pswitch_38
        :pswitch_38
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_38
        :pswitch_25
        :pswitch_24
    .end packed-switch
.end method

.method public isValidConnection(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 262
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@7
    move-result-object v1

    #@8
    .line 263
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@a
    const/4 v3, 0x1

    #@b
    if-ne v1, v2, :cond_27

    #@d
    .line 264
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@f
    if-ne v2, v1, :cond_26

    #@11
    .line 265
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline()Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_25

    #@1b
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1e
    move-result-object p1

    #@1f
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline()Z

    #@22
    move-result p1

    #@23
    if-nez p1, :cond_26

    #@25
    :cond_25
    return v0

    #@26
    :cond_26
    return v3

    #@27
    .line 270
    :cond_27
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    #@29
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2b
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    #@2e
    move-result v4

    #@2f
    aget v2, v2, v4

    #@31
    packed-switch v2, :pswitch_data_94

    #@34
    .line 303
    new-instance p1, Ljava/lang/AssertionError;

    #@36
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@38
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@3f
    throw p1

    #@40
    :pswitch_40
    return v0

    #@41
    .line 293
    :pswitch_41
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@43
    if-eq v1, p1, :cond_4b

    #@45
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@47
    if-ne v1, p1, :cond_4a

    #@49
    goto :goto_4b

    #@4a
    :cond_4a
    return v3

    #@4b
    :cond_4b
    :goto_4b
    return v0

    #@4c
    .line 286
    :pswitch_4c
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@4e
    if-eq v1, v2, :cond_57

    #@50
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@52
    if-ne v1, v2, :cond_55

    #@54
    goto :goto_57

    #@55
    :cond_55
    move v2, v0

    #@56
    goto :goto_58

    #@57
    :cond_57
    :goto_57
    move v2, v3

    #@58
    .line 287
    :goto_58
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@5b
    move-result-object p1

    #@5c
    instance-of p1, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    #@5e
    if-eqz p1, :cond_68

    #@60
    if-nez v2, :cond_66

    #@62
    .line 288
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@64
    if-ne v1, p1, :cond_67

    #@66
    :cond_66
    move v0, v3

    #@67
    :cond_67
    move v2, v0

    #@68
    :cond_68
    return v2

    #@69
    .line 278
    :pswitch_69
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@6b
    if-eq v1, v2, :cond_74

    #@6d
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@6f
    if-ne v1, v2, :cond_72

    #@71
    goto :goto_74

    #@72
    :cond_72
    move v2, v0

    #@73
    goto :goto_75

    #@74
    :cond_74
    :goto_74
    move v2, v3

    #@75
    .line 279
    :goto_75
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@78
    move-result-object p1

    #@79
    instance-of p1, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    #@7b
    if-eqz p1, :cond_85

    #@7d
    if-nez v2, :cond_83

    #@7f
    .line 280
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@81
    if-ne v1, p1, :cond_84

    #@83
    :cond_83
    move v0, v3

    #@84
    :cond_84
    move v2, v0

    #@85
    :cond_85
    return v2

    #@86
    .line 273
    :pswitch_86
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@88
    if-eq v1, p1, :cond_93

    #@8a
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@8c
    if-eq v1, p1, :cond_93

    #@8e
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@90
    if-eq v1, p1, :cond_93

    #@92
    move v0, v3

    #@93
    :cond_93
    return v0

    #@94
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_86
        :pswitch_69
        :pswitch_69
        :pswitch_4c
        :pswitch_4c
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_40
    .end packed-switch
.end method

.method public isVerticalAnchor()Z
    .registers 3

    #@0
    .line 387
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_1e

    #@d
    .line 400
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@11
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@18
    throw v0

    #@19
    :pswitch_19
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    :pswitch_1b
    const/4 v0, 0x0

    #@1c
    return v0

    #@1d
    nop

    #@1e
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method public reset()V
    .registers 3

    #@0
    .line 190
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_1a

    #@5
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@7
    if-eqz v0, :cond_1a

    #@9
    .line 191
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@c
    .line 192
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@10
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1a

    #@16
    .line 193
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@1a
    .line 196
    :cond_1a
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    #@1c
    .line 197
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e
    const/4 v0, 0x0

    #@1f
    .line 198
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@21
    const/high16 v1, -0x80000000

    #@23
    .line 199
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@25
    .line 200
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mHasFinalValue:Z

    #@27
    .line 201
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mFinalValue:I

    #@29
    return-void
.end method

.method public resetFinalResolution()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 82
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mHasFinalValue:Z

    #@3
    .line 83
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mFinalValue:I

    #@5
    return-void
.end method

.method public resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V
    .registers 4

    #@0
    .line 146
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@2
    if-nez p1, :cond_f

    #@4
    .line 147
    new-instance p1, Landroidx/constraintlayout/core/SolverVariable;

    #@6
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {p1, v0, v1}, Landroidx/constraintlayout/core/SolverVariable;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    #@c
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    #@e
    goto :goto_12

    #@f
    .line 149
    :cond_f
    invoke-virtual {p1}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    #@12
    :goto_12
    return-void
.end method

.method public setFinalValue(I)V
    .registers 2

    #@0
    .line 70
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mFinalValue:I

    #@2
    const/4 p1, 0x1

    #@3
    .line 71
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mHasFinalValue:Z

    #@5
    return-void
.end method

.method public setGoneMargin(I)V
    .registers 3

    #@0
    .line 376
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    .line 377
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@8
    :cond_8
    return-void
.end method

.method public setMargin(I)V
    .registers 3

    #@0
    .line 366
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    .line 367
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@8
    :cond_8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, ":"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@17
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

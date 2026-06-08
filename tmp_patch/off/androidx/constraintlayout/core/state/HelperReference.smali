.class public Landroidx/constraintlayout/core/state/HelperReference;
.super Landroidx/constraintlayout/core/state/ConstraintReference;
.source "HelperReference.java"

# interfaces
.implements Landroidx/constraintlayout/core/state/helpers/Facade;


# instance fields
.field private mHelperWidget:Landroidx/constraintlayout/core/widgets/HelperWidget;

.field protected mReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final mState:Landroidx/constraintlayout/core/state/State;

.field final mType:Landroidx/constraintlayout/core/state/State$Helper;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V
    .registers 4

    #@0
    .line 33
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    #@3
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    #@a
    .line 34
    iput-object p1, p0, Landroidx/constraintlayout/core/state/HelperReference;->mState:Landroidx/constraintlayout/core/state/State;

    #@c
    .line 35
    iput-object p2, p0, Landroidx/constraintlayout/core/state/HelperReference;->mType:Landroidx/constraintlayout/core/state/State$Helper;

    #@e
    return-void
.end method


# virtual methods
.method public varargs add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;
    .registers 3

    #@0
    .line 41
    iget-object v0, p0, Landroidx/constraintlayout/core/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    #@2
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@5
    return-object p0
.end method

.method public apply()V
    .registers 1

    #@0
    return-void
.end method

.method public getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 2

    #@0
    .line 53
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;
    .registers 2

    #@0
    .line 49
    iget-object v0, p0, Landroidx/constraintlayout/core/state/HelperReference;->mHelperWidget:Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@2
    return-object v0
.end method

.method public getType()Landroidx/constraintlayout/core/state/State$Helper;
    .registers 2

    #@0
    .line 38
    iget-object v0, p0, Landroidx/constraintlayout/core/state/HelperReference;->mType:Landroidx/constraintlayout/core/state/State$Helper;

    #@2
    return-object v0
.end method

.method public setHelperWidget(Landroidx/constraintlayout/core/widgets/HelperWidget;)V
    .registers 2

    #@0
    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/core/state/HelperReference;->mHelperWidget:Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@2
    return-void
.end method

.class public Landroidx/constraintlayout/core/motion/utils/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public rotation:F

.field public top:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getState(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 3

    #@0
    .line 25
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    #@6
    .line 26
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    #@c
    .line 27
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    #@12
    .line 28
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    #@18
    .line 29
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationZ()F

    #@1b
    move-result p1

    #@1c
    float-to-int p1, p1

    #@1d
    int-to-float p1, p1

    #@1e
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->rotation:F

    #@20
    return-void
.end method

.method public height()I
    .registers 3

    #@0
    .line 37
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    #@2
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public width()I
    .registers 3

    #@0
    .line 33
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    #@2
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

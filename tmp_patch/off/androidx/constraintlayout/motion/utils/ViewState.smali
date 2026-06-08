.class public Landroidx/constraintlayout/motion/utils/ViewState;
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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getState(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    #@0
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroidx/constraintlayout/motion/utils/ViewState;->left:I

    #@6
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroidx/constraintlayout/motion/utils/ViewState;->top:I

    #@c
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroidx/constraintlayout/motion/utils/ViewState;->right:I

    #@12
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroidx/constraintlayout/motion/utils/ViewState;->bottom:I

    #@18
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    #@1b
    move-result p1

    #@1c
    iput p1, p0, Landroidx/constraintlayout/motion/utils/ViewState;->rotation:F

    #@1e
    return-void
.end method

.method public height()I
    .registers 3

    #@0
    .line 40
    iget v0, p0, Landroidx/constraintlayout/motion/utils/ViewState;->bottom:I

    #@2
    iget v1, p0, Landroidx/constraintlayout/motion/utils/ViewState;->top:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public width()I
    .registers 3

    #@0
    .line 36
    iget v0, p0, Landroidx/constraintlayout/motion/utils/ViewState;->right:I

    #@2
    iget v1, p0, Landroidx/constraintlayout/motion/utils/ViewState;->left:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

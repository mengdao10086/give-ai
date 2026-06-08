.class Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecelerateInterpolator"
.end annotation


# instance fields
.field currentP:F

.field initalV:F

.field maxA:F

.field final synthetic this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    #@0
    .line 2042
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;-><init>()V

    #@5
    const/4 p1, 0x0

    #@6
    .line 2043
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    #@8
    .line 2044
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    #@a
    return-void
.end method


# virtual methods
.method public config(FFF)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "velocity",
            "position",
            "maxAcceleration"
        }
    .end annotation

    #@0
    .line 2048
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    #@2
    .line 2049
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    #@4
    .line 2050
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    #@6
    return-void
.end method

.method public getInterpolation(F)F
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    #@0
    .line 2055
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v1, v0, v1

    #@5
    const/high16 v2, 0x40000000    # 2.0f

    #@7
    if-lez v1, :cond_26

    #@9
    .line 2056
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    #@b
    div-float v3, v0, v1

    #@d
    cmpg-float v3, v3, p1

    #@f
    if-gez v3, :cond_13

    #@11
    div-float p1, v0, v1

    #@13
    .line 2059
    :cond_13
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@15
    mul-float/2addr v1, p1

    #@16
    sub-float/2addr v0, v1

    #@17
    iput v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@19
    .line 2060
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    #@1b
    mul-float/2addr v0, p1

    #@1c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    #@1e
    mul-float/2addr v1, p1

    #@1f
    mul-float/2addr v1, p1

    #@20
    div-float/2addr v1, v2

    #@21
    sub-float/2addr v0, v1

    #@22
    .line 2061
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    #@24
    :goto_24
    add-float/2addr v0, p1

    #@25
    return v0

    #@26
    :cond_26
    neg-float v1, v0

    #@27
    .line 2064
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    #@29
    div-float/2addr v1, v3

    #@2a
    cmpg-float v1, v1, p1

    #@2c
    if-gez v1, :cond_30

    #@2e
    neg-float p1, v0

    #@2f
    div-float/2addr p1, v3

    #@30
    .line 2067
    :cond_30
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@32
    mul-float/2addr v3, p1

    #@33
    add-float/2addr v0, v3

    #@34
    iput v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@36
    .line 2068
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    #@38
    mul-float/2addr v0, p1

    #@39
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    #@3b
    mul-float/2addr v1, p1

    #@3c
    mul-float/2addr v1, p1

    #@3d
    div-float/2addr v1, v2

    #@3e
    add-float/2addr v0, v1

    #@3f
    .line 2069
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    #@41
    goto :goto_24
.end method

.method public getVelocity()F
    .registers 2

    #@0
    .line 2075
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@4
    return v0
.end method

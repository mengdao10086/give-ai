.class public Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathRotate"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 160
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public setPathRotate(Landroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;FJDD)Z
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "cache",
            "t",
            "time",
            "dx",
            "dy"
        }
    .end annotation

    #@0
    move-object v0, p0

    #@1
    move v1, p3

    #@2
    move-wide v2, p4

    #@3
    move-object v4, p1

    #@4
    move-object v5, p2

    #@5
    .line 167
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    #@8
    move-result p2

    #@9
    invoke-static {p8, p9, p6, p7}, Ljava/lang/Math;->atan2(DD)D

    #@c
    move-result-wide p3

    #@d
    invoke-static {p3, p4}, Ljava/lang/Math;->toDegrees(D)D

    #@10
    move-result-wide p3

    #@11
    double-to-float p3, p3

    #@12
    add-float/2addr p2, p3

    #@13
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    #@16
    .line 168
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;->mContinue:Z

    #@18
    return p1
.end method

.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "t",
            "time",
            "cache"
        }
    .end annotation

    #@0
    .line 163
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;->mContinue:Z

    #@2
    return p1
.end method

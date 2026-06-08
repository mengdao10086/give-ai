.class public Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;
.super Landroidx/constraintlayout/motion/utils/ViewSpline;
.source "ViewSpline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathRotate"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 133
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public setPathRotate(Landroid/view/View;FDD)V
    .registers 7
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
            "dx",
            "dy"
        }
    .end annotation

    #@0
    .line 139
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;->get(F)F

    #@3
    move-result p2

    #@4
    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    #@7
    move-result-wide p3

    #@8
    invoke-static {p3, p4}, Ljava/lang/Math;->toDegrees(D)D

    #@b
    move-result-wide p3

    #@c
    double-to-float p3, p3

    #@d
    add-float/2addr p2, p3

    #@e
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    #@11
    return-void
.end method

.method public setProperty(Landroid/view/View;F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "t"
        }
    .end annotation

    #@0
    return-void
.end method

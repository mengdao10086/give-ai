.class Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlphaSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 128
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .registers 12
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
    move-object v0, p0

    #@1
    move v1, p2

    #@2
    move-wide v2, p3

    #@3
    move-object v4, p1

    #@4
    move-object v5, p5

    #@5
    .line 131
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    #@8
    move-result p2

    #@9
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    #@c
    .line 132
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;->mContinue:Z

    #@e
    return p1
.end method

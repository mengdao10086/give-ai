.class final Lcom/google/android/material/sidesheet/SheetUtils;
.super Ljava/lang/Object;
.source "SheetUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static isSwipeMostlyHorizontal(FF)Z
    .registers 2

    #@0
    .line 33
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@3
    move-result p0

    #@4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@7
    move-result p1

    #@8
    cmpl-float p0, p0, p1

    #@a
    if-lez p0, :cond_e

    #@c
    const/4 p0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p0, 0x0

    #@f
    :goto_f
    return p0
.end method

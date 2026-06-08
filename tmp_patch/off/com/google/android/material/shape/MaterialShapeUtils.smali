.class public Lcom/google/android/material/shape/MaterialShapeUtils;
.super Ljava/lang/Object;
.source "MaterialShapeUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;
    .registers 2

    #@0
    if-eqz p0, :cond_10

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p0, v0, :cond_a

    #@5
    .line 37
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    #@8
    move-result-object p0

    #@9
    return-object p0

    #@a
    .line 35
    :cond_a
    new-instance p0, Lcom/google/android/material/shape/CutCornerTreatment;

    #@c
    invoke-direct {p0}, Lcom/google/android/material/shape/CutCornerTreatment;-><init>()V

    #@f
    return-object p0

    #@10
    .line 33
    :cond_10
    new-instance p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    #@12
    invoke-direct {p0}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    #@15
    return-object p0
.end method

.method static createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;
    .registers 1

    #@0
    .line 43
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    #@5
    return-object v0
.end method

.method static createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 1

    #@0
    .line 48
    new-instance v0, Lcom/google/android/material/shape/EdgeTreatment;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    #@5
    return-object v0
.end method

.method public static setElevation(Landroid/view/View;F)V
    .registers 3

    #@0
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    .line 58
    instance-of v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 59
    check-cast p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@d
    :cond_d
    return-void
.end method

.method public static setParentAbsoluteElevation(Landroid/view/View;)V
    .registers 3

    #@0
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 71
    instance-of v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@6
    if-eqz v1, :cond_d

    #@8
    .line 72
    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@a
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    #@d
    :cond_d
    return-void
.end method

.method public static setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .registers 3

    #@0
    .line 83
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isElevationOverlayEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 84
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getParentAbsoluteElevation(Landroid/view/View;)F

    #@9
    move-result p0

    #@a
    invoke-virtual {p1, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setParentAbsoluteElevation(F)V

    #@d
    :cond_d
    return-void
.end method

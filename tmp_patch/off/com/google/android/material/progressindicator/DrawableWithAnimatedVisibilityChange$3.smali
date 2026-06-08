.class Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;
.super Landroid/util/Property;
.source "DrawableWithAnimatedVisibilityChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    #@0
    .line 442
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)Ljava/lang/Float;
    .registers 2

    #@0
    .line 445
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getGrowFraction()F

    #@3
    move-result p1

    #@4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 442
    check-cast p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;->get(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)Ljava/lang/Float;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public set(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;Ljava/lang/Float;)V
    .registers 3

    #@0
    .line 450
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@3
    move-result p2

    #@4
    invoke-virtual {p1, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setGrowFraction(F)V

    #@7
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 442
    check-cast p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    #@2
    check-cast p2, Ljava/lang/Float;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;->set(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;Ljava/lang/Float;)V

    #@7
    return-void
.end method

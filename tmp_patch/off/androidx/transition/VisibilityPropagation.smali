.class public abstract Landroidx/transition/VisibilityPropagation;
.super Landroidx/transition/TransitionPropagation;
.source "VisibilityPropagation.java"


# static fields
.field private static final PROPNAME_VIEW_CENTER:Ljava/lang/String; = "android:visibilityPropagation:center"

.field private static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibilityPropagation:visibility"

.field private static final VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-string v0, "android:visibilityPropagation:visibility"

    #@2
    const-string v1, "android:visibilityPropagation:center"

    #@4
    .line 38
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroidx/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    #@a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    .line 25
    invoke-direct {p0}, Landroidx/transition/TransitionPropagation;-><init>()V

    #@3
    return-void
.end method

.method private static getViewCoordinate(Landroidx/transition/TransitionValues;I)I
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    .line 110
    :cond_4
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string v1, "android:visibilityPropagation:center"

    #@8
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object p0

    #@c
    check-cast p0, [I

    #@e
    check-cast p0, [I

    #@10
    if-nez p0, :cond_13

    #@12
    return v0

    #@13
    .line 115
    :cond_13
    aget p0, p0, p1

    #@15
    return p0
.end method


# virtual methods
.method public captureValues(Landroidx/transition/TransitionValues;)V
    .registers 8

    #@0
    .line 45
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    .line 46
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@4
    const-string v2, "android:visibility:visibility"

    #@6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/lang/Integer;

    #@c
    if-nez v1, :cond_16

    #@e
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@11
    move-result v1

    #@12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v1

    #@16
    .line 50
    :cond_16
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@18
    const-string v3, "android:visibilityPropagation:visibility"

    #@1a
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    const/4 v1, 0x2

    #@1e
    new-array v2, v1, [I

    #@20
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@23
    const/4 v3, 0x0

    #@24
    aget v4, v2, v3

    #@26
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    #@29
    move-result v5

    #@2a
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@2d
    move-result v5

    #@2e
    add-int/2addr v4, v5

    #@2f
    aput v4, v2, v3

    #@31
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@34
    move-result v5

    #@35
    div-int/2addr v5, v1

    #@36
    add-int/2addr v4, v5

    #@37
    aput v4, v2, v3

    #@39
    const/4 v3, 0x1

    #@3a
    aget v4, v2, v3

    #@3c
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    #@3f
    move-result v5

    #@40
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@43
    move-result v5

    #@44
    add-int/2addr v4, v5

    #@45
    aput v4, v2, v3

    #@47
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@4a
    move-result v0

    #@4b
    div-int/2addr v0, v1

    #@4c
    add-int/2addr v4, v0

    #@4d
    aput v4, v2, v3

    #@4f
    .line 57
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@51
    const-string v0, "android:visibilityPropagation:center"

    #@53
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    return-void
.end method

.method public getPropagationProperties()[Ljava/lang/String;
    .registers 2

    #@0
    .line 62
    sget-object v0, Landroidx/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getViewVisibility(Landroidx/transition/TransitionValues;)I
    .registers 4

    #@0
    const/16 v0, 0x8

    #@2
    if-nez p1, :cond_5

    #@4
    return v0

    #@5
    .line 76
    :cond_5
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@7
    const-string v1, "android:visibilityPropagation:visibility"

    #@9
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object p1

    #@d
    check-cast p1, Ljava/lang/Integer;

    #@f
    if-nez p1, :cond_12

    #@11
    return v0

    #@12
    .line 80
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result p1

    #@16
    return p1
.end method

.method public getViewX(Landroidx/transition/TransitionValues;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 91
    invoke-static {p1, v0}, Landroidx/transition/VisibilityPropagation;->getViewCoordinate(Landroidx/transition/TransitionValues;I)I

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public getViewY(Landroidx/transition/TransitionValues;)I
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 102
    invoke-static {p1, v0}, Landroidx/transition/VisibilityPropagation;->getViewCoordinate(Landroidx/transition/TransitionValues;I)I

    #@4
    move-result p1

    #@5
    return p1
.end method

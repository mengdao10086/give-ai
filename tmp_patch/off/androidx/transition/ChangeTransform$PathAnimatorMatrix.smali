.class Landroidx/transition/ChangeTransform$PathAnimatorMatrix;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAnimatorMatrix"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mValues:[F

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;[F)V
    .registers 4

    #@0
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 553
    new-instance v0, Landroid/graphics/Matrix;

    #@5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    #@a
    .line 560
    iput-object p1, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    #@c
    .line 561
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    check-cast p1, [F

    #@12
    iput-object p1, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    #@14
    const/4 p2, 0x2

    #@15
    .line 562
    aget p2, p1, p2

    #@17
    iput p2, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    #@19
    const/4 p2, 0x5

    #@1a
    .line 563
    aget p1, p1, p2

    #@1c
    iput p1, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    #@1e
    .line 564
    invoke-direct {p0}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    #@21
    return-void
.end method

.method private setAnimationMatrix()V
    .registers 4

    #@0
    .line 579
    iget-object v0, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    #@2
    const/4 v1, 0x2

    #@3
    iget v2, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    #@5
    aput v2, v0, v1

    #@7
    const/4 v1, 0x5

    #@8
    .line 580
    iget v2, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    #@a
    aput v2, v0, v1

    #@c
    .line 581
    iget-object v1, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    #@e
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    #@11
    .line 582
    iget-object v0, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    #@13
    iget-object v1, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    #@15
    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    #@18
    return-void
.end method


# virtual methods
.method getMatrix()Landroid/graphics/Matrix;
    .registers 2

    #@0
    .line 586
    iget-object v0, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    #@2
    return-object v0
.end method

.method setTranslation(Landroid/graphics/PointF;)V
    .registers 3

    #@0
    .line 573
    iget v0, p1, Landroid/graphics/PointF;->x:F

    #@2
    iput v0, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    #@4
    .line 574
    iget p1, p1, Landroid/graphics/PointF;->y:F

    #@6
    iput p1, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    #@8
    .line 575
    invoke-direct {p0}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    #@b
    return-void
.end method

.method setValues([F)V
    .registers 5

    #@0
    .line 568
    iget-object v0, p0, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    #@2
    array-length v1, p1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@7
    .line 569
    invoke-direct {p0}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    #@a
    return-void
.end method

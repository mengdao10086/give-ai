.class public Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;
.super Landroidx/constraintlayout/motion/utils/ViewSpline;
.source "ViewSpline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mConstraintAttributeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mTempValues:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attribute",
            "attrList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 185
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline;-><init>()V

    #@3
    const-string v0, ","

    #@5
    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    const/4 v0, 0x1

    #@a
    aget-object p1, p1, v0

    #@c
    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mAttributeName:Ljava/lang/String;

    #@e
    .line 187
    iput-object p2, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@10
    return-void
.end method


# virtual methods
.method public setPoint(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "value"
        }
    .end annotation

    #@0
    .line 212
    new-instance p1, Ljava/lang/RuntimeException;

    #@2
    const-string p2, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute)"

    #@4
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "value"
        }
    .end annotation

    #@0
    .line 216
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@5
    return-void
.end method

.method public setProperty(Landroid/view/View;F)V
    .registers 6
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
    .line 221
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@2
    float-to-double v1, p2

    #@3
    iget-object p2, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mTempValues:[F

    #@5
    invoke-virtual {v0, v1, v2, p2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    #@8
    .line 222
    iget-object p2, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@a
    const/4 v0, 0x0

    #@b
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object p2

    #@f
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@11
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mTempValues:[F

    #@13
    invoke-static {p2, p1, v0}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    #@16
    return-void
.end method

.method public setup(I)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveType"
        }
    .end annotation

    #@0
    .line 191
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v0

    #@6
    .line 192
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@f
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    #@12
    move-result v1

    #@13
    .line 193
    new-array v3, v0, [D

    #@15
    .line 194
    new-array v4, v1, [F

    #@17
    iput-object v4, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mTempValues:[F

    #@19
    const/4 v4, 0x2

    #@1a
    new-array v4, v4, [I

    #@1c
    const/4 v5, 0x1

    #@1d
    aput v1, v4, v5

    #@1f
    aput v0, v4, v2

    #@21
    .line 195
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@23
    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, [[D

    #@29
    move v4, v2

    #@2a
    :goto_2a
    if-ge v4, v0, :cond_5b

    #@2c
    .line 198
    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@2e
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    #@31
    move-result v5

    #@32
    .line 199
    iget-object v6, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    #@34
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@37
    move-result-object v6

    #@38
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@3a
    int-to-double v7, v5

    #@3b
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    #@40
    mul-double/2addr v7, v9

    #@41
    .line 201
    aput-wide v7, v3, v4

    #@43
    .line 202
    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mTempValues:[F

    #@45
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    #@48
    move v5, v2

    #@49
    .line 203
    :goto_49
    iget-object v6, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mTempValues:[F

    #@4b
    array-length v7, v6

    #@4c
    if-ge v5, v7, :cond_58

    #@4e
    .line 204
    aget-object v7, v1, v4

    #@50
    aget v6, v6, v5

    #@52
    float-to-double v8, v6

    #@53
    aput-wide v8, v7, v5

    #@55
    add-int/lit8 v5, v5, 0x1

    #@57
    goto :goto_49

    #@58
    :cond_58
    add-int/lit8 v4, v4, 0x1

    #@5a
    goto :goto_2a

    #@5b
    .line 208
    :cond_5b
    invoke-static {p1, v3, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@5e
    move-result-object p1

    #@5f
    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@61
    return-void
.end method

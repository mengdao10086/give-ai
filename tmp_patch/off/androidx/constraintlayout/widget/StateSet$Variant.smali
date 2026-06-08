.class Landroidx/constraintlayout/widget/StateSet$Variant;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/StateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variant"
.end annotation


# instance fields
.field mConstraintID:I

.field mId:I

.field mIsLayout:Z

.field mMaxHeight:F

.field mMaxWidth:F

.field mMinHeight:F

.field mMinWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    #@0
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@5
    .line 291
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    #@7
    .line 292
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    #@9
    .line 293
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    #@b
    .line 294
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    #@d
    const/4 v0, -0x1

    #@e
    .line 295
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    #@10
    const/4 v0, 0x0

    #@11
    .line 296
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mIsLayout:Z

    #@13
    .line 299
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@16
    move-result-object p2

    #@17
    .line 300
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->Variant:[I

    #@19
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1c
    move-result-object p2

    #@1d
    .line 301
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@20
    move-result v1

    #@21
    :goto_21
    if-ge v0, v1, :cond_90

    #@23
    .line 307
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@26
    move-result v2

    #@27
    .line 308
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_constraints:I

    #@29
    if-ne v2, v3, :cond_52

    #@2b
    .line 309
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    #@2d
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@30
    move-result v2

    #@31
    iput v2, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    #@33
    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@36
    move-result-object v2

    #@37
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    #@39
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@40
    move-result-object v3

    #@41
    iget v4, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    #@43
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@46
    const-string v3, "layout"

    #@48
    .line 313
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_8d

    #@4e
    const/4 v2, 0x1

    #@4f
    .line 314
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mIsLayout:Z

    #@51
    goto :goto_8d

    #@52
    .line 316
    :cond_52
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightLessThan:I

    #@54
    if-ne v2, v3, :cond_5f

    #@56
    .line 317
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    #@58
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@5b
    move-result v2

    #@5c
    iput v2, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    #@5e
    goto :goto_8d

    #@5f
    .line 318
    :cond_5f
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightMoreThan:I

    #@61
    if-ne v2, v3, :cond_6c

    #@63
    .line 319
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    #@65
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@68
    move-result v2

    #@69
    iput v2, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    #@6b
    goto :goto_8d

    #@6c
    .line 320
    :cond_6c
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthLessThan:I

    #@6e
    if-ne v2, v3, :cond_79

    #@70
    .line 321
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    #@72
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@75
    move-result v2

    #@76
    iput v2, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    #@78
    goto :goto_8d

    #@79
    .line 322
    :cond_79
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthMoreThan:I

    #@7b
    if-ne v2, v3, :cond_86

    #@7d
    .line 323
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    #@7f
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@82
    move-result v2

    #@83
    iput v2, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    #@85
    goto :goto_8d

    #@86
    :cond_86
    const-string v2, "ConstraintLayoutStates"

    #@88
    const-string v3, "Unknown tag"

    #@8a
    .line 325
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    :cond_8d
    :goto_8d
    add-int/lit8 v0, v0, 0x1

    #@8f
    goto :goto_21

    #@90
    .line 328
    :cond_90
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@93
    return-void
.end method


# virtual methods
.method match(FF)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthDp",
            "heightDp"
        }
    .end annotation

    #@0
    .line 351
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_10

    #@9
    .line 352
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    #@b
    cmpg-float v0, p1, v0

    #@d
    if-gez v0, :cond_10

    #@f
    return v1

    #@10
    .line 354
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    #@12
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1f

    #@18
    .line 355
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    #@1a
    cmpg-float v0, p2, v0

    #@1c
    if-gez v0, :cond_1f

    #@1e
    return v1

    #@1f
    .line 357
    :cond_1f
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    #@21
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_2e

    #@27
    .line 358
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    #@29
    cmpl-float p1, p1, v0

    #@2b
    if-lez p1, :cond_2e

    #@2d
    return v1

    #@2e
    .line 360
    :cond_2e
    iget p1, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    #@30
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@33
    move-result p1

    #@34
    if-nez p1, :cond_3d

    #@36
    .line 361
    iget p1, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    #@38
    cmpl-float p1, p2, p1

    #@3a
    if-lez p1, :cond_3d

    #@3c
    return v1

    #@3d
    :cond_3d
    const/4 p1, 0x1

    #@3e
    return p1
.end method

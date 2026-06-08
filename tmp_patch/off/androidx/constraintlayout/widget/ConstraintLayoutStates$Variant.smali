.class Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayoutStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variant"
.end annotation


# instance fields
.field mConstraintID:I

.field mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field mId:I

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
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@5
    .line 186
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    #@7
    .line 187
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    #@9
    .line 188
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    #@b
    .line 189
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    #@d
    const/4 v0, -0x1

    #@e
    .line 190
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    #@10
    .line 194
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@13
    move-result-object p2

    #@14
    .line 195
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Variant:[I

    #@16
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@19
    move-result-object p2

    #@1a
    .line 196
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@1d
    move-result v0

    #@1e
    const/4 v1, 0x0

    #@1f
    :goto_1f
    if-ge v1, v0, :cond_97

    #@21
    .line 202
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@24
    move-result v2

    #@25
    .line 203
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_constraints:I

    #@27
    if-ne v2, v3, :cond_59

    #@29
    .line 204
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    #@2b
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2e
    move-result v2

    #@2f
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    #@31
    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@34
    move-result-object v2

    #@35
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    #@37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3e
    move-result-object v3

    #@3f
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    #@41
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@44
    const-string v3, "layout"

    #@46
    .line 208
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_94

    #@4c
    .line 209
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    #@4e
    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    #@51
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@53
    .line 213
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    #@55
    invoke-virtual {v2, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    #@58
    goto :goto_94

    #@59
    .line 223
    :cond_59
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightLessThan:I

    #@5b
    if-ne v2, v3, :cond_66

    #@5d
    .line 224
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    #@5f
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@62
    move-result v2

    #@63
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    #@65
    goto :goto_94

    #@66
    .line 225
    :cond_66
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightMoreThan:I

    #@68
    if-ne v2, v3, :cond_73

    #@6a
    .line 226
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    #@6c
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@6f
    move-result v2

    #@70
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    #@72
    goto :goto_94

    #@73
    .line 227
    :cond_73
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthLessThan:I

    #@75
    if-ne v2, v3, :cond_80

    #@77
    .line 228
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    #@79
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@7c
    move-result v2

    #@7d
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    #@7f
    goto :goto_94

    #@80
    .line 229
    :cond_80
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthMoreThan:I

    #@82
    if-ne v2, v3, :cond_8d

    #@84
    .line 230
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    #@86
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@89
    move-result v2

    #@8a
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    #@8c
    goto :goto_94

    #@8d
    :cond_8d
    const-string v2, "ConstraintLayoutStates"

    #@8f
    const-string v3, "Unknown tag"

    #@91
    .line 232
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    :cond_94
    :goto_94
    add-int/lit8 v1, v1, 0x1

    #@96
    goto :goto_1f

    #@97
    .line 235
    :cond_97
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@9a
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
    .line 258
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_10

    #@9
    .line 259
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    #@b
    cmpg-float v0, p1, v0

    #@d
    if-gez v0, :cond_10

    #@f
    return v1

    #@10
    .line 261
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    #@12
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1f

    #@18
    .line 262
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    #@1a
    cmpg-float v0, p2, v0

    #@1c
    if-gez v0, :cond_1f

    #@1e
    return v1

    #@1f
    .line 264
    :cond_1f
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    #@21
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_2e

    #@27
    .line 265
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    #@29
    cmpl-float p1, p1, v0

    #@2b
    if-lez p1, :cond_2e

    #@2d
    return v1

    #@2e
    .line 267
    :cond_2e
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    #@30
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@33
    move-result p1

    #@34
    if-nez p1, :cond_3d

    #@36
    .line 268
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

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

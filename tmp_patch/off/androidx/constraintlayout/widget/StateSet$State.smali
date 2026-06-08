.class Landroidx/constraintlayout/widget/StateSet$State;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/StateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field mConstraintID:I

.field mId:I

.field mIsLayout:Z

.field mVariants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/StateSet$Variant;",
            ">;"
        }
    .end annotation
.end field


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
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 251
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    #@a
    const/4 v0, -0x1

    #@b
    .line 252
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    #@d
    const/4 v0, 0x0

    #@e
    .line 253
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mIsLayout:Z

    #@10
    .line 255
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@13
    move-result-object p2

    #@14
    .line 256
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->State:[I

    #@16
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@19
    move-result-object p2

    #@1a
    .line 257
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@1d
    move-result v1

    #@1e
    :goto_1e
    if-ge v0, v1, :cond_5e

    #@20
    .line 259
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@23
    move-result v2

    #@24
    .line 260
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->State_android_id:I

    #@26
    if-ne v2, v3, :cond_31

    #@28
    .line 261
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

    #@2a
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2d
    move-result v2

    #@2e
    iput v2, p0, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

    #@30
    goto :goto_5b

    #@31
    .line 262
    :cond_31
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->State_constraints:I

    #@33
    if-ne v2, v3, :cond_5b

    #@35
    .line 263
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    #@37
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3a
    move-result v2

    #@3b
    iput v2, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    #@3d
    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@40
    move-result-object v2

    #@41
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    #@43
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4a
    move-result-object v3

    #@4b
    iget v4, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    #@4d
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@50
    const-string v3, "layout"

    #@52
    .line 267
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_5b

    #@58
    const/4 v2, 0x1

    #@59
    .line 268
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/StateSet$State;->mIsLayout:Z

    #@5b
    :cond_5b
    :goto_5b
    add-int/lit8 v0, v0, 0x1

    #@5d
    goto :goto_1e

    #@5e
    .line 272
    :cond_5e
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@61
    return-void
.end method


# virtual methods
.method add(Landroidx/constraintlayout/widget/StateSet$Variant;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    #@0
    .line 276
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public findMatch(FF)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 280
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1b

    #@9
    .line 281
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/constraintlayout/widget/StateSet$Variant;

    #@11
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_18

    #@17
    return v0

    #@18
    :cond_18
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_1

    #@1b
    :cond_1b
    const/4 p1, -0x1

    #@1c
    return p1
.end method

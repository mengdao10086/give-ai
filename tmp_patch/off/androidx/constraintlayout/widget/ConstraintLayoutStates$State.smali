.class Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayoutStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field mConstraintID:I

.field mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field mId:I

.field mVariants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;",
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
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    #@a
    const/4 v0, -0x1

    #@b
    .line 142
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintID:I

    #@d
    .line 146
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@10
    move-result-object p2

    #@11
    .line 147
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->State:[I

    #@13
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@16
    move-result-object p2

    #@17
    .line 148
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@1a
    move-result v0

    #@1b
    const/4 v1, 0x0

    #@1c
    :goto_1c
    if-ge v1, v0, :cond_65

    #@1e
    .line 150
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@21
    move-result v2

    #@22
    .line 151
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->State_android_id:I

    #@24
    if-ne v2, v3, :cond_2f

    #@26
    .line 152
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mId:I

    #@28
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2b
    move-result v2

    #@2c
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mId:I

    #@2e
    goto :goto_62

    #@2f
    .line 153
    :cond_2f
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->State_constraints:I

    #@31
    if-ne v2, v3, :cond_62

    #@33
    .line 154
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintID:I

    #@35
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@38
    move-result v2

    #@39
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintID:I

    #@3b
    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3e
    move-result-object v2

    #@3f
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintID:I

    #@41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@48
    move-result-object v3

    #@49
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintID:I

    #@4b
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@4e
    const-string v3, "layout"

    #@50
    .line 158
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v2

    #@54
    if-eqz v2, :cond_62

    #@56
    .line 159
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    #@58
    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    #@5b
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@5d
    .line 160
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintID:I

    #@5f
    invoke-virtual {v2, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    #@62
    :cond_62
    :goto_62
    add-int/lit8 v1, v1, 0x1

    #@64
    goto :goto_1c

    #@65
    .line 167
    :cond_65
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@68
    return-void
.end method


# virtual methods
.method add(Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;)V
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
    .line 171
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

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
    .line 175
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1b

    #@9
    .line 176
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    #@11
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

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

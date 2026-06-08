.class public Landroidx/constraintlayout/widget/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/StateSet$Variant;,
        Landroidx/constraintlayout/widget/StateSet$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ConstraintLayoutStates"


# instance fields
.field private mConstraintSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

.field mCurrentConstraintNumber:I

.field mCurrentStateId:I

.field mDefaultConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field mDefaultState:I

.field private mStateList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/StateSet$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 41
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    #@6
    .line 44
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    #@8
    .line 45
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    #@a
    .line 46
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    #@11
    .line 47
    new-instance v0, Landroid/util/SparseArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintSetMap:Landroid/util/SparseArray;

    #@18
    const/4 v0, 0x0

    #@19
    .line 48
    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    #@1b
    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/StateSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@1e
    return-void
.end method

.method private load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
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
    .line 70
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object v0

    #@4
    .line 71
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->StateSet:[I

    #@6
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x0

    #@f
    move v3, v2

    #@10
    :goto_10
    if-ge v3, v1, :cond_25

    #@12
    .line 75
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@15
    move-result v4

    #@16
    .line 76
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->StateSet_defaultState:I

    #@18
    if-ne v4, v5, :cond_22

    #@1a
    .line 77
    iget v5, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    #@1c
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1f
    move-result v4

    #@20
    iput v4, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    #@22
    :cond_22
    add-int/lit8 v3, v3, 0x1

    #@24
    goto :goto_10

    #@25
    .line 80
    :cond_25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@28
    .line 87
    :try_start_28
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@2b
    move-result v0
    :try_end_2c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_2c} :catch_a2
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_9d

    #@2c
    const/4 v1, 0x0

    #@2d
    :goto_2d
    const/4 v3, 0x1

    #@2e
    if-eq v0, v3, :cond_a6

    #@30
    if-eqz v0, :cond_95

    #@32
    const-string v4, "StateSet"

    #@34
    const/4 v5, 0x3

    #@35
    const/4 v6, 0x2

    #@36
    if-eq v0, v6, :cond_46

    #@38
    if-eq v0, v5, :cond_3b

    #@3a
    goto :goto_98

    #@3b
    .line 121
    :cond_3b
    :try_start_3b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_98

    #@45
    return-void

    #@46
    .line 96
    :cond_46
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@4d
    move-result v7

    #@4e
    sparse-switch v7, :sswitch_data_a8

    #@51
    goto :goto_77

    #@52
    :sswitch_52
    const-string v3, "Variant"

    #@54
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_77

    #@5a
    move v3, v5

    #@5b
    goto :goto_78

    #@5c
    :sswitch_5c
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_77

    #@62
    goto :goto_78

    #@63
    :sswitch_63
    const-string v3, "LayoutDescription"

    #@65
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v0

    #@69
    if-eqz v0, :cond_77

    #@6b
    move v3, v2

    #@6c
    goto :goto_78

    #@6d
    :sswitch_6d
    const-string v3, "State"

    #@6f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_77

    #@75
    move v3, v6

    #@76
    goto :goto_78

    #@77
    :cond_77
    :goto_77
    const/4 v3, -0x1

    #@78
    :goto_78
    if-eq v3, v6, :cond_88

    #@7a
    if-eq v3, v5, :cond_7d

    #@7c
    goto :goto_98

    #@7d
    .line 107
    :cond_7d
    new-instance v0, Landroidx/constraintlayout/widget/StateSet$Variant;

    #@7f
    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/widget/StateSet$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@82
    if-eqz v1, :cond_98

    #@84
    .line 109
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/StateSet$State;->add(Landroidx/constraintlayout/widget/StateSet$Variant;)V

    #@87
    goto :goto_98

    #@88
    .line 103
    :cond_88
    new-instance v1, Landroidx/constraintlayout/widget/StateSet$State;

    #@8a
    invoke-direct {v1, p1, p2}, Landroidx/constraintlayout/widget/StateSet$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@8d
    .line 104
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    #@8f
    iget v3, v1, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

    #@91
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@94
    goto :goto_98

    #@95
    .line 93
    :cond_95
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@98
    .line 89
    :cond_98
    :goto_98
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9b
    move-result v0
    :try_end_9c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b .. :try_end_9c} :catch_a2
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_9c} :catch_9d

    #@9c
    goto :goto_2d

    #@9d
    :catch_9d
    move-exception p1

    #@9e
    .line 138
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@a1
    goto :goto_a6

    #@a2
    :catch_a2
    move-exception p1

    #@a3
    .line 136
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    #@a6
    :cond_a6
    :goto_a6
    return-void

    #@a7
    nop

    #@a8
    :sswitch_data_a8
    .sparse-switch
        0x4c7d471 -> :sswitch_6d
        0x4d92b252 -> :sswitch_63
        0x526c4e31 -> :sswitch_5c
        0x7155a865 -> :sswitch_52
    .end sparse-switch
.end method


# virtual methods
.method public convertToConstraintSet(IIFF)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentConstrainSettId",
            "stateId",
            "width",
            "height"
        }
    .end annotation

    #@0
    .line 179
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/constraintlayout/widget/StateSet$State;

    #@8
    if-nez v0, :cond_b

    #@a
    return p2

    #@b
    :cond_b
    const/high16 p2, -0x40800000    # -1.0f

    #@d
    cmpl-float v1, p3, p2

    #@f
    if-eqz v1, :cond_3e

    #@11
    cmpl-float p2, p4, p2

    #@13
    if-nez p2, :cond_16

    #@15
    goto :goto_3e

    #@16
    .line 195
    :cond_16
    iget-object p2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    #@18
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object p2

    #@1c
    const/4 v1, 0x0

    #@1d
    :cond_1d
    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_36

    #@23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroidx/constraintlayout/widget/StateSet$Variant;

    #@29
    .line 196
    invoke-virtual {v2, p3, p4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_1d

    #@2f
    .line 197
    iget v1, v2, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    #@31
    if-ne p1, v1, :cond_34

    #@33
    return p1

    #@34
    :cond_34
    move-object v1, v2

    #@35
    goto :goto_1d

    #@36
    :cond_36
    if-eqz v1, :cond_3b

    #@38
    .line 204
    iget p1, v1, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    #@3a
    return p1

    #@3b
    .line 207
    :cond_3b
    iget p1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    #@3d
    return p1

    #@3e
    .line 184
    :cond_3e
    :goto_3e
    iget p2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    #@40
    if-ne p2, p1, :cond_43

    #@42
    return p1

    #@43
    .line 187
    :cond_43
    iget-object p2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    #@45
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object p2

    #@49
    :cond_49
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result p3

    #@4d
    if-eqz p3, :cond_5a

    #@4f
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object p3

    #@53
    check-cast p3, Landroidx/constraintlayout/widget/StateSet$Variant;

    #@55
    .line 188
    iget p3, p3, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    #@57
    if-ne p1, p3, :cond_49

    #@59
    return p1

    #@5a
    .line 192
    :cond_5a
    iget p1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    #@5c
    return p1
.end method

.method public needsToChange(IFF)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "width",
            "height"
        }
    .end annotation

    #@0
    .line 143
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, p1, :cond_6

    #@5
    return v1

    #@6
    :cond_6
    const/4 v2, -0x1

    #@7
    const/4 v3, 0x0

    #@8
    if-ne p1, v2, :cond_11

    #@a
    .line 147
    iget-object p1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    #@c
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    goto :goto_17

    #@11
    :cond_11
    iget-object p1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    #@13
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    :goto_17
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$State;

    #@19
    .line 149
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    #@1b
    if-eq v0, v2, :cond_2e

    #@1d
    .line 150
    iget-object v0, p1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    #@1f
    iget v2, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    #@21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroidx/constraintlayout/widget/StateSet$Variant;

    #@27
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2e

    #@2d
    return v3

    #@2e
    .line 155
    :cond_2e
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    #@30
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    #@33
    move-result p1

    #@34
    if-ne v0, p1, :cond_37

    #@36
    return v3

    #@37
    :cond_37
    return v1
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintsChangedListener"
        }
    .end annotation

    #@0
    .line 162
    iput-object p1, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    #@2
    return-void
.end method

.method public stateGetConstraintID(III)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "width",
            "height"
        }
    .end annotation

    #@0
    int-to-float p2, p2

    #@1
    int-to-float p3, p3

    #@2
    const/4 v0, -0x1

    #@3
    .line 166
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/StateSet;->updateConstraints(IIFF)I

    #@6
    move-result p1

    #@7
    return p1
.end method

.method public updateConstraints(IIFF)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentId",
            "id",
            "width",
            "height"
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p1, p2, :cond_46

    #@3
    if-ne p2, v0, :cond_f

    #@5
    .line 215
    iget-object p2, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@b
    move-result-object p2

    #@c
    check-cast p2, Landroidx/constraintlayout/widget/StateSet$State;

    #@e
    goto :goto_19

    #@f
    .line 217
    :cond_f
    iget-object p2, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    #@11
    iget v1, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    #@13
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object p2

    #@17
    check-cast p2, Landroidx/constraintlayout/widget/StateSet$State;

    #@19
    :goto_19
    if-nez p2, :cond_1c

    #@1b
    return v0

    #@1c
    .line 223
    :cond_1c
    iget v1, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    #@1e
    if-eq v1, v0, :cond_2f

    #@20
    .line 224
    iget-object v1, p2, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroidx/constraintlayout/widget/StateSet$Variant;

    #@28
    invoke-virtual {v1, p3, p4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_2f

    #@2e
    return p1

    #@2f
    .line 228
    :cond_2f
    invoke-virtual {p2, p3, p4}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    #@32
    move-result p3

    #@33
    if-ne p1, p3, :cond_36

    #@35
    return p1

    #@36
    :cond_36
    if-ne p3, v0, :cond_3b

    #@38
    .line 233
    iget p1, p2, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    #@3a
    goto :goto_45

    #@3b
    :cond_3b
    iget-object p1, p2, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object p1

    #@41
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$Variant;

    #@43
    iget p1, p1, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    #@45
    :goto_45
    return p1

    #@46
    .line 236
    :cond_46
    iget-object p1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    #@48
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object p1

    #@4c
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$State;

    #@4e
    if-nez p1, :cond_51

    #@50
    return v0

    #@51
    .line 240
    :cond_51
    invoke-virtual {p1, p3, p4}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    #@54
    move-result p2

    #@55
    if-ne p2, v0, :cond_5a

    #@57
    .line 241
    iget p1, p1, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    #@59
    goto :goto_64

    #@5a
    :cond_5a
    iget-object p1, p1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object p1

    #@60
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$Variant;

    #@62
    iget p1, p1, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    #@64
    :goto_64
    return p1
.end method

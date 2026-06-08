.class public Landroidx/constraintlayout/widget/ConstraintLayoutStates;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;,
        Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ConstraintLayoutStates"


# instance fields
.field private final mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

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

.field private mStateList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "layout",
            "resourceID"
        }
    .end annotation

    #@0
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 42
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    #@6
    .line 43
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    #@8
    .line 44
    new-instance v0, Landroid/util/SparseArray;

    #@a
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@d
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    #@f
    .line 45
    new-instance v0, Landroid/util/SparseArray;

    #@11
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@14
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintSetMap:Landroid/util/SparseArray;

    #@16
    const/4 v0, 0x0

    #@17
    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    #@19
    .line 49
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@1b
    .line 50
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->load(Landroid/content/Context;I)V

    #@1e
    return-void
.end method

.method private load(Landroid/content/Context;I)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceId"
        }
    .end annotation

    #@0
    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 286
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@7
    move-result-object p2

    #@8
    .line 292
    :try_start_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x0

    #@d
    :goto_d
    const/4 v2, 0x1

    #@e
    if-eq v0, v2, :cond_8b

    #@10
    if-eqz v0, :cond_7a

    #@12
    const/4 v3, 0x2

    #@13
    if-eq v0, v3, :cond_17

    #@15
    goto/16 :goto_7d

    #@17
    .line 300
    :cond_17
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 301
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@1e
    move-result v4

    #@1f
    const/4 v5, 0x4

    #@20
    const/4 v6, 0x3

    #@21
    sparse-switch v4, :sswitch_data_8c

    #@24
    goto :goto_56

    #@25
    :sswitch_25
    const-string v2, "Variant"

    #@27
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_56

    #@2d
    move v2, v6

    #@2e
    goto :goto_57

    #@2f
    :sswitch_2f
    const-string v2, "layoutDescription"

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_56

    #@37
    const/4 v2, 0x0

    #@38
    goto :goto_57

    #@39
    :sswitch_39
    const-string v4, "StateSet"

    #@3b
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_56

    #@41
    goto :goto_57

    #@42
    :sswitch_42
    const-string v2, "State"

    #@44
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_56

    #@4a
    move v2, v3

    #@4b
    goto :goto_57

    #@4c
    :sswitch_4c
    const-string v2, "ConstraintSet"

    #@4e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_56

    #@54
    move v2, v5

    #@55
    goto :goto_57

    #@56
    :cond_56
    :goto_56
    const/4 v2, -0x1

    #@57
    :goto_57
    if-eq v2, v3, :cond_6d

    #@59
    if-eq v2, v6, :cond_62

    #@5b
    if-eq v2, v5, :cond_5e

    #@5d
    goto :goto_7d

    #@5e
    .line 317
    :cond_5e
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@61
    goto :goto_7d

    #@62
    .line 311
    :cond_62
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    #@64
    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@67
    if-eqz v1, :cond_7d

    #@69
    .line 313
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->add(Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;)V

    #@6c
    goto :goto_7d

    #@6d
    .line 307
    :cond_6d
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    #@6f
    invoke-direct {v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@72
    .line 308
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    #@74
    iget v2, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mId:I

    #@76
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@79
    goto :goto_7d

    #@7a
    .line 297
    :cond_7a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@7d
    .line 294
    :cond_7d
    :goto_7d
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@80
    move-result v0
    :try_end_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_81} :catch_87
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_81} :catch_82

    #@81
    goto :goto_d

    #@82
    :catch_82
    move-exception p1

    #@83
    .line 344
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@86
    goto :goto_8b

    #@87
    :catch_87
    move-exception p1

    #@88
    .line 342
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    #@8b
    :cond_8b
    :goto_8b
    return-void

    #@8c
    :sswitch_data_8c
    .sparse-switch
        -0x50764adb -> :sswitch_4c
        0x4c7d471 -> :sswitch_42
        0x526c4e31 -> :sswitch_39
        0x62ce7272 -> :sswitch_2f
        0x7155a865 -> :sswitch_25
    .end sparse-switch
.end method

.method private parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
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
    .line 349
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    #@5
    .line 350
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    :goto_a
    if-ge v2, v1, :cond_68

    #@c
    .line 352
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 353
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    if-eqz v3, :cond_65

    #@16
    if-nez v4, :cond_19

    #@18
    goto :goto_65

    #@19
    :cond_19
    const-string v5, "id"

    #@1b
    .line 355
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_65

    #@21
    const-string v1, "/"

    #@23
    .line 357
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@26
    move-result v1

    #@27
    const/4 v2, -0x1

    #@28
    const/4 v3, 0x1

    #@29
    if-eqz v1, :cond_43

    #@2b
    const/16 v1, 0x2f

    #@2d
    .line 358
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    #@30
    move-result v1

    #@31
    add-int/2addr v1, v3

    #@32
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v6, v1, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@41
    move-result v1

    #@42
    goto :goto_44

    #@43
    :cond_43
    move v1, v2

    #@44
    :goto_44
    if-ne v1, v2, :cond_5c

    #@46
    .line 363
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@49
    move-result v2

    #@4a
    if-le v2, v3, :cond_55

    #@4c
    .line 364
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@53
    move-result v1

    #@54
    goto :goto_5c

    #@55
    :cond_55
    const-string v2, "ConstraintLayoutStates"

    #@57
    const-string v3, "error in parsing id"

    #@59
    .line 366
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 369
    :cond_5c
    :goto_5c
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@5f
    .line 373
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintSetMap:Landroid/util/SparseArray;

    #@61
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@64
    goto :goto_68

    #@65
    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    #@67
    goto :goto_a

    #@68
    :cond_68
    :goto_68
    return-void
.end method


# virtual methods
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
    .line 54
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

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
    .line 58
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    #@c
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    goto :goto_17

    #@11
    :cond_11
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    #@13
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    :goto_17
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    #@19
    .line 60
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    #@1b
    if-eq v0, v2, :cond_2e

    #@1d
    .line 61
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    #@1f
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    #@21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    #@27
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2e

    #@2d
    return v3

    #@2e
    .line 66
    :cond_2e
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    #@30
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->findMatch(FF)I

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
    .line 133
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    #@2
    return-void
.end method

.method public updateConstraints(IFF)V
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
    .line 73
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, p1, :cond_6e

    #@5
    if-ne p1, v1, :cond_11

    #@7
    .line 76
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    #@9
    const/4 v0, 0x0

    #@a
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    #@10
    goto :goto_19

    #@11
    .line 78
    :cond_11
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    #@13
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    #@19
    .line 81
    :goto_19
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    #@1b
    if-eq v0, v1, :cond_2e

    #@1d
    .line 82
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    #@1f
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    #@21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    #@27
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2e

    #@2d
    return-void

    #@2e
    .line 86
    :cond_2e
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->findMatch(FF)I

    #@31
    move-result p2

    #@32
    .line 87
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    #@34
    if-ne p3, p2, :cond_37

    #@36
    return-void

    #@37
    :cond_37
    if-ne p2, v1, :cond_3c

    #@39
    .line 91
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mDefaultConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@3b
    goto :goto_46

    #@3c
    .line 92
    :cond_3c
    iget-object p3, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object p3

    #@42
    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    #@44
    iget-object p3, p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@46
    :goto_46
    if-ne p2, v1, :cond_4b

    #@48
    .line 93
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintID:I

    #@4a
    goto :goto_55

    #@4b
    .line 94
    :cond_4b
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@50
    move-result-object p1

    #@51
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    #@53
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    #@55
    :goto_55
    if-nez p3, :cond_58

    #@57
    return-void

    #@58
    .line 98
    :cond_58
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    #@5a
    .line 99
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    #@5c
    if-eqz p2, :cond_61

    #@5e
    .line 100
    invoke-virtual {p2, v1, p1}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->preLayoutChange(II)V

    #@61
    .line 102
    :cond_61
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@63
    invoke-virtual {p3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@66
    .line 103
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    #@68
    if-eqz p2, :cond_da

    #@6a
    .line 104
    invoke-virtual {p2, v1, p1}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->postLayoutChange(II)V

    #@6d
    goto :goto_da

    #@6e
    .line 108
    :cond_6e
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    #@70
    .line 109
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    #@72
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@75
    move-result-object v0

    #@76
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    #@78
    .line 110
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->findMatch(FF)I

    #@7b
    move-result v2

    #@7c
    if-ne v2, v1, :cond_81

    #@7e
    .line 111
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@80
    goto :goto_8b

    #@81
    .line 112
    :cond_81
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    #@83
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@86
    move-result-object v3

    #@87
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    #@89
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@8b
    :goto_8b
    if-ne v2, v1, :cond_90

    #@8d
    .line 113
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintID:I

    #@8f
    goto :goto_9a

    #@90
    .line 114
    :cond_90
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    #@92
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@95
    move-result-object v0

    #@96
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    #@98
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    #@9a
    :goto_9a
    if-nez v3, :cond_c5

    #@9c
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    #@9e
    const-string v1, "NO Constraint set found ! id="

    #@a0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    move-result-object p1

    #@a7
    const-string v0, ", dim ="

    #@a9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object p1

    #@ad
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@b0
    move-result-object p1

    #@b1
    const-string p2, ", "

    #@b3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object p1

    #@b7
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@ba
    move-result-object p1

    #@bb
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object p1

    #@bf
    const-string p2, "ConstraintLayoutStates"

    #@c1
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c4
    return-void

    #@c5
    .line 120
    :cond_c5
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    #@c7
    .line 121
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    #@c9
    if-eqz p2, :cond_ce

    #@cb
    .line 122
    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->preLayoutChange(II)V

    #@ce
    .line 124
    :cond_ce
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    #@d0
    invoke-virtual {v3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@d3
    .line 125
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    #@d5
    if-eqz p2, :cond_da

    #@d7
    .line 126
    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->postLayoutChange(II)V

    #@da
    :cond_da
    :goto_da
    return-void
.end method

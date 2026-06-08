.class public abstract Landroidx/constraintlayout/widget/ConstraintHelper;
.super Landroid/view/View;
.source "ConstraintHelper.java"


# instance fields
.field protected mCount:I

.field protected mHelperWidget:Landroidx/constraintlayout/core/widgets/Helper;

.field protected mIds:[I

.field protected mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mReferenceIds:Ljava/lang/String;

.field protected mReferenceTags:Ljava/lang/String;

.field protected mUseViewMeasure:Z

.field private mViews:[Landroid/view/View;

.field protected myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    #@0
    .line 99
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@3
    const/16 v0, 0x20

    #@5
    new-array v0, v0, [I

    #@7
    .line 64
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@9
    const/4 v0, 0x0

    #@a
    .line 81
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    #@c
    const/4 v0, 0x0

    #@d
    .line 94
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    #@f
    .line 96
    new-instance v1, Ljava/util/HashMap;

    #@11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@14
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    #@16
    .line 100
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    #@18
    .line 101
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    #@1b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/16 v0, 0x20

    #@5
    new-array v0, v0, [I

    #@7
    .line 64
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@9
    const/4 v0, 0x0

    #@a
    .line 81
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    #@c
    const/4 v0, 0x0

    #@d
    .line 94
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    #@f
    .line 96
    new-instance v0, Ljava/util/HashMap;

    #@11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    #@16
    .line 106
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    #@18
    .line 107
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    #@1b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    #@0
    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/16 p3, 0x20

    #@5
    new-array p3, p3, [I

    #@7
    .line 64
    iput-object p3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@9
    const/4 p3, 0x0

    #@a
    .line 81
    iput-boolean p3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    #@c
    const/4 p3, 0x0

    #@d
    .line 94
    iput-object p3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    #@f
    .line 96
    new-instance p3, Ljava/util/HashMap;

    #@11
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    #@14
    iput-object p3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    #@16
    .line 112
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    #@18
    .line 113
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    #@1b
    return-void
.end method

.method private addID(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idString"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_4d

    #@2
    .line 271
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    goto :goto_4d

    #@9
    .line 274
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    #@b
    if-nez v0, :cond_e

    #@d
    return-void

    #@e
    .line 278
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@11
    move-result-object p1

    #@12
    .line 281
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    #@15
    move-result-object v0

    #@16
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@18
    if-eqz v0, :cond_20

    #@1a
    .line 282
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@20
    .line 284
    :cond_20
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->findId(Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_33

    #@26
    .line 286
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    #@28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 287
    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->addRscID(I)V

    #@32
    goto :goto_4d

    #@33
    .line 289
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    const-string v1, "Could not find id of \""

    #@37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p1

    #@3e
    const-string v0, "\""

    #@40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object p1

    #@44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object p1

    #@48
    const-string v0, "ConstraintHelper"

    #@4a
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    :cond_4d
    :goto_4d
    return-void
.end method

.method private addRscID(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 222
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getId()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_7

    #@6
    return-void

    #@7
    .line 225
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@d
    array-length v2, v1

    #@e
    if-le v0, v2, :cond_19

    #@10
    .line 226
    array-length v0, v1

    #@11
    mul-int/lit8 v0, v0, 0x2

    #@13
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@19
    .line 228
    :cond_19
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@1b
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@1d
    aput p1, v0, v1

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    .line 229
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@23
    return-void
.end method

.method private addTag(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagString"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_7c

    #@2
    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    goto/16 :goto_7c

    #@a
    .line 300
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    #@c
    if-nez v0, :cond_f

    #@e
    return-void

    #@f
    .line 304
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    .line 307
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    #@16
    move-result-object v0

    #@17
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@19
    if-eqz v0, :cond_22

    #@1b
    .line 308
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@21
    goto :goto_23

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    :goto_23
    const-string v1, "ConstraintHelper"

    #@25
    if-nez v0, :cond_2d

    #@27
    const-string p1, "Parent not a ConstraintLayout"

    #@29
    .line 311
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    return-void

    #@2d
    .line 314
    :cond_2d
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    #@30
    move-result v2

    #@31
    const/4 v3, 0x0

    #@32
    :goto_32
    if-ge v3, v2, :cond_7c

    #@34
    .line 316
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@37
    move-result-object v4

    #@38
    .line 317
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3b
    move-result-object v5

    #@3c
    .line 318
    instance-of v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@3e
    if-eqz v6, :cond_79

    #@40
    .line 319
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@42
    .line 320
    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    #@44
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_79

    #@4a
    .line 321
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    #@4d
    move-result v5

    #@4e
    const/4 v6, -0x1

    #@4f
    if-ne v5, v6, :cond_72

    #@51
    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    #@53
    const-string v6, "to use ConstraintTag view "

    #@55
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@58
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    const-string v5, " must have an ID"

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    goto :goto_79

    #@72
    .line 324
    :cond_72
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    #@75
    move-result v4

    #@76
    invoke-direct {p0, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->addRscID(I)V

    #@79
    :cond_79
    :goto_79
    add-int/lit8 v3, v3, 0x1

    #@7b
    goto :goto_32

    #@7c
    :cond_7c
    :goto_7c
    return-void
.end method

.method private convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "referenceIdString"
        }
    .end annotation

    #@0
    const-string v0, ","

    #@2
    .line 603
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object p2

    #@6
    .line 604
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@9
    .line 605
    array-length p1, p2

    #@a
    new-array p1, p1, [I

    #@c
    const/4 v0, 0x0

    #@d
    move v1, v0

    #@e
    .line 607
    :goto_e
    array-length v2, p2

    #@f
    if-ge v0, v2, :cond_25

    #@11
    .line 608
    aget-object v2, p2, v0

    #@13
    .line 609
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 610
    invoke-direct {p0, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->findId(Ljava/lang/String;)I

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_22

    #@1d
    add-int/lit8 v3, v1, 0x1

    #@1f
    .line 612
    aput v2, p1, v1

    #@21
    move v1, v3

    #@22
    :cond_22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_e

    #@25
    .line 615
    :cond_25
    array-length p2, p2

    #@26
    if-eq v1, p2, :cond_2c

    #@28
    .line 616
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@2b
    move-result-object p1

    #@2c
    :cond_2c
    return-object p1
.end method

.method private findId(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "idString"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p2, :cond_39

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_39

    #@6
    .line 390
    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    #@8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v1

    #@c
    if-nez v1, :cond_f

    #@e
    return v0

    #@f
    .line 394
    :cond_f
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    #@12
    move-result v2

    #@13
    move v3, v0

    #@14
    :goto_14
    if-ge v3, v2, :cond_39

    #@16
    .line 396
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v4

    #@1a
    .line 397
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    #@1d
    move-result v5

    #@1e
    const/4 v6, -0x1

    #@1f
    if-eq v5, v6, :cond_36

    #@21
    .line 400
    :try_start_21
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    #@24
    move-result v5

    #@25
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@28
    move-result-object v5
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_29} :catch_2a

    #@29
    goto :goto_2b

    #@2a
    :catch_2a
    const/4 v5, 0x0

    #@2b
    .line 404
    :goto_2b
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_36

    #@31
    .line 405
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    #@34
    move-result p1

    #@35
    return p1

    #@36
    :cond_36
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_14

    #@39
    :cond_39
    :goto_39
    return v0
.end method

.method private findId(Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "referenceId"
        }
    .end annotation

    #@0
    .line 339
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_10

    #@9
    .line 340
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@f
    goto :goto_11

    #@10
    :cond_10
    move-object v0, v1

    #@11
    .line 345
    :goto_11
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->isInEditMode()Z

    #@14
    move-result v2

    #@15
    const/4 v3, 0x0

    #@16
    if-eqz v2, :cond_28

    #@18
    if-eqz v0, :cond_28

    #@1a
    .line 346
    invoke-virtual {v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    .line 347
    instance-of v4, v2, Ljava/lang/Integer;

    #@20
    if-eqz v4, :cond_28

    #@22
    .line 348
    check-cast v2, Ljava/lang/Integer;

    #@24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@27
    move-result v3

    #@28
    :cond_28
    if-nez v3, :cond_30

    #@2a
    if-eqz v0, :cond_30

    #@2c
    .line 355
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->findId(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    #@2f
    move-result v3

    #@30
    :cond_30
    if-nez v3, :cond_3c

    #@32
    .line 360
    :try_start_32
    const-class v0, Landroidx/constraintlayout/widget/R$id;

    #@34
    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@37
    move-result-object v0

    #@38
    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@3b
    move-result v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3c} :catch_3c

    #@3c
    :catch_3c
    :cond_3c
    if-nez v3, :cond_50

    #@3e
    .line 371
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    #@40
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@43
    move-result-object v0

    #@44
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->myContext:Landroid/content/Context;

    #@46
    .line 372
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    const-string v2, "id"

    #@4c
    .line 371
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    move-result v3

    #@50
    :cond_50
    return v3
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    if-ne p1, p0, :cond_3

    #@2
    return-void

    #@3
    .line 158
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    const-string v2, "ConstraintHelper"

    #@a
    if-ne v0, v1, :cond_12

    #@c
    const-string p1, "Views added to a ConstraintHelper need to have an id"

    #@e
    .line 159
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    return-void

    #@12
    .line 162
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@15
    move-result-object v0

    #@16
    if-nez v0, :cond_1e

    #@18
    const-string p1, "Views added to a ConstraintHelper need to have a parent"

    #@1a
    .line 163
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    return-void

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    .line 166
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    #@21
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@24
    move-result p1

    #@25
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->addRscID(I)V

    #@28
    .line 168
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->requestLayout()V

    #@2b
    return-void
.end method

.method protected applyLayoutFeatures()V
    .registers 3

    #@0
    .line 480
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 481
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@8
    if-eqz v1, :cond_f

    #@a
    .line 482
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    #@c
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->applyLayoutFeatures(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@f
    :cond_f
    return-void
.end method

.method protected applyLayoutFeatures(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    #@0
    .line 459
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getVisibility()I

    #@3
    move-result v0

    #@4
    .line 462
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getElevation()F

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    .line 464
    :goto_9
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@b
    if-ge v2, v3, :cond_2a

    #@d
    .line 465
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@f
    aget v3, v3, v2

    #@11
    .line 466
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    #@14
    move-result-object v3

    #@15
    if-eqz v3, :cond_27

    #@17
    .line 468
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    #@1a
    const/4 v4, 0x0

    #@1b
    cmpl-float v4, v1, v4

    #@1d
    if-lez v4, :cond_27

    #@1f
    .line 470
    invoke-virtual {v3}, Landroid/view/View;->getTranslationZ()F

    #@22
    move-result v4

    #@23
    add-float/2addr v4, v1

    #@24
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationZ(F)V

    #@27
    :cond_27
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_9

    #@2a
    :cond_2a
    return-void
.end method

.method protected applyLayoutFeaturesInConstraintSet(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    #@0
    return-void
.end method

.method public containsId(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 635
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@2
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    move v3, v2

    #@5
    :goto_5
    if-ge v3, v1, :cond_10

    #@7
    aget v4, v0, v3

    #@9
    if-ne v4, p1, :cond_d

    #@b
    const/4 v2, 0x1

    #@c
    goto :goto_10

    #@d
    :cond_d
    add-int/lit8 v3, v3, 0x1

    #@f
    goto :goto_5

    #@10
    :cond_10
    :goto_10
    return v2
.end method

.method public getReferencedIds()[I
    .registers 3

    #@0
    .line 204
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@2
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layout"
        }
    .end annotation

    #@0
    .line 538
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    #@2
    if-eqz v0, :cond_9

    #@4
    array-length v0, v0

    #@5
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@7
    if-eq v0, v1, :cond_f

    #@9
    .line 539
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@b
    new-array v0, v0, [Landroid/view/View;

    #@d
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    .line 542
    :goto_10
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@12
    if-ge v0, v1, :cond_23

    #@14
    .line 543
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@16
    aget v1, v1, v0

    #@18
    .line 544
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    #@1a
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    #@1d
    move-result-object v1

    #@1e
    aput-object v1, v2, v0

    #@20
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_10

    #@23
    .line 546
    :cond_23
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mViews:[Landroid/view/View;

    #@25
    return-object p1
.end method

.method public indexFromId(I)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 646
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@2
    array-length v1, v0

    #@3
    const/4 v2, -0x1

    #@4
    const/4 v3, 0x0

    #@5
    :goto_5
    if-ge v3, v1, :cond_11

    #@7
    aget v4, v0, v3

    #@9
    add-int/lit8 v2, v2, 0x1

    #@b
    if-ne v4, p1, :cond_e

    #@d
    return v2

    #@e
    :cond_e
    add-int/lit8 v3, v3, 0x1

    #@10
    goto :goto_5

    #@11
    :cond_11
    return v2
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_38

    #@2
    .line 121
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    #@8
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object p1

    #@c
    .line 122
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@f
    move-result v0

    #@10
    const/4 v1, 0x0

    #@11
    :goto_11
    if-ge v1, v0, :cond_35

    #@13
    .line 124
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@16
    move-result v2

    #@17
    .line 125
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraint_referenced_ids:I

    #@19
    if-ne v2, v3, :cond_25

    #@1b
    .line 126
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    #@21
    .line 127
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    #@24
    goto :goto_32

    #@25
    .line 128
    :cond_25
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraint_referenced_tags:I

    #@27
    if-ne v2, v3, :cond_32

    #@29
    .line 129
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceTags:Ljava/lang/String;

    #@2f
    .line 130
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferenceTags(Ljava/lang/String;)V

    #@32
    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_11

    #@35
    .line 133
    :cond_35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@38
    :cond_38
    return-void
.end method

.method public loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "constraint",
            "child",
            "layoutParams",
            "mapIdToWidget"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            "Landroidx/constraintlayout/core/widgets/HelperWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 578
    iget-object p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2
    iget-object p3, p3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@4
    if-eqz p3, :cond_e

    #@6
    .line 579
    iget-object p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@8
    iget-object p3, p3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@a
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    #@d
    goto :goto_30

    #@e
    .line 580
    :cond_e
    iget-object p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@10
    iget-object p3, p3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    #@12
    if-eqz p3, :cond_30

    #@14
    .line 581
    iget-object p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@16
    iget-object p3, p3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    #@18
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@1b
    move-result p3

    #@1c
    if-lez p3, :cond_2b

    #@1e
    .line 582
    iget-object p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@20
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@22
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    #@24
    invoke-direct {p0, p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    #@27
    move-result-object v0

    #@28
    iput-object v0, p3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@2a
    goto :goto_30

    #@2b
    .line 585
    :cond_2b
    iget-object p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@2d
    const/4 v0, 0x0

    #@2e
    iput-object v0, p3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@30
    :cond_30
    :goto_30
    if-eqz p2, :cond_57

    #@32
    .line 589
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->removeAllIds()V

    #@35
    .line 590
    iget-object p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@37
    iget-object p3, p3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@39
    if-eqz p3, :cond_57

    #@3b
    const/4 p3, 0x0

    #@3c
    .line 591
    :goto_3c
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@3e
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@40
    array-length v0, v0

    #@41
    if-ge p3, v0, :cond_57

    #@43
    .line 592
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    #@45
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    #@47
    aget v0, v0, p3

    #@49
    .line 593
    invoke-virtual {p4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@4f
    if-eqz v0, :cond_54

    #@51
    .line 595
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/HelperWidget;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@54
    :cond_54
    add-int/lit8 p3, p3, 0x1

    #@56
    goto :goto_3c

    #@57
    :cond_57
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 139
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@3
    .line 140
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 141
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    #@a
    .line 143
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceTags:Ljava/lang/String;

    #@c
    if-eqz v0, :cond_11

    #@e
    .line 144
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferenceTags(Ljava/lang/String;)V

    #@11
    :cond_11
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    #@0
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    #@0
    .line 245
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 246
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    #@7
    goto :goto_c

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    .line 248
    invoke-virtual {p0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setMeasuredDimension(II)V

    #@c
    :goto_c
    return-void
.end method

.method public removeView(Landroid/view/View;)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-ne p1, v0, :cond_8

    #@7
    return v0

    #@8
    :cond_8
    const/4 v1, 0x0

    #@9
    .line 183
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    #@b
    const/4 v1, 0x0

    #@c
    move v2, v1

    #@d
    .line 184
    :goto_d
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@f
    if-ge v2, v3, :cond_37

    #@11
    .line 185
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@13
    aget v3, v3, v2

    #@15
    if-ne v3, p1, :cond_34

    #@17
    move p1, v2

    #@18
    .line 187
    :goto_18
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@1a
    add-int/lit8 v3, v0, -0x1

    #@1c
    if-ge p1, v3, :cond_28

    #@1e
    .line 188
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@20
    add-int/lit8 v3, p1, 0x1

    #@22
    aget v4, v0, v3

    #@24
    aput v4, v0, p1

    #@26
    move p1, v3

    #@27
    goto :goto_18

    #@28
    .line 190
    :cond_28
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@2a
    add-int/lit8 v3, v0, -0x1

    #@2c
    aput v1, p1, v3

    #@2e
    add-int/lit8 v0, v0, -0x1

    #@30
    .line 191
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@32
    move v0, v2

    #@33
    goto :goto_37

    #@34
    :cond_34
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_d

    #@37
    .line 195
    :cond_37
    :goto_37
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->requestLayout()V

    #@3a
    return v0
.end method

.method public resolveRtl(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widget",
            "isRtl"
        }
    .end annotation

    #@0
    return-void
.end method

.method protected setIds(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idList"
        }
    .end annotation

    #@0
    .line 416
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    #@2
    if-nez p1, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    .line 421
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@8
    :goto_8
    const/16 v1, 0x2c

    #@a
    .line 423
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    #@d
    move-result v1

    #@e
    const/4 v2, -0x1

    #@f
    if-ne v1, v2, :cond_19

    #@11
    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->addID(Ljava/lang/String;)V

    #@18
    return-void

    #@19
    .line 428
    :cond_19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->addID(Ljava/lang/String;)V

    #@20
    add-int/lit8 v0, v1, 0x1

    #@22
    goto :goto_8
.end method

.method protected setReferenceTags(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagList"
        }
    .end annotation

    #@0
    .line 437
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceTags:Ljava/lang/String;

    #@2
    if-nez p1, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    .line 442
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@8
    :goto_8
    const/16 v1, 0x2c

    #@a
    .line 444
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    #@d
    move-result v1

    #@e
    const/4 v2, -0x1

    #@f
    if-ne v1, v2, :cond_19

    #@11
    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->addTag(Ljava/lang/String;)V

    #@18
    return-void

    #@19
    .line 449
    :cond_19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->addTag(Ljava/lang/String;)V

    #@20
    add-int/lit8 v0, v1, 0x1

    #@22
    goto :goto_8
.end method

.method public setReferencedIds([I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 211
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    #@3
    const/4 v0, 0x0

    #@4
    .line 212
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@6
    .line 213
    :goto_6
    array-length v1, p1

    #@7
    if-ge v0, v1, :cond_11

    #@9
    .line 214
    aget v1, p1, v0

    #@b
    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->addRscID(I)V

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_6

    #@11
    :cond_11
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "tag"
        }
    .end annotation

    #@0
    .line 627
    invoke-super {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@3
    if-nez p2, :cond_c

    #@5
    .line 628
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    #@7
    if-nez p2, :cond_c

    #@9
    .line 629
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->addRscID(I)V

    #@c
    :cond_c
    return-void
.end method

.method public updatePostConstraints(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    #@0
    return-void
.end method

.method public updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    #@0
    return-void
.end method

.method public updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    #@0
    return-void
.end method

.method public updatePreDraw(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    #@0
    return-void
.end method

.method public updatePreLayout(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/Helper;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "helper",
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/widgets/Helper;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 529
    invoke-interface {p2}, Landroidx/constraintlayout/core/widgets/Helper;->removeAllIds()V

    #@3
    const/4 p1, 0x0

    #@4
    .line 530
    :goto_4
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@6
    if-ge p1, v0, :cond_18

    #@8
    .line 531
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@a
    aget v0, v0, p1

    #@c
    .line 532
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@12
    invoke-interface {p2, v0}, Landroidx/constraintlayout/core/widgets/Helper;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@15
    add-int/lit8 p1, p1, 0x1

    #@17
    goto :goto_4

    #@18
    :cond_18
    return-void
.end method

.method public updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    #@0
    .line 498
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->isInEditMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 499
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    #@8
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    #@b
    .line 501
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/core/widgets/Helper;

    #@d
    if-nez v0, :cond_10

    #@f
    return-void

    #@10
    .line 504
    :cond_10
    invoke-interface {v0}, Landroidx/constraintlayout/core/widgets/Helper;->removeAllIds()V

    #@13
    const/4 v0, 0x0

    #@14
    .line 505
    :goto_14
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    #@16
    if-ge v0, v1, :cond_53

    #@18
    .line 506
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@1a
    aget v1, v1, v0

    #@1c
    .line 507
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    #@1f
    move-result-object v2

    #@20
    if-nez v2, :cond_45

    #@22
    .line 511
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    #@24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Ljava/lang/String;

    #@2e
    .line 512
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->findId(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_45

    #@34
    .line 514
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    #@36
    aput v3, v2, v0

    #@38
    .line 515
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mMap:Ljava/util/HashMap;

    #@3a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 516
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    #@44
    move-result-object v2

    #@45
    :cond_45
    if-eqz v2, :cond_50

    #@47
    .line 520
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/core/widgets/Helper;

    #@49
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@4c
    move-result-object v2

    #@4d
    invoke-interface {v1, v2}, Landroidx/constraintlayout/core/widgets/Helper;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@50
    :cond_50
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_14

    #@53
    .line 523
    :cond_53
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/core/widgets/Helper;

    #@55
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@57
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/widgets/Helper;->updateConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@5a
    return-void
.end method

.method public validateParams()V
    .registers 3

    #@0
    .line 257
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/core/widgets/Helper;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 260
    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@8
    move-result-object v0

    #@9
    .line 261
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@b
    if-eqz v1, :cond_15

    #@d
    .line 262
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@f
    .line 263
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/core/widgets/Helper;

    #@11
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@13
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@15
    :cond_15
    return-void
.end method

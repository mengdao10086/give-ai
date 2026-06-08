.class Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
.super Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/StateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListState"
.end annotation


# instance fields
.field mStateSets:[[I


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V
    .registers 4

    #@0
    .line 333
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;Landroidx/appcompat/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    #@3
    if-eqz p1, :cond_a

    #@5
    .line 336
    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@7
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@9
    goto :goto_12

    #@a
    .line 338
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->getCapacity()I

    #@d
    move-result p1

    #@e
    new-array p1, p1, [[I

    #@10
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@12
    :goto_12
    return-void
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;)I
    .registers 4

    #@0
    .line 352
    invoke-virtual {p0, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    #@3
    move-result p2

    #@4
    .line 353
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@6
    aput-object p1, v0, p2

    #@8
    return p2
.end method

.method public growArray(II)V
    .registers 5

    #@0
    .line 382
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    #@3
    .line 383
    new-array p2, p2, [[I

    #@5
    .line 384
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@b
    .line 385
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@d
    return-void
.end method

.method indexOfStateSet([I)I
    .registers 6

    #@0
    .line 358
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@2
    .line 359
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    :goto_7
    if-ge v2, v1, :cond_15

    #@9
    .line 361
    aget-object v3, v0, v2

    #@b
    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_12

    #@11
    return v2

    #@12
    :cond_12
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_7

    #@15
    :cond_15
    const/4 p1, -0x1

    #@16
    return p1
.end method

.method mutate()V
    .registers 4

    #@0
    .line 344
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@2
    array-length v1, v0

    #@3
    new-array v1, v1, [[I

    #@5
    .line 345
    array-length v0, v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_1d

    #@a
    .line 346
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@c
    aget-object v2, v2, v0

    #@e
    if-eqz v2, :cond_17

    #@10
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, [I

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 v2, 0x0

    #@18
    :goto_18
    aput-object v2, v1, v0

    #@1a
    add-int/lit8 v0, v0, -0x1

    #@1c
    goto :goto_8

    #@1d
    .line 348
    :cond_1d
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@1f
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 371
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 377
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable;

    #@2
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    #@5
    return-object v0
.end method

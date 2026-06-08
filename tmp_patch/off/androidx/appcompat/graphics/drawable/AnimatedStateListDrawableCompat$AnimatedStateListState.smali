.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;
.super Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatedStateListState"
.end annotation


# static fields
.field private static final REVERSED_BIT:J = 0x100000000L

.field private static final REVERSIBLE_FLAG_BIT:J = 0x200000000L


# instance fields
.field mStateIds:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTransitions:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V
    .registers 4

    #@0
    .line 636
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    #@3
    if-eqz p1, :cond_e

    #@5
    .line 639
    iget-object p2, p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    #@7
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    #@9
    .line 640
    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    #@b
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    #@d
    goto :goto_1c

    #@e
    .line 642
    :cond_e
    new-instance p1, Landroidx/collection/LongSparseArray;

    #@10
    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    #@13
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    #@15
    .line 643
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    #@17
    invoke-direct {p1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    #@1a
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    #@1c
    :goto_1c
    return-void
.end method

.method private static generateTransitionKey(II)J
    .registers 4

    #@0
    int-to-long v0, p0

    #@1
    const/16 p0, 0x20

    #@3
    shl-long/2addr v0, p0

    #@4
    int-to-long p0, p1

    #@5
    or-long/2addr p0, v0

    #@6
    return-wide p0
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;I)I
    .registers 4

    #@0
    .line 669
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    #@3
    move-result p1

    #@4
    .line 670
    iget-object p2, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    #@6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object p3

    #@a
    invoke-virtual {p2, p1, p3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    #@d
    return p1
.end method

.method addTransition(IILandroid/graphics/drawable/Drawable;Z)I
    .registers 14

    #@0
    .line 654
    invoke-super {p0, p3}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    #@3
    move-result p3

    #@4
    .line 655
    invoke-static {p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->generateTransitionKey(II)J

    #@7
    move-result-wide v0

    #@8
    if-eqz p4, :cond_10

    #@a
    const-wide v2, 0x200000000L

    #@f
    goto :goto_12

    #@10
    :cond_10
    const-wide/16 v2, 0x0

    #@12
    .line 660
    :goto_12
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    #@14
    int-to-long v5, p3

    #@15
    or-long v7, v5, v2

    #@17
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {v4, v0, v1, v7}, Landroidx/collection/LongSparseArray;->append(JLjava/lang/Object;)V

    #@1e
    if-eqz p4, :cond_34

    #@20
    .line 662
    invoke-static {p2, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->generateTransitionKey(II)J

    #@23
    move-result-wide p1

    #@24
    .line 663
    iget-object p4, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    #@26
    const-wide v0, 0x100000000L

    #@2b
    or-long/2addr v0, v5

    #@2c
    or-long/2addr v0, v2

    #@2d
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p4, p1, p2, v0}, Landroidx/collection/LongSparseArray;->append(JLjava/lang/Object;)V

    #@34
    :cond_34
    return p3
.end method

.method getKeyframeIdAt(I)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-gez p1, :cond_4

    #@3
    goto :goto_14

    #@4
    .line 683
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v1, p1, v0}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Ljava/lang/Integer;

    #@10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    :goto_14
    return v0
.end method

.method indexOfKeyframe([I)I
    .registers 2

    #@0
    .line 675
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    #@3
    move-result p1

    #@4
    if-ltz p1, :cond_7

    #@6
    return p1

    #@7
    .line 679
    :cond_7
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    #@9
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    #@c
    move-result p1

    #@d
    return p1
.end method

.method indexOfTransition(II)I
    .registers 6

    #@0
    .line 687
    invoke-static {p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->generateTransitionKey(II)J

    #@3
    move-result-wide p1

    #@4
    .line 688
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    #@6
    const-wide/16 v1, -0x1

    #@8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, p1, p2, v1}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Ljava/lang/Long;

    #@12
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@15
    move-result-wide p1

    #@16
    long-to-int p1, p1

    #@17
    return p1
.end method

.method isTransitionReversed(II)Z
    .registers 6

    #@0
    .line 692
    invoke-static {p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->generateTransitionKey(II)J

    #@3
    move-result-wide p1

    #@4
    .line 693
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    #@6
    const-wide/16 v1, -0x1

    #@8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, p1, p2, v1}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Ljava/lang/Long;

    #@12
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@15
    move-result-wide p1

    #@16
    const-wide v0, 0x100000000L

    #@1b
    and-long/2addr p1, v0

    #@1c
    const-wide/16 v0, 0x0

    #@1e
    cmp-long p1, p1, v0

    #@20
    if-eqz p1, :cond_24

    #@22
    const/4 p1, 0x1

    #@23
    goto :goto_25

    #@24
    :cond_24
    const/4 p1, 0x0

    #@25
    :goto_25
    return p1
.end method

.method mutate()V
    .registers 2

    #@0
    .line 649
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    #@2
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clone()Landroidx/collection/LongSparseArray;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    #@8
    .line 650
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    #@a
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mStateIds:Landroidx/collection/SparseArrayCompat;

    #@10
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 704
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 710
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    #@2
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;Landroid/content/res/Resources;)V

    #@5
    return-object v0
.end method

.method transitionHasReversibleFlag(II)Z
    .registers 6

    #@0
    .line 697
    invoke-static {p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->generateTransitionKey(II)J

    #@3
    move-result-wide p1

    #@4
    .line 698
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedStateListState;->mTransitions:Landroidx/collection/LongSparseArray;

    #@6
    const-wide/16 v1, -0x1

    #@8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, p1, p2, v1}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Ljava/lang/Long;

    #@12
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@15
    move-result-wide p1

    #@16
    const-wide v0, 0x200000000L

    #@1b
    and-long/2addr p1, v0

    #@1c
    const-wide/16 v0, 0x0

    #@1e
    cmp-long p1, p1, v0

    #@20
    if-eqz p1, :cond_24

    #@22
    const/4 p1, 0x1

    #@23
    goto :goto_25

    #@24
    :cond_24
    const/4 p1, 0x0

    #@25
    :goto_25
    return p1
.end method

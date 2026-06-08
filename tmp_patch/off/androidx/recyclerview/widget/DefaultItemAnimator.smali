.class public Landroidx/recyclerview/widget/DefaultItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;,
        Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    #@3
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    #@a
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    #@11
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    #@18
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    #@1f
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    #@26
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    #@2d
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    #@34
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    #@36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@39
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    #@3b
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    #@3d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@40
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    #@42
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    #@44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@47
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    #@49
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    #@4b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@4e
    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    #@50
    return-void
.end method

.method private animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6

    #@0
    .line 199
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@2
    .line 200
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@5
    move-result-object v1

    #@6
    .line 201
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b
    .line 202
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    #@e
    move-result-wide v2

    #@f
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@12
    move-result-object v2

    #@13
    const/4 v3, 0x0

    #@14
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@17
    move-result-object v2

    #@18
    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator$4;

    #@1a
    invoke-direct {v3, p0, p1, v1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator$4;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    #@1d
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@20
    move-result-object p1

    #@21
    .line 217
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    #@24
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    #@0
    .line 400
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    :goto_6
    if-ltz v0, :cond_22

    #@8
    .line 401
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    #@e
    .line 402
    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1f

    #@14
    .line 403
    iget-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@16
    if-nez v2, :cond_1f

    #@18
    iget-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@1a
    if-nez v2, :cond_1f

    #@1c
    .line 404
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@1f
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_6

    #@22
    :cond_22
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .registers 3

    #@0
    .line 411
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 412
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@6
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    #@9
    .line 414
    :cond_9
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@b
    if-eqz v0, :cond_12

    #@d
    .line 415
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@f
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    #@12
    :cond_12
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 7

    #@0
    .line 420
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    if-ne v0, p2, :cond_a

    #@7
    .line 421
    iput-object v2, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@9
    goto :goto_11

    #@a
    .line 422
    :cond_a
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@c
    if-ne v0, p2, :cond_27

    #@e
    .line 423
    iput-object v2, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@10
    move v3, v1

    #@11
    .line 428
    :goto_11
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@13
    const/high16 v0, 0x3f800000    # 1.0f

    #@15
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    #@18
    .line 429
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@1a
    const/4 v0, 0x0

    #@1b
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    #@1e
    .line 430
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@20
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    #@23
    .line 431
    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    #@26
    return v1

    #@27
    :cond_27
    return v3
.end method

.method private resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    #@0
    .line 522
    sget-object v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    if-nez v0, :cond_f

    #@4
    .line 523
    new-instance v0, Landroid/animation/ValueAnimator;

    #@6
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@c
    move-result-object v0

    #@d
    sput-object v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    #@f
    .line 525
    :cond_f
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@11
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@14
    move-result-object v0

    #@15
    sget-object v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    #@17
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@1a
    .line 526
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@1d
    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    #@0
    .line 222
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@3
    .line 223
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    #@9
    .line 224
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    const/4 p1, 0x1

    #@f
    return p1
.end method

.method animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 7

    #@0
    .line 229
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@2
    .line 230
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@5
    move-result-object v1

    #@6
    .line 231
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b
    const/high16 v2, 0x3f800000    # 1.0f

    #@d
    .line 232
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getAddDuration()J

    #@14
    move-result-wide v3

    #@15
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@18
    move-result-object v2

    #@19
    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator$5;

    #@1b
    invoke-direct {v3, p0, p1, v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator$5;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    #@1e
    .line 233
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@21
    move-result-object p1

    #@22
    .line 251
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    #@25
    return-void
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 16

    #@0
    if-ne p1, p2, :cond_d

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p3

    #@5
    move v3, p4

    #@6
    move v4, p5

    #@7
    move v5, p6

    #@8
    .line 324
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    #@b
    move-result p1

    #@c
    return p1

    #@d
    .line 326
    :cond_d
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@f
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    #@12
    move-result v0

    #@13
    .line 327
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@15
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    #@18
    move-result v1

    #@19
    .line 328
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@1b
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    #@1e
    move-result v2

    #@1f
    .line 329
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@22
    sub-int v3, p5, p3

    #@24
    int-to-float v3, v3

    #@25
    sub-float/2addr v3, v0

    #@26
    float-to-int v3, v3

    #@27
    sub-int v4, p6, p4

    #@29
    int-to-float v4, v4

    #@2a
    sub-float/2addr v4, v1

    #@2b
    float-to-int v4, v4

    #@2c
    .line 333
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@2e
    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    #@31
    .line 334
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@33
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    #@36
    .line 335
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@38
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    #@3b
    if-eqz p2, :cond_54

    #@3d
    .line 338
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@40
    .line 339
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@42
    neg-int v1, v3

    #@43
    int-to-float v1, v1

    #@44
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    #@47
    .line 340
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@49
    neg-int v1, v4

    #@4a
    int-to-float v1, v1

    #@4b
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    #@4e
    .line 341
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@50
    const/4 v1, 0x0

    #@51
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    #@54
    .line 343
    :cond_54
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    #@56
    new-instance v8, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    #@58
    move-object v1, v8

    #@59
    move-object v2, p1

    #@5a
    move-object v3, p2

    #@5b
    move v4, p3

    #@5c
    move v5, p4

    #@5d
    move v6, p5

    #@5e
    move v7, p6

    #@5f
    invoke-direct/range {v1 .. v7}, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    #@62
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@65
    const/4 p1, 0x1

    #@66
    return p1
.end method

.method animateChangeImpl(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .registers 8

    #@0
    .line 348
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_7

    #@5
    move-object v0, v1

    #@6
    goto :goto_9

    #@7
    .line 349
    :cond_7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@9
    .line 350
    :goto_9
    iget-object v2, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@b
    if-eqz v2, :cond_f

    #@d
    .line 351
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@f
    :cond_f
    const/4 v2, 0x0

    #@10
    if-eqz v0, :cond_47

    #@12
    .line 353
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@15
    move-result-object v3

    #@16
    .line 354
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    #@19
    move-result-wide v4

    #@1a
    .line 353
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@1d
    move-result-object v3

    #@1e
    .line 355
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    #@20
    iget-object v5, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@22
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    .line 356
    iget v4, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    #@27
    iget v5, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    #@29
    sub-int/2addr v4, v5

    #@2a
    int-to-float v4, v4

    #@2b
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    #@2e
    .line 357
    iget v4, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    #@30
    iget v5, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    #@32
    sub-int/2addr v4, v5

    #@33
    int-to-float v4, v4

    #@34
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    #@37
    .line 358
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@3a
    move-result-object v4

    #@3b
    new-instance v5, Landroidx/recyclerview/widget/DefaultItemAnimator$7;

    #@3d
    invoke-direct {v5, p0, p1, v3, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator$7;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    #@40
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@43
    move-result-object v0

    #@44
    .line 374
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    #@47
    :cond_47
    if-eqz v1, :cond_76

    #@49
    .line 377
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@4c
    move-result-object v0

    #@4d
    .line 378
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    #@4f
    iget-object v4, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@51
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54
    .line 379
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    #@5f
    move-result-wide v3

    #@60
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@63
    move-result-object v2

    #@64
    const/high16 v3, 0x3f800000    # 1.0f

    #@66
    .line 380
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@69
    move-result-object v2

    #@6a
    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator$8;

    #@6c
    invoke-direct {v3, p0, p1, v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator$8;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    #@6f
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@72
    move-result-object p1

    #@73
    .line 395
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    #@76
    :cond_76
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 14

    #@0
    .line 257
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@2
    .line 258
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@4
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    #@7
    move-result v1

    #@8
    float-to-int v1, v1

    #@9
    add-int v4, p2, v1

    #@b
    .line 259
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@d
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    #@10
    move-result p2

    #@11
    float-to-int p2, p2

    #@12
    add-int v5, p3, p2

    #@14
    .line 260
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@17
    sub-int p2, p4, v4

    #@19
    sub-int p3, p5, v5

    #@1b
    if-nez p2, :cond_24

    #@1d
    if-nez p3, :cond_24

    #@1f
    .line 264
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@22
    const/4 p1, 0x0

    #@23
    return p1

    #@24
    :cond_24
    if-eqz p2, :cond_2b

    #@26
    neg-int p2, p2

    #@27
    int-to-float p2, p2

    #@28
    .line 268
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    #@2b
    :cond_2b
    if-eqz p3, :cond_32

    #@2d
    neg-int p2, p3

    #@2e
    int-to-float p2, p2

    #@2f
    .line 271
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    #@32
    .line 273
    :cond_32
    iget-object p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    #@34
    new-instance p3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    #@36
    move-object v2, p3

    #@37
    move-object v3, p1

    #@38
    move v6, p4

    #@39
    move v7, p5

    #@3a
    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    #@3d
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@40
    const/4 p1, 0x1

    #@41
    return p1
.end method

.method animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .registers 13

    #@0
    .line 278
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@2
    sub-int v3, p4, p2

    #@4
    sub-int v5, p5, p3

    #@6
    const/4 p2, 0x0

    #@7
    if-eqz v3, :cond_10

    #@9
    .line 282
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@c
    move-result-object p3

    #@d
    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    #@10
    :cond_10
    if-eqz v5, :cond_19

    #@12
    .line 285
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@15
    move-result-object p3

    #@16
    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    #@19
    .line 290
    :cond_19
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@1c
    move-result-object v6

    #@1d
    .line 291
    iget-object p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    .line 292
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getMoveDuration()J

    #@25
    move-result-wide p2

    #@26
    invoke-virtual {v6, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@29
    move-result-object p2

    #@2a
    new-instance p3, Landroidx/recyclerview/widget/DefaultItemAnimator$6;

    #@2c
    move-object v0, p3

    #@2d
    move-object v1, p0

    #@2e
    move-object v2, p1

    #@2f
    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/DefaultItemAnimator$6;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    #@32
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    #@35
    move-result-object p1

    #@36
    .line 315
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    #@39
    return-void
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    #@0
    .line 193
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@3
    .line 194
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8
    const/4 p1, 0x1

    #@9
    return p1
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    #@0
    .line 665
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 p1, 0x1

    #@10
    :goto_10
    return p1
.end method

.method cancelAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 641
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    :goto_6
    if-ltz v0, :cond_1a

    #@8
    .line 642
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@e
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@10
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    #@17
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_6

    #@1a
    :cond_1a
    return-void
.end method

.method dispatchFinishedWhenDone()V
    .registers 2

    #@0
    .line 550
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_9

    #@6
    .line 551
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    #@9
    :cond_9
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 9

    #@0
    .line 437
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@2
    .line 439
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    #@9
    .line 441
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v1

    #@f
    add-int/lit8 v1, v1, -0x1

    #@11
    :goto_11
    const/4 v2, 0x0

    #@12
    if-ltz v1, :cond_31

    #@14
    .line 442
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    #@1c
    .line 443
    iget-object v3, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@1e
    if-ne v3, p1, :cond_2e

    #@20
    .line 444
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    #@23
    .line 445
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    #@26
    .line 446
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@29
    .line 447
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2e
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    #@30
    goto :goto_11

    #@31
    .line 450
    :cond_31
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    #@33
    invoke-direct {p0, v1, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@36
    .line 451
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@3b
    move-result v1

    #@3c
    const/high16 v3, 0x3f800000    # 1.0f

    #@3e
    if-eqz v1, :cond_46

    #@40
    .line 452
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    #@43
    .line 453
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@46
    .line 455
    :cond_46
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_54

    #@4e
    .line 456
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    #@51
    .line 457
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@54
    .line 460
    :cond_54
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    #@56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@59
    move-result v1

    #@5a
    add-int/lit8 v1, v1, -0x1

    #@5c
    :goto_5c
    if-ltz v1, :cond_77

    #@5e
    .line 461
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    #@60
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v4

    #@64
    check-cast v4, Ljava/util/ArrayList;

    #@66
    .line 462
    invoke-direct {p0, v4, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@69
    .line 463
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@6c
    move-result v4

    #@6d
    if-eqz v4, :cond_74

    #@6f
    .line 464
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    #@71
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@74
    :cond_74
    add-int/lit8 v1, v1, -0x1

    #@76
    goto :goto_5c

    #@77
    .line 467
    :cond_77
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7c
    move-result v1

    #@7d
    add-int/lit8 v1, v1, -0x1

    #@7f
    :goto_7f
    if-ltz v1, :cond_b9

    #@81
    .line 468
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    #@83
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@86
    move-result-object v4

    #@87
    check-cast v4, Ljava/util/ArrayList;

    #@89
    .line 469
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8c
    move-result v5

    #@8d
    add-int/lit8 v5, v5, -0x1

    #@8f
    :goto_8f
    if-ltz v5, :cond_b6

    #@91
    .line 470
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@94
    move-result-object v6

    #@95
    check-cast v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    #@97
    .line 471
    iget-object v6, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@99
    if-ne v6, p1, :cond_b3

    #@9b
    .line 472
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    #@9e
    .line 473
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    #@a1
    .line 474
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@a4
    .line 475
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@a7
    .line 476
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@aa
    move-result v4

    #@ab
    if-eqz v4, :cond_b6

    #@ad
    .line 477
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    #@af
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@b2
    goto :goto_b6

    #@b3
    :cond_b3
    add-int/lit8 v5, v5, -0x1

    #@b5
    goto :goto_8f

    #@b6
    :cond_b6
    :goto_b6
    add-int/lit8 v1, v1, -0x1

    #@b8
    goto :goto_7f

    #@b9
    .line 483
    :cond_b9
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    #@bb
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@be
    move-result v1

    #@bf
    add-int/lit8 v1, v1, -0x1

    #@c1
    :goto_c1
    if-ltz v1, :cond_e5

    #@c3
    .line 484
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    #@c5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c8
    move-result-object v2

    #@c9
    check-cast v2, Ljava/util/ArrayList;

    #@cb
    .line 485
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@ce
    move-result v4

    #@cf
    if-eqz v4, :cond_e2

    #@d1
    .line 486
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    #@d4
    .line 487
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@d7
    .line 488
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@da
    move-result v2

    #@db
    if-eqz v2, :cond_e2

    #@dd
    .line 489
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    #@df
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@e2
    :cond_e2
    add-int/lit8 v1, v1, -0x1

    #@e4
    goto :goto_c1

    #@e5
    .line 496
    :cond_e5
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    #@e7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@ea
    .line 502
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    #@ec
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@ef
    .line 508
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    #@f1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@f4
    .line 514
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    #@f6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@f9
    .line 518
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    #@fc
    return-void
.end method

.method public endAnimations()V
    .registers 8

    #@0
    .line 557
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    const/4 v1, 0x0

    #@9
    if-ltz v0, :cond_2a

    #@b
    .line 559
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    #@13
    .line 560
    iget-object v3, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@15
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@17
    .line 561
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    #@1a
    .line 562
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    #@1d
    .line 563
    iget-object v1, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@1f
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@22
    .line 564
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@27
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_8

    #@2a
    .line 566
    :cond_2a
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v0

    #@30
    add-int/lit8 v0, v0, -0x1

    #@32
    :goto_32
    if-ltz v0, :cond_47

    #@34
    .line 568
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3c
    .line 569
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@3f
    .line 570
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@44
    add-int/lit8 v0, v0, -0x1

    #@46
    goto :goto_32

    #@47
    .line 572
    :cond_47
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result v0

    #@4d
    add-int/lit8 v0, v0, -0x1

    #@4f
    :goto_4f
    const/high16 v2, 0x3f800000    # 1.0f

    #@51
    if-ltz v0, :cond_6b

    #@53
    .line 574
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@58
    move-result-object v3

    #@59
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@5b
    .line 575
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@5d
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    #@60
    .line 576
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@63
    .line 577
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    #@65
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@68
    add-int/lit8 v0, v0, -0x1

    #@6a
    goto :goto_4f

    #@6b
    .line 579
    :cond_6b
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    #@6d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@70
    move-result v0

    #@71
    add-int/lit8 v0, v0, -0x1

    #@73
    :goto_73
    if-ltz v0, :cond_83

    #@75
    .line 581
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v3

    #@7b
    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    #@7d
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    #@80
    add-int/lit8 v0, v0, -0x1

    #@82
    goto :goto_73

    #@83
    .line 583
    :cond_83
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    #@85
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@88
    .line 584
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    #@8b
    move-result v0

    #@8c
    if-nez v0, :cond_8f

    #@8e
    return-void

    #@8f
    .line 588
    :cond_8f
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    #@91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@94
    move-result v0

    #@95
    add-int/lit8 v0, v0, -0x1

    #@97
    :goto_97
    if-ltz v0, :cond_d2

    #@99
    .line 590
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    #@9b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9e
    move-result-object v3

    #@9f
    check-cast v3, Ljava/util/ArrayList;

    #@a1
    .line 591
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@a4
    move-result v4

    #@a5
    add-int/lit8 v4, v4, -0x1

    #@a7
    :goto_a7
    if-ltz v4, :cond_cf

    #@a9
    .line 593
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ac
    move-result-object v5

    #@ad
    check-cast v5, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    #@af
    .line 594
    iget-object v6, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@b1
    .line 595
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@b3
    .line 596
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationY(F)V

    #@b6
    .line 597
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    #@b9
    .line 598
    iget-object v5, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@bb
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@be
    .line 599
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@c1
    .line 600
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@c4
    move-result v5

    #@c5
    if-eqz v5, :cond_cc

    #@c7
    .line 601
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    #@c9
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@cc
    :cond_cc
    add-int/lit8 v4, v4, -0x1

    #@ce
    goto :goto_a7

    #@cf
    :cond_cf
    add-int/lit8 v0, v0, -0x1

    #@d1
    goto :goto_97

    #@d2
    .line 605
    :cond_d2
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    #@d4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d7
    move-result v0

    #@d8
    add-int/lit8 v0, v0, -0x1

    #@da
    :goto_da
    if-ltz v0, :cond_10e

    #@dc
    .line 607
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    #@de
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e1
    move-result-object v1

    #@e2
    check-cast v1, Ljava/util/ArrayList;

    #@e4
    .line 608
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@e7
    move-result v3

    #@e8
    add-int/lit8 v3, v3, -0x1

    #@ea
    :goto_ea
    if-ltz v3, :cond_10b

    #@ec
    .line 610
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ef
    move-result-object v4

    #@f0
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@f2
    .line 611
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@f4
    .line 612
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    #@f7
    .line 613
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@fa
    .line 614
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@fd
    .line 615
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@100
    move-result v4

    #@101
    if-eqz v4, :cond_108

    #@103
    .line 616
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    #@105
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@108
    :cond_108
    add-int/lit8 v3, v3, -0x1

    #@10a
    goto :goto_ea

    #@10b
    :cond_10b
    add-int/lit8 v0, v0, -0x1

    #@10d
    goto :goto_da

    #@10e
    .line 620
    :cond_10e
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    #@110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@113
    move-result v0

    #@114
    add-int/lit8 v0, v0, -0x1

    #@116
    :goto_116
    if-ltz v0, :cond_142

    #@118
    .line 622
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    #@11a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11d
    move-result-object v1

    #@11e
    check-cast v1, Ljava/util/ArrayList;

    #@120
    .line 623
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@123
    move-result v2

    #@124
    add-int/lit8 v2, v2, -0x1

    #@126
    :goto_126
    if-ltz v2, :cond_13f

    #@128
    .line 625
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12b
    move-result-object v3

    #@12c
    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    #@12e
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    #@131
    .line 626
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@134
    move-result v3

    #@135
    if-eqz v3, :cond_13c

    #@137
    .line 627
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    #@139
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@13c
    :cond_13c
    add-int/lit8 v2, v2, -0x1

    #@13e
    goto :goto_126

    #@13f
    :cond_13f
    add-int/lit8 v0, v0, -0x1

    #@141
    goto :goto_116

    #@142
    .line 632
    :cond_142
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    #@144
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    #@147
    .line 633
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    #@149
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    #@14c
    .line 634
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    #@14e
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    #@151
    .line 635
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    #@153
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    #@156
    .line 637
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    #@159
    return-void
.end method

.method public isRunning()Z
    .registers 2

    #@0
    .line 531
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_5b

    #@8
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    #@a
    .line 532
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_5b

    #@10
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    #@12
    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_5b

    #@18
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    #@1a
    .line 534
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_5b

    #@20
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    #@22
    .line 535
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_5b

    #@28
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    #@2a
    .line 536
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_5b

    #@30
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    #@32
    .line 537
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_5b

    #@38
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    #@3a
    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_5b

    #@40
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    #@42
    .line 539
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_5b

    #@48
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    #@4a
    .line 540
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@4d
    move-result v0

    #@4e
    if-eqz v0, :cond_5b

    #@50
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    #@52
    .line 541
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@55
    move-result v0

    #@56
    if-nez v0, :cond_59

    #@58
    goto :goto_5b

    #@59
    :cond_59
    const/4 v0, 0x0

    #@5a
    goto :goto_5c

    #@5b
    :cond_5b
    :goto_5b
    const/4 v0, 0x1

    #@5c
    :goto_5c
    return v0
.end method

.method public runPendingAnimations()V
    .registers 11

    #@0
    .line 102
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    xor-int/lit8 v0, v0, 0x1

    #@8
    .line 103
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@d
    move-result v1

    #@e
    xor-int/lit8 v1, v1, 0x1

    #@10
    .line 104
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@15
    move-result v2

    #@16
    xor-int/lit8 v2, v2, 0x1

    #@18
    .line 105
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@1d
    move-result v3

    #@1e
    xor-int/lit8 v3, v3, 0x1

    #@20
    if-nez v0, :cond_29

    #@22
    if-nez v1, :cond_29

    #@24
    if-nez v3, :cond_29

    #@26
    if-nez v2, :cond_29

    #@28
    return-void

    #@29
    .line 111
    :cond_29
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v4

    #@2f
    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_3f

    #@35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v5

    #@39
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3b
    .line 112
    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@3e
    goto :goto_2f

    #@3f
    .line 114
    :cond_3f
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@44
    const/4 v4, 0x0

    #@45
    if-eqz v1, :cond_77

    #@47
    .line 117
    new-instance v5, Ljava/util/ArrayList;

    #@49
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@4c
    .line 118
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    #@4e
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@51
    .line 119
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    .line 120
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@5b
    .line 121
    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator$1;

    #@5d
    invoke-direct {v6, p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$1;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    #@60
    if-eqz v0, :cond_74

    #@62
    .line 133
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@65
    move-result-object v5

    #@66
    check-cast v5, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    #@68
    iget-object v5, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@6a
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@6c
    .line 134
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    #@6f
    move-result-wide v7

    #@70
    invoke-static {v5, v6, v7, v8}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    #@73
    goto :goto_77

    #@74
    .line 136
    :cond_74
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    #@77
    :cond_77
    :goto_77
    if-eqz v2, :cond_a9

    #@79
    .line 141
    new-instance v5, Ljava/util/ArrayList;

    #@7b
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@7e
    .line 142
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    #@80
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@83
    .line 143
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    #@85
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@88
    .line 144
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    #@8a
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@8d
    .line 145
    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator$2;

    #@8f
    invoke-direct {v6, p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$2;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    #@92
    if-eqz v0, :cond_a6

    #@94
    .line 156
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@97
    move-result-object v5

    #@98
    check-cast v5, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    #@9a
    iget-object v5, v5, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@9c
    .line 157
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@9e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    #@a1
    move-result-wide v7

    #@a2
    invoke-static {v5, v6, v7, v8}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    #@a5
    goto :goto_a9

    #@a6
    .line 159
    :cond_a6
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    #@a9
    :cond_a9
    :goto_a9
    if-eqz v3, :cond_f7

    #@ab
    .line 164
    new-instance v3, Ljava/util/ArrayList;

    #@ad
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@b0
    .line 165
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    #@b2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@b5
    .line 166
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    #@b7
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ba
    .line 167
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    #@bc
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@bf
    .line 168
    new-instance v5, Landroidx/recyclerview/widget/DefaultItemAnimator$3;

    #@c1
    invoke-direct {v5, p0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator$3;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    #@c4
    if-nez v0, :cond_cf

    #@c6
    if-nez v1, :cond_cf

    #@c8
    if-eqz v2, :cond_cb

    #@ca
    goto :goto_cf

    #@cb
    .line 186
    :cond_cb
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    #@ce
    goto :goto_f7

    #@cf
    :cond_cf
    :goto_cf
    const-wide/16 v6, 0x0

    #@d1
    if-eqz v0, :cond_d8

    #@d3
    .line 179
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    #@d6
    move-result-wide v8

    #@d7
    goto :goto_d9

    #@d8
    :cond_d8
    move-wide v8, v6

    #@d9
    :goto_d9
    if-eqz v1, :cond_e0

    #@db
    .line 180
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getMoveDuration()J

    #@de
    move-result-wide v0

    #@df
    goto :goto_e1

    #@e0
    :cond_e0
    move-wide v0, v6

    #@e1
    :goto_e1
    if-eqz v2, :cond_e7

    #@e3
    .line 181
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    #@e6
    move-result-wide v6

    #@e7
    .line 182
    :cond_e7
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@ea
    move-result-wide v0

    #@eb
    add-long/2addr v8, v0

    #@ec
    .line 183
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ef
    move-result-object v0

    #@f0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@f2
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@f4
    .line 184
    invoke-static {v0, v5, v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    #@f7
    :cond_f7
    :goto_f7
    return-void
.end method

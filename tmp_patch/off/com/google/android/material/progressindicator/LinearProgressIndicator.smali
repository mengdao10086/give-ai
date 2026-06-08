.class public final Lcom/google/android/material/progressindicator/LinearProgressIndicator;
.super Lcom/google/android/material/progressindicator/BaseProgressIndicator;
.source "LinearProgressIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/progressindicator/LinearProgressIndicator$IndicatorDirection;,
        Lcom/google/android/material/progressindicator/LinearProgressIndicator$IndeterminateAnimationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/BaseProgressIndicator<",
        "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEF_STYLE_RES:I

.field public static final INDETERMINATE_ANIMATION_TYPE_CONTIGUOUS:I = 0x0

.field public static final INDETERMINATE_ANIMATION_TYPE_DISJOINT:I = 0x1

.field public static final INDICATOR_DIRECTION_END_TO_START:I = 0x3

.field public static final INDICATOR_DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final INDICATOR_DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final INDICATOR_DIRECTION_START_TO_END:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 54
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_LinearProgressIndicator:I

    #@2
    sput v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->DEF_STYLE_RES:I

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 67
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 71
    sget v0, Lcom/google/android/material/R$attr;->linearProgressIndicatorStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    .line 76
    sget v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->DEF_STYLE_RES:I

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 78
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->initializeDrawables()V

    #@8
    return-void
.end method

.method private initializeDrawables()V
    .registers 3

    #@0
    .line 118
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@6
    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@8
    invoke-static {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->createLinearDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    .line 119
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@15
    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@17
    invoke-static {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->createLinearDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1e
    return-void
.end method


# virtual methods
.method bridge synthetic createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .registers 3

    #@0
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
    .registers 4

    #@0
    .line 85
    new-instance v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method public getIndeterminateAnimationType()I
    .registers 2

    #@0
    .line 159
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@4
    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    #@6
    return v0
.end method

.method public getIndicatorDirection()I
    .registers 2

    #@0
    .line 201
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@4
    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    #@6
    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    .line 90
    invoke-super/range {p0 .. p5}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->onLayout(ZIIII)V

    #@3
    .line 93
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@5
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@7
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@9
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@b
    iget p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    #@d
    const/4 p3, 0x1

    #@e
    if-eq p2, p3, :cond_30

    #@10
    .line 95
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@13
    move-result p2

    #@14
    if-ne p2, p3, :cond_1f

    #@16
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@18
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@1a
    iget p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    #@1c
    const/4 p4, 0x2

    #@1d
    if-eq p2, p4, :cond_30

    #@1f
    .line 97
    :cond_1f
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@22
    move-result p2

    #@23
    if-nez p2, :cond_2f

    #@25
    iget-object p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@27
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@29
    iget p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    #@2b
    const/4 p4, 0x3

    #@2c
    if-ne p2, p4, :cond_2f

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    const/4 p3, 0x0

    #@30
    :cond_30
    :goto_30
    iput-boolean p3, p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    #@32
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    #@0
    .line 103
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getPaddingLeft()I

    #@3
    move-result p3

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getPaddingRight()I

    #@7
    move-result p4

    #@8
    add-int/2addr p3, p4

    #@9
    sub-int/2addr p1, p3

    #@a
    .line 104
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getPaddingTop()I

    #@d
    move-result p3

    #@e
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getPaddingBottom()I

    #@11
    move-result p4

    #@12
    add-int/2addr p3, p4

    #@13
    sub-int/2addr p2, p3

    #@14
    .line 105
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@17
    move-result-object p3

    #@18
    const/4 p4, 0x0

    #@19
    if-eqz p3, :cond_1e

    #@1b
    .line 107
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1e
    .line 109
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@21
    move-result-object p3

    #@22
    if-eqz p3, :cond_27

    #@24
    .line 111
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@27
    :cond_27
    return-void
.end method

.method public setIndeterminateAnimationType(I)V
    .registers 5

    #@0
    .line 172
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@4
    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    #@6
    if-ne v0, p1, :cond_9

    #@8
    return-void

    #@9
    .line 175
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->visibleToUser()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1e

    #@f
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->isIndeterminate()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_16

    #@15
    goto :goto_1e

    #@16
    .line 176
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    #@18
    const-string v0, "Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode."

    #@1a
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw p1

    #@1e
    .line 180
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@20
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@22
    iput p1, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    #@24
    .line 181
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@26
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@28
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->validateSpec()V

    #@2b
    if-nez p1, :cond_3e

    #@2d
    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@30
    move-result-object p1

    #@31
    new-instance v0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    #@33
    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@35
    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@37
    invoke-direct {v0, v1}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    #@3a
    .line 184
    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setAnimatorDelegate(Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    #@3d
    goto :goto_52

    #@3e
    .line 186
    :cond_3e
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@41
    move-result-object p1

    #@42
    new-instance v0, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    #@44
    .line 187
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->getContext()Landroid/content/Context;

    #@47
    move-result-object v1

    #@48
    iget-object v2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@4a
    check-cast v2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@4c
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    #@4f
    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->setAnimatorDelegate(Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;)V

    #@52
    .line 189
    :goto_52
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->invalidate()V

    #@55
    return-void
.end method

.method public varargs setIndicatorColor([I)V
    .registers 2

    #@0
    .line 133
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndicatorColor([I)V

    #@3
    .line 134
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@5
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@7
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->validateSpec()V

    #@a
    return-void
.end method

.method public setIndicatorDirection(I)V
    .registers 6

    #@0
    .line 213
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@4
    iput p1, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    #@6
    .line 214
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@8
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@a
    const/4 v1, 0x1

    #@b
    if-eq p1, v1, :cond_27

    #@d
    .line 216
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@10
    move-result v2

    #@11
    if-ne v2, v1, :cond_1c

    #@13
    iget-object v2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@15
    check-cast v2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@17
    iget v2, v2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    #@19
    const/4 v3, 0x2

    #@1a
    if-eq v2, v3, :cond_27

    #@1c
    .line 218
    :cond_1c
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_26

    #@22
    const/4 v2, 0x3

    #@23
    if-ne p1, v2, :cond_26

    #@25
    goto :goto_27

    #@26
    :cond_26
    const/4 v1, 0x0

    #@27
    :cond_27
    :goto_27
    iput-boolean v1, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    #@29
    .line 220
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->invalidate()V

    #@2c
    return-void
.end method

.method public setProgressCompat(IZ)V
    .registers 4

    #@0
    .line 236
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    if-eqz v0, :cond_13

    #@4
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@6
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@8
    iget v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    #@a
    if-nez v0, :cond_13

    #@c
    .line 238
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->isIndeterminate()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_13

    #@12
    return-void

    #@13
    .line 241
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V

    #@16
    return-void
.end method

.method public setTrackCornerRadius(I)V
    .registers 2

    #@0
    .line 146
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setTrackCornerRadius(I)V

    #@3
    .line 147
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@5
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    #@7
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->validateSpec()V

    #@a
    .line 148
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->invalidate()V

    #@d
    return-void
.end method

.class public Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;
.super Landroid/app/SharedElementCallback;
.source "MaterialContainerTransformSharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;
    }
.end annotation


# static fields
.field private static capturedSharedElement:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entering:Z

.field private returnEndBounds:Landroid/graphics/Rect;

.field private shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

.field private sharedElementReenterTransitionEnabled:Z

.field private transparentWindowBackgroundEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 53
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 57
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    #@6
    .line 58
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    #@8
    const/4 v0, 0x0

    #@9
    .line 59
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    #@b
    .line 61
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;

    #@d
    invoke-direct {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;-><init>()V

    #@10
    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    #@12
    return-void
.end method

.method static synthetic access$000(Landroid/view/Window;)V
    .registers 1

    #@0
    .line 53
    invoke-static {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->removeWindowBackground(Landroid/view/Window;)V

    #@3
    return-void
.end method

.method static synthetic access$100(Landroid/view/Window;)V
    .registers 1

    #@0
    .line 53
    invoke-static {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->restoreWindowBackground(Landroid/view/Window;)V

    #@3
    return-void
.end method

.method static synthetic access$200()Ljava/lang/ref/WeakReference;
    .registers 1

    #@0
    .line 53
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    #@2
    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1

    #@0
    .line 53
    sput-object p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    #@2
    return-object p0
.end method

.method private static getWindowBackground(Landroid/view/Window;)Landroid/graphics/drawable/Drawable;
    .registers 1

    #@0
    .line 328
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static removeWindowBackground(Landroid/view/Window;)V
    .registers 3

    #@0
    .line 302
    invoke-static {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->getWindowBackground(Landroid/view/Window;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    if-nez p0, :cond_7

    #@6
    return-void

    #@7
    .line 307
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object p0

    #@b
    const/4 v0, 0x0

    #@c
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->CLEAR:Landroidx/core/graphics/BlendModeCompat;

    #@e
    .line 309
    invoke-static {v0, v1}, Landroidx/core/graphics/BlendModeColorFilterCompat;->createBlendModeColorFilterCompat(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/ColorFilter;

    #@11
    move-result-object v0

    #@12
    .line 308
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@15
    return-void
.end method

.method private static restoreWindowBackground(Landroid/view/Window;)V
    .registers 1

    #@0
    .line 319
    invoke-static {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->getWindowBackground(Landroid/view/Window;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    if-nez p0, :cond_7

    #@6
    return-void

    #@7
    .line 323
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object p0

    #@b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    #@e
    return-void
.end method

.method private setUpEnterTransform(Landroid/view/Window;)V
    .registers 4

    #@0
    .line 232
    invoke-virtual {p1}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    #@3
    move-result-object v0

    #@4
    .line 233
    instance-of v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    #@6
    if-eqz v1, :cond_21

    #@8
    .line 234
    check-cast v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    #@a
    .line 235
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    #@c
    if-nez v1, :cond_12

    #@e
    const/4 v1, 0x0

    #@f
    .line 236
    invoke-virtual {p1, v1}, Landroid/view/Window;->setSharedElementReenterTransition(Landroid/transition/Transition;)V

    #@12
    .line 238
    :cond_12
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    #@14
    if-eqz v1, :cond_21

    #@16
    .line 239
    invoke-static {p1, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->updateBackgroundFadeDuration(Landroid/view/Window;Lcom/google/android/material/transition/platform/MaterialContainerTransform;)V

    #@19
    .line 240
    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;

    #@1b
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Landroid/view/Window;)V

    #@1e
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@21
    :cond_21
    return-void
.end method

.method private setUpReturnTransform(Landroid/app/Activity;Landroid/view/Window;)V
    .registers 5

    #@0
    .line 257
    invoke-virtual {p2}, Landroid/view/Window;->getSharedElementReturnTransition()Landroid/transition/Transition;

    #@3
    move-result-object v0

    #@4
    .line 258
    instance-of v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    #@6
    if-eqz v1, :cond_25

    #@8
    .line 259
    check-cast v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    #@a
    const/4 v1, 0x1

    #@b
    .line 260
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->setHoldAtEndEnabled(Z)V

    #@e
    .line 261
    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;

    #@10
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Landroid/app/Activity;)V

    #@13
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@16
    .line 279
    iget-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    #@18
    if-eqz p1, :cond_25

    #@1a
    .line 280
    invoke-static {p2, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->updateBackgroundFadeDuration(Landroid/view/Window;Lcom/google/android/material/transition/platform/MaterialContainerTransform;)V

    #@1d
    .line 281
    new-instance p1, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;

    #@1f
    invoke-direct {p1, p0, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Landroid/view/Window;)V

    #@22
    invoke-virtual {v0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@25
    :cond_25
    return-void
.end method

.method private static updateBackgroundFadeDuration(Landroid/view/Window;Lcom/google/android/material/transition/platform/MaterialContainerTransform;)V
    .registers 6

    #@0
    .line 337
    invoke-virtual {p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getDuration()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-ltz v0, :cond_11

    #@a
    .line 338
    invoke-virtual {p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getDuration()J

    #@d
    move-result-wide v0

    #@e
    invoke-virtual {p0, v0, v1}, Landroid/view/Window;->setTransitionBackgroundFadeDuration(J)V

    #@11
    :cond_11
    return-void
.end method


# virtual methods
.method public getShapeProvider()Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;
    .registers 2

    #@0
    .line 173
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    #@2
    return-object v0
.end method

.method public isSharedElementReenterTransitionEnabled()Z
    .registers 2

    #@0
    .line 218
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    #@2
    return v0
.end method

.method public isTransparentWindowBackgroundEnabled()Z
    .registers 2

    #@0
    .line 194
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    #@2
    return v0
.end method

.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .registers 5

    #@0
    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@5
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    #@7
    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .registers 4

    #@0
    .line 96
    invoke-super {p0, p1, p2}, Landroid/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_23

    #@6
    .line 97
    sget-object p2, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    #@8
    if-eqz p2, :cond_23

    #@a
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    #@c
    if-eqz v0, :cond_23

    #@e
    .line 98
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@11
    move-result-object p2

    #@12
    check-cast p2, Landroid/view/View;

    #@14
    if-eqz p2, :cond_23

    #@16
    .line 100
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    #@18
    invoke-interface {v0, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;->provideShape(Landroid/view/View;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@1b
    move-result-object p2

    #@1c
    if-eqz p2, :cond_23

    #@1e
    .line 103
    sget v0, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    #@20
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@23
    :cond_23
    return-object p1
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_32

    #@6
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_32

    #@c
    const/4 v0, 0x0

    #@d
    .line 114
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object p1

    #@11
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object p1

    #@15
    check-cast p1, Landroid/view/View;

    #@17
    if-eqz p1, :cond_32

    #@19
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@1c
    move-result-object p1

    #@1d
    invoke-static {p1}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    #@20
    move-result-object p1

    #@21
    if-eqz p1, :cond_32

    #@23
    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@26
    move-result-object p2

    #@27
    .line 119
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    #@29
    if-eqz v0, :cond_2f

    #@2b
    .line 120
    invoke-direct {p0, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->setUpEnterTransform(Landroid/view/Window;)V

    #@2e
    goto :goto_32

    #@2f
    .line 122
    :cond_2f
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->setUpReturnTransform(Landroid/app/Activity;Landroid/view/Window;)V

    #@32
    :cond_32
    :goto_32
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 157
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result p1

    #@4
    const/4 p3, 0x0

    #@5
    if-nez p1, :cond_23

    #@7
    .line 158
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object p1

    #@b
    check-cast p1, Landroid/view/View;

    #@d
    sget v0, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    #@f
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    instance-of p1, p1, Landroid/view/View;

    #@15
    if-eqz p1, :cond_23

    #@17
    .line 160
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object p1

    #@1b
    check-cast p1, Landroid/view/View;

    #@1d
    sget v0, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    #@1f
    const/4 v1, 0x0

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@23
    .line 163
    :cond_23
    iget-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    #@25
    if-nez p1, :cond_39

    #@27
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    #@2a
    move-result p1

    #@2b
    if-nez p1, :cond_39

    #@2d
    .line 164
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@30
    move-result-object p1

    #@31
    check-cast p1, Landroid/view/View;

    #@33
    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->getRelativeBoundsRect(Landroid/view/View;)Landroid/graphics/Rect;

    #@36
    move-result-object p1

    #@37
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    #@39
    .line 167
    :cond_39
    iput-boolean p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    #@3b
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 134
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result p1

    #@4
    const/4 v0, 0x0

    #@5
    if-nez p1, :cond_1c

    #@7
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result p1

    #@b
    if-nez p1, :cond_1c

    #@d
    .line 137
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object p1

    #@11
    check-cast p1, Landroid/view/View;

    #@13
    sget v1, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    #@15
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object p3

    #@19
    invoke-virtual {p1, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@1c
    .line 140
    :cond_1c
    iget-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    #@1e
    if-nez p1, :cond_5c

    #@20
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    #@23
    move-result p1

    #@24
    if-nez p1, :cond_5c

    #@26
    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    #@28
    if-eqz p1, :cond_5c

    #@2a
    .line 143
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object p1

    #@2e
    check-cast p1, Landroid/view/View;

    #@30
    .line 144
    iget-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    #@32
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    #@35
    move-result p2

    #@36
    const/high16 p3, 0x40000000    # 2.0f

    #@38
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3b
    move-result p2

    #@3c
    .line 145
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    #@3e
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@41
    move-result v0

    #@42
    invoke-static {v0, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@45
    move-result p3

    #@46
    .line 146
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    #@49
    .line 147
    iget-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    #@4b
    iget p2, p2, Landroid/graphics/Rect;->left:I

    #@4d
    iget-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    #@4f
    iget p3, p3, Landroid/graphics/Rect;->top:I

    #@51
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    #@53
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@55
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    #@57
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@59
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    #@5c
    :cond_5c
    return-void
.end method

.method public setShapeProvider(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;)V
    .registers 2

    #@0
    .line 184
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    #@2
    return-void
.end method

.method public setSharedElementReenterTransitionEnabled(Z)V
    .registers 2

    #@0
    .line 228
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    #@2
    return-void
.end method

.method public setTransparentWindowBackgroundEnabled(Z)V
    .registers 2

    #@0
    .line 209
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    #@2
    return-void
.end method

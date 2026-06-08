.class Landroidx/core/view/WindowInsetsControllerCompat$Impl20;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field protected final mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .registers 3

    #@0
    .line 403
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    #@3
    .line 404
    iput-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    #@5
    .line 405
    iput-object p2, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mView:Landroid/view/View;

    #@7
    return-void
.end method

.method private hideForType(I)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_2c

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p1, v0, :cond_28

    #@6
    const/16 v0, 0x8

    #@8
    if-eq p1, v0, :cond_b

    #@a
    goto :goto_27

    #@b
    .line 480
    :cond_b
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    #@d
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    #@10
    move-result-object p1

    #@11
    const-string v0, "input_method"

    #@13
    .line 481
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    #@19
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    #@1b
    .line 482
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@22
    move-result-object v0

    #@23
    const/4 v1, 0x0

    #@24
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@27
    :goto_27
    return-void

    #@28
    .line 477
    :cond_28
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    #@2b
    return-void

    #@2c
    :cond_2c
    const/4 p1, 0x4

    #@2d
    .line 474
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    #@30
    return-void
.end method

.method static synthetic lambda$showForType$0(Landroid/view/View;)V
    .registers 3

    #@0
    .line 451
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const-string v1, "input_method"

    #@6
    .line 452
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@c
    const/4 v1, 0x0

    #@d
    .line 453
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@10
    return-void
.end method

.method private showForType(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_44

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p1, v0, :cond_40

    #@6
    const/16 v0, 0x8

    #@8
    if-eq p1, v0, :cond_b

    #@a
    goto :goto_3f

    #@b
    .line 430
    :cond_b
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mView:Landroid/view/View;

    #@d
    .line 433
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_21

    #@13
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1a

    #@19
    goto :goto_21

    #@1a
    .line 439
    :cond_1a
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    #@1c
    invoke-virtual {p1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    #@1f
    move-result-object p1

    #@20
    goto :goto_24

    #@21
    .line 437
    :cond_21
    :goto_21
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    #@24
    :goto_24
    if-nez p1, :cond_2f

    #@26
    .line 444
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    #@28
    const v0, 0x1020002

    #@2b
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@2e
    move-result-object p1

    #@2f
    :cond_2f
    if-eqz p1, :cond_3f

    #@31
    .line 447
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_3f

    #@37
    .line 449
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$$ExternalSyntheticLambda0;

    #@39
    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    #@3c
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@3f
    :cond_3f
    :goto_3f
    return-void

    #@40
    .line 426
    :cond_40
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    #@43
    return-void

    #@44
    :cond_44
    const/4 p1, 0x4

    #@45
    .line 422
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    #@48
    const/16 p1, 0x400

    #@4a
    .line 423
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetWindowFlag(I)V

    #@4d
    return-void
.end method


# virtual methods
.method addOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 2

    #@0
    return-void
.end method

.method controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .registers 7

    #@0
    return-void
.end method

.method getSystemBarsBehavior()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method hide(I)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    :goto_1
    const/16 v1, 0x100

    #@3
    if-gt v0, v1, :cond_10

    #@5
    and-int v1, p1, v0

    #@7
    if-nez v1, :cond_a

    #@9
    goto :goto_d

    #@a
    .line 467
    :cond_a
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->hideForType(I)V

    #@d
    :goto_d
    shl-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_1

    #@10
    :cond_10
    return-void
.end method

.method removeOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .registers 2

    #@0
    return-void
.end method

.method setSystemBarsBehavior(I)V
    .registers 5

    #@0
    if-eqz p1, :cond_1b

    #@2
    const/4 v0, 0x1

    #@3
    const/16 v1, 0x800

    #@5
    const/16 v2, 0x1000

    #@7
    if-eq p1, v0, :cond_14

    #@9
    const/4 v0, 0x2

    #@a
    if-eq p1, v0, :cond_d

    #@c
    goto :goto_20

    #@d
    .line 523
    :cond_d
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    #@10
    .line 524
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    #@13
    goto :goto_20

    #@14
    .line 519
    :cond_14
    invoke-virtual {p0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    #@17
    .line 520
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    #@1a
    goto :goto_20

    #@1b
    :cond_1b
    const/16 p1, 0x1800

    #@1d
    .line 527
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    #@20
    :goto_20
    return-void
.end method

.method protected setSystemUiFlag(I)V
    .registers 4

    #@0
    .line 488
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    .line 490
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    #@9
    move-result v1

    #@a
    or-int/2addr p1, v1

    #@b
    .line 489
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@e
    return-void
.end method

.method protected setWindowFlag(I)V
    .registers 3

    #@0
    .line 502
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    #@5
    return-void
.end method

.method show(I)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    :goto_1
    const/16 v1, 0x100

    #@3
    if-gt v0, v1, :cond_10

    #@5
    and-int v1, p1, v0

    #@7
    if-nez v1, :cond_a

    #@9
    goto :goto_d

    #@a
    .line 415
    :cond_a
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->showForType(I)V

    #@d
    :goto_d
    shl-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_1

    #@10
    :cond_10
    return-void
.end method

.method protected unsetSystemUiFlag(I)V
    .registers 4

    #@0
    .line 495
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    .line 497
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    #@9
    move-result v1

    #@a
    not-int p1, p1

    #@b
    and-int/2addr p1, v1

    #@c
    .line 496
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@f
    return-void
.end method

.method protected unsetWindowFlag(I)V
    .registers 3

    #@0
    .line 506
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    #@5
    return-void
.end method

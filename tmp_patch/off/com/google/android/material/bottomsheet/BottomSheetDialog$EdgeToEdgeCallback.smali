.class Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EdgeToEdgeCallback"
.end annotation


# instance fields
.field private final insetsCompat:Landroidx/core/view/WindowInsetsCompat;

.field private final lightBottomSheet:Ljava/lang/Boolean;

.field private lightStatusBar:Z

.field private window:Landroid/view/Window;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V
    .registers 3

    #@0
    .line 426
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    #@3
    .line 427
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->insetsCompat:Landroidx/core/view/WindowInsetsCompat;

    #@5
    .line 432
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@8
    move-result-object p2

    #@9
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@c
    move-result-object p2

    #@d
    if-eqz p2, :cond_14

    #@f
    .line 434
    invoke-virtual {p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    #@12
    move-result-object p2

    #@13
    goto :goto_18

    #@14
    .line 436
    :cond_14
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    #@17
    move-result-object p2

    #@18
    :goto_18
    if-eqz p2, :cond_29

    #@1a
    .line 441
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@1d
    move-result p1

    #@1e
    invoke-static {p1}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    #@21
    move-result p1

    #@22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@25
    move-result-object p1

    #@26
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightBottomSheet:Ljava/lang/Boolean;

    #@28
    goto :goto_49

    #@29
    .line 442
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@2c
    move-result-object p2

    #@2d
    instance-of p2, p2, Landroid/graphics/drawable/ColorDrawable;

    #@2f
    if-eqz p2, :cond_46

    #@31
    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@34
    move-result-object p1

    #@35
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    #@37
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@3a
    move-result p1

    #@3b
    invoke-static {p1}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    #@3e
    move-result p1

    #@3f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@42
    move-result-object p1

    #@43
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightBottomSheet:Ljava/lang/Boolean;

    #@45
    goto :goto_49

    #@46
    :cond_46
    const/4 p1, 0x0

    #@47
    .line 447
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightBottomSheet:Ljava/lang/Boolean;

    #@49
    :goto_49
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;)V
    .registers 4

    #@0
    .line 417
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;-><init>(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V

    #@3
    return-void
.end method

.method private setPaddingForPosition(Landroid/view/View;)V
    .registers 6

    #@0
    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->insetsCompat:Landroidx/core/view/WindowInsetsCompat;

    #@6
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_39

    #@c
    .line 482
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->window:Landroid/view/Window;

    #@e
    if-eqz v0, :cond_1e

    #@10
    .line 484
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightBottomSheet:Ljava/lang/Boolean;

    #@12
    if-nez v1, :cond_17

    #@14
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightStatusBar:Z

    #@16
    goto :goto_1b

    #@17
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@1a
    move-result v1

    #@1b
    .line 483
    :goto_1b
    invoke-static {v0, v1}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->setLightStatusBar(Landroid/view/Window;Z)V

    #@1e
    .line 488
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    #@21
    move-result v0

    #@22
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->insetsCompat:Landroidx/core/view/WindowInsetsCompat;

    #@24
    .line 489
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@27
    move-result v1

    #@28
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@2b
    move-result v2

    #@2c
    sub-int/2addr v1, v2

    #@2d
    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    #@30
    move-result v2

    #@31
    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    #@34
    move-result v3

    #@35
    .line 487
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    #@38
    goto :goto_58

    #@39
    .line 492
    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_58

    #@3f
    .line 495
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->window:Landroid/view/Window;

    #@41
    if-eqz v0, :cond_48

    #@43
    .line 496
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightStatusBar:Z

    #@45
    invoke-static {v0, v1}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->setLightStatusBar(Landroid/view/Window;Z)V

    #@48
    .line 499
    :cond_48
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    #@4b
    move-result v0

    #@4c
    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    #@4f
    move-result v1

    #@50
    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    #@53
    move-result v2

    #@54
    const/4 v3, 0x0

    #@55
    .line 498
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    #@58
    :cond_58
    :goto_58
    return-void
.end method


# virtual methods
.method onLayout(Landroid/view/View;)V
    .registers 2

    #@0
    .line 463
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->setPaddingForPosition(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public onSlide(Landroid/view/View;F)V
    .registers 3

    #@0
    .line 458
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->setPaddingForPosition(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 3

    #@0
    .line 453
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->setPaddingForPosition(Landroid/view/View;)V

    #@3
    return-void
.end method

.method setWindow(Landroid/view/Window;)V
    .registers 3

    #@0
    .line 467
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->window:Landroid/view/Window;

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 470
    :cond_5
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->window:Landroid/view/Window;

    #@7
    if-eqz p1, :cond_17

    #@9
    .line 473
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    #@10
    move-result-object p1

    #@11
    .line 474
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsControllerCompat;->isAppearanceLightStatusBars()Z

    #@14
    move-result p1

    #@15
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightStatusBar:Z

    #@17
    :cond_17
    return-void
.end method

.class public Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;
    }
.end annotation


# instance fields
.field private behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private bottomSheet:Landroid/widget/FrameLayout;

.field private bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field cancelable:Z

.field private canceledOnTouchOutside:Z

.field private canceledOnTouchOutsideSet:Z

.field private container:Landroid/widget/FrameLayout;

.field private coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field dismissWithAnimation:Z

.field private edgeToEdgeCallback:Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;

.field private edgeToEdgeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 85
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    #@4
    .line 88
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getContext()Landroid/content/Context;

    #@7
    move-result-object p1

    #@8
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@b
    move-result-object p1

    #@c
    const/4 v1, 0x1

    #@d
    new-array v1, v1, [I

    #@f
    sget v2, Lcom/google/android/material/R$attr;->enableEdgeToEdge:I

    #@11
    aput v2, v1, v0

    #@13
    .line 90
    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@16
    move-result-object p1

    #@17
    .line 91
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1a
    move-result p1

    #@1b
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->edgeToEdgeEnabled:Z

    #@1d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    #@0
    .line 95
    invoke-static {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getThemeResId(Landroid/content/Context;I)I

    #@3
    move-result p2

    #@4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    #@7
    const/4 p1, 0x1

    #@8
    .line 78
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    #@a
    .line 79
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    #@c
    .line 402
    new-instance p2, Lcom/google/android/material/bottomsheet/BottomSheetDialog$5;

    #@e
    invoke-direct {p2, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    #@11
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    #@13
    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    #@16
    .line 101
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getContext()Landroid/content/Context;

    #@19
    move-result-object p2

    #@1a
    .line 102
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@1d
    move-result-object p2

    #@1e
    new-array p1, p1, [I

    #@20
    sget v0, Lcom/google/android/material/R$attr;->enableEdgeToEdge:I

    #@22
    const/4 v1, 0x0

    #@23
    aput v0, p1, v1

    #@25
    .line 103
    invoke-virtual {p2, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@28
    move-result-object p1

    #@29
    .line 104
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2c
    move-result p1

    #@2d
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->edgeToEdgeEnabled:Z

    #@2f
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 5

    #@0
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    #@3
    const/4 p1, 0x1

    #@4
    .line 78
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    #@6
    .line 79
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    #@8
    .line 402
    new-instance p3, Lcom/google/android/material/bottomsheet/BottomSheetDialog$5;

    #@a
    invoke-direct {p3, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    #@d
    iput-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    #@f
    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    #@12
    .line 111
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    #@14
    .line 114
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getContext()Landroid/content/Context;

    #@17
    move-result-object p2

    #@18
    .line 115
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@1b
    move-result-object p2

    #@1c
    new-array p1, p1, [I

    #@1e
    sget p3, Lcom/google/android/material/R$attr;->enableEdgeToEdge:I

    #@20
    const/4 v0, 0x0

    #@21
    aput p3, p1, v0

    #@23
    .line 116
    invoke-virtual {p2, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@26
    move-result-object p1

    #@27
    .line 117
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2a
    move-result p1

    #@2b
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->edgeToEdgeEnabled:Z

    #@2d
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;
    .registers 1

    #@0
    .line 68
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->edgeToEdgeCallback:Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;

    #@2
    return-object p0
.end method

.method static synthetic access$002(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;)Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;
    .registers 2

    #@0
    .line 68
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->edgeToEdgeCallback:Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;

    #@2
    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .registers 1

    #@0
    .line 68
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)Landroid/widget/FrameLayout;
    .registers 1

    #@0
    .line 68
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    #@2
    return-object p0
.end method

.method private ensureContainerAndBehavior()Landroid/widget/FrameLayout;
    .registers 4

    #@0
    .line 276
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->container:Landroid/widget/FrameLayout;

    #@2
    if-nez v0, :cond_3b

    #@4
    .line 278
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    sget v1, Lcom/google/android/material/R$layout;->design_bottom_sheet_dialog:I

    #@a
    const/4 v2, 0x0

    #@b
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/widget/FrameLayout;

    #@11
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->container:Landroid/widget/FrameLayout;

    #@13
    .line 280
    sget v1, Lcom/google/android/material/R$id;->coordinator:I

    #@15
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@1b
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@1d
    .line 281
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->container:Landroid/widget/FrameLayout;

    #@1f
    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    #@21
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/widget/FrameLayout;

    #@27
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    #@29
    .line 283
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@2f
    .line 284
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    #@31
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    #@34
    .line 285
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@36
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    #@38
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    #@3b
    .line 287
    :cond_3b
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->container:Landroid/widget/FrameLayout;

    #@3d
    return-object v0
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .registers 4

    #@0
    if-nez p1, :cond_19

    #@2
    .line 387
    new-instance p1, Landroid/util/TypedValue;

    #@4
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    #@7
    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@a
    move-result-object p0

    #@b
    sget v0, Lcom/google/android/material/R$attr;->bottomSheetDialogTheme:I

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@11
    move-result p0

    #@12
    if-eqz p0, :cond_17

    #@14
    .line 389
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    #@16
    goto :goto_19

    #@17
    .line 392
    :cond_17
    sget p1, Lcom/google/android/material/R$style;->Theme_Design_Light_BottomSheetDialog:I

    #@19
    :cond_19
    :goto_19
    return p1
.end method

.method public static setLightStatusBar(Landroid/view/View;Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    #@3
    move-result v0

    #@4
    if-eqz p1, :cond_9

    #@6
    or-int/lit16 p1, v0, 0x2000

    #@8
    goto :goto_b

    #@9
    :cond_9
    and-int/lit16 p1, v0, -0x2001

    #@b
    .line 519
    :goto_b
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    #@e
    return-void
.end method

.method private wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .registers 6

    #@0
    .line 292
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->ensureContainerAndBehavior()Landroid/widget/FrameLayout;

    #@3
    .line 293
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->container:Landroid/widget/FrameLayout;

    #@5
    sget v1, Lcom/google/android/material/R$id;->coordinator:I

    #@7
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@d
    if-eqz p1, :cond_1a

    #@f
    if-nez p2, :cond_1a

    #@11
    .line 295
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@14
    move-result-object p2

    #@15
    const/4 v1, 0x0

    #@16
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@19
    move-result-object p2

    #@1a
    .line 298
    :cond_1a
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->edgeToEdgeEnabled:Z

    #@1c
    if-eqz p1, :cond_28

    #@1e
    .line 299
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    #@20
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;

    #@22
    invoke-direct {v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    #@25
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    #@28
    .line 319
    :cond_28
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    #@2a
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@2d
    if-nez p3, :cond_35

    #@2f
    .line 321
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    #@31
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@34
    goto :goto_3a

    #@35
    .line 323
    :cond_35
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    #@37
    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@3a
    .line 326
    :goto_3a
    sget p1, Lcom/google/android/material/R$id;->touch_outside:I

    #@3c
    .line 327
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    #@3f
    move-result-object p1

    #@40
    new-instance p2, Lcom/google/android/material/bottomsheet/BottomSheetDialog$2;

    #@42
    invoke-direct {p2, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    #@45
    .line 328
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@48
    .line 338
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    #@4a
    new-instance p2, Lcom/google/android/material/bottomsheet/BottomSheetDialog$3;

    #@4c
    invoke-direct {p2, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    #@4f
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@52
    .line 362
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    #@54
    new-instance p2, Lcom/google/android/material/bottomsheet/BottomSheetDialog$4;

    #@56
    invoke-direct {p2, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    #@59
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@5c
    .line 370
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->container:Landroid/widget/FrameLayout;

    #@5e
    return-object p1
.end method


# virtual methods
.method public cancel()V
    .registers 4

    #@0
    .line 223
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@3
    move-result-object v0

    #@4
    .line 225
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismissWithAnimation:Z

    #@6
    if-eqz v1, :cond_14

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    #@b
    move-result v1

    #@c
    const/4 v2, 0x5

    #@d
    if-ne v1, v2, :cond_10

    #@f
    goto :goto_14

    #@10
    .line 228
    :cond_10
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    #@13
    goto :goto_17

    #@14
    .line 226
    :cond_14
    :goto_14
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->cancel()V

    #@17
    :goto_17
    return-void
.end method

.method public getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation

    #@0
    .line 244
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@2
    if-nez v0, :cond_7

    #@4
    .line 246
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->ensureContainerAndBehavior()Landroid/widget/FrameLayout;

    #@7
    .line 248
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@9
    return-object v0
.end method

.method public getDismissWithAnimation()Z
    .registers 2

    #@0
    .line 266
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismissWithAnimation:Z

    #@2
    return v0
.end method

.method public getEdgeToEdgeEnabled()Z
    .registers 2

    #@0
    .line 271
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->edgeToEdgeEnabled:Z

    #@2
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 6

    #@0
    .line 177
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onAttachedToWindow()V

    #@3
    .line 178
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_3a

    #@9
    .line 182
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->edgeToEdgeEnabled:Z

    #@b
    const/4 v2, 0x1

    #@c
    if-eqz v1, :cond_1c

    #@e
    .line 183
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    #@11
    move-result v1

    #@12
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    #@15
    move-result v1

    #@16
    const/16 v3, 0xff

    #@18
    if-ge v1, v3, :cond_1c

    #@1a
    move v1, v2

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 v1, 0x0

    #@1d
    .line 184
    :goto_1d
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->container:Landroid/widget/FrameLayout;

    #@1f
    if-eqz v3, :cond_26

    #@21
    xor-int/lit8 v4, v1, 0x1

    #@23
    .line 185
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    #@26
    .line 187
    :cond_26
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@28
    if-eqz v3, :cond_2f

    #@2a
    xor-int/lit8 v4, v1, 0x1

    #@2c
    .line 188
    invoke-virtual {v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    #@2f
    :cond_2f
    xor-int/2addr v1, v2

    #@30
    .line 190
    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    #@33
    .line 192
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->edgeToEdgeCallback:Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;

    #@35
    if-eqz v1, :cond_3a

    #@37
    .line 193
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->setWindow(Landroid/view/Window;)V

    #@3a
    :cond_3a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 127
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 128
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    #@6
    move-result-object p1

    #@7
    if-eqz p1, :cond_16

    #@9
    const/4 v0, 0x0

    #@a
    .line 132
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    #@d
    const/high16 v0, -0x80000000

    #@f
    .line 134
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    #@12
    const/4 v0, -0x1

    #@13
    .line 142
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    #@16
    :cond_16
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    #@0
    .line 200
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->edgeToEdgeCallback:Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;

    #@2
    if-eqz v0, :cond_8

    #@4
    const/4 v1, 0x0

    #@5
    .line 201
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->setWindow(Landroid/view/Window;)V

    #@8
    :cond_8
    return-void
.end method

.method protected onStart()V
    .registers 3

    #@0
    .line 169
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStart()V

    #@3
    .line 170
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@5
    if-eqz v0, :cond_14

    #@7
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x5

    #@c
    if-ne v0, v1, :cond_14

    #@e
    .line 171
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@10
    const/4 v1, 0x4

    #@11
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    #@14
    :cond_14
    return-void
.end method

.method removeDefaultCallback()V
    .registers 3

    #@0
    .line 399
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@2
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->bottomSheetCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    #@7
    return-void
.end method

.method public setCancelable(Z)V
    .registers 3

    #@0
    .line 158
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCancelable(Z)V

    #@3
    .line 159
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    #@5
    if-eq v0, p1, :cond_10

    #@7
    .line 160
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    #@9
    .line 161
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@b
    if-eqz v0, :cond_10

    #@d
    .line 162
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    #@10
    :cond_10
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 4

    #@0
    .line 234
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    #@3
    const/4 v0, 0x1

    #@4
    if-eqz p1, :cond_c

    #@6
    .line 235
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    #@8
    if-nez v1, :cond_c

    #@a
    .line 236
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    #@c
    .line 238
    :cond_c
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    #@e
    .line 239
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    #@10
    return-void
.end method

.method public setContentView(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 122
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    #@4
    move-result-object p1

    #@5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    #@8
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 148
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    #@9
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 153
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    #@4
    move-result-object p1

    #@5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    #@8
    return-void
.end method

.method public setDismissWithAnimation(Z)V
    .registers 2

    #@0
    .line 258
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismissWithAnimation:Z

    #@2
    return-void
.end method

.method shouldWindowCloseOnTouchOutside()Z
    .registers 6

    #@0
    .line 374
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    #@2
    if-nez v0, :cond_20

    #@4
    .line 376
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x1

    #@9
    new-array v2, v1, [I

    #@b
    const v3, 0x101035b

    #@e
    const/4 v4, 0x0

    #@f
    aput v3, v2, v4

    #@11
    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@14
    move-result-object v0

    #@15
    .line 377
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@18
    move-result v2

    #@19
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    #@1b
    .line 378
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 379
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    #@20
    .line 381
    :cond_20
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->canceledOnTouchOutside:Z

    #@22
    return v0
.end method

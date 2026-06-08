.class abstract Lcom/google/android/material/sidesheet/SheetDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/material/sidesheet/SheetCallback;",
        ">",
        "Landroidx/appcompat/app/AppCompatDialog;"
    }
.end annotation


# static fields
.field private static final COORDINATOR_LAYOUT_ID:I

.field private static final TOUCH_OUTSIDE_ID:I


# instance fields
.field private behavior:Lcom/google/android/material/sidesheet/Sheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/sidesheet/Sheet<",
            "TC;>;"
        }
    .end annotation
.end field

.field cancelable:Z

.field private canceledOnTouchOutside:Z

.field private canceledOnTouchOutsideSet:Z

.field private container:Landroid/widget/FrameLayout;

.field dismissWithAnimation:Z

.field private sheet:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 51
    sget v0, Lcom/google/android/material/R$id;->coordinator:I

    #@2
    sput v0, Lcom/google/android/material/sidesheet/SheetDialog;->COORDINATOR_LAYOUT_ID:I

    #@4
    .line 52
    sget v0, Lcom/google/android/material/R$id;->touch_outside:I

    #@6
    sput v0, Lcom/google/android/material/sidesheet/SheetDialog;->TOUCH_OUTSIDE_ID:I

    #@8
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 65
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/google/android/material/sidesheet/SheetDialog;-><init>(Landroid/content/Context;III)V

    #@4
    return-void
.end method

.method constructor <init>(Landroid/content/Context;III)V
    .registers 5

    #@0
    .line 73
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/sidesheet/SheetDialog;->getThemeResId(Landroid/content/Context;III)I

    #@3
    move-result p2

    #@4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    #@7
    const/4 p1, 0x1

    #@8
    .line 60
    iput-boolean p1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    #@a
    .line 61
    iput-boolean p1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutside:Z

    #@c
    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->supportRequestWindowFeature(I)Z

    #@f
    return-void
.end method

.method private ensureContainerAndBehavior()V
    .registers 4

    #@0
    .line 183
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->container:Landroid/widget/FrameLayout;

    #@2
    if-nez v0, :cond_2a

    #@4
    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getLayoutResId()I

    #@b
    move-result v1

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/widget/FrameLayout;

    #@13
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->container:Landroid/widget/FrameLayout;

    #@15
    .line 185
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getDialogId()I

    #@18
    move-result v1

    #@19
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/widget/FrameLayout;

    #@1f
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->sheet:Landroid/widget/FrameLayout;

    #@21
    .line 186
    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SheetDialog;->getBehaviorFromSheet(Landroid/widget/FrameLayout;)Lcom/google/android/material/sidesheet/Sheet;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->behavior:Lcom/google/android/material/sidesheet/Sheet;

    #@27
    .line 187
    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SheetDialog;->addSheetCancelOnHideCallback(Lcom/google/android/material/sidesheet/Sheet;)V

    #@2a
    :cond_2a
    return-void
.end method

.method private getContainer()Landroid/widget/FrameLayout;
    .registers 2

    #@0
    .line 195
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->container:Landroid/widget/FrameLayout;

    #@2
    if-nez v0, :cond_7

    #@4
    .line 196
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->ensureContainerAndBehavior()V

    #@7
    .line 198
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->container:Landroid/widget/FrameLayout;

    #@9
    return-object v0
.end method

.method private getSheet()Landroid/widget/FrameLayout;
    .registers 2

    #@0
    .line 203
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->sheet:Landroid/widget/FrameLayout;

    #@2
    if-nez v0, :cond_7

    #@4
    .line 204
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->ensureContainerAndBehavior()V

    #@7
    .line 206
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->sheet:Landroid/widget/FrameLayout;

    #@9
    return-object v0
.end method

.method private static getThemeResId(Landroid/content/Context;III)I
    .registers 5

    #@0
    if-nez p1, :cond_16

    #@2
    .line 290
    new-instance p1, Landroid/util/TypedValue;

    #@4
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    #@7
    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@a
    move-result-object p0

    #@b
    const/4 v0, 0x1

    #@c
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@f
    move-result p0

    #@10
    if-eqz p0, :cond_15

    #@12
    .line 292
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    #@14
    goto :goto_16

    #@15
    :cond_15
    move p1, p3

    #@16
    :cond_16
    :goto_16
    return p1
.end method

.method private shouldWindowCloseOnTouchOutside()Z
    .registers 6

    #@0
    .line 273
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutsideSet:Z

    #@2
    if-nez v0, :cond_20

    #@4
    .line 275
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getContext()Landroid/content/Context;

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
    .line 276
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@18
    move-result v2

    #@19
    iput-boolean v2, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutside:Z

    #@1b
    .line 277
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 278
    iput-boolean v1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutsideSet:Z

    #@20
    .line 280
    :cond_20
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutside:Z

    #@22
    return v0
.end method

.method private wrapInSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .registers 6

    #@0
    .line 220
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->ensureContainerAndBehavior()V

    #@3
    .line 221
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getContainer()Landroid/widget/FrameLayout;

    #@6
    move-result-object v0

    #@7
    sget v1, Lcom/google/android/material/sidesheet/SheetDialog;->COORDINATOR_LAYOUT_ID:I

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@f
    if-eqz p1, :cond_1c

    #@11
    if-nez p2, :cond_1c

    #@13
    .line 224
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@16
    move-result-object p2

    #@17
    const/4 v1, 0x0

    #@18
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@1b
    move-result-object p2

    #@1c
    .line 227
    :cond_1c
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getSheet()Landroid/widget/FrameLayout;

    #@1f
    move-result-object p1

    #@20
    .line 228
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@23
    if-nez p3, :cond_29

    #@25
    .line 230
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@28
    goto :goto_2c

    #@29
    .line 232
    :cond_29
    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@2c
    .line 235
    :goto_2c
    sget p1, Lcom/google/android/material/sidesheet/SheetDialog;->TOUCH_OUTSIDE_ID:I

    #@2e
    .line 236
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    #@31
    move-result-object p1

    #@32
    new-instance p2, Lcom/google/android/material/sidesheet/SheetDialog$$ExternalSyntheticLambda0;

    #@34
    invoke-direct {p2, p0}, Lcom/google/android/material/sidesheet/SheetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/sidesheet/SheetDialog;)V

    #@37
    .line 237
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@3a
    .line 246
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getSheet()Landroid/widget/FrameLayout;

    #@3d
    move-result-object p1

    #@3e
    new-instance p2, Lcom/google/android/material/sidesheet/SheetDialog$1;

    #@40
    invoke-direct {p2, p0}, Lcom/google/android/material/sidesheet/SheetDialog$1;-><init>(Lcom/google/android/material/sidesheet/SheetDialog;)V

    #@43
    .line 245
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@46
    .line 269
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->container:Landroid/widget/FrameLayout;

    #@48
    return-object p1
.end method


# virtual methods
.method abstract addSheetCancelOnHideCallback(Lcom/google/android/material/sidesheet/Sheet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public cancel()V
    .registers 4

    #@0
    .line 144
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getBehavior()Lcom/google/android/material/sidesheet/Sheet;

    #@3
    move-result-object v0

    #@4
    .line 146
    iget-boolean v1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->dismissWithAnimation:Z

    #@6
    if-eqz v1, :cond_14

    #@8
    invoke-interface {v0}, Lcom/google/android/material/sidesheet/Sheet;->getState()I

    #@b
    move-result v1

    #@c
    const/4 v2, 0x5

    #@d
    if-ne v1, v2, :cond_10

    #@f
    goto :goto_14

    #@10
    .line 149
    :cond_10
    invoke-interface {v0, v2}, Lcom/google/android/material/sidesheet/Sheet;->setState(I)V

    #@13
    goto :goto_17

    #@14
    .line 147
    :cond_14
    :goto_14
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->cancel()V

    #@17
    :goto_17
    return-void
.end method

.method getBehavior()Lcom/google/android/material/sidesheet/Sheet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "TC;>;"
        }
    .end annotation

    #@0
    .line 211
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->behavior:Lcom/google/android/material/sidesheet/Sheet;

    #@2
    if-nez v0, :cond_7

    #@4
    .line 213
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->ensureContainerAndBehavior()V

    #@7
    .line 215
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->behavior:Lcom/google/android/material/sidesheet/Sheet;

    #@9
    return-object v0
.end method

.method abstract getBehaviorFromSheet(Landroid/widget/FrameLayout;)Lcom/google/android/material/sidesheet/Sheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            ")",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "TC;>;"
        }
    .end annotation
.end method

.method abstract getDialogId()I
.end method

.method abstract getLayoutResId()I
.end method

.method abstract getStateOnStart()I
.end method

.method public isDismissWithSheetAnimationEnabled()Z
    .registers 2

    #@0
    .line 178
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->dismissWithAnimation:Z

    #@2
    return v0
.end method

.method synthetic lambda$wrapInSheet$0$com-google-android-material-sidesheet-SheetDialog(Landroid/view/View;)V
    .registers 2

    #@0
    .line 239
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    #@2
    if-eqz p1, :cond_13

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->isShowing()Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_13

    #@a
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->shouldWindowCloseOnTouchOutside()Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_13

    #@10
    .line 240
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->cancel()V

    #@13
    :cond_13
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 96
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 97
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getWindow()Landroid/view/Window;

    #@6
    move-result-object p1

    #@7
    if-eqz p1, :cond_16

    #@9
    const/4 v0, 0x0

    #@a
    .line 101
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    #@d
    const/high16 v0, -0x80000000

    #@f
    .line 103
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    #@12
    const/4 v0, -0x1

    #@13
    .line 111
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    #@16
    :cond_16
    return-void
.end method

.method protected onStart()V
    .registers 3

    #@0
    .line 125
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStart()V

    #@3
    .line 126
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->behavior:Lcom/google/android/material/sidesheet/Sheet;

    #@5
    if-eqz v0, :cond_17

    #@7
    invoke-interface {v0}, Lcom/google/android/material/sidesheet/Sheet;->getState()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x5

    #@c
    if-ne v0, v1, :cond_17

    #@e
    .line 127
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->behavior:Lcom/google/android/material/sidesheet/Sheet;

    #@10
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getStateOnStart()I

    #@13
    move-result v1

    #@14
    invoke-interface {v0, v1}, Lcom/google/android/material/sidesheet/Sheet;->setState(I)V

    #@17
    :cond_17
    return-void
.end method

.method public setCancelable(Z)V
    .registers 3

    #@0
    .line 117
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCancelable(Z)V

    #@3
    .line 118
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    #@5
    if-eq v0, p1, :cond_9

    #@7
    .line 119
    iput-boolean p1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    #@9
    :cond_9
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 4

    #@0
    .line 155
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    #@3
    const/4 v0, 0x1

    #@4
    if-eqz p1, :cond_c

    #@6
    .line 156
    iget-boolean v1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    #@8
    if-nez v1, :cond_c

    #@a
    .line 157
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    #@c
    .line 159
    :cond_c
    iput-boolean p1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutside:Z

    #@e
    .line 160
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SheetDialog;->canceledOnTouchOutsideSet:Z

    #@10
    return-void
.end method

.method public setContentView(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 81
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/material/sidesheet/SheetDialog;->wrapInSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

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
    .line 86
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/sidesheet/SheetDialog;->wrapInSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

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
    .line 91
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/sidesheet/SheetDialog;->wrapInSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    #@4
    move-result-object p1

    #@5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    #@8
    return-void
.end method

.method public setDismissWithSheetAnimationEnabled(Z)V
    .registers 2

    #@0
    .line 170
    iput-boolean p1, p0, Lcom/google/android/material/sidesheet/SheetDialog;->dismissWithAnimation:Z

    #@2
    return-void
.end method

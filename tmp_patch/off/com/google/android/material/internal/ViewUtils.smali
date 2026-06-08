.class public Lcom/google/android/material/internal/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/ViewUtils$RelativePadding;,
        Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;
    }
.end annotation


# static fields
.field public static final EDGE_TO_EDGE_FLAGS:I = 0x300


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 2

    #@0
    if-eqz p0, :cond_9

    #@2
    .line 402
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object p0

    #@6
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@9
    :cond_9
    return-void
.end method

.method public static calculateRectFromBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 115
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;I)Landroid/graphics/Rect;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static calculateRectFromBounds(Landroid/view/View;I)Landroid/graphics/Rect;
    .registers 6

    #@0
    .line 120
    new-instance v0, Landroid/graphics/Rect;

    #@2
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    #@9
    move-result v2

    #@a
    add-int/2addr v2, p1

    #@b
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    #@e
    move-result v3

    #@f
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    #@12
    move-result p0

    #@13
    add-int/2addr p0, p1

    #@14
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    #@17
    return-object v0
.end method

.method public static doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 229
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    #@4
    return-void
.end method

.method public static doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
    .registers 7

    #@0
    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/android/material/R$styleable;->Insets:[I

    #@6
    .line 244
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@9
    move-result-object p1

    #@a
    .line 246
    sget p2, Lcom/google/android/material/R$styleable;->Insets_paddingBottomSystemWindowInsets:I

    #@c
    const/4 p3, 0x0

    #@d
    .line 247
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@10
    move-result p2

    #@11
    .line 248
    sget v0, Lcom/google/android/material/R$styleable;->Insets_paddingLeftSystemWindowInsets:I

    #@13
    .line 249
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@16
    move-result v0

    #@17
    .line 250
    sget v1, Lcom/google/android/material/R$styleable;->Insets_paddingRightSystemWindowInsets:I

    #@19
    .line 251
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1c
    move-result p3

    #@1d
    .line 253
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@20
    .line 255
    new-instance p1, Lcom/google/android/material/internal/ViewUtils$2;

    #@22
    invoke-direct {p1, p2, v0, p3, p4}, Lcom/google/android/material/internal/ViewUtils$2;-><init>(ZZZLcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    #@25
    invoke-static {p0, p1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    #@28
    return-void
.end method

.method public static doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
    .registers 7

    #@0
    .line 297
    new-instance v0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;

    #@2
    .line 299
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    #@5
    move-result v1

    #@6
    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@9
    move-result v2

    #@a
    .line 301
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    #@d
    move-result v3

    #@e
    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    #@11
    move-result v4

    #@12
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;-><init>(IIII)V

    #@15
    .line 305
    new-instance v1, Lcom/google/android/material/internal/ViewUtils$3;

    #@17
    invoke-direct {v1, p1, v0}, Lcom/google/android/material/internal/ViewUtils$3;-><init>(Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)V

    #@1a
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    #@1d
    .line 314
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->requestApplyInsetsWhenAttached(Landroid/view/View;)V

    #@20
    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)F
    .registers 3

    #@0
    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p0

    #@4
    int-to-float p1, p1

    #@5
    .line 161
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@8
    move-result-object p0

    #@9
    const/4 v0, 0x1

    #@a
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@d
    move-result p0

    #@e
    return p0
.end method

.method public static getBackgroundColor(Landroid/view/View;)Ljava/lang/Integer;
    .registers 2

    #@0
    .line 428
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object p0

    #@c
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    #@e
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@11
    move-result p0

    #@12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object p0

    #@16
    goto :goto_18

    #@17
    :cond_17
    const/4 p0, 0x0

    #@18
    :goto_18
    return-object p0
.end method

.method public static getChildren(Landroid/view/View;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 127
    instance-of v1, p0, Landroid/view/ViewGroup;

    #@7
    if-eqz v1, :cond_1c

    #@9
    .line 128
    check-cast p0, Landroid/view/ViewGroup;

    #@b
    const/4 v1, 0x0

    #@c
    .line 129
    :goto_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@f
    move-result v2

    #@10
    if-ge v1, v2, :cond_1c

    #@12
    .line 130
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_c

    #@1c
    :cond_1c
    return-object v0
.end method

.method public static getContentView(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    return-object v0

    #@4
    .line 374
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@7
    move-result-object v1

    #@8
    const v2, 0x1020002

    #@b
    .line 375
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/view/ViewGroup;

    #@11
    if-eqz v2, :cond_14

    #@13
    return-object v2

    #@14
    :cond_14
    if-eq v1, p0, :cond_1d

    #@16
    .line 384
    instance-of p0, v1, Landroid/view/ViewGroup;

    #@18
    if-eqz p0, :cond_1d

    #@1a
    .line 385
    check-cast v1, Landroid/view/ViewGroup;

    #@1c
    return-object v1

    #@1d
    :cond_1d
    return-object v0
.end method

.method public static getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;
    .registers 1

    #@0
    .line 396
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static getInputMethodManager(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    #@0
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object p0

    #@4
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    #@6
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    #@c
    return-object p0
.end method

.method public static getOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 362
    :cond_4
    new-instance v0, Lcom/google/android/material/internal/ViewOverlayApi18;

    #@6
    invoke-direct {v0, p0}, Lcom/google/android/material/internal/ViewOverlayApi18;-><init>(Landroid/view/View;)V

    #@9
    return-object v0
.end method

.method public static getParentAbsoluteElevation(Landroid/view/View;)F
    .registers 3

    #@0
    .line 344
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    .line 345
    :goto_5
    instance-of v1, p0, Landroid/view/View;

    #@7
    if-eqz v1, :cond_16

    #@9
    .line 346
    move-object v1, p0

    #@a
    check-cast v1, Landroid/view/View;

    #@c
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@f
    move-result v1

    #@10
    add-float/2addr v0, v1

    #@11
    .line 347
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@14
    move-result-object p0

    #@15
    goto :goto_5

    #@16
    :cond_16
    return v0
.end method

.method public static hideKeyboard(Landroid/view/View;)V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 84
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->hideKeyboard(Landroid/view/View;Z)V

    #@4
    return-void
.end method

.method public static hideKeyboard(Landroid/view/View;Z)V
    .registers 3

    #@0
    if-eqz p1, :cond_10

    #@2
    .line 89
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_10

    #@8
    .line 91
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    #@b
    move-result p0

    #@c
    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    #@f
    return-void

    #@10
    .line 95
    :cond_10
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getInputMethodManager(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    #@13
    move-result-object p1

    #@14
    if-eqz p1, :cond_1e

    #@16
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@19
    move-result-object p0

    #@1a
    const/4 v0, 0x0

    #@1b
    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@1e
    :cond_1e
    return-void
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .registers 2

    #@0
    .line 156
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    const/4 v0, 0x1

    #@5
    if-ne p0, v0, :cond_8

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    #@0
    const/4 v0, 0x3

    #@1
    if-eq p0, v0, :cond_1d

    #@3
    const/4 v0, 0x5

    #@4
    if-eq p0, v0, :cond_1a

    #@6
    const/16 v0, 0x9

    #@8
    if-eq p0, v0, :cond_17

    #@a
    packed-switch p0, :pswitch_data_20

    #@d
    return-object p1

    #@e
    .line 149
    :pswitch_e
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    #@10
    return-object p0

    #@11
    .line 147
    :pswitch_11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    #@13
    return-object p0

    #@14
    .line 145
    :pswitch_14
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    #@16
    return-object p0

    #@17
    .line 143
    :cond_17
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@19
    return-object p0

    #@1a
    .line 141
    :cond_1a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@1c
    return-object p0

    #@1d
    .line 139
    :cond_1d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    #@1f
    return-object p0

    #@20
    :pswitch_data_20
    .packed-switch 0xe
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public static removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 2

    #@0
    if-eqz p0, :cond_9

    #@2
    .line 409
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object p0

    #@6
    invoke-static {p0, p1}, Lcom/google/android/material/internal/ViewUtils;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@9
    :cond_9
    return-void
.end method

.method public static removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 2

    #@0
    .line 416
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@3
    return-void
.end method

.method public static requestApplyInsetsWhenAttached(Landroid/view/View;)V
    .registers 2

    #@0
    .line 319
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 321
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    #@9
    goto :goto_12

    #@a
    .line 324
    :cond_a
    new-instance v0, Lcom/google/android/material/internal/ViewUtils$4;

    #@c
    invoke-direct {v0}, Lcom/google/android/material/internal/ViewUtils$4;-><init>()V

    #@f
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@12
    :goto_12
    return-void
.end method

.method public static requestFocusAndShowKeyboard(Landroid/view/View;)V
    .registers 2

    #@0
    .line 165
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    #@3
    .line 166
    new-instance v0, Lcom/google/android/material/internal/ViewUtils$1;

    #@5
    invoke-direct {v0, p0}, Lcom/google/android/material/internal/ViewUtils$1;-><init>(Landroid/view/View;)V

    #@8
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@b
    return-void
.end method

.method public static setBoundsFromRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    #@0
    .line 107
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    invoke-virtual {p0, v0}, Landroid/view/View;->setLeft(I)V

    #@5
    .line 108
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@7
    invoke-virtual {p0, v0}, Landroid/view/View;->setTop(I)V

    #@a
    .line 109
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@c
    invoke-virtual {p0, v0}, Landroid/view/View;->setRight(I)V

    #@f
    .line 110
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@11
    invoke-virtual {p0, p1}, Landroid/view/View;->setBottom(I)V

    #@14
    return-void
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 69
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->showKeyboard(Landroid/view/View;Z)V

    #@4
    return-void
.end method

.method public static showKeyboard(Landroid/view/View;Z)V
    .registers 3

    #@0
    if-eqz p1, :cond_10

    #@2
    .line 74
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_10

    #@8
    .line 76
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    #@b
    move-result p0

    #@c
    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    #@f
    return-void

    #@10
    .line 80
    :cond_10
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getInputMethodManager(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    #@13
    move-result-object p1

    #@14
    const/4 v0, 0x1

    #@15
    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@18
    return-void
.end method

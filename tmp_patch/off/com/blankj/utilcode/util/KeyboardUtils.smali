.class public final Lcom/blankj/utilcode/util/KeyboardUtils;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;
    }
.end annotation


# static fields
.field private static final TAG_ON_GLOBAL_LAYOUT_LISTENER:I = -0x8

.field private static millis:J

.field private static sDecorViewDelta:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method static synthetic access$000(Landroid/view/Window;)I
    .registers 1

    #@0
    .line 32
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$100(Landroid/view/Window;)I
    .registers 1

    #@0
    .line 32
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getContentViewInvisibleHeight(Landroid/view/Window;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static clickBlankArea2HideSoftInput()V
    .registers 2

    #@0
    const-string v0, "KeyboardUtils"

    #@2
    const-string v1, "Please refer to the following code."

    #@4
    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    return-void
.end method

.method public static fixAndroidBug5497(Landroid/app/Activity;)V
    .registers 1

    #@0
    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->fixAndroidBug5497(Landroid/view/Window;)V

    #@7
    return-void
.end method

.method public static fixAndroidBug5497(Landroid/view/Window;)V
    .registers 7

    #@0
    .line 287
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@6
    and-int/lit8 v0, v0, -0x11

    #@8
    .line 288
    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    #@b
    const v0, 0x1020002

    #@e
    .line 290
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/widget/FrameLayout;

    #@14
    const/4 v1, 0x0

    #@15
    .line 291
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v2

    #@19
    .line 292
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    #@1c
    move-result v3

    #@1d
    const/4 v4, 0x1

    #@1e
    new-array v4, v4, [I

    #@20
    .line 293
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getContentViewInvisibleHeight(Landroid/view/Window;)I

    #@23
    move-result v5

    #@24
    aput v5, v4, v1

    #@26
    .line 294
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@29
    move-result-object v0

    #@2a
    new-instance v1, Lcom/blankj/utilcode/util/KeyboardUtils$3;

    #@2c
    invoke-direct {v1, p0, v4, v2, v3}, Lcom/blankj/utilcode/util/KeyboardUtils$3;-><init>(Landroid/view/Window;[ILandroid/view/View;I)V

    #@2f
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@32
    return-void
.end method

.method public static fixSoftInputLeaks(Landroid/app/Activity;)V
    .registers 1

    #@0
    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->fixSoftInputLeaks(Landroid/view/Window;)V

    #@7
    return-void
.end method

.method public static fixSoftInputLeaks(Landroid/view/Window;)V
    .registers 7

    #@0
    .line 340
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "input_method"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@c
    if-nez v0, :cond_f

    #@e
    return-void

    #@f
    :cond_f
    const-string v1, "mServedView"

    #@11
    const-string v2, "mNextServedView"

    #@13
    const-string v3, "mLastSrvView"

    #@15
    const-string v4, "mCurRootView"

    #@17
    .line 344
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x0

    #@1c
    :goto_1c
    const/4 v3, 0x4

    #@1d
    if-ge v2, v3, :cond_51

    #@1f
    .line 346
    aget-object v3, v1, v2

    #@21
    .line 348
    :try_start_21
    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    #@23
    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@26
    move-result-object v3

    #@27
    .line 349
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    #@2a
    move-result v4

    #@2b
    if-nez v4, :cond_31

    #@2d
    const/4 v4, 0x1

    #@2e
    .line 350
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@31
    .line 352
    :cond_31
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    .line 353
    instance-of v5, v4, Landroid/view/View;

    #@37
    if-nez v5, :cond_3a

    #@39
    goto :goto_4e

    #@3a
    .line 356
    :cond_3a
    check-cast v4, Landroid/view/View;

    #@3c
    .line 357
    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@47
    move-result-object v5

    #@48
    if-ne v4, v5, :cond_4e

    #@4a
    const/4 v4, 0x0

    #@4b
    .line 358
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_21 .. :try_end_4e} :catchall_4e

    #@4e
    :catchall_4e
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_1c

    #@51
    :cond_51
    return-void
.end method

.method private static getContentViewInvisibleHeight(Landroid/view/Window;)I
    .registers 6

    #@0
    const v0, 0x1020002

    #@3
    .line 309
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object p0

    #@7
    const/4 v0, 0x0

    #@8
    if-nez p0, :cond_b

    #@a
    return v0

    #@b
    .line 313
    :cond_b
    new-instance v1, Landroid/graphics/Rect;

    #@d
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@10
    .line 314
    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@13
    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    const-string v3, "getContentViewInvisibleHeight: "

    #@17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a
    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    #@1d
    move-result v3

    #@1e
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    #@20
    sub-int/2addr v3, v4

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    const-string v3, "KeyboardUtils"

    #@2b
    .line 315
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    #@31
    move-result p0

    #@32
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@34
    sub-int/2addr p0, v1

    #@35
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    #@38
    move-result p0

    #@39
    .line 318
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getStatusBarHeight()I

    #@3c
    move-result v1

    #@3d
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getNavBarHeight()I

    #@40
    move-result v2

    #@41
    add-int/2addr v1, v2

    #@42
    if-gt p0, v1, :cond_45

    #@44
    return v0

    #@45
    :cond_45
    return p0
.end method

.method private static getDecorViewInvisibleHeight(Landroid/view/Window;)I
    .registers 5

    #@0
    .line 196
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    .line 197
    new-instance v0, Landroid/graphics/Rect;

    #@6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9
    .line 198
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@c
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, "getDecorViewInvisibleHeight: "

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    #@16
    move-result v2

    #@17
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    #@19
    sub-int/2addr v2, v3

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    const-string v2, "KeyboardUtils"

    #@24
    .line 199
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    #@2a
    move-result p0

    #@2b
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@2d
    sub-int/2addr p0, v0

    #@2e
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    #@31
    move-result p0

    #@32
    .line 202
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getNavBarHeight()I

    #@35
    move-result v0

    #@36
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getStatusBarHeight()I

    #@39
    move-result v1

    #@3a
    add-int/2addr v0, v1

    #@3b
    if-gt p0, v0, :cond_41

    #@3d
    .line 203
    sput p0, Lcom/blankj/utilcode/util/KeyboardUtils;->sDecorViewDelta:I

    #@3f
    const/4 p0, 0x0

    #@40
    return p0

    #@41
    .line 206
    :cond_41
    sget v0, Lcom/blankj/utilcode/util/KeyboardUtils;->sDecorViewDelta:I

    #@43
    sub-int/2addr p0, v0

    #@44
    return p0
.end method

.method public static hideSoftInput(Landroid/app/Activity;)V
    .registers 1

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 110
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@6
    move-result-object p0

    #@7
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/Window;)V

    #@a
    return-void
.end method

.method public static hideSoftInput(Landroid/view/View;)V
    .registers 3

    #@0
    .line 145
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "input_method"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@c
    if-nez v0, :cond_f

    #@e
    return-void

    #@f
    .line 149
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@12
    move-result-object p0

    #@13
    const/4 v1, 0x0

    #@14
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@17
    return-void
.end method

.method public static hideSoftInput(Landroid/view/Window;)V
    .registers 4

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 122
    :cond_3
    invoke-virtual {p0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_2b

    #@9
    .line 124
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    const-string v1, "keyboardTagView"

    #@f
    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    #@12
    move-result-object v2

    #@13
    if-nez v2, :cond_27

    #@15
    .line 127
    new-instance v2, Landroid/widget/EditText;

    #@17
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    #@1a
    move-result-object p0

    #@1b
    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    #@1e
    .line 128
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@21
    .line 129
    check-cast v0, Landroid/view/ViewGroup;

    #@23
    const/4 p0, 0x0

    #@24
    invoke-virtual {v0, v2, p0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    #@27
    :cond_27
    move-object v0, v2

    #@28
    .line 133
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    #@2b
    .line 135
    :cond_2b
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    #@2e
    return-void
.end method

.method public static hideSoftInputByToggle(Landroid/app/Activity;)V
    .registers 7

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 163
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6
    move-result-wide v0

    #@7
    .line 164
    sget-wide v2, Lcom/blankj/utilcode/util/KeyboardUtils;->millis:J

    #@9
    sub-long v2, v0, v2

    #@b
    .line 165
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    #@e
    move-result-wide v2

    #@f
    const-wide/16 v4, 0x1f4

    #@11
    cmp-long v2, v2, v4

    #@13
    if-lez v2, :cond_1e

    #@15
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->isSoftInputVisible(Landroid/app/Activity;)Z

    #@18
    move-result p0

    #@19
    if-eqz p0, :cond_1e

    #@1b
    .line 166
    invoke-static {}, Lcom/blankj/utilcode/util/KeyboardUtils;->toggleSoftInput()V

    #@1e
    .line 168
    :cond_1e
    sput-wide v0, Lcom/blankj/utilcode/util/KeyboardUtils;->millis:J

    #@20
    return-void
.end method

.method public static isSoftInputVisible(Landroid/app/Activity;)Z
    .registers 1

    #@0
    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    #@7
    move-result p0

    #@8
    if-lez p0, :cond_c

    #@a
    const/4 p0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p0, 0x0

    #@d
    :goto_d
    return p0
.end method

.method public static registerSoftInputChangedListener(Landroid/app/Activity;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V
    .registers 2

    #@0
    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/view/Window;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V

    #@7
    return-void
.end method

.method public static registerSoftInputChangedListener(Landroid/view/Window;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V
    .registers 6

    #@0
    .line 230
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@6
    const/16 v1, 0x200

    #@8
    and-int/2addr v0, v1

    #@9
    if-eqz v0, :cond_e

    #@b
    .line 232
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    #@e
    :cond_e
    const v0, 0x1020002

    #@11
    .line 234
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/widget/FrameLayout;

    #@17
    const/4 v1, 0x1

    #@18
    new-array v1, v1, [I

    #@1a
    const/4 v2, 0x0

    #@1b
    .line 235
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    #@1e
    move-result v3

    #@1f
    aput v3, v1, v2

    #@21
    .line 236
    new-instance v2, Lcom/blankj/utilcode/util/KeyboardUtils$2;

    #@23
    invoke-direct {v2, p0, v1, p1}, Lcom/blankj/utilcode/util/KeyboardUtils$2;-><init>(Landroid/view/Window;[ILcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V

    #@26
    .line 246
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@29
    move-result-object p0

    #@2a
    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@2d
    const/4 p0, -0x8

    #@2e
    .line 247
    invoke-virtual {v0, p0, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    #@31
    return-void
.end method

.method public static showSoftInput()V
    .registers 3

    #@0
    .line 45
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "input_method"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@c
    if-nez v0, :cond_f

    #@e
    return-void

    #@f
    :cond_f
    const/4 v1, 0x2

    #@10
    const/4 v2, 0x1

    #@11
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    #@14
    return-void
.end method

.method public static showSoftInput(Landroid/app/Activity;)V
    .registers 1

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 59
    :cond_3
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->isSoftInputVisible(Landroid/app/Activity;)Z

    #@6
    move-result p0

    #@7
    if-nez p0, :cond_c

    #@9
    .line 60
    invoke-static {}, Lcom/blankj/utilcode/util/KeyboardUtils;->toggleSoftInput()V

    #@c
    :cond_c
    return-void
.end method

.method public static showSoftInput(Landroid/view/View;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 70
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->showSoftInput(Landroid/view/View;I)V

    #@4
    return-void
.end method

.method public static showSoftInput(Landroid/view/View;I)V
    .registers 6

    #@0
    .line 82
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "input_method"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@c
    if-nez v0, :cond_f

    #@e
    return-void

    #@f
    :cond_f
    const/4 v1, 0x1

    #@10
    .line 86
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    #@13
    .line 87
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    #@16
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    #@19
    .line 89
    new-instance v2, Lcom/blankj/utilcode/util/KeyboardUtils$1;

    #@1b
    new-instance v3, Landroid/os/Handler;

    #@1d
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    #@20
    invoke-direct {v2, v3}, Lcom/blankj/utilcode/util/KeyboardUtils$1;-><init>(Landroid/os/Handler;)V

    #@23
    invoke-virtual {v0, p0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    #@26
    const/4 p0, 0x2

    #@27
    .line 98
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    #@2a
    return-void
.end method

.method public static toggleSoftInput()V
    .registers 2

    #@0
    .line 176
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    const-string v1, "input_method"

    #@6
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@c
    if-nez v0, :cond_f

    #@e
    return-void

    #@f
    :cond_f
    const/4 v1, 0x0

    #@10
    .line 180
    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    #@13
    return-void
.end method

.method public static unregisterSoftInputChangedListener(Landroid/view/Window;)V
    .registers 4

    #@0
    const v0, 0x1020002

    #@3
    .line 256
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object p0

    #@7
    if-nez p0, :cond_a

    #@9
    return-void

    #@a
    :cond_a
    const/4 v0, -0x8

    #@b
    .line 260
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    .line 261
    instance-of v2, v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@11
    if-eqz v2, :cond_20

    #@13
    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@16
    move-result-object v2

    #@17
    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@19
    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@1c
    const/4 v1, 0x0

    #@1d
    .line 265
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@20
    :cond_20
    return-void
.end method

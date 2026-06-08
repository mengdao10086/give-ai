.class public final Lcom/blankj/utilcode/util/SnackbarUtils;
.super Ljava/lang/Object;
.source "SnackbarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/SnackbarUtils$Duration;
    }
.end annotation


# static fields
.field private static final COLOR_DEFAULT:I = -0x1000001

.field private static final COLOR_ERROR:I = -0x10000

.field private static final COLOR_MESSAGE:I = -0x1

.field private static final COLOR_SUCCESS:I = -0xd44a00

.field private static final COLOR_WARNING:I = -0x3f00

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field private static sWeakSnackbar:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionListener:Landroid/view/View$OnClickListener;

.field private actionText:Ljava/lang/CharSequence;

.field private actionTextColor:I

.field private bgColor:I

.field private bgResource:I

.field private bottomMargin:I

.field private duration:I

.field private message:Ljava/lang/CharSequence;

.field private messageColor:I

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 2

    #@0
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SnackbarUtils;->setDefault()V

    #@6
    .line 67
    iput-object p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->view:Landroid/view/View;

    #@8
    return-void
.end method

.method public static addView(ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    #@0
    .line 347
    invoke-static {}, Lcom/blankj/utilcode/util/SnackbarUtils;->getView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_1e

    #@6
    const/4 v1, 0x0

    #@7
    .line 349
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    #@a
    .line 350
    move-object v1, v0

    #@b
    check-cast v1, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    #@d
    .line 351
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@14
    move-result-object v0

    #@15
    const/4 v2, 0x0

    #@16
    invoke-virtual {v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@19
    move-result-object p0

    #@1a
    const/4 v0, -0x1

    #@1b
    .line 352
    invoke-virtual {v1, p0, v0, p1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@1e
    :cond_1e
    return-void
.end method

.method public static addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    #@0
    .line 365
    invoke-static {}, Lcom/blankj/utilcode/util/SnackbarUtils;->getView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_f

    #@6
    const/4 v1, 0x0

    #@7
    .line 367
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    #@a
    .line 368
    check-cast v0, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    #@c
    .line 369
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@f
    :cond_f
    return-void
.end method

.method public static dismiss()V
    .registers 1

    #@0
    .line 321
    sget-object v0, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_18

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_18

    #@a
    .line 322
    sget-object v0, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    #@c
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    #@12
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    #@15
    const/4 v0, 0x0

    #@16
    .line 323
    sput-object v0, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    #@18
    :cond_18
    return-void
.end method

.method private static findSuitableParentCopyFromSnackbar(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    move-object v1, v0

    #@2
    .line 377
    :cond_2
    instance-of v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@4
    if-eqz v2, :cond_9

    #@6
    .line 378
    check-cast p0, Landroid/view/ViewGroup;

    #@8
    return-object p0

    #@9
    .line 381
    :cond_9
    instance-of v2, p0, Landroid/widget/FrameLayout;

    #@b
    if-eqz v2, :cond_1c

    #@d
    .line 382
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    #@10
    move-result v1

    #@11
    const v2, 0x1020002

    #@14
    if-ne v1, v2, :cond_19

    #@16
    .line 383
    check-cast p0, Landroid/view/ViewGroup;

    #@18
    return-object p0

    #@19
    .line 386
    :cond_19
    move-object v1, p0

    #@1a
    check-cast v1, Landroid/view/ViewGroup;

    #@1c
    :cond_1c
    if-eqz p0, :cond_2a

    #@1e
    .line 390
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@21
    move-result-object p0

    #@22
    .line 391
    instance-of v2, p0, Landroid/view/View;

    #@24
    if-eqz v2, :cond_29

    #@26
    check-cast p0, Landroid/view/View;

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move-object p0, v0

    #@2a
    :cond_2a
    :goto_2a
    if-nez p0, :cond_2

    #@2c
    return-object v1
.end method

.method public static getView()Landroid/view/View;
    .registers 1

    #@0
    .line 333
    sget-object v0, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    return-object v0

    #@c
    .line 335
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method private setDefault()V
    .registers 4

    #@0
    const-string v0, ""

    #@2
    .line 71
    iput-object v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->message:Ljava/lang/CharSequence;

    #@4
    const v1, -0x1000001

    #@7
    .line 72
    iput v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    #@9
    .line 73
    iput v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgColor:I

    #@b
    const/4 v2, -0x1

    #@c
    .line 74
    iput v2, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgResource:I

    #@e
    .line 75
    iput v2, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->duration:I

    #@10
    .line 76
    iput-object v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionText:Ljava/lang/CharSequence;

    #@12
    .line 77
    iput v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionTextColor:I

    #@14
    const/4 v0, 0x0

    #@15
    .line 78
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bottomMargin:I

    #@17
    return-void
.end method

.method public static with(Landroid/view/View;)Lcom/blankj/utilcode/util/SnackbarUtils;
    .registers 2

    #@0
    .line 88
    new-instance v0, Lcom/blankj/utilcode/util/SnackbarUtils;

    #@2
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/SnackbarUtils;-><init>(Landroid/view/View;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public setAction(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Lcom/blankj/utilcode/util/SnackbarUtils;
    .registers 4

    #@0
    .line 175
    iput-object p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionText:Ljava/lang/CharSequence;

    #@2
    .line 176
    iput p2, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionTextColor:I

    #@4
    .line 177
    iput-object p3, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionListener:Landroid/view/View$OnClickListener;

    #@6
    return-object p0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/blankj/utilcode/util/SnackbarUtils;
    .registers 4

    #@0
    const v0, -0x1000001

    #@3
    .line 160
    invoke-virtual {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/SnackbarUtils;->setAction(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Lcom/blankj/utilcode/util/SnackbarUtils;

    #@6
    move-result-object p1

    #@7
    return-object p1
.end method

.method public setBgColor(I)Lcom/blankj/utilcode/util/SnackbarUtils;
    .registers 2

    #@0
    .line 120
    iput p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgColor:I

    #@2
    return-object p0
.end method

.method public setBgResource(I)Lcom/blankj/utilcode/util/SnackbarUtils;
    .registers 2

    #@0
    .line 131
    iput p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgResource:I

    #@2
    return-object p0
.end method

.method public setBottomMargin(I)Lcom/blankj/utilcode/util/SnackbarUtils;
    .registers 2

    #@0
    .line 187
    iput p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bottomMargin:I

    #@2
    return-object p0
.end method

.method public setDuration(I)Lcom/blankj/utilcode/util/SnackbarUtils;
    .registers 2

    #@0
    .line 147
    iput p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->duration:I

    #@2
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SnackbarUtils;
    .registers 2

    #@0
    .line 98
    iput-object p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->message:Ljava/lang/CharSequence;

    #@2
    return-object p0
.end method

.method public setMessageColor(I)Lcom/blankj/utilcode/util/SnackbarUtils;
    .registers 2

    #@0
    .line 109
    iput p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    #@2
    return-object p0
.end method

.method public show()Lcom/google/android/material/snackbar/Snackbar;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 195
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SnackbarUtils;->show(Z)Lcom/google/android/material/snackbar/Snackbar;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public show(Z)Lcom/google/android/material/snackbar/Snackbar;
    .registers 11

    #@0
    .line 204
    iget-object v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->view:Landroid/view/View;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return-object p1

    #@6
    :cond_6
    const/high16 v1, 0x43340000    # 180.0f

    #@8
    const/4 v2, -0x1

    #@9
    if-eqz p1, :cond_2f

    #@b
    .line 207
    invoke-static {v0}, Lcom/blankj/utilcode/util/SnackbarUtils;->findSuitableParentCopyFromSnackbar(Landroid/view/View;)Landroid/view/ViewGroup;

    #@e
    move-result-object v3

    #@f
    const-string v4, "topSnackBarCoordinatorLayout"

    #@11
    .line 208
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    #@14
    move-result-object v5

    #@15
    if-nez v5, :cond_2e

    #@17
    .line 210
    new-instance v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v0

    #@1d
    invoke-direct {v5, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    #@20
    .line 211
    invoke-virtual {v5, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    #@23
    .line 212
    invoke-virtual {v5, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setRotation(F)V

    #@26
    const/high16 v0, 0x42c80000    # 100.0f

    #@28
    .line 215
    invoke-virtual {v5, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setElevation(F)V

    #@2b
    .line 217
    invoke-virtual {v3, v5, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    #@2e
    :cond_2e
    move-object v0, v5

    #@2f
    .line 222
    :cond_2f
    iget v3, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    #@31
    const/4 v4, 0x0

    #@32
    const v5, -0x1000001

    #@35
    if-eq v3, v5, :cond_5c

    #@37
    .line 223
    new-instance v3, Landroid/text/SpannableString;

    #@39
    iget-object v6, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->message:Ljava/lang/CharSequence;

    #@3b
    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@3e
    .line 224
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    #@40
    iget v7, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    #@42
    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    #@45
    .line 226
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    #@48
    move-result v7

    #@49
    const/16 v8, 0x21

    #@4b
    .line 225
    invoke-virtual {v3, v6, v4, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@4e
    .line 228
    new-instance v6, Ljava/lang/ref/WeakReference;

    #@50
    iget v7, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->duration:I

    #@52
    invoke-static {v0, v3, v7}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    #@55
    move-result-object v0

    #@56
    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@59
    sput-object v6, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    #@5b
    goto :goto_6b

    #@5c
    .line 230
    :cond_5c
    new-instance v3, Ljava/lang/ref/WeakReference;

    #@5e
    iget-object v6, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->message:Ljava/lang/CharSequence;

    #@60
    iget v7, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->duration:I

    #@62
    invoke-static {v0, v6, v7}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    #@65
    move-result-object v0

    #@66
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@69
    sput-object v3, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    #@6b
    .line 232
    :goto_6b
    sget-object v0, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    #@6d
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@70
    move-result-object v0

    #@71
    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    #@73
    .line 233
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    #@76
    move-result-object v3

    #@77
    check-cast v3, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    #@79
    if-eqz p1, :cond_8b

    #@7b
    .line 235
    :goto_7b
    invoke-virtual {v3}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getChildCount()I

    #@7e
    move-result p1

    #@7f
    if-ge v4, p1, :cond_8b

    #@81
    .line 236
    invoke-virtual {v3, v4}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getChildAt(I)Landroid/view/View;

    #@84
    move-result-object p1

    #@85
    .line 237
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    #@88
    add-int/lit8 v4, v4, 0x1

    #@8a
    goto :goto_7b

    #@8b
    .line 240
    :cond_8b
    iget p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgResource:I

    #@8d
    if-eq p1, v2, :cond_93

    #@8f
    .line 241
    invoke-virtual {v3, p1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->setBackgroundResource(I)V

    #@92
    goto :goto_9a

    #@93
    .line 242
    :cond_93
    iget p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgColor:I

    #@95
    if-eq p1, v5, :cond_9a

    #@97
    .line 243
    invoke-virtual {v3, p1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->setBackgroundColor(I)V

    #@9a
    .line 245
    :cond_9a
    :goto_9a
    iget p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bottomMargin:I

    #@9c
    if-eqz p1, :cond_a8

    #@9e
    .line 247
    invoke-virtual {v3}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a1
    move-result-object p1

    #@a2
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@a4
    .line 248
    iget v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bottomMargin:I

    #@a6
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@a8
    .line 250
    :cond_a8
    iget-object p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionText:Ljava/lang/CharSequence;

    #@aa
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@ad
    move-result p1

    #@ae
    if-lez p1, :cond_c2

    #@b0
    iget-object p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionListener:Landroid/view/View$OnClickListener;

    #@b2
    if-eqz p1, :cond_c2

    #@b4
    .line 251
    iget p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionTextColor:I

    #@b6
    if-eq p1, v5, :cond_bb

    #@b8
    .line 252
    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    #@bb
    .line 254
    :cond_bb
    iget-object p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionText:Ljava/lang/CharSequence;

    #@bd
    iget-object v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionListener:Landroid/view/View$OnClickListener;

    #@bf
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    #@c2
    .line 256
    :cond_c2
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    #@c5
    return-object v0
.end method

.method public showError()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 302
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SnackbarUtils;->showError(Z)V

    #@4
    return-void
.end method

.method public showError(Z)V
    .registers 3

    #@0
    const/high16 v0, -0x10000

    #@2
    .line 311
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgColor:I

    #@4
    const/4 v0, -0x1

    #@5
    .line 312
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    #@7
    .line 313
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionTextColor:I

    #@9
    .line 314
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/SnackbarUtils;->show(Z)Lcom/google/android/material/snackbar/Snackbar;

    #@c
    return-void
.end method

.method public showSuccess()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 264
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SnackbarUtils;->showSuccess(Z)V

    #@4
    return-void
.end method

.method public showSuccess(Z)V
    .registers 3

    #@0
    const v0, -0xd44a00

    #@3
    .line 273
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgColor:I

    #@5
    const/4 v0, -0x1

    #@6
    .line 274
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    #@8
    .line 275
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionTextColor:I

    #@a
    .line 276
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/SnackbarUtils;->show(Z)Lcom/google/android/material/snackbar/Snackbar;

    #@d
    return-void
.end method

.method public showWarning()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 283
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SnackbarUtils;->showWarning(Z)V

    #@4
    return-void
.end method

.method public showWarning(Z)V
    .registers 3

    #@0
    const/16 v0, -0x3f00

    #@2
    .line 292
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgColor:I

    #@4
    const/4 v0, -0x1

    #@5
    .line 293
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    #@7
    .line 294
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionTextColor:I

    #@9
    .line 295
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/SnackbarUtils;->show(Z)Lcom/google/android/material/snackbar/Snackbar;

    #@c
    return-void
.end method

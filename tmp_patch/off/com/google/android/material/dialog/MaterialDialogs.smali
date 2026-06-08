.class public Lcom/google/android/material/dialog/MaterialDialogs;
.super Ljava/lang/Object;
.source "MaterialDialogs.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDialogBackgroundInsets(Landroid/content/Context;II)Landroid/graphics/Rect;
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    .line 59
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialAlertDialog:[I

    #@3
    const/4 v0, 0x0

    #@4
    new-array v5, v0, [I

    #@6
    move-object v0, p0

    #@7
    move v3, p1

    #@8
    move v4, p2

    #@9
    .line 60
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@c
    move-result-object p1

    #@d
    .line 67
    sget p2, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetStart:I

    #@f
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v0

    #@13
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_start:I

    #@15
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@18
    move-result v0

    #@19
    .line 68
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1c
    move-result p2

    #@1d
    .line 73
    sget v0, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetTop:I

    #@1f
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v1

    #@23
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_top:I

    #@25
    .line 78
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@28
    move-result v1

    #@29
    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2c
    move-result v0

    #@2d
    .line 80
    sget v1, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetEnd:I

    #@2f
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@32
    move-result-object v2

    #@33
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_end:I

    #@35
    .line 85
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@38
    move-result v2

    #@39
    .line 81
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@3c
    move-result v1

    #@3d
    .line 86
    sget v2, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetBottom:I

    #@3f
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@42
    move-result-object v3

    #@43
    sget v4, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_bottom:I

    #@45
    .line 91
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@48
    move-result v3

    #@49
    .line 87
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@4c
    move-result v2

    #@4d
    .line 93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@50
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@53
    move-result-object p0

    #@54
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@57
    move-result-object p0

    #@58
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@5b
    move-result p0

    #@5c
    const/4 p1, 0x1

    #@5d
    if-ne p0, p1, :cond_62

    #@5f
    move v6, v1

    #@60
    move v1, p2

    #@61
    move p2, v6

    #@62
    .line 105
    :cond_62
    new-instance p0, Landroid/graphics/Rect;

    #@64
    invoke-direct {p0, p2, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@67
    return-object p0
.end method

.method public static insetDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/drawable/InsetDrawable;
    .registers 9

    #@0
    .line 48
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    #@2
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@6
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@8
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@a
    move-object v0, v6

    #@b
    move-object v1, p0

    #@c
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    #@f
    return-object v6
.end method

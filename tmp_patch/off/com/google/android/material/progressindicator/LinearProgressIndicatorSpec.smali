.class public final Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
.super Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
.source "LinearProgressIndicatorSpec.java"


# instance fields
.field drawHorizontallyInverse:Z

.field public indeterminateAnimationType:I

.field public indicatorDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 59
    sget v0, Lcom/google/android/material/R$attr;->linearProgressIndicatorStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    .line 64
    sget v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->DEF_STYLE_RES:I

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    #@0
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 74
    sget-object v2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator:[I

    #@5
    sget v3, Lcom/google/android/material/R$attr;->linearProgressIndicatorStyle:I

    #@7
    sget v4, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->DEF_STYLE_RES:I

    #@9
    const/4 p3, 0x0

    #@a
    new-array v5, p3, [I

    #@c
    move-object v0, p1

    #@d
    move-object v1, p2

    #@e
    .line 75
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@11
    move-result-object p1

    #@12
    .line 81
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_indeterminateAnimationType:I

    #@14
    const/4 p4, 0x1

    #@15
    .line 82
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@18
    move-result p2

    #@19
    iput p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    #@1b
    .line 85
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_indicatorDirectionLinear:I

    #@1d
    .line 86
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@20
    move-result p2

    #@21
    iput p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    #@23
    .line 89
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@26
    .line 91
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->validateSpec()V

    #@29
    .line 93
    iget p1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    #@2b
    if-ne p1, p4, :cond_2e

    #@2d
    move p3, p4

    #@2e
    :cond_2e
    iput-boolean p3, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    #@30
    return-void
.end method


# virtual methods
.method validateSpec()V
    .registers 3

    #@0
    .line 99
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    #@2
    if-nez v0, :cond_1f

    #@4
    .line 101
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackCornerRadius:I

    #@6
    if-gtz v0, :cond_17

    #@8
    .line 107
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorColors:[I

    #@a
    array-length v0, v0

    #@b
    const/4 v1, 0x3

    #@c
    if-lt v0, v1, :cond_f

    #@e
    goto :goto_1f

    #@f
    .line 110
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string v1, "Contiguous indeterminate animation must be used with 3 or more indicator colors."

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 104
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    const-string v1, "Rounded corners are not supported in contiguous indeterminate animation."

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    :cond_1f
    :goto_1f
    return-void
.end method

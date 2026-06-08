.class public final Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
.super Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
.source "CircularProgressIndicatorSpec.java"


# instance fields
.field public indicatorDirection:I

.field public indicatorInset:I

.field public indicatorSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 63
    sget v0, Lcom/google/android/material/R$attr;->circularProgressIndicatorStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    .line 68
    sget v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->DEF_STYLE_RES:I

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14

    #@0
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v0

    #@7
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_progress_circular_size_medium:I

    #@9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@c
    move-result v0

    #@d
    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v1

    #@11
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_progress_circular_inset_medium:I

    #@13
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@16
    move-result v1

    #@17
    .line 82
    sget-object v4, Lcom/google/android/material/R$styleable;->CircularProgressIndicator:[I

    #@19
    const/4 v8, 0x0

    #@1a
    new-array v7, v8, [I

    #@1c
    move-object v2, p1

    #@1d
    move-object v3, p2

    #@1e
    move v5, p3

    #@1f
    move v6, p4

    #@20
    .line 83
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@23
    move-result-object p2

    #@24
    .line 85
    sget p3, Lcom/google/android/material/R$styleable;->CircularProgressIndicator_indicatorSize:I

    #@26
    .line 87
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    #@29
    move-result p3

    #@2a
    iget p4, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    #@2c
    mul-int/lit8 p4, p4, 0x2

    #@2e
    .line 86
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    #@31
    move-result p3

    #@32
    iput p3, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    #@34
    .line 93
    sget p3, Lcom/google/android/material/R$styleable;->CircularProgressIndicator_indicatorInset:I

    #@36
    .line 94
    invoke-static {p1, p2, p3, v1}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    #@39
    move-result p1

    #@3a
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    #@3c
    .line 99
    sget p1, Lcom/google/android/material/R$styleable;->CircularProgressIndicator_indicatorDirectionCircular:I

    #@3e
    .line 100
    invoke-virtual {p2, p1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@41
    move-result p1

    #@42
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    #@44
    .line 103
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@47
    .line 105
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->validateSpec()V

    #@4a
    return-void
.end method


# virtual methods
.method validateSpec()V
    .registers 1

    #@0
    return-void
.end method
